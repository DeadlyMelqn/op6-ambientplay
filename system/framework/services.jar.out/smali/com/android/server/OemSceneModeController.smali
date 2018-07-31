.class public Lcom/android/server/OemSceneModeController;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneModeController$1;,
        Lcom/android/server/OemSceneModeController$2;,
        Lcom/android/server/OemSceneModeController$3;,
        Lcom/android/server/OemSceneModeController$4;,
        Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;,
        Lcom/android/server/OemSceneModeController$GamePowerSaverConfigUpdater;,
        Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;,
        Lcom/android/server/OemSceneModeController$WlanReceiver;
    }
.end annotation


# static fields
.field private static final ACTION_DEBUG:Ljava/lang/String; = "com.gamepowersaver.action.debug"

.field private static final ACTION_DISABLE_GAME_MODE:Ljava/lang/String; = "com.oem.intent.action.DISABLE_GAME_MODE"

.field private static DBG:Z = false

.field private static final GAME_MODE_BATTERY_SAVER:Ljava/lang/String; = "game_mode_battery_saver"

.field private static final GAME_MODE_EVER_ENABLED_KEY:Ljava/lang/String; = "persist.sys.oem.gamemode_dirty"

.field private static final GAME_MODE_NETWORK_ACC:Ljava/lang/String; = "game_mode_network_acceleration"

.field private static final GAME_MODE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "scene_modes_game"

.field private static final GAME_NETWORK_BOOST_KEY:Ljava/lang/String; = "persist.sys.gamemode.wifiboost"

.field private static final GAME_POWERSAVER_CONFIG_NAME:Ljava/lang/String; = "GamePowerSaver"

.field private static final HANDLE_DELAY_TIME:I = 0x1388

.field private static final HAS_HW_KEYS:Z

.field public static final MODE_GAMEING_NO_DISTURB:I = 0x1

.field public static final MODE_READING:I = 0x0

.field private static final MSG_GAME_AUTO_CHANGED:I = 0x3

.field private static final MSG_GAME_BATTERY_SAVER_CHANGED:I = 0xb

.field private static final MSG_GAME_MANUAL_CHANGED:I = 0x2

.field private static final MSG_GAME_NETWORK_ACC_CHANGED:I = 0x8

.field private static final MSG_GET_ONLINECONFIG:I = 0xc

.field private static final MSG_READ_AUTO_CHANGED:I = 0x1

.field private static final MSG_READ_MANUAL_CHANGED:I = 0x0

.field private static final MSG_START_MONITOR:I = 0x4

.field private static final MSG_START_MONITOR_PASSIVE:I = 0x7

.field private static final MSG_STOP_MONITOR:I = 0x5

.field private static final MSG_STOP_MONITOR_PASSIVE:I = 0x6

.field private static final MSG_WIFI_STATE_DISABLED:I = 0x9

.field private static final MSG_WIFI_STATE_ENABLED:I = 0xa

.field private static final NOTIFICATION_GAME_MODE_ENABLED:I = 0x15be

.field private static final NOTIFY_TAG:Ljava/lang/String; = "SceneModeController"

.field private static final PROP_GAME_MODE_SCALE_DEUBG_KEY:Ljava/lang/String; = "persist.sys.gamemodescale.debug"

.field public static final SWITCHER_PASSIVE:I = 0x1

.field public static final SWITCHER_PROACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OemSceneModeController"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0x7d0

.field private static final URI_GAME_AUTO:Landroid/net/Uri;

.field private static final URI_GAME_MANUAL:Landroid/net/Uri;

.field private static final URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

.field private static final URI_GAME_NETWORK_ACC:Landroid/net/Uri;

.field private static final URI_READ_AUTO:Landroid/net/Uri;

.field private static final URI_READ_MANUAL:Landroid/net/Uri;

.field private static final VALUE_CLEAN:I = 0x1

.field private static final VALUE_CLEAN_EXEC:I = 0x2

.field private static final VALUE_CLOSE_POWERSAVE:Ljava/lang/String; = "0_0"

.field private static final VALUE_EXEC:I = 0x0

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static final VALUE_NETWORK_BOOST_DEFAULT:Ljava/lang/String; = "-1"

.field private static final VALUE_NETWORK_BOOST_INIT:Ljava/lang/String; = "1"

.field private static final VALUE_NETWORK_BOOST_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_NETWORK_BOOST_ON:Ljava/lang/String; = "2"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_ON_INT:I = 0x1


# instance fields
.field private mAm:Landroid/app/ActivityManager;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mCurProcessName:Ljava/lang/String;

.field private mCurPropt:Ljava/lang/String;

.field private mFlinger:Landroid/os/IBinder;

.field private mGameModeAuto:Z

.field private mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

