.class public final Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;
.super Ljava/lang/Object;
.source "NetworkPolicyManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/net/NetworkPolicyManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceCloseSocketCallback"
.end annotation


# instance fields
.field fifo_uids:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;

    .prologue
    .line 1128
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1129
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    .line 1128
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 1138
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1139
    .local v2, "uid":Ljava/lang/Integer;
    monitor-enter p0

    .line 1140
    :try_start_0
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1141
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "uid":Ljava/lang/Integer;
    check-cast v2, Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v2    # "uid":Ljava/lang/Integer;
    :cond_0
    monitor-exit p0

    .line 1144
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Retrieve one close Uid :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", left size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_5

    .line 1146
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController$LocalService;->isDeviceDeepIdleMode()Z

    move-result v1

    .line 1147
    .local v1, "isDeepIdle":Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1148
    const-string/jumbo v3, "NetworkPolicy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isDozeChangeSupport="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", mPolicy="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get16()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", isDeepIdle="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1150
    :cond_2
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get10()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get5()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get16()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_5

    if-eqz v1, :cond_5

    .line 1159
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v4, v3, Lcom/android/server/net/NetworkPolicyManagerService;->mUidRulesFirstLock:Ljava/lang/Object;

    monitor-enter v4

    .line 1160
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v3, v6, :cond_4

    .line 1161
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get8(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/DeviceIdleController$LocalService;->isAppOnWhitelist(I)Z

    move-result v0

    .line 1162
    .local v0, "isAppOnWhitelist":Z
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1()Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "NetworkPolicy"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Try to close Uid :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", isAppOnWhitelist = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    :cond_3
    if-nez v0, :cond_4

    .line 1164
    iget-object v3, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v3}, Lcom/android/server/net/NetworkPolicyManagerService;->-get15(Lcom/android/server/net/NetworkPolicyManagerService;)Lcom/android/server/NetworkManagementInternal;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/NetworkManagementInternal;->forceCloseUidSocketForDeepSleep(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v0    # "isAppOnWhitelist":Z
    :cond_4
    monitor-exit v4

    .line 1170
    .end local v1    # "isDeepIdle":Z
    :cond_5
    return-void

    .line 1139
    .end local v2    # "uid":Ljava/lang/Integer;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1159
    .restart local v1    # "isDeepIdle":Z
    .restart local v2    # "uid":Ljava/lang/Integer;
    :catchall_1
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public setInForceCloseSocketUid(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 1131
    monitor-enter p0

    .line 1132
    :try_start_0
    invoke-static {}, Lcom/android/server/net/NetworkPolicyManagerService;->-get1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NetworkPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setInForceCloseSocketUid, add Uid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1133
    :cond_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$ForceCloseSocketCallback;->fifo_uids:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 1135
    return-void

    .line 1131
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
