.class public final Lcom/android/server/am/OnePlusDuallteManager;
.super Ljava/lang/Object;
.source "OnePlusDuallteManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusDuallteManager$1;,
        Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;,
        Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "com.Duallte.action.debug"

.field private static final ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final DBG:Z

.field private static final DEFAULT_NONE:Ljava/lang/String; = ""

.field private static final DUALLTE_CONFIG_NAME:Ljava/lang/String; = "Duallte"

.field private static final DUALLTE_KEY:Ljava/lang/String; = "persist.radio.duallte.enable"

.field private static final DUALLTE_OPERATED:Ljava/lang/String; = "persist.radio.duallte.operated"

.field public static ENABLE:Z = false

.field private static final MESSAGE_SETDUALLTE:I = 0x2

.field private static final MESSAGE_UPDATE_FORGEGROUND:I = 0x1

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OnePlusDuallteManager"

.field private static final VALUE_FIRST_EXIT_PKG:I = 0x2

.field private static final VALUE_IN_SPECIAL_GAME:I = 0x1

.field private static final VALUE_NOT_FIRST_EXIT_PKG:I = 0x0

.field private static final VERSION:I = 0x78492d21

.field private static mDualSimStateReady:Z

.field private static mGamePkgLock:Ljava/lang/Object;

.field private static mMobile4gStateReady:Z

.field private static mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

.field private static operateDelayTime:J

.field private static sim1State:I

.field private static sim2State:I


# instance fields
.field private IExtTelephony:Ljava/lang/Object;

.field private connectivityManager:Landroid/net/ConnectivityManager;

.field private isOperated:Z

.field private mContext:Landroid/content/Context;

.field private mCurFrontPkg:Ljava/lang/String;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mOnePlusDuallteManagerHandler:Landroid/os/Handler;

.field private mPkgStatus:I

.field private mSpecialGameList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private method:Ljava/lang/reflect/Method;

.field private offScreenPkgName:Ljava/lang/String;

.field private screenOn:Z

.field private telephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    return v0
.end method

.method static synthetic -get2()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/am/OnePlusDuallteManager;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;

    .prologue
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    return p0
.end method

