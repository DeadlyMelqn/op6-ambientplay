.class public final Lcom/android/server/timezone/RulesManagerService;
.super Landroid/app/timezone/IRulesManager$Stub;
.source "RulesManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/timezone/RulesManagerService$InstallRunnable;,
        Lcom/android/server/timezone/RulesManagerService$Lifecycle;,
        Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;
    }
.end annotation


# static fields
.field static final DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

.field static final REQUIRED_UPDATER_PERMISSION:Ljava/lang/String; = "android.permission.UPDATE_TIME_ZONE_RULES"

.field private static final SYSTEM_TZ_DATA_FILE:Ljava/io/File;

.field private static final TAG:Ljava/lang/String; = "timezone.RulesManagerService"

.field private static final TZ_DATA_DIR:Ljava/io/File;


# instance fields
.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

.field private final mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mPackageTracker:Lcom/android/server/timezone/PackageTracker;

.field private final mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;


# direct methods
.method static synthetic -get0(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/timezone/RulesManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/timezone/RulesManagerService;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/timezone/RulesManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/timezone/RulesManagerService;)Lcom/android/server/timezone/PackageTracker;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/timezone/RulesManagerService;

    .prologue
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    invoke-static {p0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap2(Lcom/android/server/timezone/RulesManagerService;Landroid/app/timezone/ICallback;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/timezone/RulesManagerService;
    .param p1, "callback"    # Landroid/app/timezone/ICallback;
    .param p2, "resultCode"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/timezone/RulesManagerService;->sendFinishedStatus(Landroid/app/timezone/ICallback;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 67
    new-instance v0, Landroid/app/timezone/DistroFormatVersion;

    invoke-direct {v0, v1, v1}, Landroid/app/timezone/DistroFormatVersion;-><init>(II)V

    .line 66
    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    .line 94
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/system/usr/share/zoneinfo/tzdata"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    .line 95
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/data/misc/zoneinfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/timezone/RulesManagerService;->TZ_DATA_DIR:Ljava/io/File;

    .line 60
    return-void
.end method

.method constructor <init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V
    .locals 2
    .param p1, "permissionHelper"    # Lcom/android/server/timezone/PermissionHelper;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "packageTracker"    # Lcom/android/server/timezone/PackageTracker;
    .param p4, "timeZoneDistroInstaller"    # Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    .prologue
    .line 113
    invoke-direct {p0}, Landroid/app/timezone/IRulesManager$Stub;-><init>()V

    .line 97
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 116
    iput-object p1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    .line 117
    iput-object p2, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 118
    iput-object p3, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    .line 119
    iput-object p4, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    .line 120
    return-void
.end method

.method private static create(Landroid/content/Context;)Lcom/android/server/timezone/RulesManagerService;
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 104
    new-instance v0, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;

    invoke-direct {v0, p0}, Lcom/android/server/timezone/RulesManagerServiceHelperImpl;-><init>(Landroid/content/Context;)V

    .line 105
    .local v0, "helper":Lcom/android/server/timezone/RulesManagerServiceHelperImpl;
    new-instance v1, Lcom/android/server/timezone/RulesManagerService;

    .line 108
    invoke-static {p0}, Lcom/android/server/timezone/PackageTracker;->create(Landroid/content/Context;)Lcom/android/server/timezone/PackageTracker;

    move-result-object v2

    .line 109
    new-instance v3, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    const-string/jumbo v4, "timezone.RulesManagerService"

    sget-object v5, Lcom/android/server/timezone/RulesManagerService;->SYSTEM_TZ_DATA_FILE:Ljava/io/File;

    sget-object v6, Lcom/android/server/timezone/RulesManagerService;->TZ_DATA_DIR:Ljava/io/File;

    invoke-direct {v3, v4, v5, v6}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;-><init>(Ljava/lang/String;Ljava/io/File;Ljava/io/File;)V

    .line 105
    invoke-direct {v1, v0, v0, v2, v3}, Lcom/android/server/timezone/RulesManagerService;-><init>(Lcom/android/server/timezone/PermissionHelper;Ljava/util/concurrent/Executor;Lcom/android/server/timezone/PackageTracker;Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;)V

    return-object v1
.end method

.method private static createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;
    .locals 5
    .param p0, "checkTokenBytes"    # [B

    .prologue
    .line 523
    :try_start_0
    invoke-static {p0}, Lcom/android/server/timezone/CheckToken;->fromByteArray([B)Lcom/android/server/timezone/CheckToken;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 528
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    return-object v0

    .line 524
    .end local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :catch_0
    move-exception v1

    .line 525
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to read token bytes "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 526
    invoke-static {p0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    .line 525
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private static distroStatusToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "distroStatus"    # I

    .prologue
    .line 532
    packed-switch p0, :pswitch_data_0

    .line 539
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 534
    :pswitch_0
    const-string/jumbo v0, "None"

    return-object v0

    .line 536
    :pswitch_1
    const-string/jumbo v0, "Installed"

    return-object v0

    .line 532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getRulesStateInternal()Landroid/app/timezone/RulesState;
    .locals 15

    .prologue
    .line 135
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getSystemRulesVersion()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 144
    .local v1, "systemRulesVersion":Ljava/lang/String;
    :try_start_1
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    .line 147
    .local v3, "operationInProgress":Z
    const/4 v5, 0x0

    .line 148
    .local v5, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    const/4 v4, 0x0

    .line 149
    .local v4, "stagedOperationStatus":I
    if-nez v3, :cond_0

    .line 152
    :try_start_2
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getStagedDistroOperation()Lcom/android/timezone/distro/StagedDistroOperation;
    :try_end_2
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 153
    .local v12, "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    if-nez v12, :cond_2

    .line 154
    const/4 v4, 0x1

    .line 172
    .end local v5    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v12    # "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 173
    .local v6, "distroStatus":I
    const/4 v7, 0x0

    .line 174
    .local v7, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    if-nez v3, :cond_1

    .line 176
    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mInstaller:Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;

    invoke-virtual {v0}, Lcom/android/timezone/distro/installer/TimeZoneDistroInstaller;->getInstalledDistroVersion()Lcom/android/timezone/distro/DistroVersion;
    :try_end_3
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v11

    .line 177
    .local v11, "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    if-nez v11, :cond_4

    .line 178
    const/4 v6, 0x1

    .line 179
    const/4 v7, 0x0

    .line 190
    .end local v7    # "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v11    # "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    :cond_1
    :goto_1
    :try_start_4
    new-instance v0, Landroid/app/timezone/RulesState;

    sget-object v2, Lcom/android/server/timezone/RulesManagerService;->DISTRO_FORMAT_VERSION_SUPPORTED:Landroid/app/timezone/DistroFormatVersion;

    invoke-direct/range {v0 .. v7}, Landroid/app/timezone/RulesState;-><init>(Ljava/lang/String;Landroid/app/timezone/DistroFormatVersion;ZILandroid/app/timezone/DistroRulesVersion;ILandroid/app/timezone/DistroRulesVersion;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-object v0

    .line 139
    .end local v1    # "systemRulesVersion":Ljava/lang/String;
    .end local v3    # "operationInProgress":Z
    .end local v4    # "stagedOperationStatus":I
    .end local v6    # "distroStatus":I
    :catch_0
    move-exception v8

    .line 140
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v0, "timezone.RulesManagerService"

    const-string/jumbo v2, "Failed to read system rules"

    invoke-static {v0, v2, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 141
    const/4 v0, 0x0

    monitor-exit p0

    return-object v0

    .line 155
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v1    # "systemRulesVersion":Ljava/lang/String;
    .restart local v3    # "operationInProgress":Z
    .restart local v4    # "stagedOperationStatus":I
    .restart local v5    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .restart local v12    # "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    :cond_2
    :try_start_6
    iget-boolean v0, v12, Lcom/android/timezone/distro/StagedDistroOperation;->isUninstall:Z

    if-eqz v0, :cond_3

    .line 156
    const/4 v4, 0x2

    goto :goto_0

    .line 159
    :cond_3
    const/4 v4, 0x3

    .line 160
    iget-object v14, v12, Lcom/android/timezone/distro/StagedDistroOperation;->distroVersion:Lcom/android/timezone/distro/DistroVersion;

    .line 161
    .local v14, "stagedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    new-instance v13, Landroid/app/timezone/DistroRulesVersion;

    .line 162
    iget-object v0, v14, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 163
    iget v2, v14, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 161
    invoke-direct {v13, v0, v2}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_6
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .local v13, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    move-object v5, v13

    .end local v13    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .local v5, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    goto :goto_0

    .line 165
    .end local v12    # "stagedDistroOperation":Lcom/android/timezone/distro/StagedDistroOperation;
    .end local v14    # "stagedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    .local v5, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :catch_1
    move-exception v9

    .line 166
    .local v9, "e":Ljava/lang/Exception;
    :try_start_7
    const-string/jumbo v0, "timezone.RulesManagerService"

    const-string/jumbo v2, "Failed to read staged distro."

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_0

    .line 135
    .end local v1    # "systemRulesVersion":Ljava/lang/String;
    .end local v3    # "operationInProgress":Z
    .end local v4    # "stagedOperationStatus":I
    .end local v5    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 181
    .restart local v1    # "systemRulesVersion":Ljava/lang/String;
    .restart local v3    # "operationInProgress":Z
    .restart local v4    # "stagedOperationStatus":I
    .restart local v6    # "distroStatus":I
    .restart local v7    # "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .restart local v11    # "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    :cond_4
    const/4 v6, 0x2

    .line 182
    :try_start_8
    new-instance v10, Landroid/app/timezone/DistroRulesVersion;

    .line 183
    iget-object v0, v11, Lcom/android/timezone/distro/DistroVersion;->rulesVersion:Ljava/lang/String;

    .line 184
    iget v2, v11, Lcom/android/timezone/distro/DistroVersion;->revision:I

    .line 182
    invoke-direct {v10, v0, v2}, Landroid/app/timezone/DistroRulesVersion;-><init>(Ljava/lang/String;I)V
    :try_end_8
    .catch Lcom/android/timezone/distro/DistroException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .local v10, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    move-object v7, v10

    .end local v10    # "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .local v7, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    goto :goto_1

    .line 186
    .end local v11    # "installedDistroVersion":Lcom/android/timezone/distro/DistroVersion;
    .local v7, "installedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :catch_2
    move-exception v9

    .line 187
    .restart local v9    # "e":Ljava/lang/Exception;
    :try_start_9
    const-string/jumbo v0, "timezone.RulesManagerService"

    const-string/jumbo v2, "Failed to read installed distro."

    invoke-static {v0, v2, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_1
.end method

.method private sendFinishedStatus(Landroid/app/timezone/ICallback;I)V
    .locals 3
    .param p1, "callback"    # Landroid/app/timezone/ICallback;
    .param p2, "resultCode"    # I

    .prologue
    .line 380
    :try_start_0
    invoke-interface {p1, p2}, Landroid/app/timezone/ICallback;->onFinished(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    return-void

    .line 381
    :catch_0
    move-exception v0

    .line 382
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "timezone.RulesManagerService"

    const-string/jumbo v2, "Unable to notify observer of result"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private static stagedOperationToString(I)Ljava/lang/String;
    .locals 1
    .param p0, "stagedOperationType"    # I

    .prologue
    .line 544
    packed-switch p0, :pswitch_data_0

    .line 553
    const-string/jumbo v0, "Unknown"

    return-object v0

    .line 546
    :pswitch_0
    const-string/jumbo v0, "None"

    return-object v0

    .line 548
    :pswitch_1
    const-string/jumbo v0, "Uninstall"

    return-object v0

    .line 550
    :pswitch_2
    const-string/jumbo v0, "Install"

    return-object v0

    .line 544
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 558
    if-nez p0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v9, 0x1

    const/4 v6, 0x0

    .line 400
    iget-object v7, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v8, "timezone.RulesManagerService"

    invoke-interface {v7, v8, p2}, Lcom/android/server/timezone/PermissionHelper;->checkDumpPermission(Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 401
    return-void

    .line 404
    :cond_0
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v2

    .line 405
    .local v2, "rulesState":Landroid/app/timezone/RulesState;
    if-eqz p3, :cond_a

    array-length v7, p3

    const/4 v8, 0x2

    if-ne v7, v8, :cond_a

    .line 408
    const-string/jumbo v7, "-format_state"

    aget-object v8, p3, v6

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    aget-object v7, p3, v9

    if-eqz v7, :cond_a

    .line 409
    aget-object v7, p3, v9

    invoke-virtual {v7}, Ljava/lang/String;->toCharArray()[C

    move-result-object v7

    array-length v8, v7

    :goto_0
    if-ge v6, v8, :cond_9

    aget-char v0, v7, v6

    .line 410
    .local v0, "c":C
    sparse-switch v0, :sswitch_data_0

    .line 488
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown option: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 409
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 413
    :sswitch_0
    const-string/jumbo v5, "Unknown"

    .line 414
    .local v5, "value":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 415
    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->isOperationInProgress()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    .line 417
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Operation in progress: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 422
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_1
    const-string/jumbo v5, "Unknown"

    .line 423
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 424
    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getSystemRulesVersion()Ljava/lang/String;

    move-result-object v5

    .line 426
    :cond_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "System rules version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 431
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v5, "Unknown"

    .line 432
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 433
    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getDistroStatus()I

    move-result v9

    invoke-static {v9}, Lcom/android/server/timezone/RulesManagerService;->distroStatusToString(I)Ljava/lang/String;

    move-result-object v5

    .line 435
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current install state: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 440
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v5, "Unknown"

    .line 441
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v2, :cond_4

    .line 443
    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getInstalledDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v1

    .line 444
    .local v1, "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    if-nez v1, :cond_5

    .line 445
    const-string/jumbo v5, "<None>"

    .line 450
    .end local v1    # "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_4
    :goto_2
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Installed rules version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 447
    .restart local v1    # "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_5
    invoke-virtual {v1}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    .line 455
    .end local v1    # "installedRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v5, "Unknown"

    .line 456
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v2, :cond_6

    .line 457
    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getStagedOperationType()I

    move-result v4

    .line 458
    .local v4, "stagedOperationType":I
    invoke-static {v4}, Lcom/android/server/timezone/RulesManagerService;->stagedOperationToString(I)Ljava/lang/String;

    move-result-object v5

    .line 460
    .end local v4    # "stagedOperationType":I
    :cond_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Staged operation: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 466
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v5, "Unknown"

    .line 467
    .restart local v5    # "value":Ljava/lang/String;
    if-eqz v2, :cond_7

    .line 469
    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->getStagedDistroRulesVersion()Landroid/app/timezone/DistroRulesVersion;

    move-result-object v3

    .line 470
    .local v3, "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    if-nez v3, :cond_8

    .line 471
    const-string/jumbo v5, "<None>"

    .line 476
    .end local v3    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_7
    :goto_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Staged rules version: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 473
    .restart local v3    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    :cond_8
    invoke-virtual {v3}, Landroid/app/timezone/DistroRulesVersion;->toDumpString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 482
    .end local v3    # "stagedDistroRulesVersion":Landroid/app/timezone/DistroRulesVersion;
    .end local v5    # "value":Ljava/lang/String;
    :sswitch_6
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Active rules version (ICU, libcore): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 483
    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v10

    .line 482
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 483
    const-string/jumbo v10, ","

    .line 482
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 484
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v10

    invoke-virtual {v10}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v10

    .line 482
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p2, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 492
    .end local v0    # "c":C
    :cond_9
    return-void

    .line 496
    :cond_a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RulesManagerService state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/timezone/RulesManagerService;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 497
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Active rules version (ICU, libcore): "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Llibcore/icu/ICU;->getTZDataVersion()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 498
    invoke-static {}, Llibcore/util/ZoneInfoDB;->getInstance()Llibcore/util/ZoneInfoDB$TzData;

    move-result-object v7

    invoke-virtual {v7}, Llibcore/util/ZoneInfoDB$TzData;->getVersion()Ljava/lang/String;

    move-result-object v7

    .line 497
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 499
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Distro state: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Landroid/app/timezone/RulesState;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 500
    iget-object v6, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v6, p2}, Lcom/android/server/timezone/PackageTracker;->dump(Ljava/io/PrintWriter;)V

    .line 501
    return-void

    .line 410
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_6
        0x63 -> :sswitch_2
        0x69 -> :sswitch_3
        0x6f -> :sswitch_4
        0x70 -> :sswitch_0
        0x73 -> :sswitch_1
        0x74 -> :sswitch_5
    .end sparse-switch
.end method

.method public getRulesState()Landroid/app/timezone/RulesState;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v1, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v0, v1}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 130
    invoke-direct {p0}, Lcom/android/server/timezone/RulesManagerService;->getRulesStateInternal()Landroid/app/timezone/RulesState;

    move-result-object v0

    return-object v0
.end method

.method notifyIdle()V
    .locals 3

    .prologue
    .line 509
    const/4 v0, 0x0

    .line 510
    .local v0, "packageChanged":Z
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/timezone/PackageTracker;->triggerUpdateIfNeeded(Z)V

    .line 511
    return-void
.end method

.method public requestInstall(Landroid/os/ParcelFileDescriptor;[BLandroid/app/timezone/ICallback;)I
    .locals 6
    .param p1, "distroParcelFileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "checkTokenBytes"    # [B
    .param p3, "callback"    # Landroid/app/timezone/ICallback;

    .prologue
    const/4 v5, 0x1

    .line 200
    const/4 v1, 0x1

    .line 202
    .local v1, "closeParcelFileDescriptorOnExit":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v4, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v3, v4}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    .line 205
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p2, :cond_0

    .line 206
    invoke-static {p2}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    .line 208
    .end local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :cond_0
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/EventLogTags;->writeTimezoneRequestInstall(Ljava/lang/String;)V

    .line 210
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 211
    if-nez p1, :cond_2

    .line 212
    :try_start_1
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "distroParcelFileDescriptor == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 210
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit p0

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 232
    :catchall_1
    move-exception v3

    .line 235
    if-eqz p1, :cond_1

    if-eqz v1, :cond_1

    .line 237
    :try_start_3
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 232
    :cond_1
    :goto_0
    throw v3

    .line 214
    :cond_2
    if-nez p3, :cond_3

    .line 215
    :try_start_4
    new-instance v3, Ljava/lang/NullPointerException;

    const-string/jumbo v4, "observer == null"

    invoke-direct {v3, v4}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 217
    :cond_3
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result v3

    if-eqz v3, :cond_5

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 235
    if-eqz p1, :cond_4

    .line 237
    :try_start_6
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 218
    :cond_4
    :goto_1
    return v5

    .line 238
    :catch_0
    move-exception v2

    .line 239
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v3, "timezone.RulesManagerService"

    const-string/jumbo v4, "Failed to close distroParcelFileDescriptor"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 220
    .end local v2    # "e":Ljava/io/IOException;
    :cond_5
    :try_start_7
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 223
    iget-object v3, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 224
    new-instance v4, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;

    invoke-direct {v4, p0, p1, v0, p3}, Lcom/android/server/timezone/RulesManagerService$InstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Landroid/os/ParcelFileDescriptor;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    .line 223
    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 228
    const/4 v1, 0x0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 230
    const/4 v3, 0x0

    return v3

    .line 238
    :catch_1
    move-exception v2

    .line 239
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v4, "timezone.RulesManagerService"

    const-string/jumbo v5, "Failed to close distroParcelFileDescriptor"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public requestNothing([BZ)V
    .locals 3
    .param p1, "checkTokenBytes"    # [B
    .param p2, "success"    # Z

    .prologue
    .line 388
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v2, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 389
    const/4 v0, 0x0

    .line 390
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p1, :cond_0

    .line 391
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    .line 393
    .end local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :cond_0
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestNothing(Ljava/lang/String;)V

    .line 394
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/timezone/PackageTracker;->recordCheckResult(Lcom/android/server/timezone/CheckToken;Z)V

    .line 395
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneNothingComplete(Ljava/lang/String;)V

    .line 396
    return-void
.end method

.method public requestUninstall([BLandroid/app/timezone/ICallback;)I
    .locals 4
    .param p1, "checkTokenBytes"    # [B
    .param p2, "callback"    # Landroid/app/timezone/ICallback;

    .prologue
    const/4 v3, 0x1

    .line 313
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mPermissionHelper:Lcom/android/server/timezone/PermissionHelper;

    const-string/jumbo v2, "android.permission.UPDATE_TIME_ZONE_RULES"

    invoke-interface {v1, v2}, Lcom/android/server/timezone/PermissionHelper;->enforceCallerHasPermission(Ljava/lang/String;)V

    .line 315
    const/4 v0, 0x0

    .line 316
    .local v0, "checkToken":Lcom/android/server/timezone/CheckToken;
    if-eqz p1, :cond_0

    .line 317
    invoke-static {p1}, Lcom/android/server/timezone/RulesManagerService;->createCheckTokenOrThrow([B)Lcom/android/server/timezone/CheckToken;

    move-result-object v0

    .line 319
    .end local v0    # "checkToken":Lcom/android/server/timezone/CheckToken;
    :cond_0
    invoke-static {v0}, Lcom/android/server/timezone/RulesManagerService;->toStringOrNull(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/EventLogTags;->writeTimezoneRequestUninstall(Ljava/lang/String;)V

    .line 320
    monitor-enter p0

    .line 321
    if-nez p2, :cond_1

    .line 322
    :try_start_0
    new-instance v1, Ljava/lang/NullPointerException;

    const-string/jumbo v2, "callback == null"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 320
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 325
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit p0

    .line 326
    return v3

    .line 328
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 331
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/timezone/RulesManagerService$UninstallRunnable;-><init>(Lcom/android/server/timezone/RulesManagerService;Lcom/android/server/timezone/CheckToken;Landroid/app/timezone/ICallback;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 333
    const/4 v1, 0x0

    monitor-exit p0

    return v1
.end method

.method public start()V
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/server/timezone/RulesManagerService;->mPackageTracker:Lcom/android/server/timezone/PackageTracker;

    invoke-virtual {v0}, Lcom/android/server/timezone/PackageTracker;->start()V

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "RulesManagerService{mOperationInProgress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 516
    iget-object v1, p0, Lcom/android/server/timezone/RulesManagerService;->mOperationInProgress:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 517
    const/16 v1, 0x7d

    .line 515
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
