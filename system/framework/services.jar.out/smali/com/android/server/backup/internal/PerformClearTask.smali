.class public Lcom/android/server/backup/internal/PerformClearTask;
.super Ljava/lang/Object;
.source "PerformClearTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mPackage:Landroid/content/pm/PackageInfo;

.field mTransport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/internal/backup/IBackupTransport;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p2, "transport"    # Lcom/android/internal/backup/IBackupTransport;
    .param p3, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/android/server/backup/internal/PerformClearTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 38
    iput-object p2, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    .line 39
    iput-object p3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    .line 40
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 45
    :try_start_0
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBaseStateDir()Ljava/io/File;

    move-result-object v3

    .line 46
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->transportDirName()Ljava/lang/String;

    move-result-object v4

    .line 45
    invoke-direct {v1, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    .local v1, "stateDir":Ljava/io/File;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 48
    .local v2, "stateFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 52
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-interface {v3, v4}, Lcom/android/internal/backup/IBackupTransport;->clearBackupData(Landroid/content/pm/PackageInfo;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    :try_start_1
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 65
    :goto_0
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 67
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "stateFile":Ljava/io/File;
    :goto_1
    return-void

    .line 59
    .restart local v1    # "stateDir":Ljava/io/File;
    .restart local v2    # "stateFile":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to mark clear operation finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 53
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "stateDir":Ljava/io/File;
    .end local v2    # "stateFile":Ljava/io/File;
    :catch_1
    move-exception v0

    .line 54
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Transport threw clearing data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/backup/internal/PerformClearTask;->mPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    :try_start_3
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v3}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 65
    :goto_2
    iget-object v3, p0, Lcom/android/server/backup/internal/PerformClearTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_1

    .line 59
    :catch_2
    move-exception v0

    .line 61
    const-string/jumbo v3, "BackupManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to mark clear operation finished: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 55
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 58
    :try_start_4
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->mTransport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v4}, Lcom/android/internal/backup/IBackupTransport;->finishBackup()I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    .line 65
    :goto_3
    iget-object v4, p0, Lcom/android/server/backup/internal/PerformClearTask;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getWakelock()Landroid/os/PowerManager$WakeLock;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 55
    throw v3

    .line 59
    :catch_3
    move-exception v0

    .line 61
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Unable to mark clear operation finished: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method
