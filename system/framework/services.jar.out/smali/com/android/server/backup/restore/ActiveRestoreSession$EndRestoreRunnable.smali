.class public Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;
.super Ljava/lang/Object;
.source "ActiveRestoreSession.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/restore/ActiveRestoreSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EndRestoreRunnable"
.end annotation


# instance fields
.field mBackupManager:Lcom/android/server/backup/RefactoredBackupManagerService;

.field mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

.field final synthetic this$0:Lcom/android/server/backup/restore/ActiveRestoreSession;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/server/backup/restore/ActiveRestoreSession;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/restore/ActiveRestoreSession;
    .param p2, "manager"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p3, "session"    # Lcom/android/server/backup/restore/ActiveRestoreSession;

    .prologue
    .line 371
    iput-object p1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->this$0:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    iput-object p2, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 374
    iput-object p3, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    .line 375
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 379
    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    monitor-enter v1

    .line 380
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/server/backup/restore/ActiveRestoreSession;->-set0(Lcom/android/server/backup/restore/ActiveRestoreSession;Lcom/android/internal/backup/IBackupTransport;)Lcom/android/internal/backup/IBackupTransport;

    .line 381
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/server/backup/restore/ActiveRestoreSession;->mEnded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 386
    iget-object v0, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mBackupManager:Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/restore/ActiveRestoreSession$EndRestoreRunnable;->mSession:Lcom/android/server/backup/restore/ActiveRestoreSession;

    invoke-virtual {v0, v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearRestoreSession(Lcom/android/server/backup/restore/ActiveRestoreSession;)V

    .line 387
    return-void

    .line 379
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
