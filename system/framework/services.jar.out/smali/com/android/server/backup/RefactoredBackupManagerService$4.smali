.class Lcom/android/server/backup/RefactoredBackupManagerService$4;
.super Ljava/lang/Object;
.source "RefactoredBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;->scheduleNextFullBackupJob(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

.field final synthetic val$latency:J


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;J)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-wide p2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->val$latency:J

    .line 1934
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1937
    iget-object v0, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get4(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$4;->val$latency:J

    invoke-static {v0, v2, v3}, Lcom/android/server/backup/FullBackupJob;->schedule(Landroid/content/Context;J)V

    .line 1938
    return-void
.end method
