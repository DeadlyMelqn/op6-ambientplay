.class Lcom/android/server/backup/BackupManagerService$6;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->endFullBackup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$6;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 5645
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 5648
    const/4 v0, 0x0

    .line 5649
    .local v0, "pftbt":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$6;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, v1, Lcom/android/server/backup/BackupManagerService;->mQueueLock:Ljava/lang/Object;

    monitor-enter v2

    .line 5650
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$6;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v1, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;

    if-eqz v1, :cond_0

    .line 5651
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$6;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v1, Lcom/android/server/backup/BackupManagerService;->mRunningFullBackupTask:Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "pftbt":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :cond_0
    monitor-exit v2

    .line 5654
    if-eqz v0, :cond_1

    .line 5656
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Telling running backup to stop"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5658
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;->handleCancel(Z)V

    .line 5660
    :cond_1
    return-void

    .line 5649
    .restart local v0    # "pftbt":Lcom/android/server/backup/BackupManagerService$PerformFullTransportBackupTask;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method
