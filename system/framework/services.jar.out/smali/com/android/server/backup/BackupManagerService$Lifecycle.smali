.class public final Lcom/android/server/backup/BackupManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 398
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 399
    new-instance v0, Lcom/android/server/backup/Trampoline;

    invoke-direct {v0, p1}, Lcom/android/server/backup/Trampoline;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    .line 400
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .prologue
    .line 404
    const-string/jumbo v0, "backup"

    sget-object v1, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/backup/BackupManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 405
    return-void
.end method

.method public onUnlockUser(I)V
    .locals 10
    .param p1, "userId"    # I

    .prologue
    const/4 v4, 0x1

    const-wide/16 v8, 0x40

    const/4 v5, 0x0

    .line 409
    if-nez p1, :cond_1

    .line 410
    const-string/jumbo v3, "backup init"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 411
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-virtual {v3, p1}, Lcom/android/server/backup/Trampoline;->initialize(I)V

    .line 412
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 415
    const-string/jumbo v3, "backup migrate"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 416
    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap9(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 418
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v6, "Backup enable apparently not migrated"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    iget-object v3, v3, Lcom/android/server/backup/Trampoline;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 422
    .local v2, "r":Landroid/content/ContentResolver;
    const-string/jumbo v3, "backup_enabled"

    const/4 v6, -0x1

    .line 421
    invoke-static {v2, v3, v6, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 423
    .local v1, "enableState":I
    if-ltz v1, :cond_4

    .line 425
    const-string/jumbo v6, "BackupManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Migrating enable state "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    if-eqz v1, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    if-eqz v1, :cond_3

    :goto_1
    invoke-static {v4, p1}, Lcom/android/server/backup/BackupManagerService;->-wrap24(ZI)V

    .line 429
    const-string/jumbo v3, "backup_enabled"

    const/4 v4, 0x0

    .line 428
    invoke-static {v2, v3, v4, p1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 436
    .end local v1    # "enableState":I
    .end local v2    # "r":Landroid/content/ContentResolver;
    :cond_0
    :goto_2
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 438
    const-string/jumbo v3, "backup enable"

    invoke-static {v8, v9, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 440
    :try_start_0
    sget-object v3, Lcom/android/server/backup/BackupManagerService;->sInstance:Lcom/android/server/backup/Trampoline;

    invoke-static {p1}, Lcom/android/server/backup/BackupManagerService;->-wrap11(I)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/backup/Trampoline;->setBackupEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 444
    :goto_3
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 446
    :cond_1
    return-void

    .restart local v1    # "enableState":I
    .restart local v2    # "r":Landroid/content/ContentResolver;
    :cond_2
    move v3, v5

    .line 425
    goto :goto_0

    :cond_3
    move v4, v5

    .line 427
    goto :goto_1

    .line 432
    :cond_4
    const-string/jumbo v3, "BackupManagerService"

    const-string/jumbo v4, "Backup not yet configured; retaining null enable state"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 441
    .end local v1    # "enableState":I
    .end local v2    # "r":Landroid/content/ContentResolver;
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_3
.end method