.field private mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

.field private mGameModeManual:Z

.field private mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

.field private mGameModeNetWorkAccObserver:Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;

.field private mGameModeStatus:Z

.field private mGamePowerSaverConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mHandler:Landroid/os/Handler;

.field private mIsMonitoringPassiveProvider:Z

.field private mIsMonitoringProactiveProvider:Z

.field private mIsToastShowing:Z

.field private mNeedExecPowerSavePolicy:Z

.field private mNeedToReset:Z

.field private mNetBoostFeature:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

.field private mOldPid:I

.field private mOldProcessName:Ljava/lang/String;

.field private mOneTime:Z

.field private mPowerSaveExecThread:Ljava/lang/Thread;

.field private mPowerSaverBlackListApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerSaverFeature:Z

.field private mReadModeAuto:Z

.field private mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

.field private mReadModeManual:Z

.field private mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

.field private mReadModeStatus:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mSaveParam:Ljava/lang/String;

.field private mShowingEnabledToast:Z

.field private mWifiBoost:I

.field private mWlanReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/OemSceneModeController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    return v0
.end method

.method static synthetic -get3(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    return v0
.end method

.method static synthetic -get6(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/OemSceneModeController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mShowingEnabledToast:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/OemSceneModeController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OemSceneModeController;->mIsToastShowing:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/OemSceneModeController;I)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;
    .param p1, "value"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->validateNetWorkACCValue(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->validateValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap10(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleWifiStateDisable()V

    return-void
.end method

.method static synthetic -wrap11(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleWifiStateEnable()V

    return-void
.end method

.method static synthetic -wrap12(Lcom/android/server/OemSceneModeController;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;
    .param p1, "enabled"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V

    return-void
.end method

.method static synthetic -wrap13(Lcom/android/server/OemSceneModeController;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap14(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isDelay"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method static synthetic -wrap15(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->dumpPkgInfos()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;
    .param p1, "save_Param"    # Ljava/lang/String;
    .param p2, "optimize"    # Z

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameAutoChanged()V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameBatterySaverChanged()V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameManualChanged()V

    return-void
.end method

.method static synthetic -wrap7(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameNetWorkAccChanged()V

    return-void
.end method

.method static synthetic -wrap8(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadAutoChanged()V

    return-void
.end method

.method static synthetic -wrap9(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OemSceneModeController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadManualChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 69
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    .line 117
    const-string/jumbo v0, "1"

    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->HAS_HW_KEYS:Z

    .line 119
    const-string/jumbo v0, "reading_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    .line 120
    const-string/jumbo v0, "rading_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    .line 121
    const-string/jumbo v0, "game_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    .line 122
    const-string/jumbo v0, "game_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    .line 123
    const-string/jumbo v0, "game_mode_network_acceleration"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    .line 124
    const-string/jumbo v0, "game_mode_battery_saver"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v7, 0x1

    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 127
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 128
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 129
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 130
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 131
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 132
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 133
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 134
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mIsToastShowing:Z

    .line 135
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mShowingEnabledToast:Z

    .line 136
    iput-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    .line 137
    iput-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    .line 142
    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    .line 154
    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    .line 155
    iput v6, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    .line 156
    iput v6, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    .line 157
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    .line 158
    const-string/jumbo v2, ""

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    .line 159
    const-string/jumbo v2, "-1"

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mCurPropt:Ljava/lang/String;

    .line 160
    const-string/jumbo v2, "0_0"

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    .line 162
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mNetBoostFeature:Z

    .line 163
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    .line 167
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    .line 234
    new-instance v2, Lcom/android/server/OemSceneModeController$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$1;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 464
    new-instance v2, Lcom/android/server/OemSceneModeController$2;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$2;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mCallback:Ljava/lang/Runnable;

    .line 472
    new-instance v2, Lcom/android/server/OemSceneModeController$3;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$3;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    .line 1194
    new-instance v2, Lcom/android/server/OemSceneModeController$4;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$4;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1205
    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mNeedToReset:Z

    .line 169
    iput-object p1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    .line 170
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    .line 172
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "activity"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    .line 175
    new-array v2, v7, [I

    const/16 v3, 0x44

    aput v3, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    .line 178
    new-instance v2, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    .line 179
    new-instance v2, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    .line 180
    new-instance v2, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    .line 181
    new-instance v2, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    .line 184
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 185
    .local v1, "intentfilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 190
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 191
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 192
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 195
    sget-boolean v2, Lcom/android/server/OemSceneModeController;->HAS_HW_KEYS:Z

    if-eqz v2, :cond_2

    .line 196
    new-instance v2, Lcom/android/server/OemSceneButtonController;

    invoke-direct {v2, p1}, Lcom/android/server/OemSceneButtonController;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    .line 204
    :goto_0
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 206
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mNetBoostFeature:Z

    if-eqz v2, :cond_0

    .line 207
    new-instance v2, Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeNetWorkAccObserver:Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;

    .line 208
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneModeController;->URI_GAME_NETWORK_ACC:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeNetWorkAccObserver:Lcom/android/server/OemSceneModeController$GameModeNetWorkAccContentObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 209
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeNetWorkAcc()I

    move-result v2

    iput v2, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    .line 210
    iget v2, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    if-ne v2, v7, :cond_0

    .line 211
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->registerWlanReceiver()V

    .line 215
    :cond_0
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v2, :cond_1

    .line 216
    new-instance v2, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    .line 217
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    invoke-virtual {v2, v3, v5, v4, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 218
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    .line 220
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->initPowerSaverBlackList()V

    .line 221
    invoke-virtual {p0}, Lcom/android/server/OemSceneModeController;->initOnlineConfig()V

    .line 223
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 224
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "com.gamepowersaver.action.debug"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 225
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 227
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void

    .line 200
    :cond_2
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "oem_acc_key_lock_mode"

    .line 201
    sget-object v4, Lcom/android/server/OemSceneButtonController$KeyLockMode;->NORMAL:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v4}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v4

    .line 200
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method private clearHandler()V
    .locals 2

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 903
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 905
    :cond_0
    return-void
.end method

.method private dumpPkgInfos()V
    .locals 7

    .prologue
    .line 250
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    monitor-enter v4

    .line 251
    :try_start_0
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ge v3, v5, :cond_0

    .line 252
    const-string/jumbo v3, "OemSceneModeController"

    const-string/jumbo v5, "# dump # mPowerSaverBlackListApps = null, return"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 253
    return-void

    .line 255
    :cond_0
    const/4 v0, 0x0

    .line 256
    .local v0, "index":I
    :try_start_1
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

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

    .line 257
    .local v1, "pkg":Ljava/lang/String;
    add-int/lit8 v0, v0, 0x1

    .line 258
    const-string/jumbo v3, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "# dump # mPowerSaverBlackListApps "

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

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 250
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

    .line 261
    return-void
.end method

.method private executePowerSavePolicy(Ljava/lang/String;Z)V
    .locals 13
    .param p1, "save_Param"    # Ljava/lang/String;
    .param p2, "optimize"    # Z

    .prologue
    .line 754
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[gameMode PowerSavePolicy] executePowerSavePolicy optimize:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    :cond_0
    if-eqz p2, :cond_16

    .line 756
    if-eqz p1, :cond_1

    const-string/jumbo v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 757
    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    :cond_2
    return-void

    .line 761
    :cond_3
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    .line 762
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v2

    .line 763
    .local v2, "pid":I
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " |save_Param:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    :cond_4
    const/4 v0, -0x1

    if-eq v2, v0, :cond_5

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 765
    :cond_5
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_6

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, current pid process is not right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    .line 767
    :cond_7
    return-void

    .line 770
    :cond_8
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_9

    .line 771
    const-string/jumbo v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    .line 774
    :cond_9
    const-string/jumbo v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    .line 775
    .local v12, "tmp":[Ljava/lang/String;
    array-length v0, v12

    const/4 v1, 0x2

    if-eq v0, v1, :cond_b

    .line 776
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_a

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format A"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    :cond_a
    return-void

    .line 780
    :cond_b
    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_e

    .line 781
    :cond_c
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_d

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format B"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 782
    :cond_d
    return-void

    .line 785
    :cond_e
    const/4 v0, 0x0

    aget-object v0, v12, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 786
    .local v4, "scale":I
    const/4 v0, 0x1

    aget-object v0, v12, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 787
    .local v5, "fps":I
    if-eqz v4, :cond_f

    const/16 v0, 0x64

    if-le v4, v0, :cond_10

    :cond_f
    const/16 v4, 0x64

    .line 788
    :cond_10
    if-eqz v5, :cond_11

    const/16 v0, 0x3c

    if-le v5, v0, :cond_12

    :cond_11
    const/16 v5, 0x3c

    .line 790
    :cond_12
    const/16 v0, 0x50

    if-ne v4, v0, :cond_13

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->isGameModeScaleDebug()Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v4, 0xf

    .line 792
    :cond_13
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_14

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " |mCurProcessName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " |scale:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " |fps:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 793
    :cond_14
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    .line 794
    iput v2, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    .line 795
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    .line 805
    .end local v2    # "pid":I
    .end local v4    # "scale":I
    .end local v5    # "fps":I
    .end local v12    # "tmp":[Ljava/lang/String;
    :cond_15
    :goto_0
    return-void

    .line 798
    :cond_16
    iget v0, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_15

    const-string/jumbo v0, ""

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_15

    .line 799
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_17

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, mOldPid:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " |mOldProcessName:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " |scale:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v3, " |fps:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    :cond_17
    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget v8, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    iget-object v9, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    const/16 v10, 0x64

    const/16 v11, 0x3c

    move-object v6, p0

    invoke-direct/range {v6 .. v11}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    .line 801
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    .line 802
    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    goto :goto_0
.end method

.method private getFgApp(Landroid/app/ActivityManager;)I
    .locals 8
    .param p1, "mAm"    # Landroid/app/ActivityManager;

    .prologue
    .line 849
    const/4 v4, -0x1

    .line 850
    .local v4, "curPid":I
    const/4 v3, 0x0

    .line 851
    .local v3, "curApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    .line 852
    .local v2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "app$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 853
    .local v0, "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    .line 854
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v5, :cond_0

    .line 855
    iget v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 856
    move-object v3, v0

    .line 857
    .local v3, "curApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v4, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 858
    iget-object v5, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v5, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    .line 859
    sget-boolean v5, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v5, :cond_1

    const-string/jumbo v5, "OemSceneModeController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[gameMode PowerSavePolicy] executePowerSavePolicy, app.processName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " |pid: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    .end local v0    # "app":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "curApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_1
    return v4
.end method

.method private getGameModeAuto()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1010
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1011
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1010
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getGameModeAutoBrightnessBlocked()Z
    .locals 4

    .prologue
    .line 1040
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_close_automatic_brightness"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeButtonBlocked()Z
    .locals 4

    .prologue
    .line 1034
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeHeadUpBlocked()Z
    .locals 4

    .prologue
    .line 1029
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_block_notification"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeManual()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1015
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1016
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1015
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getGameModeNetWorkAcc()I
    .locals 4

    .prologue
    .line 995
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "game_mode_network_acceleration"

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private getGameModeStatus()Z
    .locals 4

    .prologue
    .line 1024
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getReadModeAuto()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1000
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1001
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1000
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getReadModeManual()Z
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 1005
    const-string/jumbo v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1006
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1005
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getReadModeStatus()Z
    .locals 4

    .prologue
    .line 1020
    const-string/jumbo v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getSaveParam()Ljava/lang/String;
    .locals 4

    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_battery_saver"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "saveParam":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 989
    :cond_0
    const-string/jumbo v0, "0_0"

    .line 991
    :cond_1
    return-object v0
.end method

.method private handleGameAutoChanged()V
    .locals 7

    .prologue
    .line 676
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v1

    .line 677
    .local v1, "game_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v2

    .line 678
    .local v2, "game_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 679
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 680
    .local v3, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setGameModeAuto(Z)V

    .line 683
    if-eqz v2, :cond_1

    .line 684
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 690
    :goto_0
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    if-eq v1, v4, :cond_2

    const/4 v0, 0x1

    .line 693
    .local v0, "auto_value_changed":Z
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 694
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 696
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v3, v4, :cond_3

    .line 698
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v4}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    .line 700
    if-eqz v0, :cond_0

    .line 701
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v4}, Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V

    .line 711
    :cond_0
    :goto_2
    return-void

    .line 686
    .end local v0    # "auto_value_changed":Z
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    goto :goto_0

    .line 690
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "auto_value_changed":Z
    goto :goto_1

    .line 704
    :cond_3
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v4, :cond_0

    .line 705
    sget-boolean v4, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v4, :cond_4

    const-string/jumbo v4, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[gameMode PowerSavePolicy] mOldPid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |mOldProcessName:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " |mNeedExecPowerSavePolicy:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_4
    iget v4, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const/4 v5, -0x1

    if-ne v4, v5, :cond_5

    const-string/jumbo v4, ""

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_5

    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    if-eqz v4, :cond_0

    .line 707
    :cond_5
    const/4 v4, 0x2

    invoke-direct {p0, v4}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    goto :goto_2
.end method

.method private handleGameBatterySaverChanged()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 641
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    .line 642
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode PowerSavePolicy] handleGameBatterySaverChanged, mSaveParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    :cond_0
    const-string/jumbo v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 644
    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    .line 648
    :cond_1
    :goto_0
    return-void

    .line 645
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_1

    .line 646
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    goto :goto_0
.end method

.method private handleGameManualChanged()V
    .locals 4

    .prologue
    .line 596
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    .line 597
    .local v0, "game_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    .line 598
    .local v1, "game_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 599
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 600
    .local v2, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setGameModeManual(Z)V

    .line 603
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 606
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    .line 607
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    .line 609
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v3, :cond_0

    .line 611
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    .line 612
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->notifyGameModeToast(Z)V

    .line 614
    :cond_0
    return-void
.end method

.method private handleGameModeNetBoost()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 714
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode netboost] handleGameModeNetBoost, mGameModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |isWifi(mContext):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->isWifi(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 716
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    .line 717
    const-string/jumbo v0, "2"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 722
    :cond_1
    :goto_0
    return-void

    .line 719
    :cond_2
    const-string/jumbo v0, "0"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0
.end method

.method private handleGameModePowerSavePolicy(I)V
    .locals 3
    .param p1, "code"    # I

    .prologue
    .line 725
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode PowerSavePolicy] handleGameModePowerSavePolicy code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mSaveParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/OemSceneModeController$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemSceneModeController$5;-><init>(Lcom/android/server/OemSceneModeController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    .line 748
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string/jumbo v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 749
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 751
    :cond_2
    return-void
.end method

.method private handleGameNetWorkAccChanged()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 651
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeNetWorkAcc()I

    move-result v0

    iput v0, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    .line 652
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode netboost] handleGameNetWorkAccChanged, isWifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->isWifi(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mOneTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    if-ne v0, v4, :cond_4

    .line 654
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->registerWlanReceiver()V

    .line 655
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 656
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    if-eqz v0, :cond_1

    .line 657
    const-string/jumbo v0, "1"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 658
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    .line 661
    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode netboost] mGameModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 662
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_3

    .line 663
    const-string/jumbo v0, "2"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 673
    :cond_3
    :goto_0
    return-void

    .line 666
    :cond_4
    iget v0, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    if-nez v0, :cond_3

    .line 667
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mCurPropt:Ljava/lang/String;

    const-string/jumbo v1, "0"

    if-eq v0, v1, :cond_5

    .line 668
    const-string/jumbo v0, "0"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto :goto_0

    .line 670
    :cond_5
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->clearHandler()V

    goto :goto_0
.end method

.method private handleReadAutoChanged()V
    .locals 4

    .prologue
    .line 572
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v1

    .line 573
    .local v1, "read_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v2

    .line 574
    .local v2, "read_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 575
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 576
    .local v0, "mode_old_value":Z
    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setReadModeAuto(Z)V

    .line 579
    if-eqz v2, :cond_1

    .line 580
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 586
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 587
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 589
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v0, v3, :cond_0

    .line 591
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    .line 593
    :cond_0
    return-void

    .line 582
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    goto :goto_0
.end method

.method private handleReadManualChanged()V
    .locals 4

    .prologue
    .line 552
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v1

    .line 553
    .local v1, "read_auto":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v2

    .line 554
    .local v2, "read_manual":Z
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 555
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 556
    .local v0, "mode_old_value":Z
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeManual(Z)V

    .line 559
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 562
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    .line 563
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    .line 565
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v0, v3, :cond_0

    .line 567
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    .line 569
    :cond_0
    return-void
.end method

.method private handleWifiStateDisable()V
    .locals 2

    .prologue
    .line 617
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mCurPropt:Ljava/lang/String;

    const-string/jumbo v1, "0"

    if-eq v0, v1, :cond_0

    .line 618
    const-string/jumbo v0, "0"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 622
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    .line 623
    return-void

    .line 620
    :cond_0
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->clearHandler()V

    goto :goto_0
.end method

.method private handleWifiStateEnable()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 626
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode netboost] handleWifiStateEnable, mWifiBoost:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " |mOneTime:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    if-ne v0, v4, :cond_3

    .line 628
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    if-eqz v0, :cond_1

    .line 629
    const-string/jumbo v0, "1"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 630
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mOneTime:Z

    .line 633
    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode netboost] mGameModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_3

    .line 635
    const-string/jumbo v0, "2"

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 638
    :cond_3
    return-void
.end method

.method private initPowerSaverBlackList()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.tmgp.speedmobile"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 231
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    const-string/jumbo v1, "com.tencent.tmgp.sgame"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 232
    return-void
.end method

.method private isGameModeEverEnabled()Z
    .locals 3

    .prologue
    .line 1180
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.oem.gamemode_dirty"

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGameModeScaleDebug()Z
    .locals 3

    .prologue
    .line 1184
    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.gamemodescale.debug"

    const-string/jumbo v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isWifi(Landroid/content/Context;)Z
    .locals 4
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 870
    const-string/jumbo v2, "connectivity"

    .line 869
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 871
    .local v1, "connectivityManager":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 872
    .local v0, "activeNetInfo":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_0

    .line 873
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 874
    return v3

    .line 876
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private makeAllUserToastAndShow(I)Landroid/widget/Toast;
    .locals 3
    .param p1, "strRes"    # I

    .prologue
    .line 1167
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 1168
    .local v0, "toast":Landroid/widget/Toast;
    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 1170
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1171
    return-object v0
.end method

.method private notifyGameMode(Z)V
    .locals 12
    .param p1, "enabled"    # Z

    .prologue
    const v11, 0x50b003c

    const/16 v10, 0x15be

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1091
    if-eqz p1, :cond_0

    .line 1092
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v4, Landroid/app/NotificationChannel;

    .line 1093
    const-string/jumbo v5, "scene_modes_game"

    .line 1094
    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1095
    const/4 v7, 0x2

    .line 1092
    invoke-direct {v4, v5, v6, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1097
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    .line 1098
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    .line 1097
    invoke-static {v3, v9, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1100
    .local v2, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v3, Landroid/app/Notification$Builder;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "scene_modes_game"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1101
    const v4, 0x5020002

    .line 1100
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1102
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1100
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 1103
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v5, 0x50b003d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1100
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1110
    .local v0, "mBuilder":Landroid/app/Notification$Builder;
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->createContentView()Landroid/widget/RemoteViews;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 1111
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1112
    .local v1, "notification":Landroid/app/Notification;
    iget-object v3, v1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    const v4, 0x1020404

    invoke-virtual {v3, v4, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 1113
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v4, "SceneModeController"

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v10, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1118
    .end local v0    # "mBuilder":Landroid/app/Notification$Builder;
    .end local v1    # "notification":Landroid/app/Notification;
    .end local v2    # "pendingIntent":Landroid/app/PendingIntent;
    :goto_0
    return-void

    .line 1116
    :cond_0
    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string/jumbo v4, "SceneModeController"

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v4, v10, v5}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_0
.end method

.method private notifyGameModeToast(Z)V
    .locals 6
    .param p1, "enabled"    # Z

    .prologue
    const-wide/16 v2, 0x7d0

    .line 1121
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsToastShowing:Z

    if-nez v0, :cond_0

    .line 1122
    iput-boolean p1, p0, Lcom/android/server/OemSceneModeController;->mShowingEnabledToast:Z

    .line 1123
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameModeToastImpl(Z)V

    .line 1124
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsToastShowing:Z

    .line 1125
    new-instance v0, Lcom/android/server/OemSceneModeController$6;

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/OemSceneModeController$6;-><init>(Lcom/android/server/OemSceneModeController;JJ)V

    invoke-virtual {v0}, Lcom/android/server/OemSceneModeController$6;->start()Landroid/os/CountDownTimer;

    .line 1139
    :cond_0
    return-void
.end method

.method private notifyGameModeToastImpl(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1142
    if-eqz p1, :cond_4

    .line 1144
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->isGameModeEverEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1145
    const v0, 0x50b003a

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    .line 1164
    :cond_0
    :goto_0
    return-void

    .line 1148
    :cond_1
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->setGameModeEverEnabled()V

    .line 1151
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeHeadUpBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeButtonBlocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1152
    const v0, 0x50b0039

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0

    .line 1153
    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeHeadUpBlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1154
    const v0, 0x50b0037

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0

    .line 1155
    :cond_3
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeButtonBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1156
    const v0, 0x50b0038

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0

    .line 1162
    :cond_4
    const v0, 0x50b003b

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->makeAllUserToastAndShow(I)Landroid/widget/Toast;

    goto :goto_0
.end method

.method private notifyReadMode(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 1176
    return-void
.end method

.method private registerWlanReceiver()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 428
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemSceneModeController"

    const-string/jumbo v2, "[gameMode netboost] registerWlanReceiver"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 430
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 431
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 432
    new-instance v1, Lcom/android/server/OemSceneModeController$WlanReceiver;

    invoke-direct {v1, p0, v3}, Lcom/android/server/OemSceneModeController$WlanReceiver;-><init>(Lcom/android/server/OemSceneModeController;Lcom/android/server/OemSceneModeController$WlanReceiver;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    .line 433
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mWlanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 435
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_1
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 11
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 277
    if-nez p1, :cond_0

    .line 278
    const-string/jumbo v7, "OemSceneModeController"

    const-string/jumbo v8, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void

    .line 283
    :cond_0
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_4

    .line 284
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 285
    .local v5, "json":Lorg/json/JSONObject;
    const-string/jumbo v7, "name"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "power_saver_blacklist"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 286
    iget-object v8, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    monitor-enter v8
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 287
    :try_start_1
    const-string/jumbo v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 288
    .local v4, "jArray":Lorg/json/JSONArray;
    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->clear()V

    .line 289
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 290
    invoke-virtual {v4, v2}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 291
    .local v6, "value":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 292
    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 289
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v6    # "value":Ljava/lang/String;
    :cond_2
    :try_start_2
    monitor-exit v8

    .line 283
    .end local v2    # "i":I
    .end local v4    # "jArray":Lorg/json/JSONArray;
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 286
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 298
    .end local v5    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    .line 299
    .local v1, "e":Lorg/json/JSONException;
    :try_start_3
    const-string/jumbo v7, "OemSceneModeController"

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

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 304
    const-string/jumbo v7, "OemSceneModeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolveConfigFromJSON mPowerSaverBlackListApps:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_2
    return-void

    .line 304
    :cond_4
    const-string/jumbo v7, "OemSceneModeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolveConfigFromJSON mPowerSaverBlackListApps:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 300
    :catch_1
    move-exception v0

    .line 301
    .local v0, "e":Ljava/lang/Exception;
    :try_start_4
    const-string/jumbo v7, "OemSceneModeController"

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

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 304
    const-string/jumbo v7, "OemSceneModeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "resolveConfigFromJSON mPowerSaverBlackListApps:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_1
    move-exception v7

    .line 304
    const-string/jumbo v8, "OemSceneModeController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "resolveConfigFromJSON mPowerSaverBlackListApps:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    throw v7
.end method

.method private sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V
    .locals 5
    .param p1, "flinger"    # Landroid/os/IBinder;
    .param p2, "pid"    # I
    .param p3, "processName"    # Ljava/lang/String;
    .param p4, "scale"    # I
    .param p5, "fps"    # I

    .prologue
    .line 808
    if-eqz p3, :cond_0

    const-string/jumbo v2, ""

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 809
    :cond_0
    const-string/jumbo v2, "OemSceneModeController"

    const-string/jumbo v3, "[gameMode PowerSavePolicy] processName is wrong"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 810
    return-void

    .line 813
    :cond_1
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverBlackListApps:Ljava/util/List;

    invoke-interface {v2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 814
    const-string/jumbo v2, "OemSceneModeController"

    const-string/jumbo v3, "[gameMode PowerSavePolicy] mPowerSaverBlackListApps contain this app, return"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 815
    return-void

    .line 817
    :cond_2
    const-string/jumbo v2, "OemSceneModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[gameMode PowerSavePolicy] processName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    if-eqz p1, :cond_4

    .line 820
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 822
    .local v0, "data":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 823
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 824
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 825
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 826
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 827
    const/16 v2, 0xfa5

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {p1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 836
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_3
    :goto_0
    return-void

    .line 828
    .restart local v0    # "data":Landroid/os/Parcel;
    :catch_0
    move-exception v1

    .line 829
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    .line 830
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    .line 831
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    throw v2

    .line 834
    .end local v0    # "data":Landroid/os/Parcel;
    :cond_4
    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "OemSceneModeController"

    const-string/jumbo v3, "[gameMode PowerSavePolicy] sendCmd, sf is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setGameModeAuto(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 1052
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_auto"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1053
    return-void

    .line 1052
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setGameModeEverEnabled()V
    .locals 2

    .prologue
    .line 1189
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] setGameModeEverEnabled was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    :cond_0
    const-string/jumbo v0, "persist.sys.oem.gamemode_dirty"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1191
    return-void
.end method

.method private setGameModeManual(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 1055
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status_manual"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1056
    return-void

    .line 1055
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setGameModeStatus(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 1060
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "game_mode_status"

    if-eqz p1, :cond_3

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1067
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 1069
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[gameMode] setGameModeStatus, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNetBoostFeature:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameModeNetBoost()V

    .line 1071
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    .line 1074
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->setupAutoBrightnessMode(Z)V

    .line 1075
    return p1

    .line 1060
    :cond_3
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setNetWorkBoostProp(Ljava/lang/String;Ljava/lang/Boolean;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "isDelay"    # Ljava/lang/Boolean;

    .prologue
    .line 880
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OemSceneModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[gameMode netboost] persist.sys.gamemode.wifiboost value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |isDelay:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |mWifiBoost:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " |mCurPropt:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurPropt:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 881
    :cond_0
    iget v1, p0, Lcom/android/server/OemSceneModeController;->mWifiBoost:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    return-void

    .line 882
    :cond_1
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mCurPropt:Ljava/lang/String;

    if-ne v1, p1, :cond_2

    return-void

    .line 884
    :cond_2
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 885
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mCallback:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 888
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 889
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mCallback:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 899
    :goto_0
    return-void

    .line 892
    :cond_4
    :try_start_0
    const-string/jumbo v1, "persist.sys.gamemode.wifiboost"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 893
    iput-object p1, p0, Lcom/android/server/OemSceneModeController;->mCurPropt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/Exception;
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_5

    const-string/jumbo v1, "OemSceneModeController"

    const-string/jumbo v2, "[gameMode netboost] failed to set system property"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setReadModeAuto(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 1046
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1047
    return-void

    .line 1046
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setReadModeManual(Z)V
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 1049
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1050
    return-void

    .line 1049
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setReadModeStatus(Z)Z
    .locals 4
    .param p1, "status"    # Z

    .prologue
    .line 1080
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status"

    if-eqz p1, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 1086
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 1087
    return p1

    .line 1080
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method private setupAutoBrightnessMode(Z)V
    .locals 5
    .param p1, "isGameMode"    # Z

    .prologue
    const/4 v0, 0x1

    const/4 v4, -0x2

    const/4 v1, 0x0

    .line 1207
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAutoBrightnessBlocked()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1208
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedToReset:Z

    .line 1209
    return-void

    .line 1212
    :cond_0
    if-eqz p1, :cond_3

    .line 1213
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1214
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1213
    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedToReset:Z

    .line 1215
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedToReset:Z

    if-eqz v0, :cond_1

    .line 1216
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1217
    const-string/jumbo v2, "screen_brightness_mode"

    .line 1216
    invoke-static {v0, v2, v1, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1226
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v0, v1

    .line 1214
    goto :goto_0

    .line 1220
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mNeedToReset:Z

    if-eqz v2, :cond_1

    .line 1221
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 1222
    const-string/jumbo v3, "screen_brightness_mode"

    .line 1221
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1223
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedToReset:Z

    goto :goto_1
.end method

.method private showStatusLog()V
    .locals 4

    .prologue
    .line 525
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-nez v1, :cond_0

    return-void

    .line 526
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] Read Manual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Game Manual: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 527
    .local v0, "s":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] Read Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Game Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 528
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] Read Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Game Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] Proactive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\t Passive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 530
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "[scene] -----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 531
    const-string/jumbo v1, "OemSceneModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[scene] values: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    return-void
.end method

.method private validateNetWorkACCValue(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 979
    if-eq v0, p1, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 983
    const-string/jumbo v0, "force-on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "force-off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public handleStartMonitor()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 909
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[scene] start monitoring, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 911
    :cond_0
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 912
    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 914
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_1

    .line 915
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->startMonitor()V

    .line 919
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 920
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 921
    return-void
.end method

.method public handleStartMonitorPassive()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 943
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] start monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 945
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 946
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_1

    .line 947
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->startMonitor()V

    .line 951
    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 952
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 953
    return-void
.end method

.method public handleStopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 925
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] stop monitoring"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 929
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 931
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 932
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 934
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_1

    .line 935
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->stopMonitor()V

    .line 937
    :cond_1
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    .line 938
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 939
    return-void
.end method

.method public handleStopMonitorPassive()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 957
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OemSceneModeController"

    const-string/jumbo v1, "[scene] stop monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 962
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    .line 963
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    .line 967
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 968
    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    .line 969
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    .line 972
    :cond_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_3

    .line 973
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController;->stopMonitorPassive()V

    .line 975
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 976
    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    .prologue
    .line 264
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/OemSceneModeController$GamePowerSaverConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/OemSceneModeController$GamePowerSaverConfigUpdater;-><init>(Lcom/android/server/OemSceneModeController;)V

    const-string/jumbo v4, "GamePowerSaver"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mGamePowerSaverConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 265
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mGamePowerSaverConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 266
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 267
    return-void
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 839
    const-string/jumbo v2, "[0-9]*"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 840
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 841
    .local v0, "isNum":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 842
    const/4 v2, 0x0

    return v2

    .line 844
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4
    .param p1, "modeType"    # I
    .param p2, "switcherType"    # I

    .prologue
    .line 535
    const/4 v1, 0x0

    .line 536
    .local v1, "result":Z
    if-nez p1, :cond_3

    .line 537
    const/4 v2, 0x1

    if-ne p2, v2, :cond_2

    .line 538
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    .line 539
    .local v0, "read_auto":Z
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    .line 546
    .end local v0    # "read_auto":Z
    .end local v1    # "result":Z
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    .line 547
    return v1

    .line 539
    .restart local v0    # "read_auto":Z
    .restart local v1    # "result":Z
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 541
    .end local v0    # "read_auto":Z
    :cond_2
    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemSceneModeController"

    const-string/jumbo v3, "[scene] Not yet supported"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 544
    :cond_3
    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OemSceneModeController"

    const-string/jumbo v3, "[scene] Not yet supported"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startMonitor()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 312
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 315
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 316
    return-void
.end method

.method public startMonitorPassive()V
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 326
    return-void
.end method

.method public stopMonitor()V
    .locals 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 321
    return-void
.end method

.method public stopMonitorPassive()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 331
    return-void
.end method
