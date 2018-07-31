.class Lcom/android/server/am/OemFossModeManager$2;
.super Landroid/app/IProcessObserver$Stub;
.source "OemFossModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemFossModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemFossModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemFossModeManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OemFossModeManager$2;->this$0:Lcom/android/server/am/OemFossModeManager;

    .line 511
    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 10
    .param p1, "pid"    # I
    .param p2, "uid"    # I
    .param p3, "foregroundActivities"    # Z

    .prologue
    .line 515
    const/4 v3, -0x1

    .line 516
    .local v3, "uid_t":I
    const-string/jumbo v2, ""

    .line 517
    .local v2, "packageName_t":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/am/OemFossModeManager;->-get0()Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    monitor-enter v5

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 518
    iget-object v4, p0, Lcom/android/server/am/OemFossModeManager$2;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v4}, Lcom/android/server/am/OemFossModeManager;->-wrap0(Lcom/android/server/am/OemFossModeManager;)Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 519
    .local v0, "currentFrontApp":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v4, :cond_2

    .line 520
    :cond_0
    sget-boolean v4, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v4, :cond_1

    const-string/jumbo v4, "OemFossModeManager"

    const-string/jumbo v6, "[OemFossMode] currentFrontApp is null, return"

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit v5

    .line 517
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 521
    return-void

    .line 519
    :cond_2
    :try_start_1
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v4, :cond_0

    .line 524
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v3, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 525
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 517
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 528
    const/4 v4, -0x1

    if-eq v3, v4, :cond_3

    const-string/jumbo v4, ""

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 529
    :cond_3
    sget-boolean v4, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "OemFossModeManager"

    const-string/jumbo v5, "[OemFossMode] info is error, return"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_4
    return-void

    .line 517
    .end local v0    # "currentFrontApp":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v4

    monitor-exit v5

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 533
    .restart local v0    # "currentFrontApp":Lcom/android/server/am/ActivityRecord;
    :cond_5
    sget-boolean v4, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v4, :cond_6

    const-string/jumbo v4, "OemFossModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[OemFossMode] onForegroundActivitiesChanged pid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |uid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |foregroundActivities:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |CurrentFrontUid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    :cond_6
    iget-object v4, p0, Lcom/android/server/am/OemFossModeManager$2;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v4}, Lcom/android/server/am/OemFossModeManager;->-get1(Lcom/android/server/am/OemFossModeManager;)I

    move-result v4

    if-eq v3, v4, :cond_7

    .line 536
    iget-object v4, p0, Lcom/android/server/am/OemFossModeManager$2;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v4, v3}, Lcom/android/server/am/OemFossModeManager;->-set0(Lcom/android/server/am/OemFossModeManager;I)I

    .line 538
    iget-object v4, p0, Lcom/android/server/am/OemFossModeManager$2;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v4}, Lcom/android/server/am/OemFossModeManager;->-get2(Lcom/android/server/am/OemFossModeManager;)Landroid/os/Handler;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5, p1, p2, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 539
    .local v1, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/am/OemFossModeManager$2;->this$0:Lcom/android/server/am/OemFossModeManager;

    invoke-static {v4}, Lcom/android/server/am/OemFossModeManager;->-get2(Lcom/android/server/am/OemFossModeManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-static {}, Lcom/android/server/am/OemFossModeManager;->-get3()J

    move-result-wide v6

    const-wide/16 v8, 0x2

    mul-long/2addr v6, v8

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 541
    .end local v1    # "msg":Landroid/os/Message;
    :cond_7
    return-void
.end method

.method public onProcessDied(II)V
    .locals 0
    .param p1, "arg0"    # I
    .param p2, "arg1"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    return-void
.end method
