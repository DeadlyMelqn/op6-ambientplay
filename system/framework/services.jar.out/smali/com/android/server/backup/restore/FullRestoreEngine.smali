.class public Lcom/android/server/backup/restore/FullRestoreEngine;
.super Lcom/android/server/backup/restore/RestoreEngine;
.source "FullRestoreEngine.java"


# static fields
.field private static final synthetic -com-android-server-backup-restore-RestorePolicySwitchesValues:[I


# instance fields
.field private mAgent:Landroid/app/IBackupAgent;

.field private mAgentPackage:Ljava/lang/String;

.field final mAllowApks:Z

.field private final mAllowObbs:Z

.field private final mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

.field final mBuffer:[B

.field private mBytes:J

.field private final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

.field final mEphemeralOpToken:I

.field private final mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

.field private final mManifestSignatures:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "[",
            "Landroid/content/pm/Signature;",
            ">;"
        }
    .end annotation
.end field

.field final mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field private final mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field private mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

.field private mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field final mOnlyPackage:Landroid/content/pm/PackageInfo;

.field private final mPackageInstallers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/restore/RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field private mPipes:[Landroid/os/ParcelFileDescriptor;

.field private mTargetApp:Landroid/content/pm/ApplicationInfo;

.field private mWidgetData:[B


# direct methods
.method static synthetic -get0(Lcom/android/server/backup/restore/FullRestoreEngine;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/backup/restore/FullRestoreEngine;

    .prologue
    iget-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide v0
.end method

.method private static synthetic -getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/backup/restore/RestorePolicy;->values()[Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/backup/restore/FullRestoreEngine;->-com-android-server-backup-restore-RestorePolicySwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v1

    goto :goto_1

    :catch_2
    move-exception v1

    goto :goto_0
.end method

.method static synthetic -set0(Lcom/android/server/backup/restore/FullRestoreEngine;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/backup/restore/FullRestoreEngine;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    return-wide p1
.end method

.method public constructor <init>(Lcom/android/server/backup/RefactoredBackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V
    .locals 2
    .param p1, "backupManagerService"    # Lcom/android/server/backup/RefactoredBackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "allowObbs"    # Z
    .param p8, "ephemeralOpToken"    # I

    .prologue
    const/4 v1, 0x0

    .line 123
    invoke-direct {p0}, Lcom/android/server/backup/restore/RestoreEngine;-><init>()V

    .line 69
    new-instance v0, Lcom/android/server/backup/restore/RestoreInstallObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreInstallObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    .line 70
    new-instance v0, Lcom/android/server/backup/restore/RestoreDeleteObserver;

    invoke-direct {v0}, Lcom/android/server/backup/restore/RestoreDeleteObserver;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    .line 93
    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    .line 97
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 96
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 104
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 103
    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 107
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 116
    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 119
    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 127
    iput-object p1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 128
    iput p8, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mEphemeralOpToken:I

    .line 129
    iput-object p2, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 130
    iput-object p3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 131
    iput-object p4, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 132
    iput-object p5, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 133
    iput-boolean p6, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowApks:Z

    .line 134
    iput-boolean p7, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAllowObbs:Z

    .line 135
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBuffer:[B

    .line 136
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 137
    return-void
.end method

.method private static isCanonicalFilePath(Ljava/lang/String;)Z
    .locals 1
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 613
    const-string/jumbo v0, ".."

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "//"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 617
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 620
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private static isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 3
    .param p0, "info"    # Lcom/android/server/backup/FileMetadata;

    .prologue
    const/4 v2, 0x0

    .line 588
    const-string/jumbo v0, "c"

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 592
    return v2

    .line 595
    :cond_0
    const-string/jumbo v0, "r"

    iget-object v1, p0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 600
    iget-object v0, p0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v1, "no_backup/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 604
    return v2

    .line 609
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 553
    return-void
.end method

.method private tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 575
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_0

    .line 576
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/RefactoredBackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 577
    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 579
    :cond_0
    return-void
.end method

.method private tearDownPipes()V
    .locals 4

    .prologue
    .line 559
    monitor-enter p0

    .line 560
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 562
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 563
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 564
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 565
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 569
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    .line 572
    return-void

    .line 566
    :catch_0
    move-exception v0

    .line 567
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 559
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method


# virtual methods
.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    .prologue
    .line 140
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    .prologue
    .line 582
    invoke-direct {p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 583
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 584
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 585
    return-void
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z[BLandroid/content/pm/PackageInfo;ZILandroid/app/backup/IBackupManagerMonitor;)Z
    .locals 51
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z
    .param p3, "buffer"    # [B
    .param p4, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p5, "allowApks"    # Z
    .param p6, "token"    # I
    .param p7, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;

    .prologue
    .line 149
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRunning()Z

    move-result v4

    if-nez v4, :cond_0

    .line 150
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Restore engine used after halting"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v4, 0x0

    return v4

    .line 154
    :cond_0
    new-instance v12, Lcom/android/server/backup/restore/FullRestoreEngine$1;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/android/server/backup/restore/FullRestoreEngine$1;-><init>(Lcom/android/server/backup/restore/FullRestoreEngine;)V

    .line 161
    .local v12, "bytesReadListener":Lcom/android/server/backup/utils/BytesReadListener;
    new-instance v47, Lcom/android/server/backup/utils/TarBackupReader;

    move-object/from16 v0, v47

    move-object/from16 v1, p1

    move-object/from16 v2, p7

    invoke-direct {v0, v1, v12, v2}, Lcom/android/server/backup/utils/TarBackupReader;-><init>(Ljava/io/InputStream;Lcom/android/server/backup/utils/BytesReadListener;Landroid/app/backup/IBackupManagerMonitor;)V

    .line 169
    .local v47, "tarBackupReader":Lcom/android/server/backup/utils/TarBackupReader;
    :try_start_0
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/backup/utils/TarBackupReader;->readTarHeaders()Lcom/android/server/backup/FileMetadata;

    move-result-object v10

    .line 170
    .local v10, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v10, :cond_4

    .line 175
    iget-object v14, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 176
    .local v14, "pkg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 179
    if-eqz p4, :cond_1

    .line 180
    move-object/from16 v0, p4

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 181
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Expected data for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " but saw "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    const/4 v4, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 183
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 184
    const/4 v4, 0x0

    return v4

    .line 190
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 191
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v4, :cond_3

    .line 198
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Saw new package; finalizing old one"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 202
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 203
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 204
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 208
    :cond_3
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "_manifest"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 209
    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readAppManifestAndReturnSignatures(Lcom/android/server/backup/FileMetadata;)[Landroid/content/pm/Signature;

    move-result-object v46

    .line 212
    .local v46, "signatures":[Landroid/content/pm/Signature;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 211
    move-object/from16 v0, v47

    move/from16 v1, p5

    move-object/from16 v2, v46

    invoke-virtual {v0, v4, v1, v10, v2}, Lcom/android/server/backup/utils/TarBackupReader;->chooseRestorePolicy(Landroid/content/pm/PackageManager;ZLcom/android/server/backup/FileMetadata;[Landroid/content/pm/Signature;)Lcom/android/server/backup/restore/RestorePolicy;

    move-result-object v45

    .line 213
    .local v45, "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v45

    invoke-virtual {v4, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 220
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-static {v4, v14}, Lcom/android/server/backup/utils/FullBackupRestoreObserverUtils;->sendOnRestorePackage(Landroid/app/backup/IFullBackupRestoreObserver;Ljava/lang/String;)Landroid/app/backup/IFullBackupRestoreObserver;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 538
    .end local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v45    # "restorePolicy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v46    # "signatures":[Landroid/content/pm/Signature;
    :cond_4
    :goto_0
    if-nez v10, :cond_5

    .line 542
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 543
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 544
    if-eqz p2, :cond_5

    .line 545
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 548
    :cond_5
    if-eqz v10, :cond_1e

    const/4 v4, 0x1

    :goto_1
    return v4

    .line 221
    .restart local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_6
    :try_start_1
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v5, "_meta"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 223
    move-object/from16 v0, v47

    invoke-virtual {v0, v10}, Lcom/android/server/backup/utils/TarBackupReader;->readMetadata(Lcom/android/server/backup/FileMetadata;)V

    .line 229
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/backup/utils/TarBackupReader;->getWidgetData()[B

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mWidgetData:[B

    .line 231
    invoke-virtual/range {v47 .. v47}, Lcom/android/server/backup/utils/TarBackupReader;->getMonitor()Landroid/app/backup/IBackupManagerMonitor;

    move-result-object p7

    .line 233
    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 529
    .end local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v35

    .line 531
    .local v35, "e":Ljava/io/IOException;
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "io exception on restore socket read: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {v35 .. v35}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v4, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 534
    const/4 v10, 0x0

    .local v10, "info":Lcom/android/server/backup/FileMetadata;
    goto :goto_0

    .line 237
    .end local v35    # "e":Ljava/io/IOException;
    .local v10, "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "pkg":Ljava/lang/String;
    :cond_7
    const/16 v39, 0x1

    .line 238
    .local v39, "okay":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/backup/restore/RestorePolicy;

    .line 239
    .local v44, "policy":Lcom/android/server/backup/restore/RestorePolicy;
    invoke-static {}, Lcom/android/server/backup/restore/FullRestoreEngine;->-getcom-android-server-backup-restore-RestorePolicySwitchesValues()[I

    move-result-object v4

    invoke-virtual/range {v44 .. v44}, Lcom/android/server/backup/restore/RestorePolicy;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 293
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Invalid policy from manifest"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/16 v39, 0x0

    .line 295
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    :cond_8
    :goto_2
    invoke-static {v10}, Lcom/android/server/backup/restore/FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->isCanonicalFilePath(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_a

    .line 301
    :cond_9
    const/16 v39, 0x0

    .line 309
    :cond_a
    if-eqz v39, :cond_d

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v4, :cond_d

    .line 316
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 317
    const/4 v5, 0x0

    .line 316
    invoke-virtual {v4, v14, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 315
    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 321
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 325
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v4, :cond_b

    .line 327
    const-string/jumbo v4, "BackupManagerService"

    .line 328
    const-string/jumbo v5, "Clearing app data preparatory to full restore"

    .line 327
    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4, v14}, Lcom/android/server/backup/RefactoredBackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 337
    :cond_b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    invoke-virtual {v4, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 346
    :cond_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->setUpPipes()V

    .line 347
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 348
    const/4 v8, 0x3

    .line 347
    invoke-virtual {v4, v5, v8}, Lcom/android/server/backup/RefactoredBackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 349
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 356
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v4, :cond_d

    .line 357
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to create agent for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    const/16 v39, 0x0

    .line 359
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 360
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_d
    if-eqz v39, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_e

    .line 367
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring data for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    const-string/jumbo v8, " but agent is for "

    .line 367
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 368
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 367
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const/16 v39, 0x0

    .line 376
    :cond_e
    if-eqz v39, :cond_1b

    .line 377
    const/16 v30, 0x1

    .line 378
    .local v30, "agentSuccess":Z
    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v48, v0

    .line 379
    .local v48, "toCopy":J
    const-string/jumbo v4, "com.android.sharedstoragebackup"

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-result v36

    .line 380
    .local v36, "isSharedStorage":Z
    if-eqz v36, :cond_15

    .line 381
    const-wide/32 v6, 0x1b7740

    .line 384
    .local v6, "timeout":J
    :goto_4
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    .line 386
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 387
    const/4 v9, 0x1

    move/from16 v5, p6

    .line 384
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/RefactoredBackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 389
    const-string/jumbo v4, "obb"

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 391
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring OBB file for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 392
    const-string/jumbo v8, " : "

    .line 391
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 392
    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 391
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/fullbackup/FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v15, v4, v5

    .line 395
    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v16, v0

    iget v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    move/from16 v18, v0

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v19, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v20, v0

    .line 396
    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v22, v0

    .line 397
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v25

    move/from16 v24, p6

    .line 394
    invoke-virtual/range {v13 .. v25}, Lcom/android/server/backup/fullbackup/FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 444
    :goto_5
    if-eqz v39, :cond_12

    .line 448
    const/16 v43, 0x1

    .line 449
    .local v43, "pipeOkay":Z
    :try_start_6
    new-instance v42, Ljava/io/FileOutputStream;

    .line 450
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 449
    move-object/from16 v0, v42

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 451
    .local v42, "pipe":Ljava/io/FileOutputStream;
    :cond_f
    :goto_6
    const-wide/16 v4, 0x0

    cmp-long v4, v48, v4

    if-lez v4, :cond_11

    .line 452
    move-object/from16 v0, p3

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v48, v4

    if-lez v4, :cond_19

    .line 453
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v50, v0

    .line 454
    .local v50, "toRead":I
    :goto_7
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v38

    .line 455
    .local v38, "nRead":I
    if-ltz v38, :cond_10

    .line 456
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    move/from16 v0, v38

    int-to-long v8, v0

    add-long/2addr v4, v8

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    .line 458
    :cond_10
    if-gtz v38, :cond_1a

    .line 478
    .end local v38    # "nRead":I
    .end local v50    # "toRead":I
    :cond_11
    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 482
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move/from16 v0, p6

    invoke-virtual {v4, v0}, Lcom/android/server/backup/RefactoredBackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v30

    .line 487
    .end local v30    # "agentSuccess":Z
    .end local v42    # "pipe":Ljava/io/FileOutputStream;
    .end local v43    # "pipeOkay":Z
    :cond_12
    if-nez v30, :cond_1b

    .line 488
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Agent failure restoring "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, "; ending restore"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupHandler()Lcom/android/server/backup/internal/BackupHandler;

    move-result-object v4

    .line 490
    const/16 v5, 0x12

    .line 489
    invoke-virtual {v4, v5}, Lcom/android/server/backup/internal/BackupHandler;->removeMessages(I)V

    .line 491
    invoke-direct/range {p0 .. p0}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownPipes()V

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 493
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 494
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 498
    if-eqz p4, :cond_1b

    .line 499
    const/4 v4, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setResult(I)V

    .line 500
    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/backup/restore/FullRestoreEngine;->setRunning(Z)V

    .line 501
    const/4 v4, 0x0

    return v4

    .line 241
    .end local v6    # "timeout":J
    .end local v36    # "isSharedStorage":Z
    .end local v48    # "toCopy":J
    :pswitch_0
    const/16 v39, 0x0

    .line 242
    goto/16 :goto_2

    .line 247
    :pswitch_1
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 249
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "APK file; installing"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 254
    .local v11, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 255
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/restore/RestoreInstallObserver;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/restore/RestoreDeleteObserver;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 256
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 257
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v13

    move-object/from16 v4, p1

    .line 253
    invoke-static/range {v4 .. v13}, Lcom/android/server/backup/utils/RestoreUtils;->installApk(Ljava/io/InputStream;Landroid/content/pm/PackageManager;Lcom/android/server/backup/restore/RestoreInstallObserver;Lcom/android/server/backup/restore/RestoreDeleteObserver;Ljava/util/HashMap;Ljava/util/HashMap;Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Lcom/android/server/backup/utils/BytesReadListener;Ljava/io/File;)Z

    move-result v37

    .line 260
    .local v37, "isSuccessfullyInstalled":Z
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v37, :cond_13

    .line 261
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->ACCEPT:Lcom/android/server/backup/restore/RestorePolicy;

    .line 260
    :goto_8
    invoke-virtual {v5, v14, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v47

    invoke-virtual {v0, v4, v5}, Lcom/android/server/backup/utils/TarBackupReader;->skipTarPadding(J)V

    .line 267
    const/4 v4, 0x1

    return v4

    .line 262
    :cond_13
    sget-object v4, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    goto :goto_8

    .line 271
    .end local v11    # "installerName":Ljava/lang/String;
    .end local v37    # "isSuccessfullyInstalled":Z
    :cond_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v5, Lcom/android/server/backup/restore/RestorePolicy;->IGNORE:Lcom/android/server/backup/restore/RestorePolicy;

    invoke-virtual {v4, v14, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const/16 v39, 0x0

    goto/16 :goto_2

    .line 277
    :pswitch_2
    iget-object v4, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v5, "a"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 279
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "apk present but ACCEPT"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 285
    const/16 v39, 0x0

    goto/16 :goto_2

    .line 382
    .restart local v30    # "agentSuccess":Z
    .restart local v36    # "isSharedStorage":Z
    .restart local v48    # "toCopy":J
    :cond_15
    const-wide/32 v6, 0xea60

    .restart local v6    # "timeout":J
    goto/16 :goto_4

    .line 398
    :cond_16
    :try_start_7
    const-string/jumbo v4, "k"

    iget-object v5, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 402
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restoring key-value file for "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 403
    const-string/jumbo v8, " : "

    .line 402
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 403
    iget-object v8, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 402
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v15, Lcom/android/server/backup/KeyValueAdbRestoreEngine;

    .line 407
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v16, v0

    .line 408
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getDataDir()Ljava/io/File;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v19, v4, v5

    .line 409
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v20, v0

    move-object/from16 v18, v10

    move/from16 v21, p6

    .line 406
    invoke-direct/range {v15 .. v21}, Lcom/android/server/backup/KeyValueAdbRestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerServiceInterface;Ljava/io/File;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;Landroid/app/IBackupAgent;I)V

    .line 410
    .local v15, "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-key-value-runner"

    invoke-direct {v4, v15, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_5

    .line 430
    .end local v15    # "restoreEngine":Lcom/android/server/backup/KeyValueAdbRestoreEngine;
    :catch_1
    move-exception v35

    .line 432
    .restart local v35    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Couldn\'t establish restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 433
    const/16 v30, 0x0

    .line 434
    const/16 v39, 0x0

    goto/16 :goto_5

    .line 419
    .end local v35    # "e":Ljava/io/IOException;
    :cond_17
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v5, "system"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 420
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "system process agent - spinning a thread"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    new-instance v16, Lcom/android/server/backup/restore/RestoreFileRunnable;

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v20, v4, v5

    move-object/from16 v19, v10

    move/from16 v21, p6

    .line 421
    invoke-direct/range {v16 .. v21}, Lcom/android/server/backup/restore/RestoreFileRunnable;-><init>(Lcom/android/server/backup/RefactoredBackupManagerService;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 423
    .local v16, "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    new-instance v4, Ljava/lang/Thread;

    const-string/jumbo v5, "restore-sys-runner"

    move-object/from16 v0, v16

    invoke-direct {v4, v0, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_5

    .line 435
    .end local v16    # "runner":Lcom/android/server/backup/restore/RestoreFileRunnable;
    :catch_2
    move-exception v34

    .line 438
    .local v34, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string/jumbo v4, "BackupManagerService"

    const-string/jumbo v5, "Agent crashed during full restore"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 439
    const/16 v30, 0x0

    .line 440
    const/16 v39, 0x0

    goto/16 :goto_5

    .line 425
    .end local v34    # "e":Landroid/os/RemoteException;
    :cond_18
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v5, 0x0

    aget-object v18, v4, v5

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v19, v0

    iget v0, v10, Lcom/android/server/backup/FileMetadata;->type:I

    move/from16 v21, v0

    .line 426
    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-object v0, v10, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v23, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mode:J

    move-wide/from16 v24, v0

    iget-wide v0, v10, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-wide/from16 v26, v0

    .line 427
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBackupManagerService:Lcom/android/server/backup/RefactoredBackupManagerService;

    invoke-virtual {v4}, Lcom/android/server/backup/RefactoredBackupManagerService;->getBackupManagerBinder()Landroid/app/backup/IBackupManager;

    move-result-object v29

    move/from16 v28, p6

    .line 425
    invoke-interface/range {v17 .. v29}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_5

    .line 453
    .restart local v42    # "pipe":Ljava/io/FileOutputStream;
    .restart local v43    # "pipeOkay":Z
    :cond_19
    move-wide/from16 v0, v48

    long-to-int v0, v0

    move/from16 v50, v0

    .restart local v50    # "toRead":I
    goto/16 :goto_7

    .line 461
    .restart local v38    # "nRead":I
    :cond_1a
    move/from16 v0, v38

    int-to-long v4, v0

    sub-long v48, v48, v4

    .line 465
    if-eqz v43, :cond_f

    .line 467
    const/4 v4, 0x0

    :try_start_c
    move-object/from16 v0, v42

    move-object/from16 v1, p3

    move/from16 v2, v38

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_3

    goto/16 :goto_6

    .line 468
    :catch_3
    move-exception v35

    .line 469
    .restart local v35    # "e":Ljava/io/IOException;
    :try_start_d
    const-string/jumbo v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to write to restore pipe: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 470
    invoke-virtual/range {v35 .. v35}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 469
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const/16 v43, 0x0

    goto/16 :goto_6

    .line 509
    .end local v6    # "timeout":J
    .end local v30    # "agentSuccess":Z
    .end local v35    # "e":Ljava/io/IOException;
    .end local v36    # "isSharedStorage":Z
    .end local v38    # "nRead":I
    .end local v42    # "pipe":Ljava/io/FileOutputStream;
    .end local v43    # "pipeOkay":Z
    .end local v48    # "toCopy":J
    .end local v50    # "toRead":I
    :cond_1b
    if-nez v39, :cond_4

    .line 513
    iget-wide v4, v10, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v4, v8

    const-wide/16 v8, -0x200

    and-long v32, v4, v8

    .line 514
    .local v32, "bytesToConsume":J
    :goto_9
    const-wide/16 v4, 0x0

    cmp-long v4, v32, v4

    if-lez v4, :cond_4

    .line 515
    move-object/from16 v0, p3

    array-length v4, v0

    int-to-long v4, v4

    cmp-long v4, v32, v4

    if-lez v4, :cond_1d

    .line 516
    move-object/from16 v0, p3

    array-length v0, v0

    move/from16 v50, v0

    .line 517
    .restart local v50    # "toRead":I
    :goto_a
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    move/from16 v2, v50

    invoke-virtual {v0, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    int-to-long v0, v4

    move-wide/from16 v40, v0

    .line 518
    .local v40, "nRead":J
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-ltz v4, :cond_1c

    .line 519
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J

    add-long v4, v4, v40

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/backup/restore/FullRestoreEngine;->mBytes:J
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0

    .line 521
    :cond_1c
    const-wide/16 v4, 0x0

    cmp-long v4, v40, v4

    if-lez v4, :cond_4

    .line 524
    sub-long v32, v32, v40

    goto :goto_9

    .line 516
    .end local v40    # "nRead":J
    .end local v50    # "toRead":I
    :cond_1d
    move-wide/from16 v0, v32

    long-to-int v0, v0

    move/from16 v50, v0

    .restart local v50    # "toRead":I
    goto :goto_a

    .line 548
    .end local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v14    # "pkg":Ljava/lang/String;
    .end local v32    # "bytesToConsume":J
    .end local v39    # "okay":Z
    .end local v44    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    .end local v50    # "toRead":I
    :cond_1e
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 350
    .restart local v10    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v14    # "pkg":Ljava/lang/String;
    .restart local v39    # "okay":Z
    .restart local v44    # "policy":Lcom/android/server/backup/restore/RestorePolicy;
    :catch_4
    move-exception v35

    .restart local v35    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 352
    .end local v35    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v31

    .local v31, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_3

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 624
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 627
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 633
    :cond_0
    :goto_0
    return-void

    .line 628
    :catch_0
    move-exception v0

    .line 629
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "BackupManagerService"

    const-string/jumbo v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    iput-object v3, p0, Lcom/android/server/backup/restore/FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method
