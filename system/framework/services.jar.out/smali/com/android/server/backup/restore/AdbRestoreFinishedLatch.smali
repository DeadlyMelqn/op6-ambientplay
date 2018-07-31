.class public Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;
.super Ljava/lang/Object;
.source "AdbRestoreFinishedLatch.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# static fields
.field private static final TAG:Ljava/lang/String; = "AdbRestoreFinishedLatch"


# instance fields
.field private backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field private final mCurrentOpToken:I

.field final mLatch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;I)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p2, "currentOpToken"    # I

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 44
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 45
    iput p2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    .line 46
    return-void
.end method


# virtual methods
.method await()V
    .locals 6

    .prologue
    .line 49
    const/4 v1, 0x0

    .line 51
    .local v1, "latched":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 55
    .end local v1    # "latched":Z
    :goto_0
    return-void

    .line 52
    .restart local v1    # "latched":Z
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "AdbRestoreFinishedLatch"

    const-string/jumbo v3, "Interrupted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 60
    return-void
.end method

.method public handleCancel(Z)V
    .locals 2
    .param p1, "cancelAll"    # Z

    .prologue
    .line 74
    const-string/jumbo v0, "AdbRestoreFinishedLatch"

    const-string/jumbo v1, "adb onRestoreFinished() timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 77
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    .line 78
    return-void
.end method

.method public operationComplete(J)V
    .locals 2
    .param p1, "result"    # J

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 68
    iget-object v0, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->backupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget v1, p0, Lcom/android/server/backup/restore/AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->removeOperation(I)V

    .line 69
    return-void
.end method
