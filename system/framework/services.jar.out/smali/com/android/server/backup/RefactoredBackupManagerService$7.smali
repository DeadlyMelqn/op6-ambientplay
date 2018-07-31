.class Lcom/android/server/backup/RefactoredBackupManagerService$7;
.super Landroid/app/backup/SelectBackupTransportCallback;
.source "RefactoredBackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/backup/RefactoredBackupManagerService;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

.field final synthetic val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

.field final synthetic val$transport:Landroid/content/ComponentName;


# direct methods
.method constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/RefactoredBackupManagerService;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$transport:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

    .line 2904
    invoke-direct {p0}, Landroid/app/backup/SelectBackupTransportCallback;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 2921
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to select transport: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$transport:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2923
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

    invoke-interface {v1, p1}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2927
    :goto_0
    return-void

    .line 2924
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4
    .param p1, "transportName"    # Ljava/lang/String;

    .prologue
    .line 2907
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/backup/TransportManager;->selectTransport(Ljava/lang/String;)Ljava/lang/String;

    .line 2908
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v1}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get4(Lcom/android/server/backup/RefactoredBackupManagerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2909
    const-string/jumbo v2, "backup_transport"

    .line 2910
    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->this$0:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-static {v3}, Lcom/android/server/backup/RefactoredBackupManagerService;->-get11(Lcom/android/server/backup/RefactoredBackupManagerService;)Lcom/android/server/backup/TransportManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/backup/TransportManager;->getCurrentTransportName()Ljava/lang/String;

    move-result-object v3

    .line 2908
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 2911
    const-string/jumbo v1, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Transport successfully selected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$transport:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/RefactoredBackupManagerService$7;->val$listener:Landroid/app/backup/ISelectBackupTransportCallback;

    invoke-interface {v1, p1}, Landroid/app/backup/ISelectBackupTransportCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2917
    :goto_0
    return-void

    .line 2914
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
