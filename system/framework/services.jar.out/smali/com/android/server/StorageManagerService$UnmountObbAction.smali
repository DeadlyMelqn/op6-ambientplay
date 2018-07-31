.class Lcom/android/server/StorageManagerService$UnmountObbAction;
.super Lcom/android/server/StorageManagerService$ObbAction;
.source "StorageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/StorageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UnmountObbAction"
.end annotation


# instance fields
.field private final mForceUnmount:Z

.field final synthetic this$0:Lcom/android/server/StorageManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/StorageManagerService;
    .param p2, "obbState"    # Lcom/android/server/StorageManagerService$ObbState;
    .param p3, "force"    # Z

    .prologue
    .line 3874
    iput-object p1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    .line 3875
    invoke-direct {p0, p1, p2}, Lcom/android/server/StorageManagerService$ObbAction;-><init>(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V

    .line 3876
    iput-boolean p3, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    .line 3877
    return-void
.end method


# virtual methods
.method public handleError()V
    .locals 1

    .prologue
    .line 3934
    const/16 v0, 0x14

    invoke-virtual {p0, v0}, Lcom/android/server/StorageManagerService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3935
    return-void
.end method

.method public handleExecute()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x2

    .line 3881
    iget-object v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-wrap16(Lcom/android/server/StorageManagerService;)V

    .line 3882
    iget-object v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-wrap17(Lcom/android/server/StorageManagerService;)V

    .line 3885
    iget-object v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 3886
    :try_start_0
    iget-object v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-get11(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v5

    iget-object v7, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v7, v7, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-interface {v5, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/StorageManagerService$ObbState;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "existingState":Lcom/android/server/StorageManagerService$ObbState;
    monitor-exit v6

    .line 3889
    if-nez v3, :cond_0

    .line 3890
    const/16 v5, 0x17

    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3891
    return-void

    .line 3885
    .end local v3    # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 3894
    .restart local v3    # "existingState":Lcom/android/server/StorageManagerService$ObbState;
    :cond_0
    iget v5, v3, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    iget-object v6, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget v6, v6, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    if-eq v5, v6, :cond_1

    .line 3895
    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Permission denied attempting to unmount OBB "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v3, Lcom/android/server/StorageManagerService$ObbState;->rawPath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3896
    const-string/jumbo v7, " (owned by GID "

    .line 3895
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3896
    iget v7, v3, Lcom/android/server/StorageManagerService$ObbState;->ownerGid:I

    .line 3895
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3896
    const-string/jumbo v7, ")"

    .line 3895
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3897
    const/16 v5, 0x19

    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3898
    return-void

    .line 3901
    :cond_1
    const/4 v4, 0x0

    .line 3903
    .local v4, "rc":I
    :try_start_1
    new-instance v0, Lcom/android/server/NativeDaemonConnector$Command;

    const-string/jumbo v5, "obb"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string/jumbo v7, "unmount"

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    iget-object v7, v7, Lcom/android/server/StorageManagerService$ObbState;->canonicalPath:Ljava/lang/String;

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-direct {v0, v5, v6}, Lcom/android/server/NativeDaemonConnector$Command;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3904
    .local v0, "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    iget-boolean v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    if-eqz v5, :cond_2

    .line 3905
    const-string/jumbo v5, "force"

    invoke-virtual {v0, v5}, Lcom/android/server/NativeDaemonConnector$Command;->appendArg(Ljava/lang/Object;)Lcom/android/server/NativeDaemonConnector$Command;

    .line 3907
    :cond_2
    iget-object v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-get1(Lcom/android/server/StorageManagerService;)Lcom/android/server/NativeDaemonConnector;

    move-result-object v5

    invoke-virtual {v5, v0}, Lcom/android/server/NativeDaemonConnector;->execute(Lcom/android/server/NativeDaemonConnector$Command;)Lcom/android/server/NativeDaemonEvent;
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    .line 3920
    .end local v0    # "cmd":Lcom/android/server/NativeDaemonConnector$Command;
    :goto_0
    if-nez v4, :cond_5

    .line 3921
    iget-object v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5}, Lcom/android/server/StorageManagerService;->-get10(Lcom/android/server/StorageManagerService;)Ljava/util/Map;

    move-result-object v6

    monitor-enter v6

    .line 3922
    :try_start_2
    iget-object v5, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->this$0:Lcom/android/server/StorageManagerService;

    invoke-static {v5, v3}, Lcom/android/server/StorageManagerService;->-wrap12(Lcom/android/server/StorageManagerService;Lcom/android/server/StorageManagerService$ObbState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v6

    .line 3925
    invoke-virtual {p0, v9}, Lcom/android/server/StorageManagerService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    .line 3930
    :goto_1
    return-void

    .line 3908
    :catch_0
    move-exception v2

    .line 3909
    .local v2, "e":Lcom/android/server/NativeDaemonConnectorException;
    invoke-virtual {v2}, Lcom/android/server/NativeDaemonConnectorException;->getCode()I

    move-result v1

    .line 3910
    .local v1, "code":I
    const/16 v5, 0x195

    if-ne v1, v5, :cond_3

    .line 3911
    const/4 v4, -0x7

    goto :goto_0

    .line 3912
    :cond_3
    const/16 v5, 0x196

    if-ne v1, v5, :cond_4

    .line 3914
    const/4 v4, 0x0

    goto :goto_0

    .line 3916
    :cond_4
    const/4 v4, -0x1

    goto :goto_0

    .line 3921
    .end local v1    # "code":I
    .end local v2    # "e":Lcom/android/server/NativeDaemonConnectorException;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 3927
    :cond_5
    const-string/jumbo v5, "StorageManagerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Could not unmount OBB: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3928
    const/16 v5, 0x16

    invoke-virtual {p0, v5}, Lcom/android/server/StorageManagerService$UnmountObbAction;->sendNewStatusOrIgnore(I)V

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3939
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3940
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "UnmountObbAction{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3941
    iget-object v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mObbState:Lcom/android/server/StorageManagerService$ObbState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3942
    const-string/jumbo v1, ",force="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3943
    iget-boolean v1, p0, Lcom/android/server/StorageManagerService$UnmountObbAction;->mForceUnmount:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 3944
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3945
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
