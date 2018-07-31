.class final Lcom/android/server/AppOpsService$ClientRestrictionState;
.super Ljava/lang/Object;
.source "AppOpsService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientRestrictionState"
.end annotation


# instance fields
.field perUserExcludedPackages:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field perUserRestrictions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[Z>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/AppOpsService;

.field private final token:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/AppOpsService;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/AppOpsService;
    .param p2, "token"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2919
    iput-object p1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2921
    const/4 v0, 0x0

    invoke-interface {p2, p0, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 2922
    iput-object p2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    .line 2923
    return-void
.end method

.method private isDefault([Z)Z
    .locals 5
    .param p1, "array"    # [Z

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 3056
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3057
    return v4

    .line 3059
    :cond_0
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget-boolean v0, p1, v1

    .line 3060
    .local v0, "value":Z
    if-eqz v0, :cond_1

    .line 3061
    return v2

    .line 3059
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3064
    .end local v0    # "value":Z
    :cond_2
    return v4
.end method


# virtual methods
.method public binderDied()V
    .locals 9

    .prologue
    .line 3031
    iget-object v7, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    monitor-enter v7

    .line 3032
    :try_start_0
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v6}, Lcom/android/server/AppOpsService;->-get0(Lcom/android/server/AppOpsService;)Landroid/util/ArrayMap;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    invoke-virtual {v6, v8}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3033
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v6, :cond_0

    monitor-exit v7

    .line 3034
    return-void

    .line 3036
    :cond_0
    :try_start_1
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 3037
    .local v5, "userCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v5, :cond_3

    .line 3038
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Z

    .line 3039
    .local v4, "restrictions":[Z
    array-length v3, v4

    .line 3040
    .local v3, "restrictionCount":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_2

    .line 3041
    aget-boolean v6, v4, v2

    if-eqz v6, :cond_1

    .line 3042
    move v0, v2

    .line 3043
    .local v0, "changedCode":I
    iget-object v6, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v6, v6, Lcom/android/server/AppOpsService;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/-$Lambda$pxHDwRy_8WGgaOZHQ9e3tJlXPqU;

    invoke-direct {v8, v0, p0}, Lcom/android/server/-$Lambda$pxHDwRy_8WGgaOZHQ9e3tJlXPqU;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v6, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3040
    .end local v0    # "changedCode":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 3037
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3047
    .end local v2    # "j":I
    .end local v3    # "restrictionCount":I
    .end local v4    # "restrictions":[Z
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/AppOpsService$ClientRestrictionState;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v7

    .line 3049
    return-void

    .line 3031
    .end local v1    # "i":I
    .end local v5    # "userCount":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 3052
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3053
    return-void
.end method

.method public hasRestriction(ILjava/lang/String;I)Z
    .locals 5
    .param p1, "restriction"    # I
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2990
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v2, :cond_0

    .line 2991
    return v3

    .line 2993
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Z

    .line 2994
    .local v1, "restrictions":[Z
    if-nez v1, :cond_1

    .line 2995
    return v3

    .line 2997
    :cond_1
    aget-boolean v2, v1, p1

    if-nez v2, :cond_2

    .line 2998
    return v3

    .line 3000
    :cond_2
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v2, :cond_3

    .line 3001
    return v4

    .line 3003
    :cond_3
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v2, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 3004
    .local v0, "perUserExclusions":[Ljava/lang/String;
    if-nez v0, :cond_4

    .line 3005
    return v4

    .line 3007
    :cond_4
    invoke-static {v0, p2}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    return v2
.end method

.method public isDefault()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3026
    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method synthetic lambda$-com_android_server_AppOpsService$ClientRestrictionState_129335(I)V
    .locals 1
    .param p1, "changedCode"    # I

    .prologue
    .line 3043
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    invoke-static {v0, p1}, Lcom/android/server/AppOpsService;->-wrap0(Lcom/android/server/AppOpsService;I)V

    return-void
.end method

.method public removeUser(I)V
    .locals 2
    .param p1, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 3011
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v0, :cond_0

    .line 3012
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3013
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 3014
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 3017
    :cond_0
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v0, :cond_1

    .line 3018
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 3019
    iget-object v0, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 3020
    iput-object v1, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 3023
    :cond_1
    return-void
.end method

.method public setRestriction(IZ[Ljava/lang/String;I)Z
    .locals 11
    .param p1, "code"    # I
    .param p2, "restricted"    # Z
    .param p3, "excludedPackages"    # [Ljava/lang/String;
    .param p4, "userId"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x0

    .line 2927
    const/4 v0, 0x0

    .line 2929
    .local v0, "changed":Z
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-nez v8, :cond_0

    if-eqz p2, :cond_0

    .line 2930
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    .line 2934
    :cond_0
    const/4 v8, -0x1

    if-ne p4, v8, :cond_1

    .line 2935
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->this$0:Lcom/android/server/AppOpsService;

    iget-object v8, v8, Lcom/android/server/AppOpsService;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 2937
    .local v2, "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v7, v8, [I

    .line 2938
    .local v7, "users":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 2939
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    aput v8, v7, v1

    .line 2938
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2942
    .end local v1    # "i":I
    .end local v2    # "liveUsers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    .end local v7    # "users":[I
    :cond_1
    const/4 v8, 0x1

    new-array v7, v8, [I

    aput p4, v7, v10

    .line 2945
    .restart local v7    # "users":[I
    :cond_2
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    if-eqz v8, :cond_a

    .line 2946
    array-length v4, v7

    .line 2948
    .local v4, "numUsers":I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v4, :cond_a

    .line 2949
    aget v5, v7, v1

    .line 2951
    .local v5, "thisUserId":I
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Z

    .line 2952
    .local v6, "userRestrictions":[Z
    if-nez v6, :cond_3

    if-eqz p2, :cond_3

    .line 2953
    const/16 v8, 0x4e

    new-array v6, v8, [Z

    .line 2954
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2956
    :cond_3
    if-eqz v6, :cond_5

    aget-boolean v8, v6, p1

    if-eq v8, p2, :cond_5

    .line 2957
    aput-boolean p2, v6, p1

    .line 2958
    if-nez p2, :cond_4

    invoke-direct {p0, v6}, Lcom/android/server/AppOpsService$ClientRestrictionState;->isDefault([Z)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2959
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserRestrictions:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 2960
    const/4 v6, 0x0

    .line 2962
    .end local v6    # "userRestrictions":[Z
    :cond_4
    const/4 v0, 0x1

    .line 2965
    :cond_5
    if-eqz v6, :cond_8

    .line 2966
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v3

    .line 2967
    .local v3, "noExcludedPackages":Z
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-nez v8, :cond_6

    xor-int/lit8 v8, v3, 0x1

    if-eqz v8, :cond_6

    .line 2968
    new-instance v8, Landroid/util/SparseArray;

    invoke-direct {v8}, Landroid/util/SparseArray;-><init>()V

    iput-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2970
    :cond_6
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    if-eqz v8, :cond_8

    .line 2971
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Object;

    .line 2970
    invoke-static {p3, v8}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_8

    .line 2972
    if-eqz v3, :cond_9

    .line 2973
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 2974
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-gtz v8, :cond_7

    .line 2975
    iput-object v9, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    .line 2980
    :cond_7
    :goto_2
    const/4 v0, 0x1

    .line 2948
    .end local v3    # "noExcludedPackages":Z
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2978
    .restart local v3    # "noExcludedPackages":Z
    :cond_9
    iget-object v8, p0, Lcom/android/server/AppOpsService$ClientRestrictionState;->perUserExcludedPackages:Landroid/util/SparseArray;

    invoke-virtual {v8, v5, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 2986
    .end local v1    # "i":I
    .end local v3    # "noExcludedPackages":Z
    .end local v4    # "numUsers":I
    .end local v5    # "thisUserId":I
    :cond_a
    return v0
.end method
