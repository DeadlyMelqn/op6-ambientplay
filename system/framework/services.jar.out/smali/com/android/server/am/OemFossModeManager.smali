.class public final Lcom/android/server/am/OemFossModeManager;
.super Ljava/lang/Object;
.source "OemFossModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemFossModeManager$1;,
        Lcom/android/server/am/OemFossModeManager$2;,
        Lcom/android/server/am/OemFossModeManager$FossModeConfigUpdater;,
        Lcom/android/server/am/OemFossModeManager$OemFossModeHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "com.fossmode.action.debug"

.field private static CONFIG_NAME:Ljava/lang/String; = null

.field public static final DBG:Z

.field private static final FOSS_DIR:Ljava/lang/String; = "/data/data_foss/"

.field private static final FOSS_MODE_2:Ljava/lang/String; = "service.foss.mode_2"

.field private static final FOSS_MODE_5:Ljava/lang/String; = "service.foss.mode_5"

.field private static final FOSS_MODE_OFF:Ljava/lang/String; = "service.foss.off"

.field private static final FOSS_PKG_FILE:Ljava/lang/String; = "foss_pkg.xml"

.field private static final FOSS_PKG_PATH:Ljava/lang/String; = "/data/data_foss/foss_pkg.xml"

.field private static final MESSAGE_INIT_CONFIG_DATA:I = 0x2

.field private static final MESSAGE_POWER_SAVE_MODE_CHANGING:I = 0x3

.field private static final MESSAGE_UPDATE_FORGEGROUND:I = 0x1

.field private static final SYS_FOSS_PKG_FILE:Ljava/lang/String; = "/system/foss/foss_pkg.xml"

.field private static final SYS_VERSION_FILE:Ljava/lang/String; = "/system/foss/foss_version.xml"

.field private static final TAG:Ljava/lang/String; = "OemFossModeManager"

.field public static final VERSION:I = 0x7848e02d

.field private static final VERSION_FILE:Ljava/lang/String; = "foss_version.xml"

.field private static final VERSION_PATH:Ljava/lang/String; = "/data/data_foss/foss_version.xml"

.field private static mActivityManager:Lcom/android/server/am/ActivityManagerService;

.field private static mCurrentFossMode:Ljava/lang/String;

.field private static mFossPkgLock:Ljava/lang/Object;

.field private static mOemFossModeManager:Lcom/android/server/am/OemFossModeManager;

.field private static mPowerManager:Landroid/os/PowerManager;

.field private static operateDelayTime:J


# instance fields
.field private isFossPkgNow:Z

.field private mContext:Landroid/content/Context;

.field private mFossModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mFossSetList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mLastChangedUid:I

.field private mOemFossModeHandler:Landroid/os/Handler;

.field private mProcessObserver:Landroid/app/IProcessObserver;


# direct methods
.method static synthetic -get0()Lcom/android/server/am/ActivityManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/am/OemFossModeManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/am/OemFossModeManager;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    iget v0, p0, Lcom/android/server/am/OemFossModeManager;->mLastChangedUid:I

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/am/OemFossModeManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get3()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/OemFossModeManager;->operateDelayTime:J

    return-wide v0
.end method

