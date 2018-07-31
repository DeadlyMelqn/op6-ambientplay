.class public Lcom/android/server/backup/internal/ProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "ProvisionedObserver.java"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/os/Handler;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 35
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 36
    iput-object p1, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 37
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .prologue
    .line 40
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v1

    .line 41
    .local v1, "wasProvisioned":Z
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->deviceIsProvisioned()Z

    move-result v0

    .line 43
    .local v0, "isProvisioned":Z
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    if-nez v1, :cond_1

    .end local v0    # "isProvisioned":Z
    :goto_0
    invoke-virtual {v2, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->setProvisioned(Z)V

    .line 49
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getQueueLock()Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 50
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isProvisioned()Z

    move-result v2

    if-eqz v2, :cond_0

    xor-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    .line 51
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->isEnabled()Z

    move-result v2

    .line 50
    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v2}, Lcom/android/server/backup/RefactoredBackupManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backup/KeyValueBackupJob;->schedule(Landroid/content/Context;)V

    .line 57
    iget-object v2, p0, Lcom/android/server/backup/internal/ProvisionedObserver;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    const-wide/16 v4, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 60
    return-void

    .line 43
    .restart local v0    # "isProvisioned":Z
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "isProvisioned":Z
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
