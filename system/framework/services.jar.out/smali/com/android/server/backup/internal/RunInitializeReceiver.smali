.class public Lcom/android/server/backup/internal/RunInitializeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "RunInitializeReceiver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 36
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    const-string/jumbo v2, "android.app.backup.intent.INIT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 42
    :try_start_0
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v4, "Running a device init"

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPendingInits()Landroid/util/ArraySet;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArraySet;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 46
    .local v1, "pendingInits":[Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearPendingInits()V

    .line 47
    new-instance v0, Lcom/android/server/backup/internal/PerformInitializeTask;

    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 48
    const/4 v4, 0x0

    .line 47
    invoke-direct {v0, v2, v1, v4}, Lcom/android/server/backup/internal/PerformInitializeTask;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;[Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 52
    .local v0, "initTask":Lcom/android/server/backup/internal/PerformInitializeTask;
    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 53
    iget-object v2, p0, Lcom/android/server/backup/internal/RunInitializeReceiver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/backup/internal/BackupHandler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 56
    .end local v0    # "initTask":Lcom/android/server/backup/internal/PerformInitializeTask;
    .end local v1    # "pendingInits":[Ljava/lang/String;
    :cond_0
    return-void

    .line 40
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