.method static synthetic -set1(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/am/OnePlusDuallteManager;Z)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "isRecover"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->setDuallte(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->dumpInfo()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->dumpPkgInfos()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReadyIfNeed()V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "ready"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->handleMobile4gStateReady(Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/am/OnePlusDuallteManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->handlePkgChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/am/OnePlusDuallteManager;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusDuallteManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/am/OnePlusDuallteManager;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusDuallteManager;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->setDuallteTest()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 33
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    .line 40
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 41
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    .line 51
    const-wide/32 v0, 0xea60

    sput-wide v0, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    .line 52
    sput-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 69
    sput v2, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    .line 70
    sput v2, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    .line 71
    sput-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 72
    sput-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 32
    return-void
.end method

.method protected constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 10
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 57
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 58
    const-string/jumbo v4, ""

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    .line 59
    iput-boolean v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 60
    iput-boolean v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 61
    iput-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    .line 62
    iput-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    .line 63
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    .line 65
    iput-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    .line 66
    iput-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    .line 67
    iput-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    iput-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 201
    new-instance v4, Lcom/android/server/am/OnePlusDuallteManager$1;

    invoke-direct {v4, p0}, Lcom/android/server/am/OnePlusDuallteManager$1;-><init>(Lcom/android/server/am/OnePlusDuallteManager;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 87
    const-string/jumbo v4, "sdm845"

    const-string/jumbo v5, "ro.board.platform"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 88
    const-string/jumbo v4, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "OnePlusDuallteManager VERSION = v2018061601 |ENABLE:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    .line 92
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 93
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v4, "com.Duallte.action.debug"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 94
    const-string/jumbo v4, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 95
    const-string/jumbo v4, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 96
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/am/OnePlusDuallteManager;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    new-instance v1, Landroid/os/HandlerThread;

    const-string/jumbo v4, "mOnePlusDuallteManagerThread"

    invoke-direct {v1, v4}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 99
    .local v1, "mOnePlusDuallteManagerThread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 100
    new-instance v4, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/server/am/OnePlusDuallteManager$OnePlusDuallteManagerHandler;-><init>(Lcom/android/server/am/OnePlusDuallteManager;Landroid/os/Looper;)V

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    .line 102
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    .line 103
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v3

    .line 104
    .local v3, "numSlots":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 105
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v7}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    .line 106
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->telephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v8}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    sput v4, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    .line 107
    sget v4, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    if-ne v4, v9, :cond_0

    .line 108
    sget v4, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    if-ne v4, v9, :cond_0

    .line 109
    sput-boolean v8, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 113
    :cond_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "connectivity"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ConnectivityManager;

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    .line 114
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->connectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 115
    .local v2, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 116
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result v4

    if-nez v4, :cond_1

    .line 117
    sput-boolean v8, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 121
    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->init()V

    .line 122
    sput-object p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 123
    return-void
.end method

.method private dumpInfo()V
    .locals 4

    .prologue
    .line 250
    const-string/jumbo v0, "OnePlusDuallteManager"

    const-string/jumbo v1, "# dump # VERSION # 2018061601"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    const-string/jumbo v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "# dump # ENABLE # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string/jumbo v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "# dump # operateDelayTime # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    return-void
.end method

.method private dumpPkgInfos()V
    .locals 7

    .prologue
    .line 256
    sget-object v4, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    monitor-enter v4

    .line 257
    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 258
    const-string/jumbo v3, "OnePlusDuallteManager"

    const-string/jumbo v5, "# dump # mSpecialGameList = null, return"

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 259
    return-void

    .line 261
    :cond_0
    const/4 v0, 0x0

    .line 262
    .local v0, "index":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

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

    .line 263
    .local v1, "pkg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 264
    const-string/jumbo v3, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "# dump # mSpecialGameList # "

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

    .line 256
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

    .line 267
    return-void
.end method

.method private getIExtTelephony()Ljava/lang/Object;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 470
    sget-boolean v4, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "OnePlusDuallteManager"

    const-string/jumbo v5, "getIExtTelephony()"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    :cond_0
    :try_start_0
    const-string/jumbo v4, "extphone"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    .line 473
    .local v3, "remoteService":Ljava/lang/Object;
    const-string/jumbo v4, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 474
    .local v1, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v4, "asInterface"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v1, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 475
    .local v0, "asInterface":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 482
    iget-object v4, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    return-object v4

    .line 476
    .end local v0    # "asInterface":Ljava/lang/reflect/Method;
    .end local v1    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "remoteService":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 477
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OnePlusDuallteManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getIExtTelephony() exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 479
    return-object v8
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusDuallteManager;
    .locals 1

    .prologue
    .line 75
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;)Lcom/android/server/am/OnePlusDuallteManager;
    .locals 1
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;

    .prologue
    .line 79
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/am/OnePlusDuallteManager;

    invoke-direct {v0, p0}, Lcom/android/server/am/OnePlusDuallteManager;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    sput-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    .line 82
    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManager:Lcom/android/server/am/OnePlusDuallteManager;

    return-object v0
.end method

.method private getMethod()Ljava/lang/reflect/Method;
    .locals 6

    .prologue
    .line 486
    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OnePlusDuallteManager"

    const-string/jumbo v3, "getMethod()"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :cond_0
    :try_start_0
    const-string/jumbo v2, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 489
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v2, "generalSetter"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 496
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    return-object v2

    .line 490
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 491
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getMethod() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 493
    const/4 v2, 0x0

    return-object v2
.end method

