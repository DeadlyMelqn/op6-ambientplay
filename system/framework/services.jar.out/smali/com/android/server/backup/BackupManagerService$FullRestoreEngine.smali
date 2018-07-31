.class Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;
.super Lcom/android/server/backup/BackupManagerService$RestoreEngine;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FullRestoreEngine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;,
        Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$backup$BackupManagerService$RestorePolicy:[I

.field mAgent:Landroid/app/IBackupAgent;

.field mAgentPackage:Ljava/lang/String;

.field mAllowApks:Z

.field mAllowObbs:Z

.field mBuffer:[B

.field mBytes:J

.field final mClearedPackages:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

.field private final mEphemeralOpToken:I

.field final mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

.field final mManifestSignatures:Ljava/util/HashMap;
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

.field mMonitor:Landroid/app/backup/IBackupManagerMonitor;

.field mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

.field mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

.field mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

.field mOnlyPackage:Landroid/content/pm/PackageInfo;

.field final mPackageInstallers:Ljava/util/HashMap;
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

.field final mPackagePolicies:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/backup/BackupManagerService$RestorePolicy;",
            ">;"
        }
    .end annotation
.end field

.field mPipes:[Landroid/os/ParcelFileDescriptor;

.field mTargetApp:Landroid/content/pm/ApplicationInfo;

.field mWidgetData:[B

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method private static synthetic -getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->values()[Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    invoke-virtual {v1}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-com-android-server-backup-BackupManagerService$RestorePolicySwitchesValues:[I

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

.method public constructor <init>(Lcom/android/server/backup/BackupManagerService;Lcom/android/server/backup/BackupRestoreTask;Landroid/app/backup/IFullBackupRestoreObserver;Landroid/app/backup/IBackupManagerMonitor;Landroid/content/pm/PackageInfo;ZZI)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/backup/BackupManagerService;
    .param p2, "monitorTask"    # Lcom/android/server/backup/BackupRestoreTask;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "monitor"    # Landroid/app/backup/IBackupManagerMonitor;
    .param p5, "onlyPackage"    # Landroid/content/pm/PackageInfo;
    .param p6, "allowApks"    # Z
    .param p7, "allowObbs"    # Z
    .param p8, "ephemeralOpToken"    # I

    .prologue
    const/4 v1, 0x0

    .line 5808
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-direct {p0, p1}, Lcom/android/server/backup/BackupManagerService$RestoreEngine;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 5744
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    .line 5748
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5747
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    .line 5751
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    .line 5755
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5754
    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    .line 5758
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    .line 5767
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 5770
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    .line 6265
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    .line 6266
    new-instance v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    invoke-direct {v0, p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;)V

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    .line 5811
    iput p8, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mEphemeralOpToken:I

    .line 5812
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    .line 5813
    iput-object p3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    .line 5814
    iput-object p4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 5815
    iput-object p5, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    .line 5816
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    .line 5817
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowObbs:Z

    .line 5818
    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    .line 5819
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 5820
    return-void
.end method

.method private HEXLOG([B)V
    .locals 10
    .param p1, "block"    # [B

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 6883
    const/4 v3, 0x0

    .line 6884
    .local v3, "offset":I
    array-length v4, p1

    .line 6885
    .local v4, "todo":I
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6886
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    if-lez v4, :cond_2

    .line 6887
    const-string/jumbo v5, "%04x   "

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6888
    const/16 v5, 0x10

    if-le v4, v5, :cond_0

    const/16 v2, 0x10

    .line 6889
    .local v2, "numThisLine":I
    :goto_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    if-ge v1, v2, :cond_1

    .line 6890
    const-string/jumbo v5, "%02x "

    new-array v6, v9, [Ljava/lang/Object;

    add-int v7, v3, v1

    aget-byte v7, p1, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6889
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6888
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_0
    move v2, v4

    .restart local v2    # "numThisLine":I
    goto :goto_1

    .line 6892
    .restart local v1    # "i":I
    :cond_1
    const-string/jumbo v5, "hexdump"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6893
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6894
    sub-int/2addr v4, v2

    .line 6895
    add-int/2addr v3, v2

    goto :goto_0

    .line 6897
    .end local v1    # "i":I
    .end local v2    # "numThisLine":I
    :cond_2
    return-void
.end method

.method private isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z
    .locals 3
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .prologue
    const/4 v2, 0x0

    .line 6850
    const-string/jumbo v0, "c"

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6854
    return v2

    .line 6857
    :cond_0
    const-string/jumbo v0, "r"

    iget-object v1, p1, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6862
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v1, "no_backup/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6866
    return v2

    .line 6871
    :cond_1
    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v1, "//"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6875
    :cond_2
    return v2

    .line 6879
    :cond_3
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method dumpFileMetadata(Lcom/android/server/backup/FileMetadata;)V
    .locals 0
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;

    .prologue
    .line 6736
    return-void
.end method

.method extractLine([BI[Ljava/lang/String;)I
    .locals 5
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "outStr"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6691
    array-length v1, p1

    .line 6692
    .local v1, "end":I
    if-lt p2, v1, :cond_0

    new-instance v3, Ljava/io/IOException;

    const-string/jumbo v4, "Incomplete data"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6695
    :cond_0
    move v2, p2

    .local v2, "pos":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 6696
    aget-byte v0, p1, v2

    .line 6699
    .local v0, "c":B
    const/16 v3, 0xa

    if-ne v0, v3, :cond_2

    .line 6703
    .end local v0    # "c":B
    :cond_1
    new-instance v3, Ljava/lang/String;

    sub-int v4, v2, p2

    invoke-direct {v3, p1, p2, v4}, Ljava/lang/String;-><init>([BII)V

    const/4 v4, 0x0

    aput-object v3, p3, v4

    .line 6704
    add-int/lit8 v2, v2, 0x1

    .line 6705
    return v2

    .line 6695
    .restart local v0    # "c":B
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractRadix([BIII)J
    .locals 11
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .param p4, "radix"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v10, 0x30

    .line 6986
    const-wide/16 v4, 0x0

    .line 6987
    .local v4, "value":J
    add-int v1, p2, p3

    .line 6988
    .local v1, "end":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6989
    aget-byte v0, p1, v2

    .line 6991
    .local v0, "b":B
    if-eqz v0, :cond_0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_1

    .line 6998
    .end local v0    # "b":B
    :cond_0
    return-wide v4

    .line 6992
    .restart local v0    # "b":B
    :cond_1
    if-lt v0, v10, :cond_2

    add-int/lit8 v3, p4, 0x30

    add-int/lit8 v3, v3, -0x1

    if-le v0, v3, :cond_3

    .line 6993
    :cond_2
    new-instance v3, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Invalid number in header: \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    int-to-char v7, v0

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6994
    const-string/jumbo v7, "\' for radix "

    .line 6993
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 6996
    :cond_3
    int-to-long v6, p4

    mul-long/2addr v6, v4

    add-int/lit8 v3, v0, -0x30

    int-to-long v8, v3

    add-long v4, v6, v8

    .line 6988
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method extractString([BII)Ljava/lang/String;
    .locals 5
    .param p1, "data"    # [B
    .param p2, "offset"    # I
    .param p3, "maxChars"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7002
    add-int v0, p2, p3

    .line 7003
    .local v0, "end":I
    move v1, p2

    .line 7005
    .local v1, "eos":I
    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p1, v1

    if-eqz v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 7006
    :cond_0
    new-instance v2, Ljava/lang/String;

    sub-int v3, v1, p2

    const-string/jumbo v4, "US-ASCII"

    invoke-direct {v2, p1, p2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method

.method public getAgent()Landroid/app/IBackupAgent;
    .locals 1

    .prologue
    .line 5823
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    return-object v0
.end method

.method public getWidgetData()[B
    .locals 1

    .prologue
    .line 5827
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    return-object v0
.end method

.method handleTimeout()V
    .locals 1

    .prologue
    .line 6193
    invoke-virtual {p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 6194
    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 6195
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 6196
    return-void
.end method

.method installApk(Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z
    .locals 24
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p2, "installerPackage"    # Ljava/lang/String;
    .param p3, "instream"    # Ljava/io/InputStream;

    .prologue
    .line 6269
    const/4 v10, 0x1

    .line 6271
    .local v10, "okay":Z
    const-string/jumbo v19, "RestoreEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installing from backup: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6275
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mDataDir:Ljava/io/File;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 6277
    .local v4, "apkFile":Ljava/io/File;
    :try_start_0
    new-instance v5, Ljava/io/FileOutputStream;

    invoke-direct {v5, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 6278
    .local v5, "apkStream":Ljava/io/FileOutputStream;
    const v19, 0x8000

    move/from16 v0, v19

    new-array v6, v0, [B

    .line 6279
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    .line 6280
    .local v14, "size":J
    :goto_0
    const-wide/16 v20, 0x0

    cmp-long v19, v14, v20

    if-lez v19, :cond_2

    .line 6281
    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v20, v0

    cmp-long v19, v20, v14

    if-gez v19, :cond_1

    array-length v0, v6

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v16, v0

    .line 6282
    .local v16, "toRead":J
    :goto_1
    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v19, v0

    const/16 v20, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move/from16 v2, v19

    invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v7

    .line 6283
    .local v7, "didRead":I
    if-ltz v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-wide/from16 v20, v0

    int-to-long v0, v7

    move-wide/from16 v22, v0

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 6284
    :cond_0
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v5, v6, v0, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 6285
    int-to-long v0, v7

    move-wide/from16 v20, v0

    sub-long v14, v14, v20

    goto :goto_0

    .line 6281
    .end local v7    # "didRead":I
    .end local v16    # "toRead":J
    :cond_1
    move-wide/from16 v16, v14

    .restart local v16    # "toRead":J
    goto :goto_1

    .line 6287
    .end local v16    # "toRead":J
    :cond_2
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V

    .line 6290
    const/16 v19, 0x1

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v4, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 6293
    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v11

    .line 6294
    .local v11, "packageUri":Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->reset()V

    .line 6295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v20, v0

    .line 6296
    const/16 v21, 0x22

    .line 6295
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, p2

    invoke-virtual {v0, v11, v1, v2, v3}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/app/PackageInstallObserver;ILjava/lang/String;)V

    .line 6298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->waitForCompletion()V

    .line 6300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->getResult()I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-eq v0, v1, :cond_4

    .line 6304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    sget-object v20, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-eq v0, v1, :cond_3

    .line 6305
    const/4 v10, 0x0

    .line 6364
    :cond_3
    :goto_2
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 6367
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    :goto_3
    return v10

    .line 6309
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v11    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    :cond_4
    const/16 v18, 0x0

    .line 6310
    .local v18, "uninstall":Z
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_6

    .line 6311
    const-string/jumbo v19, "RestoreEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream claimed to include apk for "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6312
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 6311
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6312
    const-string/jumbo v21, " but apk was really "

    .line 6311
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 6311
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6315
    const/4 v10, 0x0

    .line 6316
    const/16 v18, 0x1

    .line 6353
    :cond_5
    :goto_4
    if-eqz v18, :cond_3

    .line 6354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->reset()V

    .line 6355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mInstallObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreInstallObserver;->mPackageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6356
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    .line 6355
    invoke-virtual/range {v19 .. v22}, Landroid/content/pm/PackageManager;->deletePackage(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;I)V

    .line 6357
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mDeleteObserver:Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreDeleteObserver;->waitForCompletion()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 6360
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catch_0
    move-exception v9

    .line 6361
    .local v9, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v19, "RestoreEngine"

    const-string/jumbo v20, "Unable to transcribe restored apk for install"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6362
    const/4 v10, 0x0

    .line 6364
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_3

    .line 6319
    .end local v9    # "e":Ljava/io/IOException;
    .restart local v5    # "apkStream":Ljava/io/FileOutputStream;
    .restart local v6    # "buffer":[B
    .restart local v11    # "packageUri":Landroid/net/Uri;
    .restart local v14    # "size":J
    .restart local v18    # "uninstall":Z
    :cond_6
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v19

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6320
    const/16 v21, 0x40

    .line 6319
    invoke-virtual/range {v19 .. v21}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v12

    .line 6321
    .local v12, "pkg":Landroid/content/pm/PackageInfo;
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v19, v0

    const v20, 0x8000

    and-int v19, v19, v20

    if-nez v19, :cond_7

    .line 6322
    const-string/jumbo v19, "RestoreEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Restore stream contains apk of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6323
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    .line 6322
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6323
    const-string/jumbo v21, " but it disallows backup/restore"

    .line 6322
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6324
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 6327
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v19, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [Landroid/content/pm/Signature;

    .line 6328
    .local v13, "sigs":[Landroid/content/pm/Signature;
    invoke-static {v13, v12}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v19

    if-eqz v19, :cond_8

    .line 6331
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v19, v0

    const/16 v20, 0x2710

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    .line 6332
    iget-object v0, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v19, v0

    if-nez v19, :cond_5

    .line 6333
    const-string/jumbo v19, "RestoreEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6334
    const-string/jumbo v21, " has restricted uid and no agent"

    .line 6333
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6335
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 6338
    :cond_8
    const-string/jumbo v19, "RestoreEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Installed app "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6339
    const-string/jumbo v21, " signatures do not match restore manifest"

    .line 6338
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 6340
    const/4 v10, 0x0

    .line 6341
    const/16 v18, 0x1

    goto/16 :goto_4

    .line 6344
    .end local v12    # "pkg":Landroid/content/pm/PackageInfo;
    .end local v13    # "sigs":[Landroid/content/pm/Signature;
    :catch_1
    move-exception v8

    .line 6345
    .local v8, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_4
    const-string/jumbo v19, "RestoreEngine"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "Install of package "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 6346
    const-string/jumbo v21, " succeeded but now not found"

    .line 6345
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 6347
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 6363
    .end local v5    # "apkStream":Ljava/io/FileOutputStream;
    .end local v6    # "buffer":[B
    .end local v8    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "packageUri":Landroid/net/Uri;
    .end local v14    # "size":J
    .end local v18    # "uninstall":Z
    :catchall_0
    move-exception v19

    .line 6364
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 6363
    throw v19
.end method

.method readAppManifest(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .locals 27
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6473
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v22, v0

    const-wide/32 v24, 0x10000

    cmp-long v22, v22, v24

    if-lez v22, :cond_0

    .line 6474
    new-instance v22, Ljava/io/IOException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Restore manifest too big; corrupt? size="

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 6477
    :cond_0
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v6, v0, [B

    .line 6482
    .local v6, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, v23

    move/from16 v3, v22

    invoke-virtual {v0, v1, v6, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v22

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v24, v0

    cmp-long v22, v22, v24

    if-nez v22, :cond_1

    .line 6483
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v24, v0

    add-long v22, v22, v24

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 6486
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 6487
    .local v18, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    .line 6488
    .local v20, "str":[Ljava/lang/String;
    const/16 v16, 0x0

    .line 6491
    .local v16, "offset":I
    :try_start_0
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6492
    const/16 v22, 0x0

    aget-object v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 6493
    .local v21, "version":I
    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_f

    .line 6494
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6495
    const/16 v22, 0x0

    aget-object v13, v20, v22

    .line 6497
    .local v13, "manifestPackage":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    .line 6498
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6499
    const/16 v22, 0x0

    aget-object v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v21

    .line 6500
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6503
    const/16 v22, 0x0

    aget-object v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6504
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6505
    const/16 v22, 0x0

    aget-object v22, v20, v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v22

    if-lez v22, :cond_2

    const/16 v22, 0x0

    aget-object v22, v20, v22

    :goto_0
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    .line 6506
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6507
    const/16 v22, 0x0

    aget-object v22, v20, v22

    const-string/jumbo v23, "1"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 6508
    .local v11, "hasApk":Z
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6509
    const/16 v22, 0x0

    aget-object v22, v20, v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 6510
    .local v15, "numSigs":I
    if-lez v15, :cond_d

    .line 6511
    new-array v0, v15, [Landroid/content/pm/Signature;

    move-object/from16 v19, v0

    .line 6512
    .local v19, "sigs":[Landroid/content/pm/Signature;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    if-ge v12, v15, :cond_3

    .line 6513
    move-object/from16 v0, p0

    move/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v6, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v16

    .line 6514
    new-instance v22, Landroid/content/pm/Signature;

    const/16 v23, 0x0

    aget-object v23, v20, v23

    invoke-direct/range {v22 .. v23}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    aput-object v22, v19, v12
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    .line 6512
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 6484
    .end local v11    # "hasApk":Z
    .end local v12    # "i":I
    .end local v13    # "manifestPackage":Ljava/lang/String;
    .end local v15    # "numSigs":I
    .end local v16    # "offset":I
    .end local v18    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    .end local v20    # "str":[Ljava/lang/String;
    .end local v21    # "version":I
    :cond_1
    new-instance v22, Ljava/io/IOException;

    const-string/jumbo v23, "Unexpected EOF in manifest"

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    .line 6505
    .restart local v13    # "manifestPackage":Ljava/lang/String;
    .restart local v16    # "offset":I
    .restart local v18    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .restart local v20    # "str":[Ljava/lang/String;
    .restart local v21    # "version":I
    :cond_2
    const/16 v22, 0x0

    goto :goto_0

    .line 6516
    .restart local v11    # "hasApk":Z
    .restart local v12    # "i":I
    .restart local v15    # "numSigs":I
    .restart local v19    # "sigs":[Landroid/content/pm/Signature;
    :cond_3
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mManifestSignatures:Ljava/util/HashMap;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    .line 6520
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v22

    .line 6521
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const/16 v24, 0x40

    .line 6520
    invoke-virtual/range {v22 .. v24}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v17

    .line 6523
    .local v17, "pkgInfo":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v10, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 6524
    .local v10, "flags":I
    const v22, 0x8000

    and-int v22, v22, v10

    if-eqz v22, :cond_b

    .line 6527
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v22, v0

    const/16 v23, 0x2710

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_4

    .line 6528
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    move-object/from16 v22, v0

    if-eqz v22, :cond_a

    .line 6536
    :cond_4
    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->signaturesMatch([Landroid/content/pm/Signature;Landroid/content/pm/PackageInfo;)Z

    move-result v22

    if-eqz v22, :cond_9

    .line 6537
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v22, v0

    .line 6538
    const/high16 v23, 0x20000

    .line 6537
    and-int v22, v22, v23

    if-eqz v22, :cond_6

    .line 6539
    const-string/jumbo v22, "RestoreEngine"

    const-string/jumbo v23, "Package has restoreAnyVersion; taking data"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6541
    const/16 v23, 0x22

    .line 6543
    const/16 v24, 0x3

    .line 6544
    const/16 v25, 0x0

    .line 6540
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 6545
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2

    .line 6627
    .end local v10    # "flags":I
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :goto_2
    :try_start_3
    sget-object v22, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v18

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_5

    xor-int/lit8 v22, v11, 0x1

    if-eqz v22, :cond_5

    .line 6628
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Cannot restore package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6629
    const-string/jumbo v24, " without the matching .apk"

    .line 6628
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6630
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6634
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    .line 6635
    const-string/jumbo v24, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 6634
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 6631
    const/16 v24, 0x29

    .line 6632
    const/16 v25, 0x0

    .line 6633
    const/16 v26, 0x3

    .line 6630
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_2

    .line 6685
    .end local v11    # "hasApk":Z
    .end local v12    # "i":I
    .end local v13    # "manifestPackage":Ljava/lang/String;
    .end local v15    # "numSigs":I
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    .end local v21    # "version":I
    :cond_5
    :goto_3
    return-object v18

    .line 6546
    .restart local v10    # "flags":I
    .restart local v11    # "hasApk":Z
    .restart local v12    # "i":I
    .restart local v13    # "manifestPackage":Ljava/lang/String;
    .restart local v15    # "numSigs":I
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "sigs":[Landroid/content/pm/Signature;
    .restart local v21    # "version":I
    :cond_6
    :try_start_4
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v22, v0

    move/from16 v0, v22

    move/from16 v1, v21

    if-lt v0, v1, :cond_7

    .line 6547
    const-string/jumbo v22, "RestoreEngine"

    const-string/jumbo v23, "Sig + version match; taking data"

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6548
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 6549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6550
    const/16 v23, 0x23

    .line 6552
    const/16 v24, 0x3

    .line 6553
    const/16 v25, 0x0

    .line 6549
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2

    goto/16 :goto_2

    .line 6605
    .end local v10    # "flags":I
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v7

    .line 6609
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_c

    .line 6610
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6611
    const-string/jumbo v24, " not installed; requiring apk in dataset"

    .line 6610
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6612
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 6616
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    .line 6617
    const-string/jumbo v23, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6616
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 6618
    .local v14, "monitoringExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    .line 6619
    const-string/jumbo v23, "android.app.backup.extra.LOG_POLICY_ALLOW_APKS"

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    move/from16 v24, v0

    .line 6618
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v14, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap1(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Z)Landroid/os/Bundle;

    move-result-object v14

    .line 6620
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6621
    const/16 v23, 0x28

    .line 6622
    const/16 v24, 0x0

    .line 6623
    const/16 v25, 0x3

    .line 6620
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 6674
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v11    # "hasApk":Z
    .end local v12    # "i":I
    .end local v13    # "manifestPackage":Ljava/lang/String;
    .end local v14    # "monitoringExtras":Landroid/os/Bundle;
    .end local v15    # "numSigs":I
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    .end local v21    # "version":I
    :catch_1
    move-exception v9

    .line 6675
    .local v9, "e":Ljava/lang/NumberFormatException;
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Corrupt restore manifest for package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6680
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    const-string/jumbo v24, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 6677
    const/16 v24, 0x2e

    .line 6678
    const/16 v25, 0x0

    .line 6679
    const/16 v26, 0x3

    .line 6676
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_3

    .line 6558
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    .restart local v10    # "flags":I
    .restart local v11    # "hasApk":Z
    .restart local v12    # "i":I
    .restart local v13    # "manifestPackage":Ljava/lang/String;
    .restart local v15    # "numSigs":I
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "sigs":[Landroid/content/pm/Signature;
    .restart local v21    # "version":I
    :cond_7
    :try_start_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAllowApks:Z

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 6559
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Data version "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6560
    const-string/jumbo v24, " is newer than installed version "

    .line 6559
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6561
    move-object/from16 v0, v17

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    move/from16 v24, v0

    .line 6559
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6562
    const-string/jumbo v24, " - requiring apk"

    .line 6559
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6563
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT_IF_APK:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_2

    .line 6565
    :cond_8
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Data requires newer version "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6566
    const-string/jumbo v24, "; ignoring"

    .line 6565
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6567
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6571
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    .line 6572
    const-string/jumbo v24, "android.app.backup.extra.LOG_OLD_VERSION"

    .line 6571
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    move/from16 v3, v21

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v23

    .line 6568
    const/16 v24, 0x24

    .line 6570
    const/16 v25, 0x3

    .line 6567
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v17

    move/from16 v3, v25

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 6575
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_2

    .line 6579
    :cond_9
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Restore manifest signatures do not match installed application for "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6580
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6579
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6581
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6582
    const/16 v23, 0x25

    .line 6584
    const/16 v24, 0x3

    .line 6585
    const/16 v25, 0x0

    .line 6581
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_2

    .line 6681
    .end local v10    # "flags":I
    .end local v11    # "hasApk":Z
    .end local v12    # "i":I
    .end local v13    # "manifestPackage":Ljava/lang/String;
    .end local v15    # "numSigs":I
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    .end local v21    # "version":I
    :catch_2
    move-exception v8

    .line 6682
    .local v8, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v22, "RestoreEngine"

    invoke-virtual {v8}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 6588
    .end local v8    # "e":Ljava/lang/IllegalArgumentException;
    .restart local v10    # "flags":I
    .restart local v11    # "hasApk":Z
    .restart local v12    # "i":I
    .restart local v13    # "manifestPackage":Ljava/lang/String;
    .restart local v15    # "numSigs":I
    .restart local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v19    # "sigs":[Landroid/content/pm/Signature;
    .restart local v21    # "version":I
    :cond_a
    :try_start_7
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6589
    const-string/jumbo v24, " is system level with no agent"

    .line 6588
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6590
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6591
    const/16 v23, 0x26

    .line 6593
    const/16 v24, 0x2

    .line 6594
    const/16 v25, 0x0

    .line 6590
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_2

    .line 6597
    :cond_b
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Restore manifest from "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6598
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6597
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6598
    const-string/jumbo v24, " but allowBackup=false"

    .line 6597
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6599
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6600
    const/16 v23, 0x27

    .line 6602
    const/16 v24, 0x3

    .line 6603
    const/16 v25, 0x0

    .line 6599
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v17

    move/from16 v3, v24

    move-object/from16 v4, v25

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_2

    .line 6614
    .end local v10    # "flags":I
    .end local v17    # "pkgInfo":Landroid/content/pm/PackageInfo;
    .restart local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_c
    :try_start_8
    sget-object v18, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto/16 :goto_4

    .line 6638
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v12    # "i":I
    .end local v19    # "sigs":[Landroid/content/pm/Signature;
    :cond_d
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Missing signature on backed-up package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6639
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6638
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6644
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v23, v0

    .line 6645
    const-string/jumbo v24, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    .line 6644
    const/16 v26, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    move-object/from16 v3, v25

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v23

    .line 6641
    const/16 v24, 0x2a

    .line 6642
    const/16 v25, 0x0

    .line 6643
    const/16 v26, 0x3

    .line 6640
    move-object/from16 v0, v22

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    move-object/from16 v4, v23

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_3

    .line 6648
    .end local v11    # "hasApk":Z
    .end local v15    # "numSigs":I
    :cond_e
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Expected package "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6649
    const-string/jumbo v24, " but restore manifest claims "

    .line 6648
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6650
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    .line 6651
    const-string/jumbo v23, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6650
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 6652
    .restart local v14    # "monitoringExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    .line 6653
    const-string/jumbo v23, "android.app.backup.extra.LOG_MANIFEST_PACKAGE_NAME"

    .line 6652
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-static {v0, v14, v1, v13}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 6654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6655
    const/16 v23, 0x2b

    .line 6656
    const/16 v24, 0x0

    .line 6657
    const/16 v25, 0x3

    .line 6654
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto/16 :goto_3

    .line 6661
    .end local v13    # "manifestPackage":Ljava/lang/String;
    .end local v14    # "monitoringExtras":Landroid/os/Bundle;
    :cond_f
    const-string/jumbo v22, "RestoreEngine"

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v24, "Unknown restore manifest version "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6662
    const-string/jumbo v24, " for package "

    .line 6661
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 6662
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6661
    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    .line 6664
    const-string/jumbo v23, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    .line 6663
    const/16 v25, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v14

    .line 6665
    .restart local v14    # "monitoringExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v22, v0

    .line 6666
    const-string/jumbo v23, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 6665
    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, v21

    invoke-static {v0, v14, v1, v2}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v14

    .line 6667
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    move-object/from16 v22, v0

    .line 6668
    const/16 v23, 0x2c

    .line 6669
    const/16 v24, 0x0

    .line 6670
    const/16 v25, 0x3

    .line 6667
    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, v24

    move/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2

    goto/16 :goto_3
.end method

.method readExactly(Ljava/io/InputStream;[BII)I
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "buffer"    # [B
    .param p3, "offset"    # I
    .param p4, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6904
    if-gtz p4, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "size must be > 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 6906
    :cond_0
    const/4 v1, 0x0

    .line 6907
    .local v1, "soFar":I
    :goto_0
    if-ge v1, p4, :cond_1

    .line 6908
    add-int v2, p3, v1

    sub-int v3, p4, v1

    invoke-virtual {p1, p2, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 6909
    .local v0, "nRead":I
    if-gtz v0, :cond_2

    .line 6916
    .end local v0    # "nRead":I
    :cond_1
    return v1

    .line 6913
    .restart local v0    # "nRead":I
    :cond_2
    add-int/2addr v1, v0

    goto :goto_0
.end method

.method readMetadata(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)V
    .locals 16
    .param p1, "info"    # Lcom/android/server/backup/FileMetadata;
    .param p2, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6389
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v14, 0x10000

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 6390
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Metadata too big; corrupt? size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6393
    :cond_0
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v12, v12

    new-array v3, v12, [B

    .line 6394
    .local v3, "buffer":[B
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v12, v12

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3, v13, v12}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    int-to-long v12, v12

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    cmp-long v12, v12, v14

    if-nez v12, :cond_1

    .line 6395
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 6398
    const/4 v12, 0x1

    new-array v9, v12, [Ljava/lang/String;

    .line 6399
    .local v9, "str":[Ljava/lang/String;
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v6

    .line 6400
    .local v6, "offset":I
    const/4 v12, 0x0

    aget-object v12, v9, v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 6401
    .local v11, "version":I
    const/4 v12, 0x1

    if-ne v11, v12, :cond_5

    .line 6402
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractLine([BI[Ljava/lang/String;)I

    move-result v6

    .line 6403
    const/4 v12, 0x0

    aget-object v7, v9, v12

    .line 6404
    .local v7, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 6407
    new-instance v2, Ljava/io/ByteArrayInputStream;

    .line 6408
    array-length v12, v3

    sub-int/2addr v12, v6

    .line 6407
    invoke-direct {v2, v3, v6, v12}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    .line 6409
    .local v2, "bin":Ljava/io/ByteArrayInputStream;
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 6410
    .local v4, "in":Ljava/io/DataInputStream;
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v12

    if-lez v12, :cond_4

    .line 6411
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v10

    .line 6412
    .local v10, "token":I
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 6413
    .local v8, "size":I
    const/high16 v12, 0x10000

    if-le v8, v12, :cond_2

    .line 6414
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Datum "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6415
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    .line 6414
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6416
    const-string/jumbo v14, " too big; corrupt? size="

    .line 6414
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6416
    move-object/from16 v0, p1

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    .line 6414
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6396
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v6    # "offset":I
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "size":I
    .end local v9    # "str":[Ljava/lang/String;
    .end local v10    # "token":I
    .end local v11    # "version":I
    :cond_1
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Unexpected EOF in widget data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6418
    .restart local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "in":Ljava/io/DataInputStream;
    .restart local v6    # "offset":I
    .restart local v7    # "pkg":Ljava/lang/String;
    .restart local v8    # "size":I
    .restart local v9    # "str":[Ljava/lang/String;
    .restart local v10    # "token":I
    .restart local v11    # "version":I
    :cond_2
    packed-switch v10, :pswitch_data_0

    .line 6431
    const-string/jumbo v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Ignoring metadata blob "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6432
    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    .line 6431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6433
    const-string/jumbo v14, " for "

    .line 6431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6433
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 6431
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6435
    invoke-virtual {v4, v8}, Ljava/io/DataInputStream;->skipBytes(I)I

    goto :goto_0

    .line 6424
    :pswitch_0
    new-array v12, v8, [B

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    .line 6425
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mWidgetData:[B

    invoke-virtual {v4, v12}, Ljava/io/DataInputStream;->read([B)I

    goto/16 :goto_0

    .line 6441
    .end local v2    # "bin":Ljava/io/ByteArrayInputStream;
    .end local v4    # "in":Ljava/io/DataInputStream;
    .end local v8    # "size":I
    .end local v10    # "token":I
    :cond_3
    const-string/jumbo v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Metadata mismatch: package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6442
    const-string/jumbo v14, " but widget data for "

    .line 6441
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6444
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 6445
    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 6444
    const/4 v15, 0x0

    invoke-static {v12, v15, v13, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 6446
    .local v5, "monitoringExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 6447
    const-string/jumbo v13, "android.app.backup.extra.LOG_WIDGET_PACKAGE_NAME"

    .line 6446
    invoke-static {v12, v5, v13, v7}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 6448
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 6449
    const/16 v13, 0x2f

    .line 6450
    const/4 v14, 0x0

    .line 6451
    const/4 v15, 0x3

    .line 6448
    invoke-static {v12, v13, v14, v15, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 6467
    .end local v5    # "monitoringExtras":Landroid/os/Bundle;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_1
    return-void

    .line 6455
    :cond_5
    const-string/jumbo v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unsupported metadata version "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6457
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_NAME"

    .line 6458
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 6457
    const/4 v15, 0x0

    invoke-static {v12, v15, v13, v14}, Lcom/android/server/backup/BackupManagerService;->-wrap3(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    .line 6459
    .restart local v5    # "monitoringExtras":Landroid/os/Bundle;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 6460
    const-string/jumbo v13, "android.app.backup.extra.LOG_EVENT_PACKAGE_VERSION"

    .line 6459
    invoke-static {v12, v5, v13, v11}, Lcom/android/server/backup/BackupManagerService;->-wrap2(Lcom/android/server/backup/BackupManagerService;Landroid/os/Bundle;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v5

    .line 6461
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    .line 6462
    const/16 v13, 0x30

    .line 6463
    const/4 v14, 0x0

    .line 6464
    const/4 v15, 0x3

    .line 6461
    invoke-static {v12, v13, v14, v15, v5}, Lcom/android/server/backup/BackupManagerService;->-wrap0(Landroid/app/backup/IBackupManagerMonitor;ILandroid/content/pm/PackageInfo;ILandroid/os/Bundle;)Landroid/app/backup/IBackupManagerMonitor;

    move-result-object v12

    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitor:Landroid/app/backup/IBackupManagerMonitor;

    goto :goto_1

    .line 6418
    nop

    :pswitch_data_0
    .packed-switch 0x1ffed01
        :pswitch_0
    .end packed-switch
.end method

.method readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;)Z
    .locals 16
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "info"    # Lcom/android/server/backup/FileMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6931
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/32 v14, 0x8000

    cmp-long v12, v12, v14

    if-lez v12, :cond_0

    .line 6932
    const-string/jumbo v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Suspiciously large pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 6933
    const-string/jumbo v14, " - aborting"

    .line 6932
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6934
    new-instance v12, Ljava/io/IOException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Sanity failure: pax header size "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->size:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6938
    :cond_0
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v14, 0x1ff

    add-long/2addr v12, v14

    const/16 v14, 0x9

    shr-long/2addr v12, v14

    long-to-int v8, v12

    .line 6939
    .local v8, "numBlocks":I
    mul-int/lit16 v12, v8, 0x200

    new-array v3, v12, [B

    .line 6940
    .local v3, "data":[B
    array-length v12, v3

    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v13, v12}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v12

    array-length v13, v3

    if-ge v12, v13, :cond_1

    .line 6941
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Unable to read full pax header"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6943
    :cond_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    array-length v14, v3

    int-to-long v14, v14

    add-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 6945
    move-object/from16 v0, p2

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    long-to-int v2, v12

    .line 6946
    .local v2, "contentSize":I
    const/4 v9, 0x0

    .line 6949
    .local v9, "offset":I
    :cond_2
    add-int/lit8 v4, v9, 0x1

    .line 6950
    .local v4, "eol":I
    :goto_0
    if-ge v4, v2, :cond_3

    aget-byte v12, v3, v4

    const/16 v13, 0x20

    if-eq v12, v13, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6951
    :cond_3
    if-lt v4, v2, :cond_4

    .line 6953
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Invalid pax data"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6956
    :cond_4
    sub-int v12, v4, v9

    const/16 v13, 0xa

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9, v12, v13}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v12

    long-to-int v7, v12

    .line 6957
    .local v7, "linelen":I
    add-int/lit8 v5, v4, 0x1

    .line 6958
    .local v5, "key":I
    add-int v12, v9, v7

    add-int/lit8 v4, v12, -0x1

    .line 6960
    add-int/lit8 v11, v5, 0x1

    .local v11, "value":I
    :goto_1
    aget-byte v12, v3, v11

    const/16 v13, 0x3d

    if-eq v12, v13, :cond_5

    if-gt v11, v4, :cond_5

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 6961
    :cond_5
    if-le v11, v4, :cond_6

    .line 6962
    new-instance v12, Ljava/io/IOException;

    const-string/jumbo v13, "Invalid pax declaration"

    invoke-direct {v12, v13}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 6966
    :cond_6
    new-instance v6, Ljava/lang/String;

    sub-int v12, v11, v5

    const-string/jumbo v13, "UTF-8"

    invoke-direct {v6, v3, v5, v12, v13}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 6968
    .local v6, "keyStr":Ljava/lang/String;
    new-instance v10, Ljava/lang/String;

    add-int/lit8 v12, v11, 0x1

    sub-int v13, v4, v11

    add-int/lit8 v13, v13, -0x1

    const-string/jumbo v14, "UTF-8"

    invoke-direct {v10, v3, v12, v13, v14}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 6970
    .local v10, "valStr":Ljava/lang/String;
    const-string/jumbo v12, "path"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 6971
    move-object/from16 v0, p2

    iput-object v10, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6978
    :goto_2
    add-int/2addr v9, v7

    .line 6979
    if-lt v9, v2, :cond_2

    .line 6981
    const/4 v12, 0x1

    return v12

    .line 6972
    :cond_7
    const-string/jumbo v12, "size"

    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 6973
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v12

    move-object/from16 v0, p2

    iput-wide v12, v0, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_2

    .line 6975
    :cond_8
    const-string/jumbo v12, "RestoreEngine"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Unhandled pax key: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method readTarHeader(Ljava/io/InputStream;[B)Z
    .locals 6
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "block"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x200

    const/4 v1, 0x0

    .line 6920
    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v0

    .line 6921
    .local v0, "got":I
    if-nez v0, :cond_0

    return v1

    .line 6922
    :cond_0
    if-ge v0, v2, :cond_1

    new-instance v1, Ljava/io/IOException;

    const-string/jumbo v2, "Unable to read full block header"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 6923
    :cond_1
    iget-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    const-wide/16 v4, 0x200

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 6924
    const/4 v1, 0x1

    return v1
.end method

.method readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/FileMetadata;
    .locals 13
    .param p1, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6740
    const/16 v8, 0x200

    new-array v0, v8, [B

    .line 6741
    .local v0, "block":[B
    const/4 v3, 0x0

    .line 6743
    .local v3, "info":Lcom/android/server/backup/FileMetadata;
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 6744
    .local v2, "gotHeader":Z
    if-eqz v2, :cond_7

    .line 6747
    :try_start_0
    new-instance v4, Lcom/android/server/backup/FileMetadata;

    invoke-direct {v4}, Lcom/android/server/backup/FileMetadata;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 6748
    .end local v3    # "info":Lcom/android/server/backup/FileMetadata;
    .local v4, "info":Lcom/android/server/backup/FileMetadata;
    const/16 v8, 0x7c

    .line 6749
    const/16 v9, 0xc

    const/16 v10, 0x8

    .line 6748
    :try_start_1
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    .line 6750
    const/16 v8, 0x88

    .line 6751
    const/16 v9, 0xc

    const/16 v10, 0x8

    .line 6750
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 6752
    const/16 v8, 0x64

    .line 6753
    const/16 v9, 0x8

    const/16 v10, 0x8

    .line 6752
    invoke-virtual {p0, v0, v8, v9, v10}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractRadix([BIII)J

    move-result-wide v8

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 6755
    const/16 v8, 0x159

    .line 6756
    const/16 v9, 0x9b

    .line 6755
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6757
    const/4 v8, 0x0

    .line 6758
    const/16 v9, 0x64

    .line 6757
    invoke-virtual {p0, v0, v8, v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->extractString([BII)Ljava/lang/String;

    move-result-object v5

    .line 6759
    .local v5, "path":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_1

    .line 6760
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6761
    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6765
    :cond_1
    const/16 v8, 0x9c

    aget-byte v7, v0, v8

    .line 6766
    .local v7, "typeChar":I
    const/16 v8, 0x78

    if-ne v7, v8, :cond_4

    .line 6768
    invoke-virtual {p0, p1, v4}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readPaxExtendedHeader(Ljava/io/InputStream;Lcom/android/server/backup/FileMetadata;)Z

    move-result v2

    .line 6769
    if-eqz v2, :cond_2

    .line 6772
    invoke-virtual {p0, p1, v0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeader(Ljava/io/InputStream;[B)Z

    move-result v2

    .line 6774
    :cond_2
    if-nez v2, :cond_3

    new-instance v8, Ljava/io/IOException;

    const-string/jumbo v9, "Bad or missing pax header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 6836
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 6838
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    :goto_0
    const-string/jumbo v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Parse error in header: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6843
    throw v1

    .line 6776
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :cond_3
    const/16 v8, 0x9c

    :try_start_2
    aget-byte v7, v0, v8

    .line 6779
    :cond_4
    sparse-switch v7, :sswitch_data_0

    .line 6795
    const-string/jumbo v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown tar entity type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6796
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unknown entity type "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6780
    :sswitch_0
    const/4 v8, 0x1

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 6803
    :cond_5
    :goto_1
    const-string/jumbo v8, "shared/"

    .line 6804
    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "shared/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 6803
    const/4 v11, 0x0

    .line 6804
    const/4 v12, 0x0

    .line 6803
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 6806
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "shared/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6807
    const-string/jumbo v8, "com.android.sharedstoragebackup"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 6808
    const-string/jumbo v8, "shared"

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 6809
    const-string/jumbo v8, "RestoreEngine"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "File in shared storage: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    move-object v3, v4

    .line 6846
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v7    # "typeChar":I
    :cond_7
    return-object v3

    .line 6782
    .restart local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v5    # "path":Ljava/lang/String;
    .restart local v7    # "typeChar":I
    :sswitch_1
    const/4 v8, 0x2

    iput v8, v4, Lcom/android/server/backup/FileMetadata;->type:I

    .line 6783
    iget-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_5

    .line 6784
    const-string/jumbo v8, "RestoreEngine"

    const-string/jumbo v9, "Directory entry with nonzero size in header"

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6785
    const-wide/16 v8, 0x0

    iput-wide v8, v4, Lcom/android/server/backup/FileMetadata;->size:J

    goto :goto_1

    .line 6792
    :sswitch_2
    const/4 v8, 0x0

    return-object v8

    .line 6810
    :cond_8
    const-string/jumbo v8, "apps/"

    .line 6811
    iget-object v9, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v10, "apps/"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    .line 6810
    const/4 v11, 0x0

    .line 6811
    const/4 v12, 0x0

    .line 6810
    invoke-virtual {v8, v11, v9, v12, v10}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 6815
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "apps/"

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6818
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6819
    .local v6, "slash":I
    if-gez v6, :cond_9

    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6820
    :cond_9
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    .line 6821
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6825
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_manifest"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 6826
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v9, "_meta"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    .line 6825
    if-eqz v8, :cond_6

    .line 6827
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/16 v9, 0x2f

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 6828
    if-gez v6, :cond_a

    .line 6829
    new-instance v8, Ljava/io/IOException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Illegal semantic path in non-manifest "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 6830
    iget-object v10, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6829
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 6832
    :cond_a
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    .line 6833
    iget-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v4, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_2

    .line 6836
    .end local v4    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v5    # "path":Ljava/lang/String;
    .end local v6    # "slash":I
    .end local v7    # "typeChar":I
    .restart local v3    # "info":Lcom/android/server/backup/FileMetadata;
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto/16 :goto_0

    .line 6779
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x30 -> :sswitch_0
        0x35 -> :sswitch_1
    .end sparse-switch
.end method

.method public restoreOneFile(Ljava/io/InputStream;Z)Z
    .locals 37
    .param p1, "instream"    # Ljava/io/InputStream;
    .param p2, "mustKillAgent"    # Z

    .prologue
    .line 5831
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRunning()Z

    move-result v5

    if-nez v5, :cond_0

    .line 5832
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "Restore engine used after halting"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5833
    const/4 v5, 0x0

    return v5

    .line 5841
    :cond_0
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readTarHeaders(Ljava/io/InputStream;)Lcom/android/server/backup/FileMetadata;

    move-result-object v24

    .line 5842
    .local v24, "info":Lcom/android/server/backup/FileMetadata;
    if-eqz v24, :cond_4

    .line 5847
    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/android/server/backup/FileMetadata;->packageName:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 5854
    .local v32, "pkg":Ljava/lang/String;
    if-eqz v32, :cond_3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_3

    .line 5858
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_1

    .line 5859
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    iget-object v5, v5, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 5860
    const-string/jumbo v5, "RestoreEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Expected data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 5861
    const-string/jumbo v7, " but saw "

    .line 5860
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5862
    const/4 v5, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 5863
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 5864
    const/4 v5, 0x0

    return v5

    .line 5870
    :cond_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 5871
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5876
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v5, :cond_3

    .line 5877
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "Saw new package; finalizing old one"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5879
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 5880
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 5881
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 5882
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 5886
    :cond_3
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v6, "_manifest"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 5887
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readAppManifest(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5888
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v24

    iget-object v6, v0, Lcom/android/server/backup/FileMetadata;->installerPackageName:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5892
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 5893
    move-object/from16 v0, p0

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->sendOnRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6149
    .end local v24    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v32    # "pkg":Ljava/lang/String;
    :cond_4
    :goto_0
    if-nez v24, :cond_5

    .line 6153
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 6154
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 6155
    if-eqz p2, :cond_5

    .line 6156
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6159
    :cond_5
    if-eqz v24, :cond_1b

    const/4 v5, 0x1

    :goto_1
    return v5

    .line 5894
    .restart local v24    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v32    # "pkg":Ljava/lang/String;
    :cond_6
    :try_start_1
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    const-string/jumbo v6, "_meta"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 5896
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readMetadata(Lcom/android/server/backup/FileMetadata;Ljava/io/InputStream;)V

    .line 5897
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 6142
    .end local v24    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v32    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v23

    .line 6143
    .local v23, "e":Ljava/io/IOException;
    const-string/jumbo v5, "RestoreEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "io exception on restore socket read: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6144
    const/4 v5, -0x3

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 6145
    const/16 v24, 0x0

    .local v24, "info":Lcom/android/server/backup/FileMetadata;
    goto :goto_0

    .line 5901
    .end local v23    # "e":Ljava/io/IOException;
    .local v24, "info":Lcom/android/server/backup/FileMetadata;
    .restart local v32    # "pkg":Ljava/lang/String;
    :cond_7
    const/16 v27, 0x1

    .line 5902
    .local v27, "okay":Z
    :try_start_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 5903
    .local v33, "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    invoke-static {}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->-getcom-android-server-backup-BackupManagerService$RestorePolicySwitchesValues()[I

    move-result-object v5

    invoke-virtual/range {v33 .. v33}, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 5948
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "Invalid policy from manifest"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5949
    const/16 v27, 0x0

    .line 5950
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5955
    :cond_8
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->isRestorableFile(Lcom/android/server/backup/FileMetadata;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 5956
    const/16 v27, 0x0

    .line 5964
    :cond_9
    if-eqz v27, :cond_c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v5, :cond_c

    .line 5968
    :try_start_3
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-static {v5}, Lcom/android/server/backup/BackupManagerService;->-get3(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 5972
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    .line 5976
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->backupAgentName:Ljava/lang/String;

    if-nez v5, :cond_a

    .line 5977
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "Clearing app data preparatory to full restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5978
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Lcom/android/server/backup/BackupManagerService;->clearApplicationDataSynchronous(Ljava/lang/String;)V

    .line 5983
    :cond_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mClearedPackages:Ljava/util/HashSet;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 5991
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setUpPipes()V

    .line 5992
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    .line 5993
    const/4 v7, 0x3

    .line 5992
    invoke-virtual {v5, v6, v7}, Lcom/android/server/backup/BackupManagerService;->bindToAgentSynchronous(Landroid/content/pm/ApplicationInfo;I)Landroid/app/IBackupAgent;

    move-result-object v5

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 5994
    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    .line 6001
    :goto_3
    :try_start_4
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-nez v5, :cond_c

    .line 6002
    const-string/jumbo v5, "RestoreEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Unable to create agent for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6003
    const/16 v27, 0x0

    .line 6004
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 6005
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6011
    :cond_c
    if-eqz v27, :cond_d

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    move-object/from16 v0, v32

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d

    .line 6012
    const-string/jumbo v5, "RestoreEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring data for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6013
    const-string/jumbo v7, " but agent is for "

    .line 6012
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6013
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgentPackage:Ljava/lang/String;

    .line 6012
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6014
    const/16 v27, 0x0

    .line 6021
    :cond_d
    if-eqz v27, :cond_18

    .line 6022
    const/16 v18, 0x1

    .line 6023
    .local v18, "agentSuccess":Z
    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-wide/from16 v34, v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 6025
    .local v34, "toCopy":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mEphemeralOpToken:I

    .line 6026
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mMonitorTask:Lcom/android/server/backup/BackupRestoreTask;

    const-wide/32 v6, 0x493e0

    .line 6027
    const/4 v9, 0x1

    .line 6025
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/backup/BackupManagerService;->prepareOperationTimeout(IJLcom/android/server/backup/BackupRestoreTask;I)V

    .line 6029
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v6, "obb"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 6030
    const-string/jumbo v5, "RestoreEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Restoring OBB file for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6031
    const-string/jumbo v7, " : "

    .line 6030
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6031
    move-object/from16 v0, v24

    iget-object v7, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    .line 6030
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6032
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObbConnection:Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v7, v6, v7

    .line 6033
    move-object/from16 v0, v24

    iget-wide v8, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v24

    iget v10, v0, Lcom/android/server/backup/FileMetadata;->type:I

    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->mode:J

    .line 6034
    move-object/from16 v0, v24

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->mtime:J

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mEphemeralOpToken:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v0, v6, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v17, v0

    move-object/from16 v6, v32

    .line 6032
    invoke-virtual/range {v5 .. v17}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->restoreObbFile(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;JILjava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_2

    .line 6067
    :goto_4
    if-eqz v27, :cond_11

    .line 6072
    const/16 v31, 0x1

    .line 6073
    .local v31, "pipeOkay":Z
    :try_start_6
    new-instance v30, Ljava/io/FileOutputStream;

    .line 6074
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    .line 6073
    move-object/from16 v0, v30

    invoke-direct {v0, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 6075
    .local v30, "pipe":Ljava/io/FileOutputStream;
    :cond_e
    :goto_5
    const-wide/16 v6, 0x0

    cmp-long v5, v34, v6

    if-lez v5, :cond_10

    .line 6076
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v5, v5

    int-to-long v6, v5

    cmp-long v5, v34, v6

    if-lez v5, :cond_16

    .line 6077
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v0, v5

    move/from16 v36, v0

    .line 6078
    .local v36, "toRead":I
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v5, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v26

    .line 6079
    .local v26, "nRead":I
    if-ltz v26, :cond_f

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    move/from16 v0, v26

    int-to-long v8, v0

    add-long/2addr v6, v8

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 6080
    :cond_f
    if-gtz v26, :cond_17

    .line 6098
    .end local v26    # "nRead":I
    .end local v36    # "toRead":I
    :cond_10
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 6102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mEphemeralOpToken:I

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService;->waitUntilOperationComplete(I)Z

    move-result v18

    .line 6107
    .end local v18    # "agentSuccess":Z
    .end local v30    # "pipe":Ljava/io/FileOutputStream;
    .end local v31    # "pipeOkay":Z
    :cond_11
    if-nez v18, :cond_18

    .line 6108
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "Agent failure; ending restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6109
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    iget-object v5, v5, Lcom/android/server/backup/BackupManagerService;->mBackupHandler:Lcom/android/server/backup/BackupManagerService$BackupHandler;

    const/16 v6, 0x12

    invoke-virtual {v5, v6}, Lcom/android/server/backup/BackupManagerService$BackupHandler;->removeMessages(I)V

    .line 6110
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownPipes()V

    .line 6111
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->tearDownAgent(Landroid/content/pm/ApplicationInfo;)V

    .line 6112
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 6113
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6117
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mOnlyPackage:Landroid/content/pm/PackageInfo;

    if-eqz v5, :cond_18

    .line 6118
    const/4 v5, -0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setResult(I)V

    .line 6119
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->setRunning(Z)V

    .line 6120
    const/4 v5, 0x0

    return v5

    .line 5905
    .end local v34    # "toCopy":J
    :pswitch_0
    const/16 v27, 0x0

    .line 5906
    goto/16 :goto_2

    .line 5911
    :pswitch_1
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 5912
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "APK file; installing"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5914
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackageInstallers:Ljava/util/HashMap;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 5915
    .local v25, "installerName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    move-object/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->installApk(Lcom/android/server/backup/FileMetadata;Ljava/lang/String;Ljava/io/InputStream;)Z

    move-result v27

    .line 5917
    .local v27, "okay":Z
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    if-eqz v27, :cond_12

    .line 5918
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->ACCEPT:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    .line 5917
    :goto_7
    move-object/from16 v0, v32

    invoke-virtual {v6, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5923
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v6, v7, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->skipTarPadding(JLjava/io/InputStream;)V

    .line 5924
    const/4 v5, 0x1

    return v5

    .line 5919
    :cond_12
    sget-object v5, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    goto :goto_7

    .line 5928
    .end local v25    # "installerName":Ljava/lang/String;
    .local v27, "okay":Z
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPackagePolicies:Ljava/util/HashMap;

    sget-object v6, Lcom/android/server/backup/BackupManagerService$RestorePolicy;->IGNORE:Lcom/android/server/backup/BackupManagerService$RestorePolicy;

    move-object/from16 v0, v32

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5929
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 5934
    :pswitch_2
    move-object/from16 v0, v24

    iget-object v5, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    const-string/jumbo v6, "a"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 5935
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "apk present but ACCEPT"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 5940
    const/16 v27, 0x0

    goto/16 :goto_2

    .line 6042
    .restart local v18    # "agentSuccess":Z
    .restart local v34    # "toCopy":J
    :cond_14
    :try_start_7
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mTargetApp:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "system"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 6043
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "system process agent - spinning a thread"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6044
    new-instance v4, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;

    .line 6045
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v8, v5, v7

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mEphemeralOpToken:I

    move-object/from16 v5, p0

    move-object/from16 v7, v24

    .line 6044
    invoke-direct/range {v4 .. v9}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;-><init>(Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;Landroid/app/IBackupAgent;Lcom/android/server/backup/FileMetadata;Landroid/os/ParcelFileDescriptor;I)V

    .line 6046
    .local v4, "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    new-instance v5, Ljava/lang/Thread;

    const-string/jumbo v6, "restore-sys-runner"

    invoke-direct {v5, v4, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_4

    .line 6053
    .end local v4    # "runner":Lcom/android/server/backup/BackupManagerService$FullRestoreEngine$RestoreFileRunnable;
    :catch_1
    move-exception v23

    .line 6055
    .restart local v23    # "e":Ljava/io/IOException;
    :try_start_8
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "Couldn\'t establish restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    .line 6056
    const/16 v18, 0x0

    .line 6057
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 6048
    .end local v23    # "e":Ljava/io/IOException;
    :cond_15
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v7, 0x0

    aget-object v6, v6, v7

    move-object/from16 v0, v24

    iget-wide v7, v0, Lcom/android/server/backup/FileMetadata;->size:J

    move-object/from16 v0, v24

    iget v9, v0, Lcom/android/server/backup/FileMetadata;->type:I

    .line 6049
    move-object/from16 v0, v24

    iget-object v10, v0, Lcom/android/server/backup/FileMetadata;->domain:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-object v11, v0, Lcom/android/server/backup/FileMetadata;->path:Ljava/lang/String;

    move-object/from16 v0, v24

    iget-wide v12, v0, Lcom/android/server/backup/FileMetadata;->mode:J

    move-object/from16 v0, v24

    iget-wide v14, v0, Lcom/android/server/backup/FileMetadata;->mtime:J

    .line 6050
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mEphemeralOpToken:I

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mBackupManagerBinder:Landroid/app/backup/IBackupManager;

    move-object/from16 v17, v0

    .line 6048
    invoke-interface/range {v5 .. v17}, Landroid/app/IBackupAgent;->doRestoreFile(Landroid/os/ParcelFileDescriptor;JILjava/lang/String;Ljava/lang/String;JJILandroid/app/backup/IBackupManager;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_2

    goto/16 :goto_4

    .line 6058
    :catch_2
    move-exception v22

    .line 6061
    .local v22, "e":Landroid/os/RemoteException;
    :try_start_a
    const-string/jumbo v5, "RestoreEngine"

    const-string/jumbo v6, "Agent crashed during full restore"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_0

    .line 6062
    const/16 v18, 0x0

    .line 6063
    const/16 v27, 0x0

    goto/16 :goto_4

    .line 6077
    .end local v22    # "e":Landroid/os/RemoteException;
    .restart local v30    # "pipe":Ljava/io/FileOutputStream;
    .restart local v31    # "pipeOkay":Z
    :cond_16
    move-wide/from16 v0, v34

    long-to-int v0, v0

    move/from16 v36, v0

    .restart local v36    # "toRead":I
    goto/16 :goto_6

    .line 6081
    .restart local v26    # "nRead":I
    :cond_17
    move/from16 v0, v26

    int-to-long v6, v0

    sub-long v34, v34, v6

    .line 6085
    if-eqz v31, :cond_e

    .line 6087
    :try_start_b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v6, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v26

    invoke-virtual {v0, v5, v6, v1}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto/16 :goto_5

    .line 6088
    :catch_3
    move-exception v23

    .line 6089
    .restart local v23    # "e":Ljava/io/IOException;
    :try_start_c
    const-string/jumbo v5, "RestoreEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to write to restore pipe: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6090
    invoke-virtual/range {v23 .. v23}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    .line 6089
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6091
    const/16 v31, 0x0

    goto/16 :goto_5

    .line 6128
    .end local v18    # "agentSuccess":Z
    .end local v23    # "e":Ljava/io/IOException;
    .end local v26    # "nRead":I
    .end local v30    # "pipe":Ljava/io/FileOutputStream;
    .end local v31    # "pipeOkay":Z
    .end local v34    # "toCopy":J
    .end local v36    # "toRead":I
    :cond_18
    if-nez v27, :cond_4

    .line 6130
    move-object/from16 v0, v24

    iget-wide v6, v0, Lcom/android/server/backup/FileMetadata;->size:J

    const-wide/16 v8, 0x1ff

    add-long/2addr v6, v8

    const-wide/16 v8, -0x200

    and-long v20, v6, v8

    .line 6131
    .local v20, "bytesToConsume":J
    :goto_8
    const-wide/16 v6, 0x0

    cmp-long v5, v20, v6

    if-lez v5, :cond_4

    .line 6132
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v5, v5

    int-to-long v6, v5

    cmp-long v5, v20, v6

    if-lez v5, :cond_1a

    .line 6133
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    array-length v0, v5

    move/from16 v36, v0

    .line 6134
    .restart local v36    # "toRead":I
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBuffer:[B

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v36

    invoke-virtual {v0, v5, v6, v1}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    int-to-long v0, v5

    move-wide/from16 v28, v0

    .line 6135
    .local v28, "nRead":J
    const-wide/16 v6, 0x0

    cmp-long v5, v28, v6

    if-ltz v5, :cond_19

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    add-long v6, v6, v28

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0

    .line 6136
    :cond_19
    const-wide/16 v6, 0x0

    cmp-long v5, v28, v6

    if-lez v5, :cond_4

    .line 6137
    sub-long v20, v20, v28

    goto :goto_8

    .line 6133
    .end local v28    # "nRead":J
    .end local v36    # "toRead":I
    :cond_1a
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v36, v0

    .restart local v36    # "toRead":I
    goto :goto_9

    .line 6159
    .end local v20    # "bytesToConsume":J
    .end local v24    # "info":Lcom/android/server/backup/FileMetadata;
    .end local v27    # "okay":Z
    .end local v32    # "pkg":Ljava/lang/String;
    .end local v33    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    .end local v36    # "toRead":I
    :cond_1b
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 5995
    .restart local v24    # "info":Lcom/android/server/backup/FileMetadata;
    .restart local v27    # "okay":Z
    .restart local v32    # "pkg":Ljava/lang/String;
    .restart local v33    # "policy":Lcom/android/server/backup/BackupManagerService$RestorePolicy;
    :catch_4
    move-exception v23

    .restart local v23    # "e":Ljava/io/IOException;
    goto/16 :goto_3

    .line 5997
    .end local v23    # "e":Ljava/io/IOException;
    :catch_5
    move-exception v19

    .local v19, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_3

    .line 5903
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method sendEndRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7033
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 7035
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onEndRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7041
    :cond_0
    :goto_0
    return-void

    .line 7036
    :catch_0
    move-exception v0

    .line 7037
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestoreEngine"

    const-string/jumbo v2, "full restore observer went away: endRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7038
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendOnRestorePackage(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 7021
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 7024
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1, p1}, Landroid/app/backup/IFullBackupRestoreObserver;->onRestorePackage(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7030
    :cond_0
    :goto_0
    return-void

    .line 7025
    :catch_0
    move-exception v0

    .line 7026
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestoreEngine"

    const-string/jumbo v2, "full restore observer went away: restorePackage"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7027
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method sendStartRestore()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 7010
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    if-eqz v1, :cond_0

    .line 7012
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    invoke-interface {v1}, Landroid/app/backup/IFullBackupRestoreObserver;->onStartRestore()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7018
    :cond_0
    :goto_0
    return-void

    .line 7013
    :catch_0
    move-exception v0

    .line 7014
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "RestoreEngine"

    const-string/jumbo v2, "full restore observer went away: startRestore"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7015
    iput-object v3, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mObserver:Landroid/app/backup/IFullBackupRestoreObserver;

    goto :goto_0
.end method

.method setUpPipes()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 6163
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    .line 6164
    return-void
.end method

.method skipTarPadding(JLjava/io/InputStream;)V
    .locals 9
    .param p1, "size"    # J
    .param p3, "instream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x200

    .line 6373
    add-long v4, p1, v6

    rem-long v2, v4, v6

    .line 6374
    .local v2, "partial":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 6375
    long-to-int v4, v2

    rsub-int v1, v4, 0x200

    .line 6379
    .local v1, "needed":I
    new-array v0, v1, [B

    .line 6380
    .local v0, "buffer":[B
    const/4 v4, 0x0

    invoke-virtual {p0, p3, v0, v4, v1}, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->readExactly(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ne v4, v1, :cond_1

    .line 6381
    iget-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    int-to-long v6, v1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mBytes:J

    .line 6384
    .end local v0    # "buffer":[B
    .end local v1    # "needed":I
    :cond_0
    return-void

    .line 6382
    .restart local v0    # "buffer":[B
    .restart local v1    # "needed":I
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string/jumbo v5, "Unexpected EOF in padding"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method tearDownAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    const/4 v1, 0x0

    .line 6186
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    if-eqz v0, :cond_0

    .line 6187
    iget-object v0, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->this$0:Lcom/android/server/backup/BackupManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/backup/BackupManagerService;->tearDownAgentAndKill(Landroid/content/pm/ApplicationInfo;)V

    .line 6188
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mAgent:Landroid/app/IBackupAgent;

    .line 6190
    :cond_0
    return-void
.end method

.method tearDownPipes()V
    .locals 4

    .prologue
    .line 6170
    monitor-enter p0

    .line 6171
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 6173
    :try_start_1
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6174
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 6175
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/os/ParcelFileDescriptor;->close()V

    .line 6176
    iget-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;

    const/4 v2, 0x0

    const/4 v3, 0x1

    aput-object v2, v1, v3
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6180
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$FullRestoreEngine;->mPipes:[Landroid/os/ParcelFileDescriptor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    .line 6183
    return-void

    .line 6177
    :catch_0
    move-exception v0

    .line 6178
    .local v0, "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v1, "RestoreEngine"

    const-string/jumbo v2, "Couldn\'t close agent pipes"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 6170
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
