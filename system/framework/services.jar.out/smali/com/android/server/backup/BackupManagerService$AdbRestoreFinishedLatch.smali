.class Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Lcom/android/server/backup/BackupRestoreTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AdbRestoreFinishedLatch"
.end annotation


# static fields
.field static final TAG:Ljava/lang/String; = "AdbRestoreFinishedLatch"


# instance fields
.field private final mCurrentOpToken:I

.field final mLatch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;I)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "currentOpToken"    # I

    .prologue
    .line 7052
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7053
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    .line 7054
    iput p2, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mCurrentOpToken:I

    .line 7055
    return-void
.end method


# virtual methods
.method await()V
    .locals 6

    .prologue
    .line 7058
    const/4 v1, 0x0

    .line 7060
    .local v1, "latched":Z
    :try_start_0
    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/32 v4, 0x493e0

    invoke-virtual {v2, v4, v5, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 7064
    .end local v1    # "latched":Z
    :goto_0
    return-void

    .line 7061
    .restart local v1    # "latched":Z
    :catch_0
    move-exception v0

    .line 7062
    .local v0, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v2, "AdbRestoreFinishedLatch"

    const-string/jumbo v3, "Interrupted!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public execute()V
    .locals 0

    .prologue
    .line 7069
    return-void
.end method

.method public handleCancel(Z)V
    .locals 2
    .param p1, "cancelAll"    # Z

    .prologue
    .line 7083
    const-string/jumbo v0, "AdbRestoreFinishedLatch"

    const-string/jumbo v1, "adb onRestoreFinished() timed out"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7085
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 7086
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    .line 7087
    return-void
.end method

.method public operationComplete(J)V
    .locals 2
    .param p1, "result"    # J

    .prologue
    .line 7076
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 7077
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget v1, p0, Lcom/android/server/backup/BackupManagerService$AdbRestoreFinishedLatch;->mCurrentOpToken:I

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->-wrap19(Lcom/android/server/backup/BackupManagerService;I)V

    .line 7078
    return-void
.end method
