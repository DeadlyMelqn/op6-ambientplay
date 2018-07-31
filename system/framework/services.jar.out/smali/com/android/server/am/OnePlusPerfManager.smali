.class public Lcom/android/server/am/OnePlusPerfManager;
.super Ljava/lang/Object;
.source "OnePlusPerfManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;,
        Lcom/android/server/am/OnePlusPerfManager$PerfInfo;,
        Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;,
        Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;,
        Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;,
        Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;,
        Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "OPPerf"

.field public static DEBUG:Z = false

.field private static final DEFAULT_LEVEL:Ljava/lang/String; = "0"

.field private static final DEFAULT_MODE:I = 0x0

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static DEFAULT_TIMEOUT:I = 0x0

.field public static ENABLE:Z = false

.field private static final ENABLE_FLAG_MODE_PERFHINT:I = 0x40

.field private static final ENABLE_FLAG_MODE_PERFLOCK:I = 0x80

.field private static final ENABLE_FLAG_MODE_SCHEDTUNE:I = 0x20

.field private static final ENABLE_FLAG_MODE_STARTSPEED:I = 0x10

.field public static ENABLE_MODE_PERFHINT:Z = false

.field public static ENABLE_MODE_PERFLOCK:Z = false

.field public static ENABLE_MODE_SCHEDTUNE:Z = false

.field public static ENABLE_MODE_STARTSPEED:Z = false

.field private static INSTANCE:Lcom/android/server/am/OnePlusPerfManager; = null

.field private static final LEVEL_REMOVE:Ljava/lang/String; = "-1"

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final MSG_STARTSPEED_SCHEDTUNE:I = 0x1

.field private static final MSG_STARTSPEED_SCHEDTUNE_TIMEOUT:I = 0x2

.field private static final OPPERF_FILE:Ljava/lang/String; = "/system/etc/opperf.xml"

.field private static final PARAM_PATTERN:Ljava/lang/String; = ","

.field private static final PERF_MODE_PERFHINT:I = 0x6

.field private static final PERF_MODE_PERFLOCK:I = 0x7

.field private static final PERF_MODE_SCHEDTUNE:I = 0x5

.field private static final PERF_MODE_STARTSPEED:I = 0x4

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.opperf.debug"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opperf.enable"

.field public static final TAG:Ljava/lang/String; = "OPPerf"

.field private static final XML_ATTR_LEVEL:Ljava/lang/String; = "level"

.field private static final XML_ATTR_MODE:Ljava/lang/String; = "mode"

.field private static final XML_ATTR_NAME:Ljava/lang/String; = "name"

.field private static final XML_ATTR_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_ATTR_PERF_PARAM:Ljava/lang/String; = "param"

.field private static final XML_ATTR_SCHEDTUNE_DEFAULT:Ljava/lang/String; = "default"

.field private static final XML_ATTR_SCHEDTUNE_PATH:Ljava/lang/String; = "path"

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_TIMEOUT:Ljava/lang/String; = "timeout"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PERF:Ljava/lang/String; = "perf"

.field private static final XML_TAG_PERFHINT:Ljava/lang/String; = "perfhint"

.field private static final XML_TAG_PERFLOCK:Ljava/lang/String; = "perflock"

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final XML_TAG_SCHEDTUNE:Ljava/lang/String; = "schedtune"

.field private static final XML_TAG_SCHEDTUNE_ITEM:Ljava/lang/String; = "item"

.field private static final XML_TAG_SPKG:Ljava/lang/String; = "spkg"


# instance fields
.field private final currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

.field private mContext:Landroid/content/Context;

.field private mCurrentSpeedLevel:Ljava/lang/String;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPerfBoost:Landroid/util/BoostFramework;

.field private mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

.field mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

.field private mPerfLockLevelMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;",
            ">;"
        }
    .end annotation
.end field

.field mPerfManagerThread:Landroid/os/HandlerThread;

.field private mPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$PerfInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSchedtuneParamMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;",
            ">;"
        }
    .end annotation
.end field

.field private mSpecialPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;",
            ">;"
        }
    .end annotation
