.class Lcom/android/server/backup/BackupManagerService$9;
.super Ljava/lang/Object;
.source "BackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/BackupManagerService;->updateStateForTransport(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;

.field final synthetic val$transport:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$9;->this$0:Lcom/android/server/backup/BackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$9;->val$transport:Lcom/android/internal/backup/IBackupTransport;

    .line 10586
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 10590
    :try_start_0
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "new thread to transport.getCurrentRestoreSet()"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10591
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$9;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v2, p0, Lcom/android/server/backup/BackupManagerService$9;->val$transport:Lcom/android/internal/backup/IBackupTransport;

    invoke-interface {v2}, Lcom/android/internal/backup/IBackupTransport;->getCurrentRestoreSet()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    .line 10592
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCurrentRestoreSet mCurrentToken = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/BackupManagerService$9;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-wide v4, v3, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 10593
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$9;->this$0:Lcom/android/server/backup/BackupManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/backup/BackupManagerService;->-set1(Lcom/android/server/backup/BackupManagerService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10600
    :goto_0
    return-void

    .line 10594
    :catch_0
    move-exception v0

    .line 10597
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$9;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v1, v6}, Lcom/android/server/backup/BackupManagerService;->-set1(Lcom/android/server/backup/BackupManagerService;Z)Z

    .line 10598
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$9;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lcom/android/server/backup/BackupManagerService;->mCurrentToken:J

    goto :goto_0
.end method
