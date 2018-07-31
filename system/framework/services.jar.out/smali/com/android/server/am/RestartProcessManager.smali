.class public Lcom/android/server/am/RestartProcessManager;
.super Ljava/lang/Object;
.source "RestartProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/RestartProcessManager$CenterPoint;,
        Lcom/android/server/am/RestartProcessManager$Cluster;,
        Lcom/android/server/am/RestartProcessManager$ClusterComparator;,
        Lcom/android/server/am/RestartProcessManager$DayDurationComparator;,
        Lcom/android/server/am/RestartProcessManager$DayLRUComparator;,
        Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;,
        Lcom/android/server/am/RestartProcessManager$DayRecord;,
        Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;,
        Lcom/android/server/am/RestartProcessManager$PackageRankInfo;,
        Lcom/android/server/am/RestartProcessManager$ScoreComparator;
    }
.end annotation


# static fields
.field public static final BACKUP_FILE_NAME:Ljava/lang/String; = "record.txt"

.field public static final BACKUP_PATH:Ljava/lang/String; = "RestartProcessManager"

.field public static final CONFIG_NAME:Ljava/lang/String; = "RestartProcessManager"

.field private static CRITERIA_GENERAL_DURATION:J = 0x0L

.field private static CRITERIA_VALID_DURATION:J = 0x0L

.field private static final DEBUG:Z = true

.field private static final KEY_ENABLE_ALL_MODULE:Ljava/lang/String; = "enable_all_module"

.field private static final KEY_ENABLE_MODULE:Ljava/lang/String; = "enable_module"

.field private static final KEY_GENERAL_DURATION:Ljava/lang/String; = "general_duration"

.field public static final KEY_GENERAL_USED_PACKAGES:Ljava/lang/String; = "General Used Packages"

.field public static final KEY_HIGH_USED_PACKAGES:Ljava/lang/String; = "High Used Packages"

.field public static final KEY_LOW_USED_PACKAGES:Ljava/lang/String; = "Low Used Packages"

.field public static final KEY_SELDOM_USED_PACKAGES:Ljava/lang/String; = "Seldom Used Packages"

.field public static final KEY_ULTRA_USED_PACKAGES:Ljava/lang/String; = "Ultra Used Packages"

.field private static final KEY_VALID_DURATION:Ljava/lang/String; = "valid_duration"

.field private static MAX_CALCULATE_ITERATION:I = 0x0

.field private static MAX_SCORE:D = 0.0

.field private static NORMAL_TIME_DIFF:J = 0x0L

.field private static NUM_CLUSTERS:I = 0x0

.field private static NUM_CLUSTERS_GENERAL:I = 0x0

.field private static NUM_CLUSTERS_HIGH:I = 0x0

.field private static NUM_CLUSTERS_LOW:I = 0x0

.field private static NUM_MAX_HIGH_USED:I = 0x0

.field private static NUM_MIN_HIGH:I = 0x0

.field public static final OLD_BACKUP_FILE_NAME:Ljava/lang/String; = "record_backup.txt"

.field public static final PROPERTY_RESTART_PROCESS:Ljava/lang/String; = "persist.sys.rp.debug"

.field public static final PROPERTY_RESTART_PROCESS_ENABLE:Ljava/lang/String; = "persist.sys.rp.enable"

.field public static final PROPERTY_RESTART_PROCESS_ENABLEAL:Ljava/lang/String; = "persist.sys.rp.enableall"

.field private static RANK_DURAION:J = 0x0L

.field private static RECORD_DURATION:J = 0x0L

.field private static RECORD_LIMIT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "RestartProcessManager"

.field private static WARM_UP_TIME:J

.field private static WRITE_RECORD_DURATION:J

.field private static sAllPackagesInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sCurrentMaxDayRecord:I

.field private static sEnableAllModule:Z

.field private static sEnableModule:Z

.field public static sHasReadAllPackages:Z

.field private static sHasWarmUp:Z

.field public static sInitPkgsFromSystemReady:Z

.field public static sInitPkgsFromUnlock:Z

.field private static sIsScreenOff:Z

.field private static sLastRankTime:J

.field private static sLastRunningPackage:Ljava/lang/String;

.field private static sLastWriteRecordTime:J

.field private static sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

.field private static sStartWarmUpTime:J

.field private static sUpdatingPackage:Ljava/lang/String;

.field private static sWritingRecord:Z


# instance fields
.field private mBackupFile:Ljava/io/File;

.field private mBaseDir:Ljava/io/File;

.field private mClusters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$Cluster;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentResult:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFile:Landroid/util/AtomicFile;

.field private mHighWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLowWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNormalWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackagesInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecificList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStartCenterPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$CenterPoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    return-wide v0
.end method

.method static synthetic -get1()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    return-wide v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/am/RestartProcessManager;)Ljava/io/File;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/am/RestartProcessManager;)Landroid/util/AtomicFile;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mFile:Landroid/util/AtomicFile;

    return-object v0
.end method

.method static synthetic -get5()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic -get6()I
    .locals 1

    sget v0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    return v0
.end method

.method static synthetic -get7()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    return v0
.end method

.method static synthetic -get8()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/am/RestartProcessManager;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/RestartProcessManager;
    .param p1, "-value"    # Landroid/util/AtomicFile;

    .prologue
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager;->mFile:Landroid/util/AtomicFile;

    return-object p1
.end method