.method static synthetic -set0(Lcom/android/server/am/OemFossModeManager;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/am/OemFossModeManager;->mLastChangedUid:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/OemFossModeManager;)Lcom/android/server/am/ActivityRecord;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->getCurrentFrontApp()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OemFossModeManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->dumpInfo()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OemFossModeManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->dumpPkgInfos()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/OemFossModeManager;Ljava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OemFossModeManager;->handlePkgChanged(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/OemFossModeManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->handlePowerSaveModeChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/OemFossModeManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->loadConfigFiles()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/OemFossModeManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OemFossModeManager;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OemFossModeManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    .line 59
    sput-object v1, Lcom/android/server/am/OemFossModeManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 60
    sput-object v1, Lcom/android/server/am/OemFossModeManager;->mPowerManager:Landroid/os/PowerManager;

    .line 61
    sput-object v1, Lcom/android/server/am/OemFossModeManager;->mOemFossModeManager:Lcom/android/server/am/OemFossModeManager;

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OemFossModeManager;->mFossPkgLock:Ljava/lang/Object;

    .line 78
    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/android/server/am/OemFossModeManager;->operateDelayTime:J

    .line 93
    const-string/jumbo v0, "service.foss.off"

    sput-object v0, Lcom/android/server/am/OemFossModeManager;->mCurrentFossMode:Ljava/lang/String;

    .line 95
    const-string/jumbo v0, "FossMode"

    sput-object v0, Lcom/android/server/am/OemFossModeManager;->CONFIG_NAME:Ljava/lang/String;

    .line 53
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 8
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeHandler:Landroid/os/Handler;

    .line 67
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/OemFossModeManager;->mLastChangedUid:I

    .line 69
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OemFossModeManager;->isFossPkgNow:Z

    .line 70
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    .line 129
    new-instance v2, Lcom/android/server/am/OemFossModeManager$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemFossModeManager$1;-><init>(Lcom/android/server/am/OemFossModeManager;)V

    iput-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 511
    new-instance v2, Lcom/android/server/am/OemFossModeManager$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemFossModeManager$2;-><init>(Lcom/android/server/am/OemFossModeManager;)V

    iput-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mProcessObserver:Landroid/app/IProcessObserver;

    .line 105
    const-string/jumbo v2, "OemFossModeManager"

    const-string/jumbo v3, "[OemFossMode] OemFossModeManager VERSION = v2018041901"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sput-object p1, Lcom/android/server/am/OemFossModeManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    .line 109
    iget-object v2, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mContext:Landroid/content/Context;

    .line 110
    iget-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    sput-object v2, Lcom/android/server/am/OemFossModeManager;->mPowerManager:Landroid/os/PowerManager;

    .line 112
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 113
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.fossmode.action.debug"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 114
    const-string/jumbo v2, "android.os.action.POWER_SAVE_MODE_CHANGING"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 115
    iget-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 117
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v2, "OemFossModeThread"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 118
    .local v1, "mOemFossModeThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 119
    new-instance v2, Lcom/android/server/am/OemFossModeManager$OemFossModeHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/am/OemFossModeManager$OemFossModeHandler;-><init>(Lcom/android/server/am/OemFossModeManager;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeHandler:Landroid/os/Handler;

    .line 121
    iget-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeHandler:Landroid/os/Handler;

    sget-wide v4, Lcom/android/server/am/OemFossModeManager;->operateDelayTime:J

    const-wide/16 v6, 0x3

    mul-long/2addr v4, v6

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/server/am/OemFossModeManager;->prepareConfigFiles()V

    .line 124
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->initialOnlineConfig()V

    .line 126
    sget-object v2, Lcom/android/server/am/OemFossModeManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->registerProcessObserver(Landroid/app/IProcessObserver;)V

    .line 127
    return-void
.end method

.method private checkVersion()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 320
    const-string/jumbo v6, "/data/data_foss/foss_version.xml"

    invoke-static {v6}, Lcom/android/server/am/OemFossModeManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    .line 321
    .local v0, "dataCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v6, "/system/foss/foss_version.xml"

    invoke-static {v6}, Lcom/android/server/am/OemFossModeManager;->loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    .line 326
    .local v4, "sysCfgMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 327
    .local v3, "sv":I
    const/4 v2, 0x0

    .line 328
    .local v2, "dv":I
    if-nez v4, :cond_0

    .line 329
    const/4 v3, 0x0

    .line 330
    return v9

    .line 332
    :cond_0
    const-string/jumbo v6, "version"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 333
    .local v5, "sysVersion":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 335
    if-nez v0, :cond_1

    .line 336
    const/4 v2, 0x0

    .line 341
    :goto_0
    const-string/jumbo v6, "OemFossModeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[OemFossMode] checkVersion  sv="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " dv ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    if-le v3, v2, :cond_2

    .line 343
    const/4 v6, 0x1

    return v6

    .line 338
    :cond_1
    const-string/jumbo v6, "version"

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 339
    .local v1, "dataVersion":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 345
    .end local v1    # "dataVersion":Ljava/lang/String;
    :cond_2
    return v9
.end method

.method private copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 5
    .param p1, "fromFile"    # Ljava/lang/String;
    .param p2, "toFile"    # Ljava/lang/String;
    .param p3, "isForceUpdate"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 377
    .local v1, "targetFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    xor-int/lit8 v2, p3, 0x1

    if-eqz v2, :cond_0

    .line 378
    return-void

    .line 380
    :cond_0
    const-string/jumbo v2, "OemFossModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[OemFossMode] copyFile():fromFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", toFile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 382
    .local v0, "sourceFile":Ljava/io/File;
    invoke-static {v0, v1}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    .line 383
    return-void
.end method

.method private dumpInfo()V
    .locals 2

    .prologue
    .line 149
    const-string/jumbo v0, "OemFossModeManager"

    const-string/jumbo v1, "[OemFossMode] # dump # VERSION # 2018041901"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void
.end method

.method private dumpPkgInfos()V
    .locals 7

    .prologue
    .line 153
    sget-object v4, Lcom/android/server/am/OemFossModeManager;->mFossPkgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 154
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 155
    const-string/jumbo v3, "OemFossModeManager"

    const-string/jumbo v5, "[OemFossMode] # dump # mFossSetList = null, return"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 156
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    .line 159
    .local v0, "index":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 160
    .local v1, "pkg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 161
    const-string/jumbo v3, "OemFossModeManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "# dump # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 153
    .end local v0    # "index":I
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .restart local v0    # "index":I
    .restart local v2    # "pkg$iterator":Ljava/util/Iterator;
    :cond_1
    monitor-exit v4

    .line 164
    return-void
.end method

.method private getCurrentFrontApp()Lcom/android/server/am/ActivityRecord;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 494
    :try_start_0
    sget-object v2, Lcom/android/server/am/OemFossModeManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v2, v2, Lcom/android/server/am/ActivityStackSupervisor;->mFocusedStack:Lcom/android/server/am/ActivityStack;

    iget-object v0, v2, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    .line 496
    .local v0, "a":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_2

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_2

    .line 497
    sget-boolean v2, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemFossModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[OemFossMode] pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    const-string/jumbo v4, " |uid:"

    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 498
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 499
    const-string/jumbo v4, " |processName:"

    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 499
    iget-object v4, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 497
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 501
    :cond_0
    return-object v0

    .line 503
    .end local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :catch_0
    move-exception v1

    .line 505
    .local v1, "e":Ljava/lang/Exception;
    sget-boolean v2, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OemFossModeManager"

    const-string/jumbo v3, "[OemFossMode] getCurrentFrontUid error, return null"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_1
    return-object v5

    .line 508
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v0    # "a":Lcom/android/server/am/ActivityRecord;
    :cond_2
    return-object v5
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OemFossModeManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 98
    sget-object v0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeManager:Lcom/android/server/am/OemFossModeManager;

    if-nez v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/server/am/OemFossModeManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OemFossModeManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeManager:Lcom/android/server/am/OemFossModeManager;

    .line 101
    :cond_0
    sget-object v0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeManager:Lcom/android/server/am/OemFossModeManager;

    return-object v0
.end method

.method private handlePkgChanged(Ljava/lang/String;I)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 443
    sget-boolean v2, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemFossModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[OemFossMode] handlePkgChanged pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 445
    :cond_0
    sget-object v3, Lcom/android/server/am/OemFossModeManager;->mActivityManager:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 446
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->getCurrentFrontApp()Lcom/android/server/am/ActivityRecord;

    move-result-object v0

    .line 447
    .local v0, "currentFrontApp":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_3

    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_3

    .line 448
    iget-object v2, v0, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v1, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 449
    .local v1, "uid_t":I
    sget-boolean v2, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OemFossModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OemFossMode] handlePkgChanged mCurrentFrontRecord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    :cond_1
    if-eq p2, v1, :cond_3

    .line 451
    sget-boolean v2, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "OemFossModeManager"

    const-string/jumbo v4, "[OemFossMode] handlePkgChanged uid change, return"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v3

    .line 445
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 452
    return-void

    .end local v1    # "uid_t":I
    :cond_3
    monitor-exit v3

    .line 445
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 457
    sget-object v3, Lcom/android/server/am/OemFossModeManager;->mFossPkgLock:Ljava/lang/Object;

    monitor-enter v3

    .line 458
    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 459
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/OemFossModeManager;->isFossPkgNow:Z

    .line 460
    const-string/jumbo v2, "service.foss.mode_5"

    invoke-direct {p0, v2}, Lcom/android/server/am/OemFossModeManager;->setSysPropt(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    monitor-exit v3

    .line 470
    return-void

    .line 445
    .end local v0    # "currentFrontApp":Lcom/android/server/am/ActivityRecord;
    :catchall_0
    move-exception v2

    monitor-exit v3

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 462
    .restart local v0    # "currentFrontApp":Lcom/android/server/am/ActivityRecord;
    :cond_4
    const/4 v2, 0x0

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/am/OemFossModeManager;->isFossPkgNow:Z

    .line 463
    sget-object v2, Lcom/android/server/am/OemFossModeManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 464
    const-string/jumbo v2, "service.foss.mode_2"

    invoke-direct {p0, v2}, Lcom/android/server/am/OemFossModeManager;->setSysPropt(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 457
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 466
    :cond_5
    :try_start_3
    const-string/jumbo v2, "service.foss.off"

    invoke-direct {p0, v2}, Lcom/android/server/am/OemFossModeManager;->setSysPropt(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0
.end method

.method private handlePowerSaveModeChanged()V
    .locals 4

    .prologue
    .line 473
    sget-object v1, Lcom/android/server/am/OemFossModeManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    .line 474
    .local v0, "isPowerSaveMode":Z
    sget-boolean v1, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemFossModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[OemFossMode] chekPkg isPowerSaveMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/OemFossModeManager;->isFossPkgNow:Z

    if-nez v1, :cond_1

    .line 476
    if-eqz v0, :cond_2

    .line 477
    const-string/jumbo v1, "service.foss.mode_2"

    invoke-direct {p0, v1}, Lcom/android/server/am/OemFossModeManager;->setSysPropt(Ljava/lang/String;)V

    .line 482
    :cond_1
    :goto_0
    return-void

    .line 479
    :cond_2
    const-string/jumbo v1, "service.foss.off"

    invoke-direct {p0, v1}, Lcom/android/server/am/OemFossModeManager;->setSysPropt(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initialOnlineConfig()V
    .locals 5

    .prologue
    .line 167
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OemFossModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OemFossModeManager;->mOemFossModeHandler:Landroid/os/Handler;

    .line 168
    new-instance v3, Lcom/android/server/am/OemFossModeManager$FossModeConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OemFossModeManager$FossModeConfigUpdater;-><init>(Lcom/android/server/am/OemFossModeManager;)V

    sget-object v4, Lcom/android/server/am/OemFossModeManager;->CONFIG_NAME:Ljava/lang/String;

    .line 167
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OemFossModeManager;->mFossModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 169
    iget-object v0, p0, Lcom/android/server/am/OemFossModeManager;->mFossModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 170
    return-void
.end method

.method private loadConfigFiles()V
    .locals 4

    .prologue
    .line 386
    sget-object v1, Lcom/android/server/am/OemFossModeManager;->mFossPkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    const-string/jumbo v0, "/data/data_foss/foss_pkg.xml"

    invoke-static {v0}, Lcom/android/server/am/OemFossModeManager;->loadStateLocked(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    .line 388
    const-string/jumbo v0, "OemFossModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[OemFossMode] loadConfigFiles: mFossSetList"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 390
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static loadStateLocked(Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 393
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 394
    .local v2, "emptyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 395
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 396
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadStateLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " file don\'t exist!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    return-object v2

    .line 399
    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 400
    .local v5, "ret":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 401
    .local v6, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 403
    .local v8, "success":Z
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 404
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 405
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 408
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 409
    .local v10, "type":I
    const/4 v12, 0x2

    if-ne v10, v12, :cond_2

    .line 410
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 411
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v12, "p"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 412
    const-string/jumbo v12, "att"

    const/4 v13, 0x0

    invoke-interface {v4, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 413
    .local v11, "value":Ljava/lang/String;
    if-eqz v11, :cond_2

    .line 414
    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 418
    .end local v9    # "tag":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    .line 419
    const/4 v8, 0x1

    .line 424
    if-eqz v7, :cond_5

    .line 425
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 426
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    :goto_0
    const/4 v6, 0x0

    .line 432
    :cond_3
    :goto_1
    sget-boolean v12, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v12, :cond_4

    .line 433
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadStateLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " date size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :cond_4
    if-eqz v8, :cond_7

    .line 435
    return-object v5

    .line 428
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "type":I
    :catch_0
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .end local v0    # "e":Ljava/io/IOException;
    :cond_5
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_1

    .line 420
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v10    # "type":I
    .local v6, "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 421
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadStateLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "  --> failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 424
    if-eqz v6, :cond_3

    .line 425
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 428
    :catch_2
    move-exception v0

    .line 429
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 422
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 424
    :goto_3
    if-eqz v6, :cond_6

    .line 425
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 426
    const/4 v6, 0x0

    .line 422
    :cond_6
    :goto_4
    throw v12

    .line 428
    :catch_3
    move-exception v0

    .line 429
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 437
    .end local v0    # "e":Ljava/io/IOException;
    :cond_7
    sget-boolean v12, Lcom/android/server/am/OemFossModeManager;->DBG:Z

    if-eqz v12, :cond_8

    .line 438
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadStateLocked(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " file failed parsing!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    :cond_8
    return-object v2

    .line 422
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 420
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method public static loadXmlLocked(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 15
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 271
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 272
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_0

    .line 273
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadXmlLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " file don\'t exist!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v12, 0x0

    return-object v12

    .line 276
    :cond_0
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v5, "ret":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 278
    .local v6, "stream":Ljava/io/FileInputStream;
    const/4 v8, 0x0

    .line 280
    .local v8, "success":Z
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v7, "stream":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    .line 282
    .local v4, "parser":Lorg/xmlpull/v1/XmlPullParser;
    const/4 v12, 0x0

    invoke-interface {v4, v7, v12}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 285
    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v10

    .line 286
    .local v10, "type":I
    const/4 v12, 0x2

    if-ne v10, v12, :cond_2

    .line 287
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 288
    .local v9, "tag":Ljava/lang/String;
    const-string/jumbo v12, "item"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 289
    const-string/jumbo v12, "name"

    const/4 v13, 0x0

    invoke-interface {v4, v13, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 290
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 291
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    .line 292
    .local v11, "value":Ljava/lang/String;
    invoke-virtual {v5, v3, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 296
    .end local v3    # "name":Ljava/lang/String;
    .end local v9    # "tag":Ljava/lang/String;
    .end local v11    # "value":Ljava/lang/String;
    :cond_2
    const/4 v12, 0x1

    if-ne v10, v12, :cond_1

    .line 297
    const/4 v8, 0x1

    .line 302
    if-eqz v7, :cond_3

    .line 303
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_3
    :goto_0
    move-object v6, v7

    .line 310
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    :cond_4
    :goto_1
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadXmlLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " data size="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v8, :cond_6

    .line 312
    return-object v5

    .line 305
    .restart local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v10    # "type":I
    :catch_0
    move-exception v0

    .line 306
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 298
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v7    # "stream":Ljava/io/FileInputStream;
    .end local v10    # "type":I
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 299
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .local v1, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadXmlLocked():path="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, "  --> failed parsing "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 302
    if-eqz v6, :cond_4

    .line 303
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 305
    :catch_2
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 300
    .end local v0    # "e":Ljava/io/IOException;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v12

    .line 302
    :goto_3
    if-eqz v6, :cond_5

    .line 303
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 300
    :cond_5
    :goto_4
    throw v12

    .line 305
    :catch_3
    move-exception v0

    .line 306
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 315
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    const-string/jumbo v12, "OemFossModeManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "[OemFossMode] loadXmlLocked(): "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " file failed parsing!"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v12, 0x0

    return-object v12

    .line 300
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v12

    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .local v6, "stream":Ljava/io/FileInputStream;
    goto :goto_3

    .line 298
    .end local v6    # "stream":Ljava/io/FileInputStream;
    .restart local v7    # "stream":Ljava/io/FileInputStream;
    :catch_4
    move-exception v1

    .restart local v1    # "e":Ljava/lang/Exception;
    move-object v6, v7

    .end local v7    # "stream":Ljava/io/FileInputStream;
    .restart local v6    # "stream":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 218
    if-nez p1, :cond_0

    .line 219
    return-void

    .line 222
    :cond_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 223
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 224
    .local v4, "json":Lorg/json/JSONObject;
    const-string/jumbo v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "foss_pkg"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    const-string/jumbo v5, "value"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 226
    .local v1, "fossPkgArray":Lorg/json/JSONArray;
    sget-object v6, Lcom/android/server/am/OemFossModeManager;->mFossPkgLock:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :try_start_1
    iget-object v5, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 228
    const-string/jumbo v5, "OemFossModeManager"

    const-string/jumbo v7, "[OemFossMode] resolveConfigFromJSON"

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 230
    const-string/jumbo v5, "OemFossModeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[OemFossMode] update blackgpslist i:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " |pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v5, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 232
    iget-object v5, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 234
    :cond_1
    const-string/jumbo v5, "OemFossModeManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[OemFossMode] update mFossSetList success, mFossSetList:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v5, p0, Lcom/android/server/am/OemFossModeManager;->mFossSetList:Ljava/util/List;

    const-string/jumbo v7, "/data/data_foss/foss_pkg.xml"

    invoke-static {v5, v7}, Lcom/android/server/am/OemFossModeManager;->saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v6

    .line 222
    .end local v1    # "fossPkgArray":Lorg/json/JSONArray;
    .end local v2    # "i":I
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 226
    .restart local v1    # "fossPkgArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 239
    .end local v1    # "fossPkgArray":Lorg/json/JSONArray;
    .end local v4    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 240
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v5, "OemFossModeManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[OemFossMode] resolveConfigFromJSON, error message:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_3
    return-void
.end method

.method private static saveConfigXml(Ljava/util/List;Ljava/lang/String;)Z
    .locals 11
    .param p1, "patch"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "config":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v10, 0x0

    .line 180
    const/4 v5, 0x0

    .line 181
    .local v5, "stream":Ljava/io/FileOutputStream;
    const-string/jumbo v7, "line.separator"

    invoke-static {v7}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 183
    .local v1, "endLine":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    .end local v5    # "stream":Ljava/io/FileOutputStream;
    .local v6, "stream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 186
    .local v3, "out":Lorg/xmlpull/v1/XmlSerializer;
    const-string/jumbo v7, "utf-8"

    invoke-interface {v3, v6, v7}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 187
    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 188
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 190
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 191
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 192
    .local v4, "pkg":Ljava/lang/String;
    const-string/jumbo v7, "OemFossModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "saved pkg is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    if-eqz v4, :cond_0

    .line 194
    const-string/jumbo v7, "p"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const-string/jumbo v7, "att"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7, v4}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string/jumbo v7, "p"

    const/4 v8, 0x0

    invoke-interface {v3, v8, v7}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 202
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v4    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v5, v6

    .line 203
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "OemFossModeManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OemFossMode] Failed to write state: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 207
    if-eqz v5, :cond_1

    .line 208
    :try_start_3
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 204
    :cond_1
    :goto_2
    return v10

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :cond_2
    :try_start_4
    invoke-interface {v3, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 201
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 207
    if-eqz v6, :cond_3

    .line 208
    :try_start_5
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    .line 214
    :cond_3
    :goto_3
    return v10

    .line 210
    :catch_1
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 210
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3    # "out":Lorg/xmlpull/v1/XmlSerializer;
    .end local v6    # "stream":Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 211
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 207
    :goto_4
    if-eqz v5, :cond_4

    .line 208
    :try_start_6
    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 205
    :cond_4
    :goto_5
    throw v7

    .line 210
    :catch_3
    move-exception v0

    .line 211
    .restart local v0    # "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 205
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v6    # "stream":Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "stream":Ljava/io/FileOutputStream;
    .local v5, "stream":Ljava/io/FileOutputStream;
    goto :goto_4

    .line 202
    .local v5, "stream":Ljava/io/FileOutputStream;
    :catch_4
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method private setSysPropt(Ljava/lang/String;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 485
    const-string/jumbo v0, "OemFossModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OemFossMode] setSysProp key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mCurrentFossMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/am/OemFossModeManager;->mCurrentFossMode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    sget-object v0, Lcom/android/server/am/OemFossModeManager;->mCurrentFossMode:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    const-string/jumbo v0, "true"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 488
    sput-object p1, Lcom/android/server/am/OemFossModeManager;->mCurrentFossMode:Ljava/lang/String;

    .line 490
    :cond_0
    return-void
.end method


# virtual methods
.method prepareConfigFiles()V
    .locals 6

    .prologue
    .line 349
    const-string/jumbo v3, "OemFossModeManager"

    const-string/jumbo v4, "[OemFossMode] prepare ConfigFiles()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v3, "/data/data_foss/"

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 352
    .local v1, "file":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_0

    .line 353
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 355
    :cond_0
    const/4 v2, 0x0

    .line 356
    .local v2, "isForceUpdate":Z
    invoke-direct {p0}, Lcom/android/server/am/OemFossModeManager;->checkVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 357
    const/4 v2, 0x1

    .line 359
    :cond_1
    const-string/jumbo v3, "OemFossModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OemFossMode] prepare ConfigFiles() isForceUpdate ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const-string/jumbo v3, "/system/foss/foss_version.xml"

    const-string/jumbo v4, "/data/data_foss/foss_version.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OemFossModeManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 361
    const-string/jumbo v3, "/system/foss/foss_pkg.xml"

    const-string/jumbo v4, "/data/data_foss/foss_pkg.xml"

    invoke-direct {p0, v3, v4, v2}, Lcom/android/server/am/OemFossModeManager;->copyFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 367
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "isForceUpdate":Z
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_foss/"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 368
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string/jumbo v4, "chmod 0770 /data/data_foss/foss_pkg.xml"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 373
    :goto_1
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OemFossModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OemFossMode] init ConfigFiles(): failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 369
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 370
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OemFossModeManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[OemFossMode] prepare ConfigFiles(): failed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