.method private handleDualSimStateReady(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "ready"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 366
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDualSimStateReady ready:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |mCurFrontPkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 368
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    .line 369
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v1, :cond_2

    .line 370
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v1, :cond_1

    .line 371
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 372
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 378
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 375
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    goto :goto_0
.end method

.method private handleDualSimStateReadyIfNeed()V
    .locals 2

    .prologue
    const/4 v1, 0x5

    .line 338
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim1State:I

    if-ne v0, v1, :cond_1

    .line 339
    sget v0, Lcom/android/server/am/OnePlusDuallteManager;->sim2State:I

    if-ne v0, v1, :cond_1

    .line 340
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-nez v0, :cond_0

    .line 341
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReady(Ljava/lang/Boolean;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 344
    :cond_1
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_0

    .line 345
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->handleDualSimStateReady(Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private handleMobile4gStateReady(Ljava/lang/Boolean;)V
    .locals 5
    .param p1, "ready"    # Ljava/lang/Boolean;

    .prologue
    const/4 v4, 0x0

    .line 351
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleMobile4gStateReady ready:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |mCurFrontPkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eq v1, v2, :cond_1

    .line 353
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    .line 354
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    if-eqz v1, :cond_2

    .line 355
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v1, :cond_1

    .line 356
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v1, v3, v4, v4, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 357
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 363
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    :goto_0
    return-void

    .line 360
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    goto :goto_0
.end method

.method private handlePkgChanged(Ljava/lang/String;)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 381
    sget-boolean v2, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handlePkgChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    :cond_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    monitor-enter v3

    .line 383
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 384
    const/4 v2, 0x1

    iput v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 385
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 386
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 389
    :cond_1
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string/jumbo v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "curDuallteState":Ljava/lang/String;
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 391
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 392
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string/jumbo v4, "1"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 393
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string/jumbo v4, "0"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 395
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "curDuallteState":Ljava/lang/String;
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    :goto_0
    monitor-exit v3

    .line 430
    return-void

    .line 398
    :cond_3
    :try_start_1
    iget v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 422
    :pswitch_0
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 382
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 400
    :pswitch_1
    const/4 v2, 0x2

    :try_start_2
    iput v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I

    .line 401
    iget-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    if-eqz v2, :cond_2

    .line 402
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 403
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string/jumbo v4, "0"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .restart local v0    # "curDuallteState":Ljava/lang/String;
    const-string/jumbo v2, "0"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 405
    const-string/jumbo v2, "persist.radio.duallte.enable"

    const-string/jumbo v4, "1"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 407
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 409
    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v2, v5, v6, v7, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 410
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    sget-wide v4, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 411
    .end local v1    # "msg":Landroid/os/Message;
    :cond_5
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 412
    const-string/jumbo v2, "persist.radio.duallte.operated"

    const-string/jumbo v4, "0"

    invoke-direct {p0, v2, v4}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 418
    .end local v0    # "curDuallteState":Ljava/lang/String;
    :pswitch_2
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mPkgStatus:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 398
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private init()V
    .locals 0

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initSpecialGameList()V

    .line 127
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initOnlineConfig()V

    .line 128
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->initSysPropt()V

    .line 129
    return-void
.end method

.method private initSpecialGameList()V
    .locals 3

    .prologue
    .line 171
    sget-object v1, Lcom/android/server/am/OnePlusDuallteManager;->mGamePkgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 172
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.cf"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.dwrg"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 174
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.sgame"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 175
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.pubgm"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.pubgmhd"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.speedmobile"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.supercell.clashroyale"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.tencent.tmgp.supercell.clashofclans"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.dwrg"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.dwrg.baidu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 182
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.dwrg.aligames"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.dwrg.nearme.gamecenter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.hyxd"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.hyxd.baidu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 186
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.hyxd.aligames"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 187
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.netease.hyxd.nearme.gamecenter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashroyale.uc"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashofclans.uc"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 190
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashroyale.baidu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 191
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashofclans.qihoo"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashofclans.baidu"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 193
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashroyale.kunlun"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashofclans.kunlun"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 195
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashroyale.nearme.gamecenter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.supercell.clashofclans.nearme.gamecenter"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    const-string/jumbo v2, "com.blizzard.wtcg.hearthstone"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 199
    return-void

    .line 171
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSysPropt()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 132
    const-string/jumbo v3, "persist.radio.duallte.operated"

    const-string/jumbo v4, "-1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 133
    .local v1, "lastOperated":Ljava/lang/String;
    const-string/jumbo v3, "persist.radio.duallte.enable"

    const-string/jumbo v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "curDuallteState":Ljava/lang/String;
    const-string/jumbo v3, "OnePlusDuallteManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "initSysPropt() lastOperated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " |curDuallteState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const-string/jumbo v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 136
    const-string/jumbo v3, "persist.radio.duallte.operated"

    const-string/jumbo v4, "0"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    const-string/jumbo v3, "0"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const-string/jumbo v3, "persist.radio.duallte.enable"

    const-string/jumbo v4, "1"

    invoke-direct {p0, v3, v4}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x2

    invoke-static {v3, v5, v6, v6, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 140
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 143
    .end local v2    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private isStateReady()Z
    .locals 1

    .prologue
    .line 305
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mDualSimStateReady:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->mMobile4gStateReady:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private recoverOperatedImmediately()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    .line 324
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recoverOperatedImmediately isOperated:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    if-eqz v1, :cond_2

    .line 327
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 331
    :cond_1
    const-string/jumbo v1, "persist.radio.duallte.enable"

    const-string/jumbo v2, "1"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1, v4, v5, v5, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 333
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 335
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 543
    if-nez p1, :cond_0

    .line 544
    const-string/jumbo v7, "OnePlusDuallteManager"

    const-string/jumbo v8, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    return-void

    .line 549
    :cond_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_2

    .line 550
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 551
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "enable"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 552
    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 553
    .local v4, "jArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    .line 554
    sget-boolean v7, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v7, :cond_1

    .line 555
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->recoverOperatedImmediately()V

    .line 549
    .end local v4    # "jArray":Lorg/json/JSONArray;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 561
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 562
    .restart local v5    # "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "delaytime"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 563
    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 564
    .restart local v4    # "jArray":Lorg/json/JSONArray;
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->getInt(I)I

    move-result v7

    int-to-long v8, v7

    sput-wide v8, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    .line 560
    .end local v4    # "jArray":Lorg/json/JSONArray;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 568
    .end local v5    # "json":Lorg/json/JSONObject;
    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 569
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 570
    .restart local v5    # "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "mSpecialGameList"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 571
    iget-object v8, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    monitor-enter v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 572
    :try_start_1
    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 573
    .restart local v4    # "jArray":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 574
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_6

    .line 575
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 576
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 577
    iget-object v7, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 574
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .end local v6    # "value":Ljava/lang/String;
    :cond_6
    :try_start_2
    monitor-exit v8

    .line 568
    .end local v2    # "i":I
    .end local v4    # "jArray":Lorg/json/JSONArray;
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 571
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 583
    .end local v5    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 584
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] JSONException:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 591
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v10, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_4
    return-void

    .line 591
    :cond_8
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v10, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 586
    :catch_1
    move-exception v0

    .line 587
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] Exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 591
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-wide v10, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string/jumbo v7, "OnePlusDuallteManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 589
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    .line 591
    const-string/jumbo v8, "OnePlusDuallteManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[OnlineConfig] resolveConfigFromJSON ENABLE:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-boolean v10, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    const-string/jumbo v8, "OnePlusDuallteManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[OnlineConfig] resolveConfigFromJSON operateDelayTime:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-wide v10, Lcom/android/server/am/OnePlusDuallteManager;->operateDelayTime:J

    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 593
    const-string/jumbo v8, "OnePlusDuallteManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[OnlineConfig] resolveConfigFromJSON mSpecialGameList:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusDuallteManager;->mSpecialGameList:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    throw v7
.end method

.method private setDuallte(Z)Z
    .locals 8
    .param p1, "isRecover"    # Z

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 433
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDuallte isRecover:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_1

    .line 441
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    .line 444
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    if-nez v1, :cond_2

    .line 445
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    .line 448
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    if-nez v1, :cond_4

    .line 449
    :cond_3
    const-string/jumbo v1, "OnePlusDuallteManager"

    const-string/jumbo v2, "setDuallte method or IExtTelephony is null, return"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    return v6

    .line 453
    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 454
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->method:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->IExtTelephony:Ljava/lang/Object;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v4, "oemDualLteSwitch"

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const/4 v5, 0x1

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 461
    if-eqz p1, :cond_5

    .line 462
    iput-boolean v6, p0, Lcom/android/server/am/OnePlusDuallteManager;->isOperated:Z

    .line 463
    const-string/jumbo v1, "persist.radio.duallte.operated"

    const-string/jumbo v2, "0"

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    :cond_5
    return v7

    .line 455
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 458
    return v6
.end method

.method private setDuallteTest()V
    .locals 15

    .prologue
    .line 500
    sget-boolean v10, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v10, :cond_0

    const-string/jumbo v10, "OnePlusDuallteManager"

    const-string/jumbo v11, "setDuallteTest"

    invoke-static {v10, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    :cond_0
    :try_start_0
    const-string/jumbo v10, "org.codeaurora.internal.IExtTelephony"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 504
    .local v3, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v7

    .line 506
    .local v7, "methods":[Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    array-length v11, v7

    :goto_0
    if-ge v10, v11, :cond_1

    aget-object v5, v7, v10

    .line 507
    .local v5, "method":Ljava/lang/reflect/Method;
    const-string/jumbo v12, "OnePlusDuallteManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getMethods:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 509
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v8

    .line 511
    .local v8, "methods2":[Ljava/lang/reflect/Method;
    const/4 v10, 0x0

    array-length v11, v8

    :goto_1
    if-ge v10, v11, :cond_2

    aget-object v5, v8, v10

    .line 512
    .restart local v5    # "method":Ljava/lang/reflect/Method;
    const-string/jumbo v12, "OnePlusDuallteManager"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "getDeclaredMethods:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v5}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ", "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 515
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :cond_2
    const-string/jumbo v10, "extphone"

    invoke-static {v10}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    .line 516
    .local v9, "remoteService":Ljava/lang/Object;
    const-string/jumbo v10, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 517
    .local v2, "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string/jumbo v10, "asInterface"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const-class v12, Landroid/os/IBinder;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    invoke-virtual {v2, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 518
    .local v1, "asInterface":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v9, v10, v11

    const/4 v11, 0x0

    invoke-virtual {v1, v11, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 520
    .local v0, "IExtTelephony":Ljava/lang/Object;
    const-string/jumbo v10, "generalSetter"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const-class v12, Ljava/lang/String;

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-class v12, Landroid/os/Bundle;

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v3, v10, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 521
    .local v6, "method2":Ljava/lang/reflect/Method;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 522
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const-string/jumbo v11, "oemDualLteSwitch"

    const/4 v12, 0x0

    aput-object v11, v10, v12

    new-instance v11, Landroid/os/Bundle;

    invoke-direct {v11}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x1

    aput-object v11, v10, v12

    invoke-virtual {v6, v0, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    .end local v0    # "IExtTelephony":Ljava/lang/Object;
    .end local v1    # "asInterface":Ljava/lang/reflect/Method;
    .end local v2    # "cStub":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "method2":Ljava/lang/reflect/Method;
    .end local v7    # "methods":[Ljava/lang/reflect/Method;
    .end local v8    # "methods2":[Ljava/lang/reflect/Method;
    .end local v9    # "remoteService":Ljava/lang/Object;
    :goto_2
    return-void

    .line 523
    :catch_0
    move-exception v4

    .line 524
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v10, "OnePlusDuallteManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setDuallteTest() exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method private setProptValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 309
    const-string/jumbo v2, ""

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 310
    .local v0, "curValue":Ljava/lang/String;
    const-string/jumbo v2, "OnePlusDuallteManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set system property key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " |curValue:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 312
    return-void

    .line 316
    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    :goto_0
    return-void

    .line 317
    :catch_0
    move-exception v1

    .line 318
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OnePlusDuallteManager"

    const-string/jumbo v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public frontPkgChangedEvent(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 284
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v1, :cond_0

    return-void

    .line 285
    :cond_0
    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v1, :cond_1

    const-string/jumbo v1, "OnePlusDuallteManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "frontPkgChangedEvent:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |mCurFrontPkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :cond_1
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    .line 287
    iget-boolean v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    if-nez v1, :cond_3

    .line 290
    if-eqz p1, :cond_2

    .line 291
    iput-object p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 294
    :goto_0
    return-void

    .line 293
    :cond_2
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0

    .line 297
    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/OnePlusDuallteManager;->isStateReady()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 298
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-static {v1, v2, v4, v4, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 299
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 302
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    .prologue
    .line 530
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusDuallteManager$DuallteConfigUpdater;-><init>(Lcom/android/server/am/OnePlusDuallteManager;)V

    const-string/jumbo v4, "Duallte"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 531
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 532
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->mOnePlusDuallteManagerHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 533
    return-void
.end method

.method public screenStateChangedEvent(Z)V
    .locals 3
    .param p1, "done"    # Z

    .prologue
    .line 270
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    .line 271
    :cond_0
    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->DBG:Z

    if-eqz v0, :cond_1

    const-string/jumbo v0, "OnePlusDuallteManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenStateChangedEvent done:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |offScreenPkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mCurFrontPkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusDuallteManager;->screenOn:Z

    .line 273
    if-eqz p1, :cond_3

    .line 274
    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusDuallteManager;->frontPkgChangedEvent(Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    .line 281
    :cond_2
    :goto_0
    return-void

    .line 279
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->mCurFrontPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusDuallteManager;->offScreenPkgName:Ljava/lang/String;

    goto :goto_0
.end method