.method static synthetic -set1(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    return p0
.end method

.method static synthetic -set3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-value"    # Ljava/lang/String;

    .prologue
    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic -set4(J)J
    .locals 0
    .param p0, "-value"    # J

    .prologue
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    return-wide p0
.end method

.method static synthetic -set5(J)J
    .locals 0
    .param p0, "-value"    # J

    .prologue
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    return-wide p0
.end method

.method static synthetic -set6(Z)Z
    .locals 0
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D
    .locals 2
    .param p0, "data"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "cp"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .prologue
    invoke-static {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v0

    return-wide v0
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x1b7740

    const/4 v3, 0x3

    const-wide/16 v4, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 46
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromUnlock:Z

    .line 47
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    .line 48
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    .line 50
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    .line 51
    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    .line 52
    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    .line 53
    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    .line 54
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    .line 55
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    .line 57
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    .line 58
    sput v1, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    .line 59
    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    .line 60
    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    .line 62
    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 64
    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    .line 67
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    .line 68
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    .line 69
    sput-wide v6, Lcom/android/server/am/RestartProcessManager;->WRITE_RECORD_DURATION:J

    .line 70
    sput-wide v6, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    .line 71
    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    .line 72
    const-wide/32 v0, 0x5265c00

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    .line 73
    const-string/jumbo v0, "ro.build.beta"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x2932e00

    :goto_0
    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    .line 75
    const-wide/32 v0, 0x36ee80

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->NORMAL_TIME_DIFF:J

    .line 76
    const/16 v0, 0x14

    sput v0, Lcom/android/server/am/RestartProcessManager;->MAX_CALCULATE_ITERATION:I

    .line 77
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    .line 78
    sput v3, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    .line 79
    sput v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    .line 80
    sput v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    .line 81
    sget v0, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sget v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v0, v1

    sget v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    .line 82
    sput v3, Lcom/android/server/am/RestartProcessManager;->NUM_MIN_HIGH:I

    .line 83
    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/RestartProcessManager;->NUM_MAX_HIGH_USED:I

    .line 25
    return-void

    .line 74
    :cond_0
    const v0, 0x5265c00

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 4
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    .line 87
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    .line 92
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    .line 94
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    .line 95
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    .line 96
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    .line 103
    :try_start_0
    const-string/jumbo v1, "RestartProcessManager"

    const-string/jumbo v2, "RestartProcessManager start"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string/jumbo v1, "persist.sys.rp.enable"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 106
    const-string/jumbo v1, "persist.sys.rp.enableall"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    .line 108
    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 109
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 111
    :cond_0
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PROPERTY_RESTART_PROCESS_ENABLE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PROPERTY_RESTART_PROCESS_ENABLEAL : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    iput-object p1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    .line 115
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 116
    iget-object v1, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 119
    :cond_1
    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v1, :cond_2

    .line 120
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    .line 122
    :cond_2
    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v1, :cond_3

    .line 123
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initEssentials()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    :cond_3
    :goto_0
    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 129
    return-void

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private addSpecificList([Ljava/lang/String;)V
    .locals 6
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 1166
    monitor-enter p0

    .line 1167
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1168
    const/4 v1, 0x2

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_0

    .line 1169
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1168
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1172
    :cond_0
    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1173
    .local v2, "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1174
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1175
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mSpecificList:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1176
    const-string/jumbo v4, "RestartProcessManager"

    .line 1177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing package "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, " due to it\'s not in specific list"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1176
    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1178
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 1166
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v1    # "i":I
    .end local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .restart local v1    # "i":I
    .restart local v2    # "itr":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    :cond_2
    monitor-exit p0

    .line 1182
    return-void
.end method

.method private addWhiteList([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 1199
    array-length v0, p1

    .line 1200
    .local v0, "argsSize":I
    add-int/lit8 v3, v0, -0x2

    aget-object v2, p1, v3

    .line 1201
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v3, v0, -0x1

    aget-object v1, p1, v3

    .line 1203
    .local v1, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1204
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1205
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1207
    const-string/jumbo v3, "high"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1208
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1214
    :cond_0
    :goto_0
    return-void

    .line 1209
    :cond_1
    const-string/jumbo v3, "general"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1210
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1211
    :cond_2
    const-string/jumbo v3, "low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1212
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private assignCluster()V
    .locals 13

    .prologue
    .line 935
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .local v8, "max":D
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 937
    .local v10, "min":D
    const/4 v1, 0x0

    .line 938
    .local v1, "cluster":I
    const-wide/16 v2, 0x0

    .line 940
    .local v2, "distance":D
    sget-object v12, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "key$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 941
    .local v5, "key":Ljava/lang/String;
    sget-object v12, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v12, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 935
    .local v7, "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    const-wide v10, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 943
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    sget v12, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v4, v12, :cond_1

    .line 944
    iget-object v12, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 945
    .local v0, "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v12

    invoke-static {v7, v12}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v2

    .line 946
    cmpg-double v12, v2, v10

    if-gez v12, :cond_0

    .line 947
    move-wide v10, v2

    .line 948
    move v1, v4

    .line 943
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 951
    .end local v0    # "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_1
    invoke-virtual {v7, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setCluster(I)V

    .line 952
    iget-object v12, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v12, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-virtual {v12, v7}, Lcom/android/server/am/RestartProcessManager$Cluster;->addData(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)V

    goto :goto_0

    .line 954
    .end local v4    # "i":I
    .end local v5    # "key":Ljava/lang/String;
    .end local v7    # "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_2
    return-void
.end method

.method private calculate()V
    .locals 19

    .prologue
    .line 877
    const/4 v14, 0x0

    .line 878
    .local v14, "finish":Z
    const/16 v16, 0x0

    .line 880
    .local v16, "iteration":I
    :cond_0
    :goto_0
    if-nez v14, :cond_3

    sget v3, Lcom/android/server/am/RestartProcessManager;->MAX_CALCULATE_ITERATION:I

    move/from16 v0, v16

    if-le v3, v0, :cond_3

    .line 882
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->clearClusters()V

    .line 883
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->getCenterPoints()Ljava/util/ArrayList;

    move-result-object v17

    .line 886
    .local v17, "lastCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->assignCluster()V

    .line 889
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->calculateCenterPoint()V

    .line 891
    add-int/lit8 v16, v16, 0x1

    .line 893
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->getCenterPoints()Ljava/util/ArrayList;

    move-result-object v11

    .line 896
    .local v11, "currentCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    const-wide/16 v12, 0x0

    .line 897
    .local v12, "distance":D
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v15, v3, :cond_1

    .line 898
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-static {v3, v4}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$CenterPoint;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v4

    add-double/2addr v12, v4

    .line 897
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 901
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "clu$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 902
    .local v2, "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
    iget-object v3, v2, Lcom/android/server/am/RestartProcessManager$Cluster;->mCenterPoint:Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    goto :goto_2

    .line 904
    .end local v2    # "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_2
    const-string/jumbo v3, "RestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Iteration: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-string/jumbo v3, "RestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Centroid distances: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const-wide/16 v4, 0x0

    cmpl-double v3, v12, v4

    if-nez v3, :cond_0

    .line 910
    const/4 v14, 0x1

    goto/16 :goto_0

    .line 913
    .end local v10    # "clu$iterator":Ljava/util/Iterator;
    .end local v11    # "currentCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    .end local v12    # "distance":D
    .end local v15    # "i":I
    .end local v17    # "lastCentroids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .restart local v10    # "clu$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 914
    .restart local v2    # "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v18

    new-instance v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/android/server/am/RestartProcessManager;->getDistance(Lcom/android/server/am/RestartProcessManager$CenterPoint;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D

    move-result-wide v4

    iput-wide v4, v2, Lcom/android/server/am/RestartProcessManager$Cluster;->mDistance:D

    goto :goto_3

    .line 916
    .end local v2    # "clu":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_4
    return-void
.end method

.method private calculateCenterPoint()V
    .locals 24

    .prologue
    .line 957
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "cluster$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 958
    .local v2, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    const-wide/16 v16, 0x0

    .line 959
    .local v16, "sumX":D
    const-wide/16 v18, 0x0

    .line 960
    .local v18, "sumY":D
    const-wide/16 v20, 0x0

    .line 962
    .local v20, "sumZ":D
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getDatas()Ljava/util/ArrayList;

    move-result-object v5

    .line 963
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 965
    .local v6, "n_points":I
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "point$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 966
    .local v7, "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    iget-wide v0, v7, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    move-wide/from16 v22, v0

    add-double v16, v16, v22

    .line 967
    iget-wide v0, v7, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    move-wide/from16 v22, v0

    add-double v18, v18, v22

    .line 968
    iget-wide v0, v7, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    move-wide/from16 v22, v0

    add-double v20, v20, v22

    goto :goto_1

    .line 971
    .end local v7    # "point":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v4

    .line 972
    .local v4, "cp":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    if-lez v6, :cond_0

    .line 973
    int-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v8, v16, v22

    .line 974
    .local v8, "newX":D
    int-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v10, v18, v22

    .line 975
    .local v10, "newY":D
    int-to-double v0, v6

    move-wide/from16 v22, v0

    div-double v12, v20, v22

    .line 977
    .local v12, "newZ":D
    iput-wide v8, v4, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 978
    iput-wide v10, v4, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    .line 979
    iput-wide v12, v4, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    goto :goto_0

    .line 982
    .end local v2    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    .end local v4    # "cp":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v6    # "n_points":I
    .end local v8    # "newX":D
    .end local v10    # "newY":D
    .end local v12    # "newZ":D
    .end local v14    # "point$iterator":Ljava/util/Iterator;
    .end local v16    # "sumX":D
    .end local v18    # "sumY":D
    .end local v20    # "sumZ":D
    :cond_2
    return-void
.end method

.method private cleanAllWhitelist()V
    .locals 1

    .prologue
    .line 1217
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1219
    iget-object v0, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1220
    return-void
.end method

.method private clearClusters()V
    .locals 3

    .prologue
    .line 919
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "cluster$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 920
    .local v0, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v0}, Lcom/android/server/am/RestartProcessManager$Cluster;->clear()V

    goto :goto_0

    .line 922
    .end local v0    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_0
    return-void
.end method

.method private convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 637
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 638
    .local v2, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 639
    return-object v2

    .line 640
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 641
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 643
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_1
    return-object v2
.end method

.method private doCleanData(J)V
    .locals 7
    .param p1, "curTime"    # J

    .prologue
    .line 189
    const-string/jumbo v4, "RestartProcessManager"

    const-string/jumbo v5, "Start to clean data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    monitor-enter p0

    .line 191
    :try_start_0
    sget-object v4, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "pkgName$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 192
    .local v2, "pkgName":Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->cleanData(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 190
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "pkgName$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 194
    .restart local v3    # "pkgName$iterator":Ljava/util/Iterator;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    sput-boolean v4, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    .line 195
    sput-wide p1, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    .line 196
    const/4 v4, 0x0

    sput v4, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    .line 197
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    .line 198
    const-wide/16 v4, 0x0

    sput-wide v4, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    .line 199
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 200
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    :try_start_2
    new-instance v0, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v5, "record.txt"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 203
    .local v0, "currentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 204
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 205
    :cond_1
    new-instance v0, Ljava/io/File;

    .end local v0    # "currentFile":Ljava/io/File;
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v5, "record_backup.txt"

    invoke-direct {v0, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 206
    .restart local v0    # "currentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 207
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "currentFile":Ljava/io/File;
    :cond_2
    :goto_1
    monitor-exit p0

    .line 212
    const-string/jumbo v4, "RestartProcessManager"

    const-string/jumbo v5, "Finish cleaning data"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    return-void

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method private getAllPackagesByUsage(Z)Ljava/util/HashMap;
    .locals 18
    .param p1, "needRefresh"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$PackageRankInfo;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 501
    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v14, :cond_0

    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1

    .line 502
    :cond_0
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "sEnableModule is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, ", sEnableAllModule is "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-boolean v16, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 504
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v14

    .line 509
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 511
    .local v10, "now":J
    if-eqz p1, :cond_2

    .line 512
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->rankAllPkgs()V

    .line 513
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sput-wide v14, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    .line 528
    :goto_0
    monitor-enter p0

    .line 529
    :try_start_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 530
    .local v4, "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 531
    .local v3, "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 532
    .local v8, "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v14}, Ljava/util/HashMap;->clear()V

    .line 533
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v13

    .line 536
    .local v13, "totalSize":I
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Total packages : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    new-instance v15, Lcom/android/server/am/RestartProcessManager$ClusterComparator;

    const/16 v16, 0x0

    invoke-direct/range {v15 .. v16}, Lcom/android/server/am/RestartProcessManager$ClusterComparator;-><init>(Lcom/android/server/am/RestartProcessManager$ClusterComparator;)V

    invoke-static {v14, v15}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 540
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    sget v14, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    if-ge v5, v14, :cond_5

    .line 541
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v14, v14, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v8, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 540
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 514
    .end local v3    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v4    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v5    # "i":I
    .end local v8    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v13    # "totalSize":I
    :cond_2
    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    if-eqz v14, :cond_4

    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromUnlock:Z

    if-eqz v14, :cond_4

    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    if-eqz v14, :cond_4

    .line 515
    sget-wide v14, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    sub-long v14, v10, v14

    sget-wide v16, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    cmp-long v14, v14, v16

    if-lez v14, :cond_3

    .line 516
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Need to rank due to duration is over : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    sget-wide v16, Lcom/android/server/am/RestartProcessManager;->RANK_DURAION:J

    invoke-virtual/range {v15 .. v17}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->rankAllPkgs()V

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    sput-wide v14, Lcom/android/server/am/RestartProcessManager;->sLastRankTime:J

    goto/16 :goto_0

    .line 520
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    .line 521
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v14

    .line 524
    :cond_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    .line 525
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v14

    .line 544
    .restart local v3    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .restart local v4    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .restart local v5    # "i":I
    .restart local v8    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .restart local v13    # "totalSize":I
    :cond_5
    :try_start_1
    sget v5, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    :goto_2
    sget v14, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v15, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v14, v15

    if-ge v5, v14, :cond_6

    .line 545
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v14, v14, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 544
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 548
    :cond_6
    sget v14, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    sget v15, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int v5, v14, v15

    :goto_3
    sget v14, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v5, v14, :cond_7

    .line 549
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/RestartProcessManager$Cluster;

    iget-object v14, v14, Lcom/android/server/am/RestartProcessManager$Cluster;->mDataList:Ljava/util/ArrayList;

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 548
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 553
    :cond_7
    const/4 v5, 0x0

    :goto_4
    sget v14, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v5, v14, :cond_8

    .line 554
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v14, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 555
    .local v2, "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->dump()V

    .line 553
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 561
    .end local v2    # "c":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v14

    sget v15, Lcom/android/server/am/RestartProcessManager;->NUM_MAX_HIGH_USED:I

    sub-int v9, v14, v15

    .line 562
    .local v9, "overNum":I
    if-lez v9, :cond_a

    .line 563
    new-instance v14, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>(Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;)V

    invoke-static {v4, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 564
    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_a

    .line 565
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 566
    .local v12, "size":I
    if-lez v12, :cond_9

    .line 567
    const/4 v14, 0x0

    invoke-virtual {v4, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 569
    .local v6, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Choose "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " from High to General"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 571
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 564
    .end local v6    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 578
    .end local v12    # "size":I
    :cond_a
    sget v14, Lcom/android/server/am/RestartProcessManager;->NUM_MIN_HIGH:I

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v15

    sub-int v7, v14, v15

    .line 579
    .local v7, "lack":I
    if-lez v7, :cond_c

    .line 580
    new-instance v14, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;

    const/4 v15, 0x0

    invoke-direct {v14, v15}, Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;-><init>(Lcom/android/server/am/RestartProcessManager$PackageInfoComparator;)V

    invoke-static {v3, v14}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 582
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v7, :cond_c

    .line 583
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 584
    .restart local v12    # "size":I
    if-lez v12, :cond_b

    .line 585
    add-int/lit8 v14, v12, -0x1

    invoke-virtual {v3, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 587
    .restart local v6    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Choose "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " from General to High"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 589
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 582
    .end local v6    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 594
    .end local v12    # "size":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v15, "High Used Packages"

    invoke-virtual {v14, v15, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 596
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "KEY_HIGH_USED_PACKAGES : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v15, "General Used Packages"

    invoke-virtual {v14, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "KEY_GENERAL_USED_PACKAGES : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v15, "Low Used Packages"

    invoke-virtual {v14, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string/jumbo v14, "RestartProcessManager"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "KEY_LOW_USED_PACKAGES : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 606
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->setWhitelist()V

    .line 607
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    return-object v14

    .line 528
    .end local v3    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v4    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v5    # "i":I
    .end local v7    # "lack":I
    .end local v8    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v9    # "overNum":I
    .end local v13    # "totalSize":I
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14
.end method

.method private getCenterPoints()Ljava/util/ArrayList;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$CenterPoint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 925
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v8, "centerPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$CenterPoint;>;"
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "cluster$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/RestartProcessManager$Cluster;

    .line 927
    .local v9, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    invoke-virtual {v9}, Lcom/android/server/am/RestartProcessManager$Cluster;->getCenterPoint()Lcom/android/server/am/RestartProcessManager$CenterPoint;

    move-result-object v0

    .line 928
    .local v0, "aux":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    new-instance v1, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    iget-wide v2, v0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v4, v0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v6, v0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>(DDD)V

    .line 929
    .local v1, "point":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 931
    .end local v0    # "aux":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .end local v1    # "point":Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .end local v9    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_0
    return-object v8
.end method

.method private static getDistance(DDDDDD)D
    .locals 6
    .param p0, "x1"    # D
    .param p2, "y1"    # D
    .param p4, "z1"    # D
    .param p6, "x2"    # D
    .param p8, "y2"    # D
    .param p10, "z2"    # D

    .prologue
    .line 993
    sub-double v0, p0, p6

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double v2, p2, p8

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    sub-double v2, p4, p10

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getDistance(Lcom/android/server/am/RestartProcessManager$CenterPoint;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D
    .locals 12
    .param p0, "cp1"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;
    .param p1, "cp2"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .prologue
    .line 989
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    iget-wide v6, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v8, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v10, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/RestartProcessManager;->getDistance(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static getDistance(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Lcom/android/server/am/RestartProcessManager$CenterPoint;)D
    .locals 12
    .param p0, "data"    # Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .param p1, "cp"    # Lcom/android/server/am/RestartProcessManager$CenterPoint;

    .prologue
    .line 985
    iget-wide v0, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    iget-wide v2, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    iget-wide v4, p0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    iget-wide v6, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    iget-wide v8, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    iget-wide v10, p1, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/RestartProcessManager;->getDistance(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static getInstance()Lcom/android/server/am/RestartProcessManager;
    .locals 4

    .prologue
    .line 163
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lcom/android/server/am/RestartProcessManager;

    .line 165
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "/data/system/"

    const-string/jumbo v3, "RestartProcessManager"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 166
    :cond_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    return-object v0
.end method

.method private hasWarmUp()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 611
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 612
    const/4 v0, 0x0

    return v0

    .line 614
    :cond_0
    sput-boolean v4, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    .line 615
    return v4
.end method

.method private initCluster()V
    .locals 4

    .prologue
    .line 140
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 141
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 142
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    if-ge v1, v2, :cond_0

    .line 143
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-direct {v3}, Lcom/android/server/am/RestartProcessManager$CenterPoint;-><init>()V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    new-instance v0, Lcom/android/server/am/RestartProcessManager$Cluster;

    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager$Cluster;-><init>(I)V

    .line 145
    .local v0, "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual {v0, v2}, Lcom/android/server/am/RestartProcessManager$Cluster;->setCenterPoint(Lcom/android/server/am/RestartProcessManager$CenterPoint;)V

    .line 146
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    .end local v0    # "cluster":Lcom/android/server/am/RestartProcessManager$Cluster;
    :cond_0
    return-void
.end method

.method private initEssentials()V
    .locals 4

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initCluster()V

    .line 133
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->readOldRecord()V

    .line 134
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->setDebugParameter()V

    .line 135
    sget-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    .line 137
    :cond_0
    return-void
.end method

.method private rankAllPkgs()V
    .locals 44

    .prologue
    .line 745
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->size()I

    move-result v35

    if-nez v35, :cond_0

    .line 746
    return-void

    .line 748
    :cond_0
    sget-boolean v35, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v35, :cond_1

    sget-boolean v35, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v35, v35, 0x1

    if-eqz v35, :cond_2

    .line 749
    :cond_1
    return-void

    .line 752
    :cond_2
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 753
    .local v32, "scoreXList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V

    .line 754
    .local v33, "scoreYList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 757
    .local v34, "scoreZList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Double;>;"
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->clear()V

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v36

    .line 761
    .local v36, "startTime":J
    const-string/jumbo v35, "RestartProcessManager"

    const-string/jumbo v38, "Start to rank all packages"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const/4 v12, 0x0

    .line 765
    .local v12, "isMaxRecordChange":Z
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "key$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_4

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 766
    .local v13, "key":Ljava/lang/String;
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 767
    .local v15, "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->resetScore()V

    .line 768
    move-wide/from16 v0, v36

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z

    move-result v35

    if-eqz v35, :cond_3

    .line 769
    const/4 v12, 0x1

    goto :goto_0

    .line 773
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_4
    if-eqz v12, :cond_5

    .line 774
    const-string/jumbo v35, "RestartProcessManager"

    const-string/jumbo v38, "CurrentMaxDayRecord has changed, update all packages again"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 775
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_1
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_5

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 776
    .restart local v13    # "key":Ljava/lang/String;
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 777
    .restart local v15    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    move-wide/from16 v0, v36

    invoke-virtual {v15, v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->updateSelf(J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 757
    .end local v12    # "isMaxRecordChange":Z
    .end local v13    # "key":Ljava/lang/String;
    .end local v14    # "key$iterator":Ljava/util/Iterator;
    .end local v15    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v36    # "startTime":J
    :catchall_0
    move-exception v35

    :try_start_2
    monitor-exit p0

    throw v35
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 870
    :catch_0
    move-exception v10

    .line 871
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 872
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v38

    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    .line 874
    .end local v10    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 782
    .restart local v12    # "isMaxRecordChange":Z
    .restart local v14    # "key$iterator":Ljava/util/Iterator;
    .restart local v36    # "startTime":J
    :cond_5
    :try_start_3
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V

    .line 783
    .local v31, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_3
    sget v35, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    move/from16 v0, v35

    if-ge v11, v0, :cond_c

    .line 784
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->clear()V

    .line 785
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_6
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_9

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 786
    .restart local v13    # "key":Ljava/lang/String;
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 787
    .restart local v15    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_8

    .line 788
    invoke-static {v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 791
    .local v30, "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static/range {v30 .. v30}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get2(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v38

    const-wide/16 v40, 0x0

    cmp-long v35, v38, v40

    if-eqz v35, :cond_7

    .line 792
    invoke-static/range {v30 .. v30}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get1(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v38

    invoke-static/range {v30 .. v30}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get3(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v40

    add-long v38, v38, v40

    move-object/from16 v0, v30

    move-wide/from16 v1, v38

    invoke-static {v0, v1, v2}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set7(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 793
    move-object/from16 v0, v31

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 795
    :cond_7
    sget v35, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    add-int/lit8 v35, v35, -0x1

    move/from16 v0, v35

    if-eq v11, v0, :cond_6

    .line 796
    const/16 v35, 0x1

    move-object/from16 v0, v30

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set0(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    goto :goto_4

    .line 799
    .end local v30    # "record":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_8
    const-string/jumbo v35, "RestartProcessManager"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Package "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-static {v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " size is abnrmal "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 800
    invoke-static {v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/util/ArrayList;->size()I

    move-result v39

    .line 799
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 800
    const-string/jumbo v39, ", max size is "

    .line 799
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    .line 800
    sget v39, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    .line 799
    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 804
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_9
    invoke-virtual/range {v31 .. v31}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-eqz v35, :cond_a

    const/16 v35, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get0(Lcom/android/server/am/RestartProcessManager$DayRecord;)Z

    move-result v35

    if-eqz v35, :cond_b

    .line 783
    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_3

    .line 807
    :cond_b
    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v0, v1}, Lcom/android/server/am/RestartProcessManager;->rankDayRecords(Ljava/util/ArrayList;)V

    .line 808
    sget v35, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    add-int/lit8 v35, v35, -0x1

    move/from16 v0, v35

    if-eq v11, v0, :cond_a

    .line 809
    invoke-interface/range {v31 .. v31}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "rec$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_a

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 810
    .local v28, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    const/16 v35, 0x1

    move-object/from16 v0, v28

    move/from16 v1, v35

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set0(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    goto :goto_5

    .line 816
    .end local v28    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    .end local v29    # "rec$iterator":Ljava/util/Iterator;
    :cond_c
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual/range {v35 .. v35}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    if-eqz v35, :cond_e

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 817
    .restart local v13    # "key":Ljava/lang/String;
    sget-object v35, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    move-object/from16 v0, v35

    invoke-virtual {v0, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 818
    .restart local v15    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    const/4 v11, 0x0

    :goto_7
    sget v35, Lcom/android/server/am/RestartProcessManager;->sCurrentMaxDayRecord:I

    move/from16 v0, v35

    if-ge v11, v0, :cond_d

    .line 819
    invoke-static {v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 820
    .restart local v28    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    iget-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    move-wide/from16 v38, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get7(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v40

    add-int/lit8 v35, v11, 0x1

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    iput-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    .line 821
    iget-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    move-wide/from16 v38, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get5(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v40

    add-int/lit8 v35, v11, 0x1

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    iput-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    .line 822
    iget-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    move-wide/from16 v38, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get6(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v40

    add-int/lit8 v35, v11, 0x1

    move/from16 v0, v35

    int-to-double v0, v0

    move-wide/from16 v42, v0

    mul-double v40, v40, v42

    add-double v38, v38, v40

    move-wide/from16 v0, v38

    iput-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    .line 818
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 825
    .end local v28    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_d
    iget-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v32

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 826
    iget-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    move-object/from16 v0, v33

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 827
    iget-wide v0, v15, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    move-wide/from16 v38, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v35

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 830
    .end local v13    # "key":Ljava/lang/String;
    .end local v15    # "pkgInfo":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    new-instance v38, Lcom/android/server/am/RestartProcessManager$ScoreComparator;

    const/16 v39, 0x0

    invoke-direct/range {v38 .. v39}, Lcom/android/server/am/RestartProcessManager$ScoreComparator;-><init>(Lcom/android/server/am/RestartProcessManager$ScoreComparator;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 831
    invoke-static/range {v32 .. v32}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 832
    invoke-static/range {v33 .. v33}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 833
    invoke-static/range {v34 .. v34}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 836
    const/16 v35, 0x0

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Double;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v22

    .line 837
    .local v22, "minScoreX":D
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Double;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v24

    .line 838
    .local v24, "minScoreY":D
    const/16 v35, 0x0

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Double;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v26

    .line 840
    .local v26, "minScoreZ":D
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v0, v32

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Double;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v16

    .line 841
    .local v16, "maxScoreX":D
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Double;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v18

    .line 842
    .local v18, "maxScoreY":D
    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->size()I

    move-result v35

    add-int/lit8 v35, v35, -0x1

    invoke-virtual/range {v34 .. v35}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/Double;

    invoke-virtual/range {v35 .. v35}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v20

    .line 844
    .local v20, "maxScoreZ":D
    sub-double v4, v16, v22

    .line 845
    .local v4, "difScoreX":D
    sub-double v6, v18, v24

    .line 846
    .local v6, "difScoreY":D
    sub-double v8, v20, v26

    .line 848
    .local v8, "difScoreZ":D
    const-string/jumbo v35, "RestartProcessManager"

    .line 849
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "maxScoreX : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", maxScoreY : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", maxScoreZ : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 848
    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 850
    const-string/jumbo v35, "RestartProcessManager"

    .line 851
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "minScoreX : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", minScoreY : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", minScoreZ : "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    .line 850
    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    const/4 v11, 0x0

    :goto_8
    sget v35, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    move/from16 v0, v35

    if-ge v11, v0, :cond_f

    .line 855
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    int-to-double v0, v11

    move-wide/from16 v38, v0

    mul-double v38, v38, v4

    sget v40, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v38, v38, v40

    add-double v38, v38, v22

    move-wide/from16 v0, v38

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mX:D

    .line 856
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    int-to-double v0, v11

    move-wide/from16 v38, v0

    mul-double v38, v38, v6

    sget v40, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v38, v38, v40

    add-double v38, v38, v24

    move-wide/from16 v0, v38

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mY:D

    .line 857
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    int-to-double v0, v11

    move-wide/from16 v38, v0

    mul-double v38, v38, v8

    sget v40, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    add-int/lit8 v40, v40, -0x1

    move/from16 v0, v40

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v38, v38, v40

    add-double v38, v38, v26

    move-wide/from16 v0, v38

    move-object/from16 v2, v35

    iput-wide v0, v2, Lcom/android/server/am/RestartProcessManager$CenterPoint;->mZ:D

    .line 860
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/am/RestartProcessManager$CenterPoint;

    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/RestartProcessManager$CenterPoint;->dump()V

    .line 854
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_8

    .line 865
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/RestartProcessManager;->calculate()V

    .line 868
    const-string/jumbo v35, "RestartProcessManager"

    const-string/jumbo v38, "Finish all packages"

    move-object/from16 v0, v35

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_2
.end method

.method private rankDayRecords(Ljava/util/ArrayList;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/am/RestartProcessManager$DayRecord;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 998
    .local p1, "recordList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$DayRecord;>;"
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "rec$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 999
    .local v10, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-virtual {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->resetScore()V

    goto :goto_0

    .line 1003
    .end local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_0
    new-instance v12, Lcom/android/server/am/RestartProcessManager$DayDurationComparator;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/server/am/RestartProcessManager$DayDurationComparator;-><init>(Lcom/android/server/am/RestartProcessManager$DayDurationComparator;)V

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1004
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v12}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get9(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v4

    .line 1006
    .local v4, "maxDuration":J
    const-string/jumbo v12, "RestartProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Max day duration : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1007
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_1
    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1008
    .restart local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get9(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_1

    .line 1009
    sget-wide v12, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get9(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    long-to-double v14, v14

    long-to-double v0, v4

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    invoke-static {v10, v12, v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set3(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 1011
    const-string/jumbo v12, "RestartProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get4(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " got score "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get5(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1012
    const-string/jumbo v14, " in DayDuration for duration : "

    .line 1011
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1012
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get9(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    .line 1011
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1017
    .end local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_2
    new-instance v12, Lcom/android/server/am/RestartProcessManager$DayLRUComparator;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/server/am/RestartProcessManager$DayLRUComparator;-><init>(Lcom/android/server/am/RestartProcessManager$DayLRUComparator;)V

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1018
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v12}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get2(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    .line 1019
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v12}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get8(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v12

    .line 1018
    sub-long v6, v14, v12

    .line 1021
    .local v6, "maxLruDiff":J
    const-string/jumbo v12, "RestartProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Max LRU Diff : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1022
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_3
    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1023
    .restart local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get2(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v12

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get8(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    sub-long v2, v12, v14

    .line 1024
    .local v2, "lruDiff":J
    const-wide/16 v12, 0x0

    cmp-long v12, v2, v12

    if-ltz v12, :cond_3

    .line 1026
    sget-wide v12, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    long-to-double v14, v2

    long-to-double v0, v6

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    invoke-static {v10, v12, v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set4(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 1028
    const-string/jumbo v12, "RestartProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get4(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " got score "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get6(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " in DayLRU for LRU diff : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 1032
    .end local v2    # "lruDiff":J
    .end local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_4
    new-instance v12, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;-><init>(Lcom/android/server/am/RestartProcessManager$DayLaunchTimesComparator;)V

    move-object/from16 v0, p1

    invoke-static {v0, v12}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1033
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-static {v12}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v8

    .line 1035
    .local v8, "maxTimes":J
    const-string/jumbo v12, "RestartProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "Max launch times : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :cond_5
    :goto_3
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1037
    .restart local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v12, v12, v14

    if-eqz v12, :cond_5

    .line 1038
    sget-wide v12, Lcom/android/server/am/RestartProcessManager;->MAX_SCORE:D

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    long-to-double v14, v14

    long-to-double v0, v8

    move-wide/from16 v16, v0

    div-double v14, v14, v16

    mul-double/2addr v12, v14

    invoke-static {v10, v12, v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set5(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 1040
    const-string/jumbo v12, "RestartProcessManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get4(Lcom/android/server/am/RestartProcessManager$DayRecord;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " got score "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get7(Lcom/android/server/am/RestartProcessManager$DayRecord;)D

    move-result-wide v14

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1041
    const-string/jumbo v14, " in DayLaunchTimes for launch times : "

    .line 1040
    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    .line 1041
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    .line 1040
    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 1044
    .end local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_6
    return-void
.end method

.method private readFileContent(Ljava/io/File;)V
    .locals 18
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 341
    const/4 v2, 0x0

    .line 343
    .local v2, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v13, Ljava/io/FileReader;

    move-object/from16 v0, p1

    invoke-direct {v13, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 344
    .end local v2    # "br":Ljava/io/BufferedReader;
    .local v3, "br":Ljava/io/BufferedReader;
    const/4 v9, 0x0

    .line 345
    .local v9, "line":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v4, ""

    .line 347
    .local v4, "curPkgName":Ljava/lang/String;
    const-string/jumbo v13, "RestartProcessManager"

    const-string/jumbo v14, "Read old record"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    .end local v9    # "line":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 351
    const-string/jumbo v13, "RestartProcessManager"

    invoke-static {v13, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "HasWarmUp : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 354
    .local v7, "hasWarmUp":Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "WarmUpTime : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    sget-wide v14, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 355
    .local v12, "warmUpTime":Ljava/lang/String;
    const-string/jumbo v13, "HasWarmUp :"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 356
    const-string/jumbo v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    sput-boolean v13, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    .line 357
    const-string/jumbo v13, "RestartProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "HasWarmUp : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-boolean v15, Lcom/android/server/am/RestartProcessManager;->sHasWarmUp:Z

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 387
    .end local v4    # "curPkgName":Ljava/lang/String;
    .end local v7    # "hasWarmUp":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "warmUpTime":Ljava/lang/String;
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/lang/Exception;
    move-object v2, v3

    .line 388
    .end local v3    # "br":Ljava/io/BufferedReader;
    :goto_1
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    move-object/from16 v0, p0

    invoke-direct {v0, v14, v15}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 391
    if-eqz v2, :cond_1

    .line 393
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 398
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 358
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "curPkgName":Ljava/lang/String;
    .restart local v7    # "hasWarmUp":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v12    # "warmUpTime":Ljava/lang/String;
    :cond_2
    :try_start_4
    const-string/jumbo v13, "WarmUpTime :"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 359
    const-string/jumbo v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    sput-wide v14, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    .line 360
    const-string/jumbo v13, "RestartProcessManager"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "StartWarmUpTime : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-wide v16, Lcom/android/server/am/RestartProcessManager;->sStartWarmUpTime:J

    move-wide/from16 v0, v16

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 390
    .end local v4    # "curPkgName":Ljava/lang/String;
    .end local v7    # "hasWarmUp":Ljava/lang/String;
    .end local v9    # "line":Ljava/lang/String;
    .end local v12    # "warmUpTime":Ljava/lang/String;
    :catchall_0
    move-exception v13

    move-object v2, v3

    .line 391
    .end local v3    # "br":Ljava/io/BufferedReader;
    :goto_3
    if-eqz v2, :cond_3

    .line 393
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 390
    :cond_3
    :goto_4
    throw v13

    .line 361
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v4    # "curPkgName":Ljava/lang/String;
    .restart local v7    # "hasWarmUp":Ljava/lang/String;
    .restart local v9    # "line":Ljava/lang/String;
    .restart local v12    # "warmUpTime":Ljava/lang/String;
    :cond_4
    :try_start_6
    const-string/jumbo v13, "PackageName:"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 362
    const-string/jumbo v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    add-int/lit8 v13, v13, 0x1

    invoke-virtual {v9, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    .line 363
    new-instance v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-direct {v8, v4, v13, v14}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 364
    .local v8, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    sget-object v13, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v13, v4, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 366
    .end local v8    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_5
    const-string/jumbo v13, "\\s+"

    invoke-virtual {v9, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 367
    .local v11, "split":[Ljava/lang/String;
    new-instance v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    invoke-direct {v10, v4}, Lcom/android/server/am/RestartProcessManager$DayRecord;-><init>(Ljava/lang/String;)V

    .line 368
    .local v10, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    const/4 v13, 0x3

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set1(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 369
    const/4 v13, 0x2

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set2(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 370
    const/4 v13, 0x1

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set8(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 371
    const/4 v13, 0x0

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set6(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 373
    array-length v13, v11

    const/16 v14, 0x8

    if-ge v13, v14, :cond_6

    .line 374
    const/4 v13, 0x0

    invoke-static {v10, v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set0(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    .line 381
    :goto_5
    sget-object v13, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v13}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    sget-object v13, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get8(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-set1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    .line 383
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get2(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v13, v14, v16

    if-eqz v13, :cond_0

    .line 384
    sget-object v13, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v13, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get2(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    invoke-static {v13, v14, v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-set2(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    goto/16 :goto_0

    .line 376
    :cond_6
    const/4 v13, 0x4

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    invoke-static {v10, v13}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set0(Lcom/android/server/am/RestartProcessManager$DayRecord;Z)Z

    .line 377
    const/4 v13, 0x5

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set5(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 378
    const/4 v13, 0x6

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set3(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D

    .line 379
    const/4 v13, 0x7

    aget-object v13, v11, v13

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v14

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set4(Lcom/android/server/am/RestartProcessManager$DayRecord;D)D
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    .line 391
    .end local v7    # "hasWarmUp":Ljava/lang/String;
    .end local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    .end local v11    # "split":[Ljava/lang/String;
    .end local v12    # "warmUpTime":Ljava/lang/String;
    :cond_7
    if-eqz v3, :cond_8

    .line 393
    :try_start_7
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_8
    :goto_6
    move-object v2, v3

    .end local v3    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    goto/16 :goto_2

    .line 394
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v5

    .line 395
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 394
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v4    # "curPkgName":Ljava/lang/String;
    .end local v5    # "e":Ljava/io/IOException;
    .end local v9    # "line":Ljava/lang/String;
    .restart local v6    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 395
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_2

    .line 394
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v5

    .line 395
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    .line 390
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v13

    goto/16 :goto_3

    .line 387
    .local v2, "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v6

    .restart local v6    # "e":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method private readOldRecord()V
    .locals 5

    .prologue
    .line 264
    const/4 v1, 0x0

    .line 265
    .local v1, "targetFile":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v3, "record.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 266
    .local v0, "currentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 267
    move-object v1, v0

    .line 275
    .end local v1    # "targetFile":Ljava/io/File;
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 276
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Use "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    monitor-enter p0

    .line 278
    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/am/RestartProcessManager;->readFileContent(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 282
    :cond_1
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sHasReadAllPackages:Z

    .line 283
    return-void

    .line 269
    .restart local v1    # "targetFile":Ljava/io/File;
    :cond_2
    new-instance v0, Ljava/io/File;

    .end local v0    # "currentFile":Ljava/io/File;
    iget-object v2, p0, Lcom/android/server/am/RestartProcessManager;->mBaseDir:Ljava/io/File;

    const-string/jumbo v3, "record_backup.txt"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 270
    .restart local v0    # "currentFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 271
    move-object v1, v0

    .local v1, "targetFile":Ljava/io/File;
    goto :goto_0

    .line 277
    .end local v1    # "targetFile":Ljava/io/File;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method private removeWhiteList([Ljava/lang/String;)V
    .locals 4
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 1185
    array-length v0, p1

    .line 1186
    .local v0, "argsSize":I
    add-int/lit8 v3, v0, -0x2

    aget-object v2, p1, v3

    .line 1187
    .local v2, "type":Ljava/lang/String;
    add-int/lit8 v3, v0, -0x1

    aget-object v1, p1, v3

    .line 1189
    .local v1, "pkg":Ljava/lang/String;
    const-string/jumbo v3, "high"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1190
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1196
    :cond_0
    :goto_0
    return-void

    .line 1191
    :cond_1
    const-string/jumbo v3, "general"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1192
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1193
    :cond_2
    const-string/jumbo v3, "low"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1194
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static resolveConfig(Lorg/json/JSONArray;)V
    .locals 8
    .param p0, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 224
    if-nez p0, :cond_0

    .line 225
    const-string/jumbo v5, "RestartProcessManager"

    const-string/jumbo v6, "[OnlineConfig] RestartProcess jsonArray is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    return-void

    .line 229
    :cond_0
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_7

    .line 230
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 231
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "name"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 232
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Online config : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", value : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "value"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string/jumbo v5, "valid_duration"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 234
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    .line 229
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 235
    :cond_2
    const-string/jumbo v5, "general_duration"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 236
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    sput-wide v6, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 258
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 259
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "RestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[OnlineConfig] resolve error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 261
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 237
    .restart local v2    # "json":Lorg/json/JSONObject;
    .restart local v3    # "name":Ljava/lang/String;
    :cond_3
    :try_start_1
    const-string/jumbo v5, "enable_module"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 238
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    sput-boolean v5, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    goto :goto_1

    .line 239
    :cond_4
    const-string/jumbo v5, "enable_all_module"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 240
    const-string/jumbo v5, "value"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    .line 242
    .local v4, "newValue":Z
    sget-boolean v5, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eq v5, v4, :cond_5

    .line 244
    if-eqz v4, :cond_6

    .line 245
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v5

    invoke-direct {v5}, Lcom/android/server/am/RestartProcessManager;->initEssentials()V

    .line 251
    :cond_5
    :goto_3
    sput-boolean v4, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    goto :goto_1

    .line 248
    :cond_6
    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v5, v6, v7}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    goto :goto_3

    .line 255
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "newValue":Z
    :cond_7
    sget-boolean v5, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-eqz v5, :cond_8

    sget-boolean v5, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    xor-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_8

    .line 256
    const/4 v5, 0x1

    sput-boolean v5, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    .line 257
    :cond_8
    const-string/jumbo v5, "RestartProcessManager"

    const-string/jumbo v6, "[OnlineConfig] RestartProcessManager updated complete"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private setClusterParam([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 1141
    monitor-enter p0

    .line 1146
    const/4 v4, 0x2

    :try_start_0
    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 1147
    .local v2, "newHigh":I
    const/4 v4, 0x3

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 1148
    .local v1, "newGeneral":I
    const/4 v4, 0x4

    aget-object v4, p1, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 1150
    .local v3, "newLow":I
    sput v2, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    .line 1151
    sput v1, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    .line 1152
    sput v3, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    .line 1153
    sget v4, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    sget v5, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    add-int/2addr v4, v5

    sget v5, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    add-int/2addr v4, v5

    sput v4, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS:I

    .line 1154
    const-string/jumbo v4, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "NUM_CLUSTERS_HIGH : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_HIGH:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", NUM_CLUSTERS_GENERAL : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1155
    sget v6, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_GENERAL:I

    .line 1154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1155
    const-string/jumbo v6, ", NUM_CLUSTERS_LOW : "

    .line 1154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1155
    sget v6, Lcom/android/server/am/RestartProcessManager;->NUM_CLUSTERS_LOW:I

    .line 1154
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1156
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mStartCenterPoints:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1157
    iget-object v4, p0, Lcom/android/server/am/RestartProcessManager;->mClusters:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1158
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->initCluster()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "newGeneral":I
    .end local v2    # "newHigh":I
    .end local v3    # "newLow":I
    :goto_0
    monitor-exit p0

    .line 1163
    return-void

    .line 1159
    :catch_0
    move-exception v0

    .line 1160
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1141
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method private static setCriteriaGeneralDuration(J)V
    .locals 0
    .param p0, "duraion"    # J

    .prologue
    .line 1632
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    .line 1633
    return-void
.end method

.method private static setCriteriaValidDuration(J)V
    .locals 0
    .param p0, "duration"    # J

    .prologue
    .line 1628
    sput-wide p0, Lcom/android/server/am/RestartProcessManager;->CRITERIA_VALID_DURATION:J

    .line 1629
    return-void
.end method

.method private setDebugParameter()V
    .locals 4

    .prologue
    .line 151
    const-string/jumbo v1, "persist.sys.rp.debug"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 153
    .local v0, "debug":Z
    if-eqz v0, :cond_0

    .line 154
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "persist.sys.rp.debug : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->CRITERIA_GENERAL_DURATION:J

    .line 156
    const-wide/32 v2, 0x1b7740

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->RECORD_DURATION:J

    .line 157
    const/4 v1, 0x5

    sput v1, Lcom/android/server/am/RestartProcessManager;->RECORD_LIMIT:I

    .line 158
    const-wide/32 v2, 0x493e0

    sput-wide v2, Lcom/android/server/am/RestartProcessManager;->WARM_UP_TIME:J

    .line 160
    :cond_0
    return-void
.end method

.method public static setScreenState(Z)V
    .locals 3
    .param p0, "isOff"    # Z

    .prologue
    .line 216
    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v0, :cond_0

    .line 217
    return-void

    .line 218
    :cond_0
    sput-boolean p0, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    .line 220
    const-string/jumbo v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Screen off is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    return-void
.end method

.method public static setUpdatingPackage(Ljava/lang/String;)V
    .locals 0
    .param p0, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 401
    sput-object p0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    .line 402
    return-void
.end method

.method private setWhitelist()V
    .locals 11

    .prologue
    .line 405
    const-string/jumbo v9, "persist.sys.rp.debug"

    const/4 v10, 0x0

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 406
    .local v0, "debug":Z
    if-nez v0, :cond_0

    .line 407
    return-void

    .line 408
    :cond_0
    monitor-enter p0

    .line 409
    :try_start_0
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v10, "High Used Packages"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 410
    .local v2, "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v10, "General Used Packages"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 411
    .local v1, "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v10, "Low Used Packages"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 413
    .local v6, "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    if-nez v2, :cond_1

    .line 414
    new-instance v2, Ljava/util/ArrayList;

    .end local v2    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 415
    .restart local v2    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v10, "High Used Packages"

    invoke-virtual {v9, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_1
    if-nez v1, :cond_2

    .line 418
    new-instance v1, Ljava/util/ArrayList;

    .end local v1    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 419
    .restart local v1    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v10, "General Used Packages"

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    :cond_2
    if-nez v6, :cond_3

    .line 422
    new-instance v6, Ljava/util/ArrayList;

    .end local v6    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 423
    .restart local v6    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    const-string/jumbo v10, "Low Used Packages"

    invoke-virtual {v9, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    :cond_3
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "pkg$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 428
    .local v7, "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 429
    .local v5, "isFound":Z
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "info$iterator":Ljava/util/Iterator;
    :cond_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 430
    .local v3, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 431
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 432
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    const/4 v5, 0x1

    .line 438
    .end local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_6
    if-nez v5, :cond_4

    .line 439
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 440
    .restart local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 441
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 442
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 408
    .end local v1    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v2    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "isFound":Z
    .end local v6    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v7    # "pkg":Ljava/lang/String;
    .end local v8    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 450
    .restart local v1    # "generalResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .restart local v2    # "highResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .restart local v6    # "lowResult":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .restart local v8    # "pkg$iterator":Ljava/util/Iterator;
    :cond_8
    :try_start_1
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_9
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 452
    .restart local v7    # "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 454
    .restart local v5    # "isFound":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "info$iterator":Ljava/util/Iterator;
    :cond_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 455
    .restart local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 456
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 457
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 458
    const/4 v5, 0x1

    .line 463
    .end local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_b
    if-nez v5, :cond_9

    .line 464
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 465
    .restart local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 466
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 467
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 475
    .end local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "isFound":Z
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_d
    iget-object v9, p0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_e
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_12

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 477
    .restart local v7    # "pkg":Ljava/lang/String;
    const/4 v5, 0x0

    .line 478
    .restart local v5    # "isFound":Z
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "info$iterator":Ljava/util/Iterator;
    :cond_f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_10

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 479
    .restart local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 480
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 481
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    const/4 v5, 0x1

    .line 487
    .end local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_10
    if-nez v5, :cond_e

    .line 488
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 489
    .restart local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    .line 490
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 491
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .end local v3    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v4    # "info$iterator":Ljava/util/Iterator;
    .end local v5    # "isFound":Z
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_12
    monitor-exit p0

    .line 498
    return-void
.end method


# virtual methods
.method public addNewPackages(Ljava/lang/String;)V
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 670
    monitor-enter p0

    .line 671
    :try_start_0
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 672
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 674
    :cond_0
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Adding package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    new-instance v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    .line 676
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 678
    return-void

    .line 670
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public cleanAllData(J)V
    .locals 9
    .param p1, "curTime"    # J

    .prologue
    .line 170
    sget-boolean v4, Lcom/android/server/am/RestartProcessManager;->sInitPkgsFromSystemReady:Z

    if-nez v4, :cond_0

    .line 171
    return-void

    .line 177
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 178
    .local v2, "oldTime":J
    const-string/jumbo v4, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Old time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", new time : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    sub-long v0, p1, v2

    .line 180
    .local v0, "diff":J
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/am/RestartProcessManager;->NORMAL_TIME_DIFF:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_1

    .line 181
    const-string/jumbo v4, "RestartProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Normal time diff : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 184
    :cond_1
    const-string/jumbo v4, "RestartProcessManager"

    const-string/jumbo v5, "Clean all data due to time is changed"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/RestartProcessManager;->doCleanData(J)V

    .line 186
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 18
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p3, "all"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1047
    .local p2, "whitelist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v14, :cond_0

    sget-boolean v14, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v14, v14, 0x1

    if-eqz v14, :cond_1

    .line 1048
    :cond_0
    return-void

    .line 1049
    :cond_1
    monitor-enter p0

    .line 1050
    const/4 v14, 0x1

    :try_start_0
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v2

    .line 1051
    .local v2, "allTypePackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/server/am/RestartProcessManager;->writeRecord(Z)V

    .line 1052
    const-string/jumbo v14, "Current Restart Whitelist : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1054
    invoke-interface/range {p2 .. p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_2

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1055
    .local v12, "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1049
    .end local v2    # "allTypePackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    .end local v12    # "str":Ljava/lang/String;
    .end local v13    # "str$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v14

    monitor-exit p0

    throw v14

    .line 1058
    .restart local v2    # "allTypePackages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;>;"
    .restart local v13    # "str$iterator":Ljava/util/Iterator;
    :cond_2
    :try_start_1
    const-string/jumbo v14, "Classification Whitelist : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1059
    const-string/jumbo v14, "High used : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1060
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mHighWhitelist:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1061
    .restart local v12    # "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 1063
    .end local v12    # "str":Ljava/lang/String;
    :cond_3
    const-string/jumbo v14, "General used : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mNormalWhitelist:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1065
    .restart local v12    # "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    .line 1067
    .end local v12    # "str":Ljava/lang/String;
    :cond_4
    const-string/jumbo v14, "Low used : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1068
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mLowWhitelist:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1069
    .restart local v12    # "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 1072
    .end local v12    # "str":Ljava/lang/String;
    :cond_5
    const-string/jumbo v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1073
    if-eqz p3, :cond_7

    .line 1074
    const-string/jumbo v14, "Current Restart Rank : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1076
    const-string/jumbo v14, "ScoreFG   ScoreLRU   ScoreTimes   Package Name                                           Total Launch Times   Foreground Time                    Last LaunchTime"

    .line 1075
    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1078
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/am/RestartProcessManager;->mPackagesInfo:Ljava/util/ArrayList;

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "pr$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1079
    .local v8, "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-virtual {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->resetOldRecord()V

    .line 1080
    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get1(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/util/ArrayList;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v11

    .local v11, "rec$iterator":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_6

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/RestartProcessManager$DayRecord;

    .line 1081
    .local v10, "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get1(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v14

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get3(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v10, v14, v15}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-set7(Lcom/android/server/am/RestartProcessManager$DayRecord;J)J

    .line 1082
    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get4(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v14

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get9(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v8, v14, v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-set3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    .line 1083
    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get5(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v14

    invoke-static {v10}, Lcom/android/server/am/RestartProcessManager$DayRecord;->-get10(Lcom/android/server/am/RestartProcessManager$DayRecord;)J

    move-result-wide v16

    add-long v14, v14, v16

    invoke-static {v8, v14, v15}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-set4(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;J)J

    goto :goto_5

    .line 1086
    .end local v10    # "rec":Lcom/android/server/am/RestartProcessManager$DayRecord;
    :cond_6
    const-string/jumbo v14, "%1$6.2f      %2$6.2f       %3$6.2f      %4$50s  %5$18d  %6$16d   %7$32d"

    .line 1085
    const/4 v15, 0x7

    new-array v15, v15, [Ljava/lang/Object;

    .line 1086
    iget-wide v0, v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalFGScore:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x0

    aput-object v16, v15, v17

    .line 1087
    iget-wide v0, v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLruScore:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x1

    aput-object v16, v15, v17

    iget-wide v0, v8, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->mTotalLaunchTimesScore:D

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v15, v17

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x3

    aput-object v16, v15, v17

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get5(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x4

    aput-object v16, v15, v17

    .line 1088
    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get4(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x5

    aput-object v16, v15, v17

    invoke-static {v8}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get2(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)J

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x6

    aput-object v16, v15, v17

    .line 1085
    invoke-static {v14, v15}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .line 1089
    .restart local v12    # "str":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1093
    .end local v8    # "pr":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    .end local v9    # "pr$iterator":Ljava/util/Iterator;
    .end local v11    # "rec$iterator":Ljava/util/Iterator;
    .end local v12    # "str":Ljava/lang/String;
    :cond_7
    const-string/jumbo v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1094
    const-string/jumbo v14, "Print All type packages : "

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1096
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v14

    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1097
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 1098
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1100
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "p$iterator":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 1101
    .local v6, "p":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    invoke-static {v6}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get3(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    .line 1103
    .end local v6    # "p":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :cond_8
    const-string/jumbo v14, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_6

    .end local v3    # "key":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/RestartProcessManager$PackageRankInfo;>;"
    .end local v7    # "p$iterator":Ljava/util/Iterator;
    :cond_9
    monitor-exit p0

    .line 1106
    return-void
.end method

.method public getGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 625
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 626
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 627
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "General Used Packages"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 619
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 620
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 621
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "High Used Packages"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 2
    .param p1, "needUpdate"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    xor-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 632
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 633
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->getAllPackagesByUsage(Z)Ljava/util/HashMap;

    move-result-object v0

    const-string/jumbo v1, "Low Used Packages"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/server/am/RestartProcessManager;->convertInfoToString(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public handleCommand([Ljava/lang/String;)V
    .locals 7
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x3

    .line 1109
    sget-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    if-eqz v3, :cond_0

    sget-boolean v3, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 1110
    :cond_0
    return-void

    .line 1112
    :cond_1
    const-string/jumbo v3, "RestartProcessManager"

    const-string/jumbo v4, "Handle command :"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v2, p1, v3

    .line 1114
    .local v2, "str":Ljava/lang/String;
    const-string/jumbo v5, "RestartProcessManager"

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1117
    .end local v2    # "str":Ljava/lang/String;
    :cond_2
    array-length v0, p1

    .line 1118
    .local v0, "argsSize":I
    monitor-enter p0

    .line 1120
    add-int/lit8 v3, v0, -0x1

    :try_start_0
    aget-object v3, p1, v3

    const-string/jumbo v4, "cleanall"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1121
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->cleanAllWhitelist()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    :goto_1
    monitor-exit p0

    .line 1138
    return-void

    .line 1122
    :cond_4
    if-le v0, v6, :cond_5

    add-int/lit8 v3, v0, -0x3

    :try_start_1
    aget-object v3, p1, v3

    const-string/jumbo v4, "add"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->addWhiteList([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 1134
    :catch_0
    move-exception v1

    .line 1135
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 1118
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 1124
    :cond_5
    if-le v0, v6, :cond_6

    add-int/lit8 v3, v0, -0x3

    :try_start_3
    aget-object v3, p1, v3

    const-string/jumbo v4, "remove"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1125
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->removeWhiteList([Ljava/lang/String;)V

    goto :goto_1

    .line 1126
    :cond_6
    const/4 v3, 0x2

    if-le v0, v3, :cond_7

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const-string/jumbo v4, "specific"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1127
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->addSpecificList([Ljava/lang/String;)V

    goto :goto_1

    .line 1128
    :cond_7
    const/4 v3, 0x5

    if-ne v0, v3, :cond_8

    const/4 v3, 0x1

    aget-object v3, p1, v3

    const-string/jumbo v4, "clusters"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1129
    invoke-direct {p0, p1}, Lcom/android/server/am/RestartProcessManager;->setClusterParam([Ljava/lang/String;)V

    goto :goto_1

    .line 1130
    :cond_8
    const/4 v3, 0x1

    aget-object v3, p1, v3

    const-string/jumbo v4, "clear"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1131
    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 1132
    iget-object v3, p0, Lcom/android/server/am/RestartProcessManager;->mCurrentResult:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public initialAllPackage(Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "allPackages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 657
    monitor-enter p0

    .line 658
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "str$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 659
    .local v0, "str":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 660
    sget-object v2, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, v0, v4, v5}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 662
    :cond_0
    const-string/jumbo v2, "RestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "initialAllPackage : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 657
    .end local v0    # "str":Ljava/lang/String;
    .end local v1    # "str$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .restart local v1    # "str$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit p0

    .line 666
    sput-boolean v6, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    .line 667
    return-void
.end method

.method public isHighUsedPackages(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 647
    invoke-direct {p0}, Lcom/android/server/am/RestartProcessManager;->hasWarmUp()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableModule:Z

    xor-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 648
    :cond_0
    const/4 v1, 0x1

    return v1

    .line 649
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v0

    .line 650
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v0, :cond_2

    .line 651
    return v2

    .line 653
    :cond_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 681
    monitor-enter p0

    .line 682
    :try_start_0
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sUpdatingPackage:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 684
    const-string/jumbo v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Removing package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 685
    sget-object v0, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    .line 691
    return-void

    .line 688
    :cond_0
    :try_start_1
    const-string/jumbo v0, "RestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Updating package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 681
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public updateDuration(Ljava/lang/String;J)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "finishTime"    # J

    .prologue
    .line 694
    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v1, :cond_0

    .line 695
    return-void

    .line 696
    :cond_0
    monitor-enter p0

    .line 697
    :try_start_0
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 700
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    if-eqz v0, :cond_1

    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 702
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen is off, skip updateDuration : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-get0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 703
    return-void

    .line 705
    :cond_1
    if-nez v0, :cond_2

    monitor-exit p0

    .line 706
    return-void

    .line 707
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setFinishTime(J)V

    .line 708
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-set0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 710
    return-void

    .line 696
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public updateLaunchTime(Ljava/lang/String;J)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "time"    # J

    .prologue
    .line 713
    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v1, :cond_0

    .line 714
    return-void

    .line 716
    :cond_0
    sget-boolean v1, Lcom/android/server/am/RestartProcessManager;->sIsScreenOff:Z

    if-eqz v1, :cond_1

    .line 718
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Screen is off, skip updateLaunchTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    return-void

    .line 721
    :cond_1
    monitor-enter p0

    .line 723
    :try_start_0
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Update Total Launch Times :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sAllPackagesInfo:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;

    .line 725
    .local v0, "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    if-nez v0, :cond_2

    .line 726
    sput-object p1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    .line 728
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sLastRunningPackage (null) : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 729
    return-void

    .line 731
    :cond_2
    :try_start_1
    invoke-virtual {v0, p2, p3}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->setLastLaunchTime(J)V

    .line 732
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->-set0(Lcom/android/server/am/RestartProcessManager$PackageRankInfo;Z)Z

    .line 733
    sget-object v1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 734
    invoke-virtual {v0, p1}, Lcom/android/server/am/RestartProcessManager$PackageRankInfo;->increaseLaunchTime(Ljava/lang/String;)V

    .line 737
    :cond_3
    sput-object p1, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 740
    const-string/jumbo v1, "RestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Last Running Package : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/server/am/RestartProcessManager;->sLastRunningPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " , start time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 721
    .end local v0    # "info":Lcom/android/server/am/RestartProcessManager$PackageRankInfo;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public writeRecord(Z)V
    .locals 6
    .param p1, "force"    # Z

    .prologue
    .line 286
    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sEnableAllModule:Z

    if-nez v2, :cond_0

    .line 287
    return-void

    .line 288
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 289
    .local v0, "now":J
    if-nez p1, :cond_2

    sget-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    if-nez v2, :cond_1

    sget-wide v2, Lcom/android/server/am/RestartProcessManager;->sLastWriteRecordTime:J

    sub-long v2, v0, v2

    sget-wide v4, Lcom/android/server/am/RestartProcessManager;->WRITE_RECORD_DURATION:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    .line 290
    :cond_1
    const-string/jumbo v2, "RestartProcessManager"

    const-string/jumbo v3, "No need to write old record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    return-void

    .line 293
    :cond_2
    const-string/jumbo v2, "RestartProcessManager"

    const-string/jumbo v3, "Start to write old record"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/server/am/RestartProcessManager;->sWritingRecord:Z

    .line 295
    new-instance v2, Lcom/android/server/am/RestartProcessManager$1;

    const-string/jumbo v3, "RestartProcessManager"

    invoke-direct {v2, p0, v3, v0, v1}, Lcom/android/server/am/RestartProcessManager$1;-><init>(Lcom/android/server/am/RestartProcessManager;Ljava/lang/String;J)V

    invoke-virtual {v2}, Lcom/android/server/am/RestartProcessManager$1;->start()V

    .line 338
    return-void
.end method
