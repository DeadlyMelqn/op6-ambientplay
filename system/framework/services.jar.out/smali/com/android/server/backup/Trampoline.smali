.class public Lcom/android/server/backup/Trampoline;
.super Landroid/app/backup/IBackupManager$Stub;
.source "Trampoline.java"


# static fields
.field static final BACKUP_DISABLE_PROPERTY:Ljava/lang/String; = "ro.backup.disable"

.field static final BACKUP_SUPPRESS_FILENAME:Ljava/lang/String; = "backup-suppress"

.field static final DEBUG_TRAMPOLINE:Z = false

.field static final TAG:Ljava/lang/String; = "BackupManagerService"


# instance fields
.field final mContext:Landroid/content/Context;

.field final mGlobalDisable:Z

.field volatile mService:Lcom/android/server/backup/BackupManagerServiceInterface;

.field final mSuppressFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/app/backup/IBackupManager$Stub;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    .line 80
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->isBackupDisabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    .line 81
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->getSuppressFile()Ljava/io/File;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    .line 82
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 83
    return-void
.end method


# virtual methods
.method public acknowledgeFullBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "allow"    # Z
    .param p3, "curPassword"    # Ljava/lang/String;
    .param p4, "encryptionPassword"    # Ljava/lang/String;
    .param p5, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 326
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 327
    invoke-interface/range {v0 .. v5}, Lcom/android/server/backup/BackupManagerServiceInterface;->acknowledgeAdbBackupOrRestore(IZLjava/lang/String;Ljava/lang/String;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 330
    :cond_0
    return-void
.end method

.method public adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "includeApks"    # Z
    .param p3, "includeObbs"    # Z
    .param p4, "includeShared"    # Z
    .param p5, "doWidgets"    # Z
    .param p6, "allApps"    # Z
    .param p7, "allIncludesSystem"    # Z
    .param p8, "doCompress"    # Z
    .param p9, "doKeyValue"    # Z
    .param p10, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 299
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    .line 300
    invoke-interface/range {v0 .. v10}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbBackup(Landroid/os/ParcelFileDescriptor;ZZZZZZZZ[Ljava/lang/String;)V

    .line 303
    :cond_0
    return-void
.end method

.method public adbRestore(Landroid/os/ParcelFileDescriptor;)V
    .locals 1
    .param p1, "fd"    # Landroid/os/ParcelFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 316
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 317
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->adbRestore(Landroid/os/ParcelFileDescriptor;)V

    .line 319
    :cond_0
    return-void
.end method

.method public agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "agent"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 222
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentConnected(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 225
    :cond_0
    return-void
.end method

.method public agentDisconnected(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 230
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 231
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->agentDisconnected(Ljava/lang/String;)V

    .line 233
    :cond_0
    return-void
.end method

.method public backupNow()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 287
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 288
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 289
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->backupNow()V

    .line 291
    :cond_0
    return-void
.end method

.method beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z
    .locals 2
    .param p1, "scheduledJob"    # Lcom/android/server/backup/FullBackupJob;

    .prologue
    .line 463
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 464
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginFullBackup(Lcom/android/server/backup/FullBackupJob;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "transportID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 406
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 407
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->beginRestoreSession(Ljava/lang/String;Ljava/lang/String;)Landroid/app/backup/IRestoreSession;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected binderGetCallingUid()I
    .locals 1

    .prologue
    .line 105
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method public cancelBackups()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 443
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 444
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->cancelBackups()V

    .line 446
    :cond_0
    return-void
.end method

.method public clearBackupData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "transportName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 214
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 215
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->clearBackupData(Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    :cond_0
    return-void
.end method

.method protected createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .locals 2

    .prologue
    .line 118
    new-instance v0, Lcom/android/server/backup/BackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/BackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    return-object v0
.end method

.method protected createRefactoredBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .locals 2

    .prologue
    .line 114
    new-instance v0, Lcom/android/server/backup/RefactoredBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/backup/RefactoredBackupManagerService;-><init>(Landroid/content/Context;Lcom/android/server/backup/Trampoline;)V

    return-object v0
.end method

.method protected createService()Lcom/android/server/backup/BackupManagerServiceInterface;
    .locals 2

    .prologue
    .line 86
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->isRefactoredServiceEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Instantiating RefactoredBackupManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createRefactoredBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    return-object v0

    .line 91
    :cond_0
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Instantiating BackupManagerService"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createBackupManagerService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    return-object v0
.end method

.method public dataChanged(Ljava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 196
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 197
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->dataChanged(Ljava/lang/String;)V

    .line 199
    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 450
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "BackupManagerService"

    invoke-static {v1, v2, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 453
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_1

    .line 454
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 458
    :goto_0
    return-void

    .line 456
    :cond_1
    const-string/jumbo v1, "Inactive"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method endFullBackup()V
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 469
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 470
    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->endFullBackup()V

    .line 472
    :cond_0
    return-void
.end method

.method public fullTransportBackup([Ljava/lang/String;)V
    .locals 1
    .param p1, "packageNames"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 308
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 309
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->fullTransportBackup([Ljava/lang/String;)V

    .line 311
    :cond_0
    return-void
.end method

.method public getAvailableRestoreToken(Ljava/lang/String;)J
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 421
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getAvailableRestoreToken(Ljava/lang/String;)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 381
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 382
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getCurrentTransport()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 334
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 335
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getCurrentTransport()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 393
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 394
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 400
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public getDestinationString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 387
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 388
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method protected getSuppressFile()Ljava/io/File;
    .locals 4

    .prologue
    .line 109
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "backup"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 110
    const-string/jumbo v2, "backup-suppress"

    .line 109
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getTransportWhitelist()[Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 352
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 353
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->getTransportWhitelist()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public hasBackupPassword()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 282
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->hasBackupPassword()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initialize(I)V
    .locals 3
    .param p1, "whichUser"    # I

    .prologue
    .line 125
    if-nez p1, :cond_1

    .line 127
    iget-boolean v0, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v0, :cond_0

    .line 128
    const-string/jumbo v0, "BackupManagerService"

    const-string/jumbo v1, "Backup/restore not supported"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 132
    :cond_0
    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 134
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 140
    :cond_1
    return-void

    .line 136
    :cond_2
    :try_start_1
    const-string/jumbo v0, "BackupManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Backup inactive in user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V
    .locals 1
    .param p1, "transportNames"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 205
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 206
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->initializeTransports([Ljava/lang/String;Landroid/app/backup/IBackupObserver;)V

    .line 208
    :cond_0
    return-void
.end method

.method public isAppEligibleForBackup(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 427
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->isAppEligibleForBackup(Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected isBackupDisabled()Z
    .locals 2

    .prologue
    .line 96
    const-string/jumbo v0, "ro.backup.disable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public isBackupEnabled()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 270
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->isBackupEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isBackupServiceActive(I)Z
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    const/4 v0, 0x0

    .line 184
    if-nez p1, :cond_1

    .line 185
    monitor-enter p0

    .line 186
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    monitor-exit p0

    return v0

    .line 185
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 189
    :cond_1
    return v0
.end method

.method protected isRefactoredServiceEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 100
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 101
    const-string/jumbo v3, "backup_refactored_service_disabled"

    .line 100
    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public listAllTransportComponents()[Landroid/content/ComponentName;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 346
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 347
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransportComponents()[Landroid/content/ComponentName;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public listAllTransports()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 340
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 341
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/backup/BackupManagerServiceInterface;->listAllTransports()[Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public opComplete(IJ)V
    .locals 2
    .param p1, "token"    # I
    .param p2, "result"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 412
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 413
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 414
    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/backup/BackupManagerServiceInterface;->opComplete(IJ)V

    .line 416
    :cond_0
    return-void
.end method

.method public requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I
    .locals 2
    .param p1, "packages"    # [Ljava/lang/String;
    .param p2, "observer"    # Landroid/app/backup/IBackupObserver;
    .param p3, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 433
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 434
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-nez v0, :cond_0

    .line 435
    const/16 v1, -0x7d1

    return v1

    .line 437
    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/server/backup/BackupManagerServiceInterface;->requestBackup([Ljava/lang/String;Landroid/app/backup/IBackupObserver;Landroid/app/backup/IBackupManagerMonitor;I)I

    move-result v1

    return v1
.end method

.method public restoreAtInstall(Ljava/lang/String;I)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "token"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 238
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 239
    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->restoreAtInstall(Ljava/lang/String;I)V

    .line 241
    :cond_0
    return-void
.end method

.method public selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "transport"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 358
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 359
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransport(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V
    .locals 3
    .param p1, "transport"    # Landroid/content/ComponentName;
    .param p2, "listener"    # Landroid/app/backup/ISelectBackupTransportCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 366
    .local v1, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v1, :cond_1

    .line 367
    invoke-interface {v1, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->selectBackupTransportAsync(Landroid/content/ComponentName;Landroid/app/backup/ISelectBackupTransportCallback;)V

    .line 377
    :cond_0
    :goto_0
    return-void

    .line 369
    :cond_1
    if-eqz p2, :cond_0

    .line 371
    const/16 v2, -0x7d1

    :try_start_0
    invoke-interface {p2, v2}, Landroid/app/backup/ISelectBackupTransportCallback;->onFailure(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setAutoRestore(Z)V
    .locals 1
    .param p1, "doAutoRestore"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 254
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 255
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setAutoRestore(Z)V

    .line 257
    :cond_0
    return-void
.end method

.method public setBackupEnabled(Z)V
    .locals 1
    .param p1, "isEnabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 246
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 247
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupEnabled(Z)V

    .line 249
    :cond_0
    return-void
.end method

.method public setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "currentPw"    # Ljava/lang/String;
    .param p2, "newPw"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 276
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupPassword(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setBackupProvisioned(Z)V
    .locals 1
    .param p1, "isProvisioned"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 262
    .local v0, "svc":Lcom/android/server/backup/BackupManagerServiceInterface;
    if-eqz v0, :cond_0

    .line 263
    invoke-interface {v0, p1}, Lcom/android/server/backup/BackupManagerServiceInterface;->setBackupProvisioned(Z)V

    .line 265
    :cond_0
    return-void
.end method

.method public setBackupServiceActive(IZ)V
    .locals 5
    .param p1, "userHandle"    # I
    .param p2, "makeActive"    # Z

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->binderGetCallingUid()I

    move-result v0

    .line 145
    .local v0, "caller":I
    const/16 v2, 0x3e8

    if-eq v0, v2, :cond_0

    .line 146
    if-eqz v0, :cond_0

    .line 147
    new-instance v2, Ljava/lang/SecurityException;

    const-string/jumbo v3, "No permission to configure backup activity"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 150
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/backup/Trampoline;->mGlobalDisable:Z

    if-eqz v2, :cond_1

    .line 151
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Backup/restore not supported"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void

    .line 155
    :cond_1
    if-nez p1, :cond_3

    .line 156
    monitor-enter p0

    .line 157
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/backup/Trampoline;->isBackupServiceActive(I)Z

    move-result v2

    if-eq p2, v2, :cond_2

    .line 158
    const-string/jumbo v3, "BackupManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Making backup "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 159
    if-eqz p2, :cond_4

    const-string/jumbo v2, ""

    .line 158
    :goto_0
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 159
    const-string/jumbo v4, "active in user "

    .line 158
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    if-eqz p2, :cond_5

    .line 161
    invoke-virtual {p0}, Lcom/android/server/backup/Trampoline;->createService()Lcom/android/server/backup/BackupManagerServiceInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;

    .line 162
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    monitor-exit p0

    .line 174
    :cond_3
    return-void

    .line 159
    :cond_4
    :try_start_1
    const-string/jumbo v2, "in"

    goto :goto_0

    .line 164
    :cond_5
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/backup/Trampoline;->mService:Lcom/android/server/backup/BackupManagerServiceInterface;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :try_start_2
    iget-object v2, p0, Lcom/android/server/backup/Trampoline;->mSuppressFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 167
    :catch_0
    move-exception v1

    .line 168
    .local v1, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "BackupManagerService"

    const-string/jumbo v3, "Unable to persist backup service inactivity"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 156
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
