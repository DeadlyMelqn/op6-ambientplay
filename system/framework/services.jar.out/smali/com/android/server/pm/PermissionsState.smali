.class public final Lcom/android/server/pm/PermissionsState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/PermissionsState$PermissionData;,
        Lcom/android/server/pm/PermissionsState$PermissionState;
    }
.end annotation


# static fields
.field private static final NO_GIDS:[I

.field public static final PERMISSION_OPERATION_FAILURE:I = -0x1

.field public static final PERMISSION_OPERATION_SUCCESS:I = 0x0

.field public static final PERMISSION_OPERATION_SUCCESS_GIDS_CHANGED:I = 0x1


# instance fields
.field private mGlobalGids:[I

.field final mLock:Ljava/lang/Object;

.field private mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

.field private mPermissions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PermissionsState$PermissionData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .line 52
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mLock:Ljava/lang/Object;

    .line 77
    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState;)V
    .locals 1
    .param p1, "prototype"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mLock:Ljava/lang/Object;

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->copyFrom(Lcom/android/server/pm/PermissionsState;)V

    .line 81
    return-void
.end method

.method private static appendInts([I[I)[I
    .locals 3
    .param p0, "current"    # [I
    .param p1, "added"    # [I

    .prologue
    .line 648
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 649
    const/4 v1, 0x0

    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    aget v0, p1, v1

    .line 650
    .local v0, "guid":I
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object p0

    .line 649
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v0    # "guid":I
    :cond_0
    return-object p0
.end method

.method private static enforceValidUserId(I)V
    .locals 3
    .param p0, "userId"    # I

    .prologue
    .line 657
    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    if-gez p0, :cond_0

    .line 658
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid userId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 660
    :cond_0
    return-void
.end method

.method private ensureNoPermissionData(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 675
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 676
    return-void

    .line 679
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 682
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 683
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v1

    .line 688
    return-void

    .line 679
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;
    .locals 3
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 663
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 664
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 666
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 667
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    .line 668
    new-instance v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .end local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-direct {v0, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/BasePermission;)V

    .line 669
    .restart local v0    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    :cond_1
    return-object v0
.end method

.method private getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 543
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 544
    return-object v2

    .line 546
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 547
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v0, :cond_1

    .line 548
    return-object v2

    .line 550
    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    return-object v1
.end method

.method private getPermissionStatesInternal(I)Ljava/util/List;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 554
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 557
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 559
    .local v4, "permissionStates":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/PermissionsState$PermissionState;>;"
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 560
    :try_start_0
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_0

    .line 561
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    monitor-exit v6

    return-object v5

    .line 564
    :cond_0
    :try_start_1
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 565
    .local v1, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_2

    .line 566
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 568
    .local v2, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v2, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getPermissionState(I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v3

    .line 569
    .local v3, "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v3, :cond_1

    .line 570
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 565
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v2    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    .end local v3    # "permissionState":Lcom/android/server/pm/PermissionsState$PermissionState;
    :cond_2
    monitor-exit v6

    .line 591
    return-object v4

    .line 559
    .end local v0    # "i":I
    .end local v1    # "permissionCount":I
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
.end method

.method private grantPermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 6
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v5, -0x1

    .line 595
    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 596
    return v5

    .line 599
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    .line 600
    .local v0, "hasGids":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 602
    .local v2, "oldGids":[I
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .line 604
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->grant(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 605
    return v5

    .line 600
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .restart local v2    # "oldGids":[I
    goto :goto_0

    .line 608
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2
    if-eqz v0, :cond_3

    .line 609
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 610
    .local v1, "newGids":[I
    array-length v4, v2

    array-length v5, v1

    if-eq v4, v5, :cond_3

    .line 611
    const/4 v4, 0x1

    return v4

    .line 615
    .end local v1    # "newGids":[I
    :cond_3
    const/4 v4, 0x0

    return v4
.end method

.method private hasPermissionRequiringReview(I)Z
    .locals 5
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x0

    .line 452
    iget-object v3, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 453
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 454
    iget-object v3, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 455
    .local v1, "permission":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v1, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    move-result v3

    and-int/lit8 v3, v3, 0x40

    if-eqz v3, :cond_0

    .line 457
    const/4 v3, 0x1

    return v3

    .line 453
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 460
    .end local v1    # "permission":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    return v4
.end method

.method private revokePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 7
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v6, -0x1

    .line 619
    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 620
    return v6

    .line 623
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/server/pm/BasePermission;->computeGids(I)[I

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v4

    xor-int/lit8 v0, v4, 0x1

    .line 624
    .local v0, "hasGids":Z
    if-eqz v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v2

    .line 626
    .local v2, "oldGids":[I
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v5, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 628
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->revoke(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 629
    return v6

    .line 624
    .end local v2    # "oldGids":[I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    sget-object v2, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    .restart local v2    # "oldGids":[I
    goto :goto_0

    .line 632
    .restart local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2
    invoke-virtual {v3}, Lcom/android/server/pm/PermissionsState$PermissionData;->isDefault()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 633
    iget-object v4, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/pm/PermissionsState;->ensureNoPermissionData(Ljava/lang/String;)V

    .line 636
    :cond_3
    if-eqz v0, :cond_4

    .line 637
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 638
    .local v1, "newGids":[I
    array-length v4, v2

    array-length v5, v1

    if-eq v4, v5, :cond_4

    .line 639
    const/4 v4, 0x1

    return v4

    .line 643
    .end local v1    # "newGids":[I
    :cond_4
    const/4 v4, 0x0

    return v4
.end method


# virtual methods
.method public computeGids(I)[I
    .locals 7
    .param p1, "userId"    # I

    .prologue
    .line 488
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 490
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 492
    .local v0, "gids":[I
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_2

    .line 493
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v4

    .line 494
    .local v4, "permissionCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 495
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 496
    .local v3, "permission":Ljava/lang/String;
    invoke-virtual {p0, v3, p1}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 494
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 499
    :cond_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 500
    .local v5, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v5, p1}, Lcom/android/server/pm/PermissionsState$PermissionData;->computeGids(I)[I

    move-result-object v2

    .line 501
    .local v2, "permGids":[I
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v2, v6, :cond_0

    .line 502
    invoke-static {v0, v2}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    goto :goto_1

    .line 507
    .end local v1    # "i":I
    .end local v2    # "permGids":[I
    .end local v3    # "permission":Ljava/lang/String;
    .end local v4    # "permissionCount":I
    .end local v5    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_2
    return-object v0
.end method

.method public computeGids([I)[I
    .locals 5
    .param p1, "userIds"    # [I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 519
    .local v0, "gids":[I
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_0

    aget v2, p1, v3

    .line 520
    .local v2, "userId":I
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PermissionsState;->computeGids(I)[I

    move-result-object v1

    .line 521
    .local v1, "userGids":[I
    invoke-static {v0, v1}, Lcom/android/server/pm/PermissionsState;->appendInts([I[I)[I

    move-result-object v0

    .line 519
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 524
    .end local v1    # "userGids":[I
    .end local v2    # "userId":I
    :cond_0
    return-object v0
.end method

.method public copyFrom(Lcom/android/server/pm/PermissionsState;)V
    .locals 9
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState;

    .prologue
    const/4 v8, 0x0

    .line 100
    if-ne p1, p0, :cond_0

    .line 101
    return-void

    .line 104
    :cond_0
    iget-object v7, p0, Lcom/android/server/pm/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 106
    :try_start_0
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_1

    .line 107
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v6, :cond_3

    .line 108
    const/4 v6, 0x0

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v7

    .line 116
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v6, :cond_4

    .line 117
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v6, :cond_2

    .line 118
    new-instance v6, Landroid/util/ArrayMap;

    invoke-direct {v6}, Landroid/util/ArrayMap;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    .line 120
    :cond_2
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 121
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 122
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 123
    .local v1, "name":Ljava/lang/String;
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 124
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    new-instance v7, Lcom/android/server/pm/PermissionsState$PermissionData;

    invoke-direct {v7, v3}, Lcom/android/server/pm/PermissionsState$PermissionData;-><init>(Lcom/android/server/pm/PermissionsState$PermissionData;)V

    invoke-virtual {v6, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 110
    .end local v0    # "i":I
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "permissionCount":I
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_3
    :try_start_1
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 104
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 128
    :cond_4
    sget-object v6, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 129
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    sget-object v7, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    if-eq v6, v7, :cond_5

    .line 130
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 131
    iget-object v7, p1, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    array-length v7, v7

    .line 130
    invoke-static {v6, v7}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 134
    :cond_5
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_6

    .line 135
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_8

    .line 136
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 141
    :cond_6
    :goto_2
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v6, :cond_9

    .line 142
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_7

    .line 143
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 145
    :cond_7
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    .line 146
    .local v5, "userCount":I
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_3
    if-ge v0, v5, :cond_9

    .line 147
    iget-object v6, p1, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v4

    .line 148
    .local v4, "reviewRequired":Z
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v0, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 146
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 138
    .end local v0    # "i":I
    .end local v4    # "reviewRequired":Z
    .end local v5    # "userCount":I
    :cond_8
    iget-object v6, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6}, Landroid/util/SparseBooleanArray;->clear()V

    goto :goto_2

    .line 151
    :cond_9
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 155
    if-ne p0, p1, :cond_0

    .line 156
    const/4 v1, 0x1

    return v1

    .line 158
    :cond_0
    if-nez p1, :cond_1

    .line 159
    return v3

    .line 161
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/pm/PermissionsState;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    .line 162
    return v3

    :cond_2
    move-object v0, p1

    .line 164
    check-cast v0, Lcom/android/server/pm/PermissionsState;

    .line 166
    .local v0, "other":Lcom/android/server/pm/PermissionsState;
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_3

    .line 167
    iget-object v1, v0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-eqz v1, :cond_4

    .line 168
    return v3

    .line 170
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v2, v0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 171
    return v3

    .line 173
    :cond_4
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_5

    .line 174
    iget-object v1, v0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v1, :cond_6

    .line 175
    return v3

    .line 177
    :cond_5
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    iget-object v2, v0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseBooleanArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 178
    return v3

    .line 180
    :cond_6
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    iget-object v2, v0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    return v1
.end method

.method public getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 345
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getInstallPermissionStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 366
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getPermissionFlags(Ljava/lang/String;I)I
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 387
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->getInstallPermissionState(Ljava/lang/String;)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    .line 388
    .local v0, "installPermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v0, :cond_0

    .line 389
    invoke-virtual {v0}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 391
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v1

    .line 392
    .local v1, "runtimePermState":Lcom/android/server/pm/PermissionsState$PermissionState;
    if-eqz v1, :cond_1

    .line 393
    invoke-virtual {v1}, Lcom/android/server/pm/PermissionsState$PermissionState;->getFlags()I

    move-result v2

    return v2

    .line 395
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public getPermissions(I)Ljava/util/Set;
    .locals 5
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 313
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    .line 314
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    return-object v4

    .line 317
    :cond_0
    new-instance v3, Landroid/util/ArraySet;

    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/util/ArraySet;-><init>(I)V

    .line 319
    .local v3, "permissions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 320
    .local v2, "permissionCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_3

    .line 321
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 323
    .local v1, "permission":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 324
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 320
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 328
    :cond_2
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    .line 329
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/PermissionsState;->hasRuntimePermission(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 330
    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 335
    .end local v1    # "permission":Ljava/lang/String;
    :cond_3
    return-object v3
.end method

.method public getRuntimePermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 356
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 357
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/PermissionsState$PermissionState;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimePermissionStates(I)Ljava/util/List;
    .locals 1
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/pm/PermissionsState$PermissionState;",
            ">;"
        }
    .end annotation

    .prologue
    .line 375
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 376
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->getPermissionStatesInternal(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public grantInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 196
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public grantRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 221
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 222
    if-ne p2, v0, :cond_0

    .line 223
    return v0

    .line 225
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->grantPermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public hasInstallPermission(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 265
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public hasPermission(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 277
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 279
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v2, :cond_0

    .line 280
    return v1

    .line 283
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 284
    .local v0, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-eqz v0, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->isGranted(I)Z

    move-result v1

    :cond_1
    return v1
.end method

.method public hasRequestedPermission(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "names":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 292
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v1, :cond_0

    .line 293
    return v3

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 296
    iget-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 297
    const/4 v1, 0x1

    return v1

    .line 295
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 300
    :cond_2
    return v3
.end method

.method public hasRuntimePermission(Ljava/lang/String;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 254
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 255
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PermissionsState;->hasInstallPermission(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->hasPermission(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPermissionReviewRequired(I)Z
    .locals 1
    .param p1, "userId"    # I

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    sget-object v0, Lcom/android/server/pm/PermissionsState;->NO_GIDS:[I

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 533
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 535
    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 539
    iput-object v2, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 540
    return-void

    .line 533
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public revokeInstallPermission(Lcom/android/server/pm/BasePermission;)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;

    .prologue
    .line 208
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public revokeRuntimePermission(Lcom/android/server/pm/BasePermission;I)I
    .locals 1
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I

    .prologue
    const/4 v0, -0x1

    .line 238
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 239
    if-ne p2, v0, :cond_0

    .line 240
    return v0

    .line 242
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PermissionsState;->revokePermission(Lcom/android/server/pm/BasePermission;I)I

    move-result v0

    return v0
.end method

.method public setGlobalGids([I)V
    .locals 1
    .param p1, "globalGids"    # [I

    .prologue
    .line 89
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/PermissionsState;->mGlobalGids:[I

    .line 92
    :cond_0
    return-void
.end method

.method public updatePermissionFlags(Lcom/android/server/pm/BasePermission;III)Z
    .locals 9
    .param p1, "permission"    # Lcom/android/server/pm/BasePermission;
    .param p2, "userId"    # I
    .param p3, "flagMask"    # I
    .param p4, "flagValues"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 408
    invoke-static {p2}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 410
    if-nez p4, :cond_0

    if-eqz p3, :cond_1

    :cond_0
    const/4 v0, 0x1

    .line 412
    .local v0, "mayChangeFlags":Z
    :goto_0
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v5, :cond_3

    .line 413
    if-nez v0, :cond_2

    .line 414
    return v7

    .line 410
    .end local v0    # "mayChangeFlags":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mayChangeFlags":Z
    goto :goto_0

    .line 416
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 419
    :cond_3
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    iget-object v6, p1, Lcom/android/server/pm/BasePermission;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 420
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    if-nez v3, :cond_5

    .line 421
    if-nez v0, :cond_4

    .line 422
    return v7

    .line 424
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/pm/PermissionsState;->ensurePermissionData(Lcom/android/server/pm/BasePermission;)Lcom/android/server/pm/PermissionsState$PermissionData;

    move-result-object v3

    .line 427
    :cond_5
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    move-result v2

    .line 429
    .local v2, "oldFlags":I
    invoke-virtual {v3, p2, p3, p4}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    .line 430
    .local v4, "updated":Z
    if-eqz v4, :cond_7

    .line 431
    invoke-virtual {v3, p2}, Lcom/android/server/pm/PermissionsState$PermissionData;->getFlags(I)I

    move-result v1

    .line 432
    .local v1, "newFlags":I
    and-int/lit8 v5, v2, 0x40

    if-nez v5, :cond_8

    .line 433
    and-int/lit8 v5, v1, 0x40

    if-eqz v5, :cond_8

    .line 434
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_6

    .line 435
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    .line 437
    :cond_6
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    const/4 v6, 0x1

    invoke-virtual {v5, p2, v6}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 448
    .end local v1    # "newFlags":I
    :cond_7
    :goto_1
    return v4

    .line 438
    .restart local v1    # "newFlags":I
    :cond_8
    and-int/lit8 v5, v2, 0x40

    if-eqz v5, :cond_7

    .line 439
    and-int/lit8 v5, v1, 0x40

    if-nez v5, :cond_7

    .line 440
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    if-eqz v5, :cond_7

    invoke-direct {p0, p2}, Lcom/android/server/pm/PermissionsState;->hasPermissionRequiringReview(I)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_7

    .line 441
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, p2}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 442
    iget-object v5, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5}, Landroid/util/SparseBooleanArray;->size()I

    move-result v5

    if-gtz v5, :cond_7

    .line 443
    iput-object v8, p0, Lcom/android/server/pm/PermissionsState;->mPermissionReviewRequired:Landroid/util/SparseBooleanArray;

    goto :goto_1
.end method

.method public updatePermissionFlagsForAllPermissions(III)Z
    .locals 5
    .param p1, "userId"    # I
    .param p2, "flagMask"    # I
    .param p3, "flagValues"    # I

    .prologue
    .line 465
    invoke-static {p1}, Lcom/android/server/pm/PermissionsState;->enforceValidUserId(I)V

    .line 467
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    if-nez v4, :cond_0

    .line 468
    const/4 v4, 0x0

    return v4

    .line 470
    :cond_0
    const/4 v0, 0x0

    .line 471
    .local v0, "changed":Z
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 472
    .local v2, "permissionCount":I
    const/4 v1, 0x0

    .end local v0    # "changed":Z
    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 473
    iget-object v4, p0, Lcom/android/server/pm/PermissionsState;->mPermissions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PermissionsState$PermissionData;

    .line 474
    .local v3, "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/pm/PermissionsState$PermissionData;->updateFlags(III)Z

    move-result v4

    or-int/2addr v0, v4

    .line 472
    .local v0, "changed":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 476
    .end local v0    # "changed":Z
    .end local v3    # "permissionData":Lcom/android/server/pm/PermissionsState$PermissionData;
    :cond_1
    return v0
.end method