.end field

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    return v0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OnePlusPerfManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusPerfManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->forceUpdateOnlineConfigImmediately()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OnePlusPerfManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusPerfManager;
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfManager;->startSpeedSchedtune(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 72
    sput-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 74
    sput-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    .line 75
    sput-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    .line 76
    sput-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    .line 77
    sput-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    .line 79
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 127
    const/16 v0, 0x4e20

    sput v0, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 69
    return-void
.end method

.method private constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 83
    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    .line 119
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    .line 122
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    .line 129
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    const-string/jumbo v1, ""

    const-string/jumbo v2, "0"

    sget v3, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 177
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 178
    iput-boolean v5, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 652
    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    .line 653
    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    .line 679
    const-string/jumbo v0, "-1"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 739
    iput-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 146
    const-string/jumbo v0, "persist.sys.opperf.enable"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    .line 147
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 148
    :cond_0
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    .line 150
    new-instance v0, Landroid/os/HandlerThread;

    const-string/jumbo v1, "PerfThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    .line 151
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 152
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfManagerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;-><init>(Lcom/android/server/am/OnePlusPerfManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    .line 154
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoostForStartSpeed:Landroid/util/BoostFramework;

    .line 155
    const-string/jumbo v0, "persist.sys.opperf.debug"

    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    .line 156
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->readXml()I

    .line 157
    return-void
.end method

.method private deciedEnableModes(Ljava/lang/String;)V
    .locals 5
    .param p1, "switchStr"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 443
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 444
    .local v0, "modes":I
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v4

    .line 445
    and-int/lit16 v3, v0, 0x80

    if-eqz v3, :cond_0

    move v3, v1

    :goto_0
    :try_start_0
    sput-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    .line 446
    and-int/lit8 v3, v0, 0x40

    if-eqz v3, :cond_1

    move v3, v1

    :goto_1
    sput-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFHINT:Z

    .line 447
    and-int/lit8 v3, v0, 0x20

    if-eqz v3, :cond_2

    move v3, v1

    :goto_2
    sput-boolean v3, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    .line 448
    and-int/lit8 v3, v0, 0x10

    if-eqz v3, :cond_3

    :goto_3
    sput-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 450
    const-string/jumbo v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "newest switch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    return-void

    :cond_0
    move v3, v2

    .line 445
    goto :goto_0

    :cond_1
    move v3, v2

    .line 446
    goto :goto_1

    :cond_2
    move v3, v2

    .line 447
    goto :goto_2

    :cond_3
    move v1, v2

    .line 448
    goto :goto_3

    .line 444
    :catchall_0
    move-exception v1

    monitor-exit v4

    throw v1
.end method

.method private finishSpeedSchedtune(Ljava/lang/String;)V
    .locals 4
    .param p1, "level"    # Ljava/lang/String;

    .prologue
    .line 719
    const/4 v0, 0x0

    .line 720
    .local v0, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 721
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    check-cast v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    monitor-exit v2

    .line 723
    if-eqz v0, :cond_1

    .line 724
    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 725
    const-string/jumbo v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishSpeedSchedtune # level:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " reset failed!!!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    return-void

    .line 720
    .end local v0    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 727
    .restart local v0    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_0
    const-string/jumbo v1, "-1"

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 728
    const-string/jumbo v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishSpeedSchedtune # level = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 731
    :cond_1
    const-string/jumbo v1, "OPPerf"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "finishSpeedSchedtune # stp = null : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private forceUpdateOnlineConfigImmediately()V
    .locals 3

    .prologue
    .line 758
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "forceUpdateOnlineConfigImmediately"

    invoke-static {v1}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 759
    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "OPPerf"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 760
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPerfManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    .line 761
    return-void
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPerfManager;
    .locals 1

    .prologue
    .line 139
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    if-nez v0, :cond_0

    .line 140
    new-instance v0, Lcom/android/server/am/OnePlusPerfManager;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfManager;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    .line 142
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPerfManager;->INSTANCE:Lcom/android/server/am/OnePlusPerfManager;

    return-object v0
.end method

.method private mayPerfRelease()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 286
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v2

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    const-string/jumbo v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 288
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v3, 0x7

    if-ne v1, v3, :cond_2

    .line 289
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    .line 290
    const-string/jumbo v1, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v2

    .line 292
    return v5

    .line 295
    :cond_0
    :try_start_1
    const-string/jumbo v1, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # release failed : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 313
    :cond_1
    :goto_0
    const/4 v1, 0x0

    monitor-exit v2

    return v1

    .line 297
    :cond_2
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v3, 0x5

    if-ne v1, v3, :cond_1

    .line 299
    const/4 v0, 0x0

    .line 300
    .local v0, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v3, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 301
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v4, v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    check-cast v0, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .local v0, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :try_start_4
    monitor-exit v3

    .line 303
    if-eqz v0, :cond_3

    .line 304
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v1, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->resetPerfFiles(Ljava/lang/String;)Z

    .line 305
    const-string/jumbo v1, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # reset SCHEDTUNE # : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->resetValue()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v2

    .line 307
    return v5

    .line 300
    .end local v0    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_0
    move-exception v1

    :try_start_5
    monitor-exit v3

    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 286
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1

    .line 309
    .restart local v0    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_3
    :try_start_6
    const-string/jumbo v1, "OPPerf"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mayPerfRelease # reset SCHEDTUNE # stp = null : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 454
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OPPerf"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    return-void
.end method

.method public static numberStringToInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "numStr"    # Ljava/lang/String;

    .prologue
    .line 556
    const-string/jumbo v0, "0x"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "0X"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 557
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 558
    const/16 v0, 0x10

    invoke-static {p0, v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    .line 560
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z
    .locals 8
    .param p1, "spi"    # Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    .param p2, "duration"    # I

    .prologue
    .line 225
    iget v0, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 226
    .local v0, "mode":I
    const/4 v2, 0x0

    .line 227
    .local v2, "ret":Z
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v5

    .line 228
    :try_start_0
    sget-boolean v4, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_PERFLOCK:Z

    if-eqz v4, :cond_4

    const/4 v4, 0x7

    if-ne v0, v4, :cond_4

    .line 229
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v4, v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v4, v0, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v4, v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 230
    const/4 v2, 0x1

    .line 231
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire # perflock change #: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :goto_0
    if-eqz v2, :cond_0

    .line 276
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v4, p1}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->setValue(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v5

    .line 278
    return v2

    .line 233
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    iget-object v6, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 236
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    check-cast v1, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .local v1, "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :try_start_3
    monitor-exit v6

    .line 238
    if-eqz v1, :cond_3

    .line 239
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;->getParam()[I

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v7, v6}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v4

    const/4 v6, -0x1

    if-eq v4, v6, :cond_2

    .line 240
    const/4 v2, 0x1

    .line 241
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 227
    .end local v1    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 235
    :catchall_1
    move-exception v4

    :try_start_4
    monitor-exit v6

    throw v4

    .line 243
    .restart local v1    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :cond_2
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire # acquire failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 246
    :cond_3
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire failed # pll = null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 249
    .end local v1    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :cond_4
    sget-boolean v4, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_SCHEDTUNE:Z

    if-eqz v4, :cond_8

    const/4 v4, 0x5

    if-ne v0, v4, :cond_8

    .line 250
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget v4, v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    if-ne v4, v0, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v4, v4, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 251
    const/4 v2, 0x1

    .line 252
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire # SCHEDTUNE change # : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 254
    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 256
    const/4 v3, 0x0

    .line 257
    .local v3, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v6, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 258
    :try_start_5
    iget-object v4, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    iget-object v7, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    check-cast v3, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .local v3, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :try_start_6
    monitor-exit v6

    .line 260
    if-eqz v3, :cond_7

    .line 261
    iget-object v4, p1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 262
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire # set SCHEDTUNE #: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    const/4 v2, 0x1

    goto/16 :goto_0

    .line 257
    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_2
    move-exception v4

    monitor-exit v6

    throw v4

    .line 265
    .restart local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_6
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire # write schedtune failed: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 268
    :cond_7
    const-string/jumbo v4, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "perfAcquire # write schedtune failed # stp = null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 273
    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_8
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0
.end method

.method private readXml()I
    .locals 38

    .prologue
    .line 327
    sget-boolean v35, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v35, :cond_0

    const-string/jumbo v35, "# readXml"

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 328
    :cond_0
    const/16 v28, 0x0

    .line 329
    .local v28, "ret":I
    new-instance v10, Ljava/io/File;

    const-string/jumbo v35, "/system/etc/opperf.xml"

    move-object/from16 v0, v35

    invoke-direct {v10, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 330
    .local v10, "f":Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v35

    if-nez v35, :cond_2

    .line 331
    sget-boolean v35, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v35, :cond_1

    const-string/jumbo v35, "# readXml # file not exists"

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 332
    :cond_1
    const/16 v35, -0x1

    return v35

    .line 334
    :cond_2
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v11

    .line 335
    .local v11, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v4, 0x0

    .line 336
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v7, 0x0

    .line 338
    .local v7, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v4

    .line 339
    .local v4, "builder":Ljavax/xml/parsers/DocumentBuilder;
    invoke-virtual {v4, v10}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v7

    .line 341
    .local v7, "doc":Lorg/w3c/dom/Document;
    const-string/jumbo v35, "perf"

    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 342
    .local v18, "nl":Lorg/w3c/dom/NodeList;
    const/16 v35, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v20

    .line 343
    .local v20, "nnm":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v35, "version"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v34

    .line 344
    .local v34, "versionStr":Ljava/lang/String;
    const-string/jumbo v35, "switch"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v30

    .line 345
    .local v30, "switchStr":Ljava/lang/String;
    const-string/jumbo v35, "timeout"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v32

    .line 346
    .local v32, "timeoutNode":Lorg/w3c/dom/Node;
    if-eqz v32, :cond_3

    .line 347
    invoke-interface/range {v32 .. v32}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 348
    .local v6, "dftimeoutStr":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    sput v35, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 350
    .end local v6    # "dftimeoutStr":Ljava/lang/String;
    :cond_3
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "version "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " #switch "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " #timeout "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    sget v36, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    .line 353
    const-string/jumbo v35, "pkg"

    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 354
    if-nez v18, :cond_8

    .line 355
    const-string/jumbo v35, "OPPerf"

    const-string/jumbo v36, "# readXml # error # nl = null"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    :cond_4
    const-string/jumbo v35, "spkg"

    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 377
    if-nez v18, :cond_a

    .line 378
    const-string/jumbo v35, "OPPerf"

    const-string/jumbo v36, "# readXml # error spkg# nl = null"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_5
    const-string/jumbo v35, "perflock"

    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 396
    if-nez v18, :cond_b

    .line 397
    const-string/jumbo v35, "OPPerf"

    const-string/jumbo v36, "mode perflock is null!"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    :cond_6
    const-string/jumbo v35, "schedtune"

    move-object/from16 v0, v35

    invoke-interface {v7, v0}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v18

    .line 411
    if-nez v18, :cond_c

    .line 412
    const-string/jumbo v35, "OPPerf"

    const-string/jumbo v36, "mode schedtune is null!"

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_7
    return v28

    .line 357
    :cond_8
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v12, v0, :cond_4

    .line 358
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v20

    .line 359
    const-string/jumbo v35, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v27

    .line 360
    .local v27, "pkgName":Ljava/lang/String;
    const-string/jumbo v35, "perflock"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v25

    .line 361
    .local v25, "perfLockTimeStr":Ljava/lang/String;
    const-string/jumbo v14, "0"

    .line 362
    .local v14, "level":Ljava/lang/String;
    const-string/jumbo v35, "level"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v17

    .line 363
    .local v17, "n":Lorg/w3c/dom/Node;
    if-eqz v17, :cond_9

    .line 364
    invoke-interface/range {v17 .. v17}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 366
    :cond_9
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v24

    .line 367
    .local v24, "perfLockTime":I
    new-instance v26, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move/from16 v2, v24

    invoke-direct {v0, v1, v2, v14}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 368
    .local v26, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "readXml: "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v36

    .line 372
    add-int/lit8 v28, v28, 0x1

    .line 357
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0

    .line 369
    :catchall_0
    move-exception v35

    monitor-exit v36

    throw v35
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 433
    .end local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v7    # "doc":Lorg/w3c/dom/Document;
    .end local v12    # "i":I
    .end local v14    # "level":Ljava/lang/String;
    .end local v17    # "n":Lorg/w3c/dom/Node;
    .end local v18    # "nl":Lorg/w3c/dom/NodeList;
    .end local v20    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .end local v24    # "perfLockTime":I
    .end local v25    # "perfLockTimeStr":Ljava/lang/String;
    .end local v26    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .end local v27    # "pkgName":Ljava/lang/String;
    .end local v30    # "switchStr":Ljava/lang/String;
    .end local v32    # "timeoutNode":Lorg/w3c/dom/Node;
    .end local v34    # "versionStr":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 434
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v35, "OPPerf"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "# readXml # parse error ["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "]"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    const/16 v35, -0x3

    return v35

    .line 380
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v4    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v7    # "doc":Lorg/w3c/dom/Document;
    .restart local v18    # "nl":Lorg/w3c/dom/NodeList;
    .restart local v20    # "nnm":Lorg/w3c/dom/NamedNodeMap;
    .restart local v30    # "switchStr":Ljava/lang/String;
    .restart local v32    # "timeoutNode":Lorg/w3c/dom/Node;
    .restart local v34    # "versionStr":Ljava/lang/String;
    :cond_a
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_1
    :try_start_3
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v12, v0, :cond_5

    .line 381
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v20

    .line 382
    const-string/jumbo v35, "name"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v27

    .line 383
    .restart local v27    # "pkgName":Ljava/lang/String;
    const-string/jumbo v35, "mode"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v16

    .line 384
    .local v16, "modeStr":Ljava/lang/String;
    const-string/jumbo v35, "level"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 385
    .restart local v14    # "level":Ljava/lang/String;
    const-string/jumbo v35, "timeout"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v33

    .line 386
    .local v33, "timeoutStr":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "spkg "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " # mode "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " # level "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, " # timeout "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 387
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    .line 388
    .local v15, "mode":I
    invoke-static/range {v33 .. v33}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v31

    .line 389
    .local v31, "timeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 390
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    new-instance v37, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object/from16 v0, v37

    move-object/from16 v1, v27

    move/from16 v2, v31

    invoke-direct {v0, v1, v15, v14, v2}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v27

    move-object/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    monitor-exit v36

    .line 392
    add-int/lit8 v28, v28, 0x1

    .line 380
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 389
    :catchall_1
    move-exception v35

    monitor-exit v36

    throw v35

    .line 399
    .end local v12    # "i":I
    .end local v14    # "level":Ljava/lang/String;
    .end local v15    # "mode":I
    .end local v16    # "modeStr":Ljava/lang/String;
    .end local v27    # "pkgName":Ljava/lang/String;
    .end local v31    # "timeout":I
    .end local v33    # "timeoutStr":Ljava/lang/String;
    :cond_b
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v12, v0, :cond_6

    .line 400
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v20

    .line 401
    const-string/jumbo v35, "level"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 402
    .restart local v14    # "level":Ljava/lang/String;
    const-string/jumbo v35, "param"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    .line 403
    .local v22, "param":Ljava/lang/String;
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "perflockMap add : ["

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v36, "], "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 405
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    new-instance v37, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    move-object/from16 v0, v37

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    monitor-exit v36

    .line 399
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 404
    :catchall_2
    move-exception v35

    monitor-exit v36

    throw v35

    .line 414
    .end local v12    # "i":I
    .end local v14    # "level":Ljava/lang/String;
    .end local v22    # "param":Ljava/lang/String;
    :cond_c
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v12, v0, :cond_7

    .line 415
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v20

    .line 416
    const-string/jumbo v35, "level"

    move-object/from16 v0, v20

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v14

    .line 417
    .restart local v14    # "level":Ljava/lang/String;
    new-instance v29, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct/range {v29 .. v29}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    .line 418
    .local v29, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    move-object/from16 v0, v18

    invoke-interface {v0, v12}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 419
    .local v9, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v35, "item"

    move-object/from16 v0, v35

    invoke-interface {v9, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v19

    .line 420
    .local v19, "nlitem":Lorg/w3c/dom/NodeList;
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    invoke-interface/range {v19 .. v19}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v35

    move/from16 v0, v35

    if-ge v13, v0, :cond_d

    .line 421
    move-object/from16 v0, v19

    invoke-interface {v0, v13}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v21

    .line 422
    .local v21, "nnmitem":Lorg/w3c/dom/NamedNodeMap;
    const-string/jumbo v35, "path"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v23

    .line 423
    .local v23, "path":Ljava/lang/String;
    const-string/jumbo v35, "param"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v22

    .line 424
    .restart local v22    # "param":Ljava/lang/String;
    const-string/jumbo v35, "default"

    move-object/from16 v0, v21

    move-object/from16 v1, v35

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v35

    invoke-interface/range {v35 .. v35}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "defaultParam":Ljava/lang/String;
    new-instance v35, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v29

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    .line 420
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 427
    .end local v5    # "defaultParam":Ljava/lang/String;
    .end local v21    # "nnmitem":Lorg/w3c/dom/NamedNodeMap;
    .end local v22    # "param":Ljava/lang/String;
    .end local v23    # "path":Ljava/lang/String;
    :cond_d
    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "schedtuneMap add : "

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 428
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 429
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    move-object/from16 v1, v29

    invoke-virtual {v0, v14, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    :try_start_9
    monitor-exit v36

    .line 414
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_3

    .line 428
    :catchall_3
    move-exception v35

    monitor-exit v36

    throw v35
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0
.end method

.method private resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 39
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 764
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_0

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "resolvePerfConfigFromJSON "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 765
    :cond_0
    if-nez p1, :cond_1

    .line 766
    return-void

    .line 769
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    .line 770
    const-string/jumbo v36, "-1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_2

    .line 771
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->finishSpeedSchedtune(Ljava/lang/String;)V

    .line 774
    :cond_2
    const/4 v7, 0x0

    .local v7, "index":I
    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v36

    if-ge v7, v0, :cond_17

    .line 775
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 776
    .local v11, "json":Lorg/json/JSONObject;
    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "PkgMap"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_9

    .line 777
    const-string/jumbo v36, "value"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 778
    .local v22, "pkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v36

    if-ge v6, v0, :cond_a

    .line 779
    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v23

    .line 780
    .local v23, "pkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v36, "name"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 781
    .local v24, "pkgName":Ljava/lang/String;
    const-string/jumbo v36, "perflock"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 782
    .local v20, "perflockStr":Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 783
    .local v17, "perflock":I
    const-string/jumbo v36, "level"

    move-object/from16 v0, v23

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 784
    .local v12, "level":Ljava/lang/String;
    if-eqz v12, :cond_3

    const-string/jumbo v36, ""

    move-object/from16 v0, v36

    if-ne v12, v0, :cond_4

    .line 785
    :cond_3
    const-string/jumbo v12, "0"

    .line 787
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 788
    if-eqz v24, :cond_5

    .line 789
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 790
    .local v21, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v21, :cond_8

    .line 791
    const-string/jumbo v36, "-1"

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_7

    .line 792
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    .end local v21    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :cond_5
    :goto_2
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_6

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "resolvePerfConfigFromJSON # "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    monitor-exit v37
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 778
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    .line 794
    .restart local v21    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :cond_7
    :try_start_3
    move/from16 v0, v17

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I

    .line 795
    move-object/from16 v0, v21

    iput-object v12, v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mLevel:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 787
    .end local v21    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :catchall_0
    move-exception v36

    :try_start_4
    monitor-exit v37

    throw v36
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 878
    .end local v6    # "i":I
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v12    # "level":Ljava/lang/String;
    .end local v17    # "perflock":I
    .end local v20    # "perflockStr":Ljava/lang/String;
    .end local v22    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v23    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v24    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v5

    .line 879
    .local v5, "e":Lorg/json/JSONException;
    const-string/jumbo v36, "OPPerf"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[OnlineConfig] OPPerf JSONException:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v5}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    .end local v5    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .line 798
    .restart local v6    # "i":I
    .restart local v11    # "json":Lorg/json/JSONObject;
    .restart local v12    # "level":Ljava/lang/String;
    .restart local v17    # "perflock":I
    .restart local v20    # "perflockStr":Ljava/lang/String;
    .restart local v21    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .restart local v22    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .restart local v23    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .restart local v24    # "pkgName":Ljava/lang/String;
    :cond_8
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    new-instance v38, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    move/from16 v2, v17

    invoke-direct {v0, v1, v2, v12}, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 804
    .end local v6    # "i":I
    .end local v12    # "level":Ljava/lang/String;
    .end local v17    # "perflock":I
    .end local v20    # "perflockStr":Ljava/lang/String;
    .end local v21    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    .end local v22    # "pkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v23    # "pkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v24    # "pkgName":Ljava/lang/String;
    :cond_9
    :try_start_6
    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "switch"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_b

    .line 805
    const-string/jumbo v36, "value"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    .line 806
    .local v33, "switchStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v33

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPerfManager;->deciedEnableModes(Ljava/lang/String;)V

    .line 807
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_a

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "resolvePerfConfigFromJSON # switch = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 774
    .end local v33    # "switchStr":Ljava/lang/String;
    :cond_a
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 808
    :cond_b
    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "timeout"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_c

    .line 809
    const-string/jumbo v36, "value"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 810
    .local v35, "timeoutStr":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    sput v36, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 811
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_a

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "resolvePerfConfigFromJSON # timeout = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_4

    .line 880
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v35    # "timeoutStr":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 881
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v36, "OPPerf"

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "[OnlineConfig] OPPerf Exception:"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 812
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v11    # "json":Lorg/json/JSONObject;
    :cond_c
    :try_start_7
    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "spkg"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_11

    .line 813
    const-string/jumbo v36, "value"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 814
    .local v30, "spkgInfoJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_5
    invoke-virtual/range {v30 .. v30}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v36

    if-ge v6, v0, :cond_a

    .line 815
    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v31

    .line 816
    .local v31, "spkgInfoJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v36, "name"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 817
    .restart local v24    # "pkgName":Ljava/lang/String;
    const-string/jumbo v36, "mode"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 818
    .local v14, "modeStr":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 819
    .local v13, "mode":I
    const-string/jumbo v36, "level"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 820
    .restart local v12    # "level":Ljava/lang/String;
    const-string/jumbo v36, "timeout"

    move-object/from16 v0, v31

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 821
    .restart local v35    # "timeoutStr":Ljava/lang/String;
    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 822
    .local v34, "timeout":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_7
    .catch Lorg/json/JSONException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 823
    if-eqz v24, :cond_d

    .line 824
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    .line 825
    .local v29, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    if-eqz v29, :cond_10

    .line 826
    const-string/jumbo v36, "-1"

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_f

    .line 827
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 837
    .end local v29    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :cond_d
    :goto_6
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_e

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "resolvePerfConfigFromJSON # "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :cond_e
    :try_start_9
    monitor-exit v37
    :try_end_9
    .catch Lorg/json/JSONException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 814
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_5

    .line 829
    .restart local v29    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :cond_f
    :try_start_a
    move-object/from16 v0, v29

    iput v13, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    .line 830
    move-object/from16 v0, v29

    iput-object v12, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 831
    move/from16 v0, v34

    move-object/from16 v1, v29

    iput v0, v1, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_6

    .line 822
    .end local v29    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :catchall_1
    move-exception v36

    :try_start_b
    monitor-exit v37

    throw v36
    :try_end_b
    .catch Lorg/json/JSONException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1

    .line 834
    .restart local v29    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :cond_10
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    new-instance v38, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    move/from16 v2, v34

    invoke-direct {v0, v1, v13, v12, v2}, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    goto :goto_6

    .line 840
    .end local v6    # "i":I
    .end local v12    # "level":Ljava/lang/String;
    .end local v13    # "mode":I
    .end local v14    # "modeStr":Ljava/lang/String;
    .end local v24    # "pkgName":Ljava/lang/String;
    .end local v29    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    .end local v30    # "spkgInfoJsonArray":Lorg/json/JSONArray;
    .end local v31    # "spkgInfoJsonObject":Lorg/json/JSONObject;
    .end local v34    # "timeout":I
    .end local v35    # "timeoutStr":Ljava/lang/String;
    :cond_11
    :try_start_d
    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "perflock"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 841
    const-string/jumbo v36, "value"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v18

    .line 842
    .local v18, "perflockJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_7
    invoke-virtual/range {v18 .. v18}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v36

    if-ge v6, v0, :cond_a

    .line 843
    move-object/from16 v0, v18

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v19

    .line 844
    .local v19, "perflockJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v36, "level"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 845
    .restart local v12    # "level":Ljava/lang/String;
    const-string/jumbo v36, "param"

    move-object/from16 v0, v19

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 846
    .local v15, "param":Ljava/lang/String;
    new-instance v25, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;

    move-object/from16 v0, v25

    invoke-direct {v0, v15}, Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;-><init>(Ljava/lang/String;)V

    .line 847
    .local v25, "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_d
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_1

    .line 848
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 849
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_12

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "resolvePerfConfigFromJSON #  "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mPerfLockLevelMap:Ljava/util/HashMap;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v38

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    :cond_12
    :try_start_f
    monitor-exit v37

    .line 842
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 847
    :catchall_2
    move-exception v36

    monitor-exit v37

    throw v36

    .line 852
    .end local v6    # "i":I
    .end local v12    # "level":Ljava/lang/String;
    .end local v15    # "param":Ljava/lang/String;
    .end local v18    # "perflockJsonArray":Lorg/json/JSONArray;
    .end local v19    # "perflockJsonObject":Lorg/json/JSONObject;
    .end local v25    # "pll":Lcom/android/server/am/OnePlusPerfManager$PerfLockLevel;
    :cond_13
    const-string/jumbo v36, "name"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    const-string/jumbo v37, "schedtune"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_a

    .line 853
    const-string/jumbo v36, "value"

    move-object/from16 v0, v36

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 854
    .local v26, "schedtuneJsonArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_8
    invoke-virtual/range {v26 .. v26}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v36

    if-ge v6, v0, :cond_a

    .line 855
    new-instance v32, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;

    invoke-direct/range {v32 .. v32}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;-><init>()V

    .line 857
    .local v32, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v28

    .line 858
    .local v28, "schedtuneJsonObject":Lorg/json/JSONObject;
    const-string/jumbo v36, "level"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 859
    .restart local v12    # "level":Ljava/lang/String;
    const-string/jumbo v36, "item"

    move-object/from16 v0, v28

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 861
    .local v27, "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_9
    invoke-virtual/range {v27 .. v27}, Lorg/json/JSONArray;->length()I

    move-result v36

    move/from16 v0, v36

    if-ge v9, v0, :cond_15

    .line 862
    move-object/from16 v0, v27

    invoke-virtual {v0, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 863
    .local v10, "jsitem":Lorg/json/JSONObject;
    const-string/jumbo v36, "path"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 864
    .local v16, "path":Ljava/lang/String;
    const-string/jumbo v36, "param"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 865
    .restart local v15    # "param":Ljava/lang/String;
    const-string/jumbo v36, "default"

    move-object/from16 v0, v36

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 866
    .local v3, "defaultParam":Ljava/lang/String;
    new-instance v8, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v8, v0, v1, v15, v3}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;-><init>(Lcom/android/server/am/OnePlusPerfManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 867
    .local v8, "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    move-object/from16 v0, v32

    invoke-virtual {v0, v8}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->addSchedtuneParamItem(Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;)V

    .line 868
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_14

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "resolvePerfConfigFromJSON # schedtune, level = "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "# "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 861
    :cond_14
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 870
    .end local v3    # "defaultParam":Ljava/lang/String;
    .end local v8    # "item":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParamItem;
    .end local v10    # "jsitem":Lorg/json/JSONObject;
    .end local v15    # "param":Ljava/lang/String;
    .end local v16    # "path":Ljava/lang/String;
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    move-object/from16 v37, v0

    monitor-enter v37
    :try_end_f
    .catch Lorg/json/JSONException; {:try_start_f .. :try_end_f} :catch_0
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    .line 871
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v32

    invoke-virtual {v0, v12, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 872
    sget-boolean v36, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v36, :cond_16

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v38, "resolvePerfConfigFromJSON # schedtune, add level "

    move-object/from16 v0, v36

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    :cond_16
    :try_start_11
    monitor-exit v37

    .line 854
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_8

    .line 870
    :catchall_3
    move-exception v36

    monitor-exit v37

    throw v36

    .line 877
    .end local v6    # "i":I
    .end local v9    # "j":I
    .end local v11    # "json":Lorg/json/JSONObject;
    .end local v12    # "level":Ljava/lang/String;
    .end local v26    # "schedtuneJsonArray":Lorg/json/JSONArray;
    .end local v27    # "schedtuneJsonArrayForItem":Lorg/json/JSONArray;
    .end local v28    # "schedtuneJsonObject":Lorg/json/JSONObject;
    .end local v32    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_17
    const-string/jumbo v36, "OPPerf"

    const-string/jumbo v37, "[OnlineConfig] OPPerf updated complete"

    invoke-static/range {v36 .. v37}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11
    .catch Lorg/json/JSONException; {:try_start_11 .. :try_end_11} :catch_0
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_1

    goto/16 :goto_3
.end method

.method private runAppMayWithPerf(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "duration"    # I

    .prologue
    const/4 v2, 0x0

    .line 200
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v1, :cond_0

    return v2

    .line 201
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    if-nez v1, :cond_2

    .line 204
    if-eqz p1, :cond_1

    .line 205
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 208
    :goto_0
    return v2

    .line 207
    :cond_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0

    .line 210
    :cond_2
    const/4 v0, 0x0

    .line 211
    .local v0, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    check-cast v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v0, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    monitor-exit v2

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "spi = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " # packageName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 215
    if-nez v0, :cond_3

    .line 217
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v1

    return v1

    .line 211
    .end local v0    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 219
    .restart local v0    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :cond_3
    invoke-direct {p0, v0, p2}, Lcom/android/server/am/OnePlusPerfManager;->perfAcquire(Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;I)Z

    move-result v1

    return v1
.end method

.method private startSpeedSchedtune(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x2

    .line 681
    const/4 v2, 0x0

    .line 682
    .local v2, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    const-string/jumbo v0, "0"

    .line 683
    .local v0, "level":Ljava/lang/String;
    sget v4, Lcom/android/server/am/OnePlusPerfManager;->DEFAULT_TIMEOUT:I

    .line 684
    .local v4, "timeout":I
    iget-object v6, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 685
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mSpecialPkgMap:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    check-cast v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    monitor-exit v6

    .line 687
    if-eqz v2, :cond_0

    iget v5, v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mMode:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    .line 688
    iget-object v0, v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mLevel:Ljava/lang/String;

    .line 689
    iget v4, v2, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mTimeout:I

    .line 691
    :cond_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 692
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->removeMessages(I)V

    .line 693
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 694
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 695
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v4

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 696
    const-string/jumbo v5, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startSpeedSchedtune # level:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " # change TIMEOUT:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    return-void

    .line 684
    .end local v1    # "msg":Landroid/os/Message;
    .end local v2    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 699
    .restart local v2    # "spi":Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;
    :cond_1
    const/4 v3, 0x0

    .line 700
    .local v3, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    iget-object v6, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 701
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mSchedtuneParamMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    check-cast v3, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .local v3, "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    monitor-exit v6

    .line 703
    if-eqz v3, :cond_3

    .line 704
    invoke-virtual {v3, v0}, Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;->writePerfFiles(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 705
    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mCurrentSpeedLevel:Ljava/lang/String;

    .line 706
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v5, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 707
    .restart local v1    # "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 708
    iget-object v5, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    int-to-long v6, v4

    invoke-virtual {v5, v1, v6, v7}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 709
    const-string/jumbo v5, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startSpeedSchedtune # level = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 700
    .end local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5

    .line 711
    .restart local v3    # "stp":Lcom/android/server/am/OnePlusPerfManager$SchedtuneParam;
    :cond_2
    const-string/jumbo v5, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startSpeedSchedtune # level:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " write failed!!!"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 714
    :cond_3
    const-string/jumbo v5, "OPPerf"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "startSpeedSchedtune # stp = null : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public acuqirePerfForStartSpeed(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 643
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v1, :cond_0

    return v2

    .line 644
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE_MODE_STARTSPEED:Z

    if-nez v1, :cond_1

    return v2

    .line 645
    :cond_1
    if-nez p1, :cond_2

    return v2

    .line 646
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-static {v1, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 647
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 648
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    .line 649
    return v3
.end method

.method public autoAcquireOrRelease(Z)Z
    .locals 3
    .param p1, "done"    # Z

    .prologue
    const/4 v2, 0x0

    .line 180
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v0, :cond_0

    return v2

    .line 181
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "autoAcquireOrRelease("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ") "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 182
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusPerfManager;->screenOn:Z

    .line 183
    if-eqz p1, :cond_2

    .line 184
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    invoke-direct {p0, v0, v2}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;

    .line 187
    const/4 v0, 0x1

    return v0

    .line 190
    :cond_1
    return v2

    .line 192
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    monitor-enter v1

    .line 193
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->currentSPI:Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;

    iget-object v0, v0, Lcom/android/server/am/OnePlusPerfManager$SPerfInfo;->mPkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->offScreenPkgName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 195
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPerfManager;->mayPerfRelease()Z

    move-result v0

    return v0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public getPkgPerfLock(Ljava/lang/String;)I
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 160
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v1, :cond_0

    return v3

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 162
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;

    .line 163
    .local v0, "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    if-eqz v0, :cond_1

    .line 166
    iget v1, v0, Lcom/android/server/am/OnePlusPerfManager$PerfInfo;->mPerfLock:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return v1

    :cond_1
    monitor-exit v2

    .line 168
    return v3

    .line 161
    .end local v0    # "pi":Lcom/android/server/am/OnePlusPerfManager$PerfInfo;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 749
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "initOnlineConfig"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPerfManager;->myLog(Ljava/lang/String;)V

    .line 750
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfManager;->ENABLE:Z

    if-nez v0, :cond_1

    return-void

    .line 751
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    .line 752
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    new-instance v3, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusPerfManager$MyConfigUpdater;-><init>(Lcom/android/server/am/OnePlusPerfManager;)V

    const-string/jumbo v4, "OPPerf"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 753
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 754
    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfManager;->mPerfHandler:Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusPerfManager$PerfProcessHandler;->sendMessage(Landroid/os/Message;)Z

    .line 755
    return-void
.end method

.method public runAppMayWithPerf(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 174
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/am/OnePlusPerfManager;->runAppMayWithPerf(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method
