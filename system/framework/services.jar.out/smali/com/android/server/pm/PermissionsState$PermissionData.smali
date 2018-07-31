.class final Lcom/android/server/pm/PermissionsState$PermissionData;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PermissionData"
.end annotation


# instance fields
.field private final mPerm:Lcom/android/server/pm/BasePermission;

.field private mUserStates:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/pm/BasePermission;)V
    .locals 1
    .param p1, "perm"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 694
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 692
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    .line 695
    iput-object p1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    .line 696
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V
    .locals 6
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState$PermissionData;

    .prologue
    .line 699
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    invoke-direct {p0, v4}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    .line 700
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 701
    .local v2, "otherStateCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 702
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 703
    .local v3, "otherUserId":I
    iget-object v4, p1, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 704
    .local v1, "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    new-instance v5, Lcom/android/server/pm/PermissionsState$PermissionState;

    invoke-direct {v5, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 706
    .end local v1    # "otherState":Lcom/android/server/pm/PermissionsState$PermissionState;
    .end local v3    # "otherUserId":I
    :cond_0
    return-void
.end method

.method private isCompatibleUserId(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 814
    invoke-virtual {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v0

    invoke-static {p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermissionKey(I)Z

    move-result v1

    xor-int/2addr v0, v1

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isInstallPermission()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 818
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 819
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 818
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 819
    goto :goto_0

    :cond_1
    move v0, v1

    .line 818
    goto :goto_0
.end method

.method public static isInstallPermissionKey(I)Z
    .locals 1
    .param p0, "userId"    # I

    .prologue
    .line 781
    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 709
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getFlags(I)I
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 770
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    .line 771
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v1

    return v1

    .line 773
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 765
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    return-object v0
.end method

.method public grant(I)Z
    .locals 4
    .param p1, "userId"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 726
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 727
    return v2

    .line 730
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 731
    return v2

    .line 734
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 735
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_2

    .line 736
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .end local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v1, v1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 737
    .restart local v0    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 740
    :cond_2
    invoke-static {v0, v3}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    .line 742
    return v3
.end method

.method public isDefault()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 777
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGranted(I)Z
    .locals 2
    .param p1, "userId"    # I

    .prologue
    .line 713
    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 714
    const/4 p1, -0x1

    .line 717
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 718
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-nez v0, :cond_1

    .line 719
    const/4 v1, 0x0

    return v1

    .line 722
    :cond_1
    invoke-static {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get1(Lcom/android/server/pm/PermissionsState$PermissionState;)Z

    move-result v1

    return v1
.end method

.method public revoke(I)Z
    .locals 3
    .param p1, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 746
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 747
    return v2

    .line 750
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 751
    return v2

    .line 754
    :cond_1
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 755
    .local v0, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z

    .line 757
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 758
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 761
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public updateFlags(III)Z
    .locals 7
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 785
    invoke-direct {p0}, Lcom/android/server/pm/PermissionsState$PermissionData;->isInstallPermission()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 786
    const/4 p1, -0x1

    .line 789
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->isCompatibleUserId(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 790
    return v4

    .line 793
    :cond_1
    and-int v0, p3, p2

    .line 795
    .local v0, "newFlags":I
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    .line 796
    .local v2, "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v2, :cond_4

    .line 797
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v1

    .line 798
    .local v1, "oldFlags":I
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v5

    not-int v6, p2

    and-int/2addr v5, v6

    or-int/2addr v5, v0

    invoke-static {v2, v5}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    .line 799
    invoke-virtual {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->isDefault()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 800
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 802
    :cond_2
    invoke-static {v2}, Lcom/android/server/pm/PermissionsState$PermissionState;->-get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I

    move-result v5

    if-eq v5, v1, :cond_3

    :goto_0
    return v3

    :cond_3
    move v3, v4

    goto :goto_0

    .line 803
    .end local v1    # "oldFlags":I
    :cond_4
    if-eqz v0, :cond_5

    .line 804
    new-instance v2, Lcom/android/server/pm/PermissionsState$PermissionState;

    .end local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mPerm:Lcom/android/server/pm/BasePermission;

    iget-object v4, v4, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {v2, v4}, Lcom/android/server/pm/PermissionsState$PermissionState;-><init>(Ljava/lang/String;)V

    .line 805
    .restart local v2    # "userState":Lcom/android/server/pm/PermissionsState$PermissionState;
    invoke-static {v2, v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->-set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I

    .line 806
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState$PermissionData;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v4, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 807
    return v3

    .line 810
    :cond_5
    return v4
.end method
