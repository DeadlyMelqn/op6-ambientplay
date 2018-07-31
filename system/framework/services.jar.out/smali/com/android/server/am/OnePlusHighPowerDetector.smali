.class public Lcom/android/server/am/OnePlusHighPowerDetector;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusHighPowerDetector$1;,
        Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;,
        Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;,
        Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;,
        Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;,
        Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_FORCE_STOP_HIGH_PKG:Ljava/lang/String; = "com.oem.intent.action.force_stop_high_pkg"

.field private static final ACTION_FORCE_STOP_PKG:Ljava/lang/String; = "com.oem.intent.action.force_stop_pkg"

.field private static final ACTION_TEST:Ljava/lang/String; = "ohpd.action.test"

.field private static final AGGRESSIVE_POLICY:I = 0x1

.field private static AID_CAMERASERVER:I = 0x0

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field static APP_CONT_BUSY_TIME_THOLD:I = 0x0

.field static APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I = 0x0

.field static APP_LAST_FOREGROUND_TIME_THRESHOLD:I = 0x0

.field private static BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String; = null

.field static BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I = null

.field static BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I = null

.field static BG_DETECTION_NETWORK_USAGE_THRESHOLD:I = 0x0

.field public static final CAMERA_MONITOR_DELAY:J = 0x2710L

.field public static final CHECK_CUSTOMIZED_NOTIFICATION_MSG:I = 0xd6dd

.field public static final CHECK_EXCESSIVE_CPU_DEFAULT_MSG:I = 0xd6d8

.field public static final CHECK_EXCESSIVE_CPU_MODE1_MSG:I = 0xd6d9

.field public static final CHECK_EXCESSIVE_CPU_MODE2_MSG:I = 0xd6da

.field public static final CHECK_EXCESSIVE_CPU_MODE3_MSG:I = 0xd6de

.field public static final CHECK_IF_NOTIFICATION_EXISTED_MSG:I = 0xd6e5

.field public static final CLEANUP_PACKAGE_RECORD_MSG:I = 0xd6dc

.field static CPU_CHECK_DELAY:[I = null

.field static CPU_MIN_CHECK_DURATION:I = 0x0

.field public static DEBUG:Z = false

.field static DEBUG_BG_USAGE_QUICK:Z = false

.field static DEBUG_LIGHTIDLE:Z = false

.field private static final DEFAULT_POLICY:I = 0x0

.field private static DEVICE_TEMP_PATH:Ljava/lang/String; = null

.field public static ENABLE:Z = false

.field private static FORCE_HANDLE_SKIP_APP:Z = false

.field public static final FORCE_STOP_PKG_MSG:I = 0xd6e0

.field public static final GET_ONLINECONFIG:I = 0xd6e4

.field public static final GLOBAL_FLAG_SETTED_SIM_COUNTRY:I = 0x1

.field private static INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector; = null

.field public static final LIGHTIDLE_PROCESSKILL_MSG:I = 0xd6e2

.field public static final LIGHTIDLE_RXTX_DELAY:J = 0x7530L

.field public static final LIGHTIDLE_UPDATEPROC_RXTX_WHEN_SCREENOFF_MSG:I = 0xd6e3

.field public static final MDM_DATA_PROC_CPU_USAGE:Ljava/lang/String; = "cpu_usage"

.field public static final MDM_DATA_PROC_HANDLED:Ljava/lang/String; = "handled"

.field public static final MDM_DATA_PROC_NAME:Ljava/lang/String; = "proc"

.field public static final MDM_EVENT:Ljava/lang/String; = "camera_proc_busy"

.field public static final MDM_NATIVE_EVENT:Ljava/lang/String; = "native_proc_busy"

.field public static final MDM_NATIVE_SUBMIT_MSG:I = 0xd6e8

.field public static final MDM_SUBMIT_MSG:I = 0xd6e6

.field static final MILLIS_PER_DAY:J = 0x5265c00L

.field static final MILLIS_PER_HOUR:J = 0x36ee80L

.field static final MODE_MSGS:[I

.field public static final MONITOR_CAMERA_WHEN_SCREENOFF_MSG:I = 0xd6e7

.field private static MONITOR_RESET:I = 0x0

.field private static final NOTIFICATION_CANCEL_ACTION:Ljava/lang/String; = "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

.field static NOTIFY_INTERVAL:J = 0x0L

.field public static final NOTIFY_PD_MSG:I = 0xd6df

.field public static final NUM_CPU_MONITOR_LEVELS:I = 0x4

.field static ONLINE_CONFIG:Z = false

.field private static final PARALLEL_APP_USER_ID:I = 0x3e7

.field public static final POST_HIGH_NOTIFICATION_MSG:I = 0xd6e1

.field public static final POST_MEDIUM_NOTIFICATION_MSG:I = 0xd6db

.field static POWER_DRAIN_TEMP_THOLD:I = 0x0

.field static POWER_DRAIN_USG_THOLD:I = 0x0

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.ohpd.debug"

.field private static final PROP_DEBUG_BG_USAGE_QUICK:Ljava/lang/String; = "persist.sys.ohpd.debug.bg"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.ohpd.enable"

.field private static final PROP_FLAGS:Ljava/lang/String; = "persist.sys.ohpd.flags"

.field private static final PROP_FORCE_HANDLE_SKIP_APP:Ljava/lang/String; = "persist.sys.ohpd.skip.on"

.field private static final PROP_KILL_ON:Ljava/lang/String; = "persist.sys.ohpd.kcheck"

.field private static final PROP_LIGHTIDLE_DEBUG_ON:Ljava/lang/String; = "persist.sys.ohpd.idle_debug"

.field private static final PROP_NOTIFY_INTERVAL:Ljava/lang/String; = "persist.sys.ohpd.notify"

.field private static final PROP_ONLINE_CONFIG:Ljava/lang/String; = "persist.sys.ohpd.onlineconfig"

.field private static final PROP_POWER_DRAIN_SCREEN_OFF_LAST_FG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.off.lastfg"

.field private static final PROP_POWER_DRAIN_SCREEN_ON_LAST_FG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.on.lastfg"

.field private static final PROP_POWER_DRAIN_TEMP_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.temp.thold"

.field private static final PROP_POWER_DRAIN_USG_THOLD:Ljava/lang/String; = "persist.sys.ohpd.pd.usg.thold"

.field private static final PROP_RNK_USG_THOLD_MEDIUM:Ljava/lang/String; = "persist.sys.ohpd.rnk.med.usg"

.field private static final PROP_SIM_COUNTRY:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final PROP_THRESHOLD:Ljava/lang/String; = "persist.sys.ohpd.threshold"

.field private static final RECENT_TASK_LOCKED_LIST:Ljava/lang/String; = "com_oneplus_systemui_recent_task_lockd_list"

.field static RNK_ON:Z = false

.field static RNK_USG_THOLD_MEDIUM:I = 0x0

.field static SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I = 0x0

.field static SCREEN_ON_PD_LAST_FG_TIME_THOLD:I = 0x0

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final TAG:Ljava/lang/String; = "OHPD"

.field public static final VERSION:I = 0x103b975

.field private static mAms:Lcom/android/server/am/ActivityManagerService;

.field private static mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private static mCameraLock:Ljava/lang/Object;

.field private static mContext:Landroid/content/Context;

.field private static mEnableHandleSkipApps:Z

.field private static mEnableKillBusyCameraProc:Z

.field private static mEnableKillBusyGMSProcess:Z

.field private static mEnableMonitorCameraProc:Z

.field private static mGlobalFlags:I

.field private static mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

.field private static mIsBetaRom:Z

.field private static mIsPreciseDevTemp:Z

.field private static mIsScreenOn:Z

.field private static mKillMechanism:Z

.field private static mRegion:Ljava/lang/String;

.field static sBattUpdteLock:Ljava/lang/Object;

.field static sConfigLock:Ljava/lang/Object;


# instance fields
.field private BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

.field private blackAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private blackExAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gmsMonitorList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private killProcList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private level0KillList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mAppForkedProcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mBatteryDropCriteria:I

.field mBatteryLevelOfStart:I

.field mBgDetectStartMonitoring:Z

.field private mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

.field private mCameraProcName:Ljava/lang/String;

.field mCurNotifyHighPkgKey:Ljava/lang/String;

.field mCurNotifyHighPkgKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mCurNotifyPkgKey:Ljava/lang/String;

.field mCurNotifyPkgKeySet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEverLightIdleCameraCheck:Z

.field private mEverLightIdleCheck:Z

.field private mFakeTestEnabled:Z

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

.field mHighPowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHighPowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHugePowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mHugePowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mIsNativeMonitorStart:Z

.field mIsObserveAbn:Z

.field mIsPowerDrain:Z

.field mLastActiveAudioList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mLastBatteryDropTime:J

.field mLastBatteryPercent:I

.field mLastBgDetectCleanUpTime:J

.field private mLastCameraProcUsage:J

.field mLastCpuCheckUptime:[J

.field mLastDevTemp:I

.field private mLastGmsProcUsage:J

.field mMaxNativeMonitorCount:I

.field mMediumPowerPkgForDualMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field mMediumPowerPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation
.end field

.field private mMonitorStartTime:J

.field mNativeMonitorCount:I

.field mNativeMonitorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mNativeProcMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;",
            ">;"
        }
    .end annotation
.end field

.field mNativeUsageCriteria:I

.field mNotifyPkgMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field mPendingNativeRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mPendingRemoveList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

.field private mWidgetPkgSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mWorkingForkedPidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWorkingNativePidList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private whiteAppListSet:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()I
    .locals 1

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->MONITOR_RESET:I

    return v0
.end method

.method static synthetic -get1()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    return v0
.end method

.method static synthetic -get3()Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/am/OnePlusHighPowerDetector;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    return p1
.end method

.method static synthetic -set3(Z)Z
    .locals 0
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    return p0
.end method

.method static synthetic -set4(Lcom/android/server/am/OnePlusHighPowerDetector;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    return-wide p1
.end method

.method static synthetic -wrap0(Lcom/android/server/am/OnePlusHighPowerDetector;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;

    .prologue
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->responseSIMStateChanged()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;IILjava/lang/String;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;
    .param p1, "triggerPkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/am/OnePlusHighPowerDetector;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/am/OnePlusHighPowerDetector;
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->scheduleForceStopPkg(Ljava/lang/String;II)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v3, 0x14

    const/4 v2, 0x2

    const/16 v1, 0x3c

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 105
    sput-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    .line 106
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    .line 132
    const-string/jumbo v0, "persist.sys.ohpd.idle_debug"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    .line 134
    const-string/jumbo v0, "persist.sys.ohpd.debug.bg"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    .line 135
    const-string/jumbo v0, "persist.sys.ohpd.notify"

    const-wide/32 v4, 0x36ee80

    invoke-static {v0, v4, v5}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    .line 136
    const-string/jumbo v0, "persist.sys.ohpd.onlineconfig"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    .line 145
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 189
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    .line 192
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    .line 194
    const v0, 0x1b7740

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    .line 195
    const v0, 0x493e0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    .line 196
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_2

    move v0, v1

    :goto_2
    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    .line 197
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    .line 198
    sput-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    .line 202
    const/4 v0, 0x4

    new-array v4, v0, [I

    .line 203
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_4

    move v0, v1

    :goto_4
    mul-int/lit16 v0, v0, 0x3e8

    aput v0, v4, v6

    .line 204
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_5

    :goto_5
    mul-int/lit16 v0, v1, 0x3e8

    aput v0, v4, v7

    .line 205
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_6

    const/16 v0, 0x78

    :goto_6
    mul-int/lit16 v0, v0, 0x3e8

    aput v0, v4, v2

    .line 206
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_BG_USAGE_QUICK:Z

    if-eqz v0, :cond_7

    const/16 v0, 0x78

    :goto_7
    mul-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x3

    aput v0, v4, v1

    .line 202
    sput-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    .line 209
    const v0, 0xd6d8

    .line 210
    const v1, 0xd6d9

    .line 211
    const v4, 0xd6da

    .line 212
    const v5, 0xd6de

    .line 208
    filled-new-array {v0, v1, v4, v5}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    .line 216
    const/16 v0, 0x3e8

    const/16 v1, 0xf

    const/16 v4, 0x3e8

    filled-new-array {v0, v3, v1, v4}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    .line 217
    const/16 v0, 0xf

    const/16 v1, 0xa

    filled-new-array {v3, v0, v1, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    .line 218
    const/high16 v0, 0x1400000

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    .line 220
    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 222
    sput v2, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    .line 224
    const/16 v0, 0x2c

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 226
    const-string/jumbo v0, "/sys/class/thermal/thermal_zone27/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    .line 235
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z

    .line 237
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    .line 238
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    .line 264
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBetaRom:Z

    .line 274
    const/16 v0, 0x417

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->AID_CAMERASERVER:I

    .line 280
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    .line 282
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    .line 287
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    .line 290
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->MONITOR_RESET:I

    .line 300
    const-string/jumbo v0, ""

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    .line 301
    sput v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    .line 302
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 303
    sput-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    .line 304
    sput-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    .line 305
    sput-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    .line 308
    sput-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z

    .line 370
    const-string/jumbo v0, "BackgroundDetection"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    .line 103
    return-void

    .line 189
    :cond_0
    const/16 v0, 0xb4

    goto/16 :goto_0

    .line 192
    :cond_1
    const/16 v0, 0x12c

    goto/16 :goto_1

    .line 196
    :cond_2
    const/16 v0, 0x12c

    goto/16 :goto_2

    :cond_3
    move v0, v3

    .line 197
    goto/16 :goto_3

    .line 203
    :cond_4
    const/16 v0, 0x12c

    goto/16 :goto_4

    .line 204
    :cond_5
    const/16 v1, 0x12c

    goto/16 :goto_5

    .line 205
    :cond_6
    const/16 v0, 0x258

    goto/16 :goto_6

    .line 206
    :cond_7
    const/16 v0, 0x4b0

    goto/16 :goto_7
.end method

.method private constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V
    .locals 6
    .param p1, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;
    .param p4, "restartProcessManager"    # Lcom/android/server/am/RestartProcessManager;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    .line 240
    iput-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    .line 241
    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastDevTemp:I

    .line 251
    const/4 v2, 0x4

    new-array v2, v2, [J

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    .line 260
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    .line 261
    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    .line 262
    iput-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryDropTime:J

    .line 263
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    .line 270
    iput-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    .line 276
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    .line 278
    const-string/jumbo v2, "android.hardware.camera.provider@2.4-service"

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    .line 283
    iput-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    .line 284
    const/16 v2, 0x50

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    .line 285
    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 286
    iput-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    .line 289
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    .line 311
    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    .line 312
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    .line 313
    iput-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    .line 314
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    .line 316
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    .line 317
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    .line 318
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    .line 319
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    .line 323
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    .line 324
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    .line 325
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    .line 328
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    .line 336
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    .line 337
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    .line 338
    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    .line 341
    iput v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    .line 342
    const/4 v2, 0x6

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryDropCriteria:I

    .line 344
    const/16 v2, 0x3c

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I

    .line 346
    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMaxNativeMonitorCount:I

    .line 348
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    .line 350
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    .line 352
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    .line 354
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    .line 358
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    .line 361
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    .line 364
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    .line 367
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    .line 473
    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$1;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    .line 402
    const-string/jumbo v2, "persist.sys.ohpd.enable"

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    .line 403
    const-string/jumbo v2, "persist.sys.ohpd.debug"

    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    .line 404
    const-string/jumbo v2, "ro.build.beta"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBetaRom:Z

    .line 406
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->ENABLE:Z

    if-nez v0, :cond_1

    .line 407
    const-string/jumbo v0, "OHPD"

    const-string/jumbo v1, "disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    return-void

    :cond_0
    move v0, v1

    .line 404
    goto :goto_0

    .line 410
    :cond_1
    const-string/jumbo v0, "OnePlusHighPowerDetector--constructor"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 411
    sput-object p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    .line 412
    sput-object p2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 413
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    .line 414
    sput-object p3, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 415
    iput-object p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    .line 418
    new-instance v0, Lcom/android/server/SystemEventCollector;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "HighPowerDetector"

    invoke-direct {v0, v1, v2}, Lcom/android/server/SystemEventCollector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    .line 421
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "NYNCG4I0TI"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 422
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->init()V

    .line 423
    return-void
.end method

.method private checkExcessiveCpuUsageLocked(II)I
    .locals 101
    .param p1, "level"    # I
    .param p2, "minCheckDuration"    # I

    .prologue
    .line 1539
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "checkExcessiveCpuUsageLocked # level="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ", minCheckDuration="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1540
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v82

    .line 1543
    .local v82, "startTime":J
    const/16 v44, 0x1

    .line 1545
    .local v44, "doCpuKills":Z
    const/4 v10, 0x0

    .line 1546
    .local v10, "isBatteryDrain":Z
    const/16 v73, 0x0

    .line 1547
    .local v73, "needHandleSkipApps":Z
    const/16 v76, 0x0

    .line 1548
    .local v76, "numOfAbnormal":I
    new-instance v34, Ljava/util/ArrayList;

    invoke-direct/range {v34 .. v34}, Ljava/util/ArrayList;-><init>()V

    .line 1549
    .local v34, "blackExUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v80, Ljava/util/ArrayList;

    invoke-direct/range {v80 .. v80}, Ljava/util/ArrayList;-><init>()V

    .line 1550
    .local v80, "smallAdjUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/16 v68, 0x0

    .line 1551
    .local v68, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/16 v69, 0x0

    .line 1552
    .local v69, "mediumUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v77, Ljava/util/ArrayList;

    invoke-direct/range {v77 .. v77}, Ljava/util/ArrayList;-><init>()V

    .line 1556
    .local v77, "pendingSkipList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v86, Ljava/util/ArrayList;

    invoke-direct/range {v86 .. v86}, Ljava/util/ArrayList;-><init>()V

    .line 1560
    .local v86, "stopAppNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 1562
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v8

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1564
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    invoke-virtual {v4}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v84

    .line 1565
    .local v84, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v11, 0xe

    const/4 v12, 0x0

    aput v11, v4, v12

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 1566
    :cond_1
    const/16 v44, 0x0

    .line 1568
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 1569
    .local v6, "curUptime":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aget-wide v12, v4, p1

    sub-long v14, v6, v12

    .line 1571
    .local v14, "uptimeSince":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    .line 1572
    .local v42, "currentElapsedTime":J
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-nez v4, :cond_4

    .line 1573
    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    .line 1578
    :cond_3
    :goto_0
    move/from16 v0, p2

    int-to-long v12, v0

    cmp-long v4, v14, v12

    if-gez v4, :cond_5

    .line 1579
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]sample period is less than min check duration of level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1580
    const-string/jumbo v12, " : "

    .line 1579
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1580
    const-wide/16 v12, 0x3e8

    div-long v12, v14, v12

    .line 1579
    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 1580
    const-string/jumbo v12, " secs critical "

    .line 1579
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1581
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->MODE_MSGS:[I

    aget v71, v4, p1

    .line 1582
    .local v71, "msgId":I
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 1583
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move/from16 v0, v71

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v75

    .line 1584
    .local v75, "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move/from16 v0, p2

    int-to-long v12, v0

    sub-long/2addr v12, v14

    const-wide/16 v18, 0xbb8

    add-long v12, v12, v18

    move-object/from16 v0, v75

    invoke-virtual {v4, v0, v12, v13}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1585
    const/4 v4, -0x1

    monitor-exit v8

    .line 1562
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1585
    return v4

    .line 1574
    .end local v71    # "msgId":I
    .end local v75    # "nmsg":Landroid/os/Message;
    :cond_4
    :try_start_1
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J

    sub-long v12, v42, v12

    const-wide/32 v18, 0x5265c00

    cmp-long v4, v12, v18

    if-lez v4, :cond_3

    .line 1575
    move-wide/from16 v0, v42

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBgDetectCleanUpTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1562
    .end local v6    # "curUptime":J
    .end local v14    # "uptimeSince":J
    .end local v42    # "currentElapsedTime":J
    .end local v84    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :catchall_0
    move-exception v4

    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .restart local v6    # "curUptime":J
    .restart local v14    # "uptimeSince":J
    .restart local v42    # "currentElapsedTime":J
    .restart local v84    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    :cond_5
    monitor-exit v8

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1590
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getVisibleWindowUids()Ljava/util/List;

    move-result-object v99

    .line 1591
    .local v99, "visibleUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v33

    .line 1592
    .local v33, "avtiveAudioUids":[Ljava/lang/String;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v8, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v11, -0x2

    invoke-static {v4, v8, v11}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v67

    .line 1594
    .local v67, "lockedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v67

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v66

    .line 1595
    .local v66, "lockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v30, Ljava/util/ArrayList;

    invoke-direct/range {v30 .. v30}, Ljava/util/ArrayList;-><init>()V

    .line 1598
    .local v30, "alertWindowUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_6

    .line 1599
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v8, 0x22

    const/4 v11, 0x0

    aput v8, v4, v11

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    .line 1598
    if-eqz v4, :cond_6

    .line 1600
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v88

    .line 1601
    .local v88, "t1":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    const/4 v8, 0x1

    invoke-virtual {v4, v8}, Lcom/android/server/am/RestartProcessManager;->getLowUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v68

    .line 1602
    .local v68, "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    const/4 v8, 0x0

    invoke-virtual {v4, v8}, Lcom/android/server/am/RestartProcessManager;->getGeneralUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v69

    .line 1603
    .local v69, "mediumUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] get app rank in "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v88

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "ms"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1605
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mOpWms:Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/OnePlusWmUtil$OnePlusWindowManagerService;->getSysAlertWindowUidsForScreenOff()Ljava/util/List;

    move-result-object v30

    .line 1606
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v57

    .local v57, "i$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {v57 .. v57}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v56

    check-cast v56, Ljava/lang/Integer;

    .line 1607
    .local v56, "i":Ljava/lang/Integer;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] alertWindowUid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v56

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 1611
    .end local v56    # "i":Ljava/lang/Integer;
    .end local v57    # "i$iterator":Ljava/util/Iterator;
    .end local v68    # "lowUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v69    # "mediumUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v88    # "t1":J
    :cond_6
    if-nez p1, :cond_b

    .line 1612
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1613
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getDeviceTemp()I

    move-result v41

    .line 1615
    .local v41, "deviceTemp":I
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    if-eqz v4, :cond_7

    .line 1616
    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    move/from16 v0, v41

    if-lt v0, v4, :cond_7

    .line 1617
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastDevTemp:I

    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    if-lt v4, v11, :cond_7

    .line 1618
    const/16 v73, 0x1

    .line 1620
    :cond_7
    move/from16 v0, v41

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastDevTemp:I

    .line 1622
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    if-eqz v4, :cond_8

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z

    if-eqz v4, :cond_8

    .line 1623
    const/16 v73, 0x1

    .line 1627
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z

    if-nez v4, :cond_9

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    move/from16 v0, v41

    if-lt v0, v4, :cond_a

    .line 1628
    :cond_9
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect] Batt drain triggered , curr temp "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v41

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1629
    const/4 v10, 0x1

    :cond_a
    monitor-exit v8

    .line 1634
    .end local v41    # "deviceTemp":I
    :cond_b
    sget-object v100, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v100

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1635
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCpuCheckUptime:[J

    aput-wide v6, v4, p1

    .line 1637
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]chkExcessCpu level: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " doKills: "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v44

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1638
    const-string/jumbo v11, " critical "

    .line 1637
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1638
    const-string/jumbo v11, " uptime: "

    .line 1637
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1639
    new-instance v46, Landroid/util/ArrayMap;

    invoke-direct/range {v46 .. v46}, Landroid/util/ArrayMap;-><init>()V

    .line 1641
    .local v46, "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    new-instance v79, Landroid/util/ArrayMap;

    invoke-direct/range {v79 .. v79}, Landroid/util/ArrayMap;-><init>()V

    .line 1643
    .local v79, "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v78, Landroid/util/ArrayMap;

    invoke-direct/range {v78 .. v78}, Landroid/util/ArrayMap;-><init>()V

    .line 1645
    .local v78, "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    new-instance v93, Landroid/util/ArrayMap;

    invoke-direct/range {v93 .. v93}, Landroid/util/ArrayMap;-><init>()V

    .line 1647
    .local v93, "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v52, Landroid/util/ArrayMap;

    invoke-direct/range {v52 .. v52}, Landroid/util/ArrayMap;-><init>()V

    .line 1649
    .local v52, "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    new-instance v92, Landroid/util/ArrayMap;

    invoke-direct/range {v92 .. v92}, Landroid/util/ArrayMap;-><init>()V

    .line 1651
    .local v92, "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    new-instance v94, Landroid/util/ArrayMap;

    invoke-direct/range {v94 .. v94}, Landroid/util/ArrayMap;-><init>()V

    .line 1653
    .local v94, "uidLastFGTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    if-nez p1, :cond_c

    .line 1654
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 1655
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1656
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    monitor-exit v8

    .line 1659
    :cond_c
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_d

    .line 1660
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 1661
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :try_start_7
    monitor-exit v8

    .line 1665
    :cond_d
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_e

    .line 1666
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 1667
    :try_start_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 1668
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    :try_start_9
    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1673
    :cond_e
    :try_start_a
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v55

    .line 1674
    .local v55, "i":I
    :cond_f
    :goto_2
    if-lez v55, :cond_2e

    .line 1675
    add-int/lit8 v55, v55, -0x1

    .line 1676
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v55

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1679
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v4

    if-eqz v4, :cond_12

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_12

    .line 1680
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1679
    if-eqz v4, :cond_12

    .line 1681
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") sys pkg"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1682
    if-eqz v10, :cond_10

    .line 1683
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") sys pkg"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1685
    :cond_10
    if-nez p1, :cond_f

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v8, "com.google.android.gms"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    .line 1686
    if-eqz v44, :cond_11

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-lez v4, :cond_11

    .line 1687
    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v18, v4, p1

    sub-long v16, v12, v18

    .line 1688
    .local v16, "cputimeUsed":J
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long/2addr v12, v14

    move-object/from16 v0, p0

    iput-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    .line 1689
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_11

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] gms usage : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " cputimeUsed "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v16

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " curr "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " last "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v11, p1

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    .end local v16    # "cputimeUsed":J
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_2

    .line 2374
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v55    # "i":I
    :catch_0
    move-exception v48

    .line 2375
    .local v48, "e":Ljava/lang/Exception;
    :try_start_b
    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->printStackTrace()V

    .line 2376
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] got exception "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v48

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v48    # "e":Ljava/lang/Exception;
    :goto_3
    monitor-exit v100

    .line 1634
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2382
    if-eqz v86, :cond_9a

    :try_start_c
    invoke-virtual/range {v86 .. v86}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_9a

    .line 2383
    const-string/jumbo v72, ""

    .line 2384
    .local v72, "namesString":Ljava/lang/String;
    const/16 v55, 0x0

    .restart local v55    # "i":I
    :goto_4
    invoke-virtual/range {v86 .. v86}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v55

    if-ge v0, v4, :cond_99

    .line 2385
    if-nez v55, :cond_98

    .line 2386
    move-object/from16 v0, v86

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v72

    .end local v72    # "namesString":Ljava/lang/String;
    check-cast v72, Ljava/lang/String;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 2384
    .restart local v72    # "namesString":Ljava/lang/String;
    :goto_5
    add-int/lit8 v55, v55, 0x1

    goto :goto_4

    .line 1612
    .end local v46    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .end local v52    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v55    # "i":I
    .end local v72    # "namesString":Ljava/lang/String;
    .end local v78    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v79    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v92    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .end local v93    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v94    # "uidLastFGTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_1
    move-exception v4

    monitor-exit v8

    throw v4

    .line 1654
    .restart local v46    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .restart local v52    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v78    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v79    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v92    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .restart local v93    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v94    # "uidLastFGTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_2
    move-exception v4

    :try_start_d
    monitor-exit v8

    throw v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 1634
    .end local v46    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .end local v52    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v78    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v79    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local v92    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .end local v93    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v94    # "uidLastFGTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_3
    move-exception v4

    monitor-exit v100

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 1660
    .restart local v46    # "doForceStopMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/am/ProcessRecord;>;"
    .restart local v52    # "fgUidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v78    # "skipPDUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v79    # "skipUidMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local v92    # "uidAppInfoMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;>;"
    .restart local v93    # "uidCpuUsgeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v94    # "uidLastFGTimeMap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/Long;>;"
    :catchall_4
    move-exception v4

    :try_start_e
    monitor-exit v8

    throw v4

    .line 1666
    :catchall_5
    move-exception v4

    monitor-exit v8

    throw v4
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 1698
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v55    # "i":I
    :cond_12
    if-nez v44, :cond_13

    .line 1699
    :try_start_f
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    goto/16 :goto_2

    .line 1704
    :cond_13
    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-lez v4, :cond_14

    .line 1705
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    move-object/from16 v0, v94

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1708
    :cond_14
    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v18, v4, p1

    sub-long v16, v12, v18

    .line 1711
    .restart local v16    # "cputimeUsed":J
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_15

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->isSmallAdjState(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1712
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v80

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1716
    :cond_15
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-gtz v4, :cond_19

    .line 1717
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    .line 1720
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1721
    .local v9, "result":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_16

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getPDLastFGTimeThold()I

    move-result v11

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 1722
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1724
    :cond_16
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1725
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1726
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1727
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v96, v12, v14

    .line 1729
    .local v96, "usage":J
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 1730
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 1731
    .local v40, "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 1732
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1738
    .end local v40    # "currVal":Ljava/lang/Integer;
    .end local v96    # "usage":J
    :cond_17
    :goto_6
    if-nez p1, :cond_f

    .line 1739
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    goto/16 :goto_2

    .line 1734
    .restart local v96    # "usage":J
    :cond_18
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 1745
    .end local v9    # "result":Ljava/lang/StringBuffer;
    .end local v96    # "usage":J
    :cond_19
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v8, "com.google.android.gms.persistent"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1a

    .line 1746
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v8, "add gms-persistent to sys pkg"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1747
    if-eqz v10, :cond_1a

    .line 1748
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    const-string/jumbo v8, "add gms-persistent to sys pkg"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1751
    :cond_1a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 1752
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v34

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1755
    :cond_1b
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v96, v12, v14

    .line 1756
    .restart local v96    # "usage":J
    const-wide/16 v12, 0xa

    cmp-long v4, v96, v12

    if-lez v4, :cond_1c

    .line 1757
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "(pid : "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ") level "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " usage "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v96

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " bgtime: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v8, p1

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 1759
    :cond_1c
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v4

    if-nez v4, :cond_1d

    .line 1760
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 1759
    if-nez v4, :cond_1d

    .line 1761
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 1759
    if-nez v4, :cond_1d

    .line 1762
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    .line 1759
    if-eqz v4, :cond_2a

    .line 1765
    :cond_1d
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1766
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    if-eqz v10, :cond_1e

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getPDLastFGTimeThold()I

    move-result v11

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 1767
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1770
    :cond_1e
    new-instance v9, Ljava/lang/StringBuffer;

    .end local v9    # "result":Ljava/lang/StringBuffer;
    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 1771
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    sget v11, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    move-object/from16 v4, p0

    move/from16 v8, p1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1772
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    .line 1773
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1774
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-ltz v4, :cond_20

    .line 1775
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip proc "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    if-nez p1, :cond_1f

    .line 1778
    move-object/from16 v0, v77

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1782
    :cond_1f
    if-nez p1, :cond_20

    iget-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-nez v4, :cond_20

    .line 1783
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 1784
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] set lastSkipTime for "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ")"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1788
    :cond_20
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1789
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 1790
    .restart local v40    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 1791
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1793
    .end local v40    # "currVal":Ljava/lang/Integer;
    :cond_21
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 1799
    :cond_22
    if-nez p1, :cond_23

    .line 1800
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    .line 1802
    :cond_23
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-ltz v4, :cond_28

    .line 1803
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-gez v4, :cond_28

    .line 1804
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_24

    .line 1805
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "catch level="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1806
    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v11, v11, p1

    .line 1805
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1807
    const-string/jumbo v11, "<="

    .line 1805
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v96

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1807
    const-string/jumbo v11, "<"

    .line 1805
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1808
    sget-object v11, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v11, v11, p1

    .line 1805
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1809
    :cond_24
    if-nez p1, :cond_25

    .line 1810
    monitor-enter v84
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 1811
    :try_start_10
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v11, v84

    invoke-virtual/range {v11 .. v17}, Lcom/android/internal/os/BatteryStatsImpl;->reportExcessiveCpuLocked(ILjava/lang/String;JJ)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :try_start_11
    monitor-exit v84

    .line 1816
    :cond_25
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_26

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_26

    .line 1817
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1816
    if-eqz v4, :cond_26

    .line 1818
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]detect excessive cpu on process "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1819
    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1818
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1819
    const-string/jumbo v11, "(pid : "

    .line 1818
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1819
    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 1818
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1819
    const-string/jumbo v11, ") level "

    .line 1818
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1819
    const-string/jumbo v11, " usage "

    .line 1818
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide/from16 v0, v96

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1820
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v46

    invoke-virtual {v0, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1822
    :cond_26
    if-nez p1, :cond_27

    if-eqz v5, :cond_27

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v4, :cond_27

    .line 1823
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->baseProcessTracker:Lcom/android/internal/app/procstats/ProcessState;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->pkgList:Landroid/util/ArrayMap;

    invoke-virtual {v4, v8}, Lcom/android/internal/app/procstats/ProcessState;->reportExcessiveCpu(Landroid/util/ArrayMap;)V

    .line 1864
    .end local v9    # "result":Ljava/lang/StringBuffer;
    :cond_27
    :goto_7
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V

    goto/16 :goto_2

    .line 1810
    .restart local v9    # "result":Ljava/lang/StringBuffer;
    :catchall_6
    move-exception v4

    monitor-exit v84

    throw v4

    .line 1827
    :cond_28
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_29

    .line 1828
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 1829
    .restart local v40    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 1830
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1834
    .end local v40    # "currVal":Ljava/lang/Integer;
    :goto_8
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v12, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v8, v11, v12, v13}, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v92

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1835
    const-wide/16 v12, 0x0

    cmp-long v4, v96, v12

    if-lez v4, :cond_27

    .line 1836
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect]accumulate usage "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v96

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " from procName "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " to uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 1832
    :cond_29
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v93

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8

    .line 1840
    .end local v9    # "result":Ljava/lang/StringBuffer;
    :cond_2a
    if-nez p1, :cond_2b

    .line 1841
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-ltz v4, :cond_2b

    .line 1842
    move-object/from16 v0, v77

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1846
    :cond_2b
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") stat "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1847
    if-eqz v10, :cond_2c

    .line 1848
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "(pid : "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") stat "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1851
    :cond_2c
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2d

    .line 1852
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 1853
    .restart local v40    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    add-int/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 1854
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1860
    .end local v40    # "currVal":Ljava/lang/Integer;
    :goto_9
    if-nez p1, :cond_27

    .line 1861
    const-wide/16 v12, 0x0

    iput-wide v12, v5, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    goto/16 :goto_7

    .line 1856
    :cond_2d
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v96

    long-to-int v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v52

    invoke-virtual {v0, v4, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 1867
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "cputimeUsed":J
    .end local v96    # "usage":J
    :cond_2e
    if-eqz v44, :cond_95

    .line 1870
    invoke-interface/range {v99 .. v99}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_30

    .line 1871
    invoke-interface/range {v99 .. v99}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v91

    .local v91, "uid$iterator":Ljava/util/Iterator;
    :cond_2f
    :goto_a
    invoke-interface/range {v91 .. v91}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_30

    invoke-interface/range {v91 .. v91}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 1872
    .local v87, "uid":Ljava/lang/Integer;
    move-object/from16 v0, v34

    move-object/from16 v1, v87

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2f

    .line 1873
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "has visible window"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1874
    if-eqz v10, :cond_2f

    .line 1875
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "has visible window"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_a

    .line 1881
    .end local v87    # "uid":Ljava/lang/Integer;
    .end local v91    # "uid$iterator":Ljava/util/Iterator;
    :cond_30
    if-nez p1, :cond_33

    .line 1882
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v91

    .restart local v91    # "uid$iterator":Ljava/util/Iterator;
    :cond_31
    :goto_b
    invoke-interface/range {v91 .. v91}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface/range {v91 .. v91}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 1883
    .restart local v87    # "uid":Ljava/lang/Integer;
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "audio active in last sample"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1884
    if-eqz v10, :cond_31

    .line 1885
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v8, "audio active in last sample"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    invoke-virtual {v0, v1, v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    goto :goto_b

    .line 1887
    .end local v87    # "uid":Ljava/lang/Integer;
    :cond_32
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1890
    .end local v91    # "uid$iterator":Ljava/util/Iterator;
    :cond_33
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1892
    .local v32, "audioActiveUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v33, :cond_39

    .line 1893
    const/4 v4, 0x0

    move-object/from16 v0, v33

    array-length v8, v0

    :goto_c
    if-ge v4, v8, :cond_39

    aget-object v90, v33, v4

    .line 1894
    .local v90, "uid":Ljava/lang/String;
    if-eqz v90, :cond_34

    invoke-virtual/range {v90 .. v90}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_35

    .line 1893
    :cond_34
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    .line 1897
    :cond_35
    invoke-static/range {v90 .. v90}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v29

    .line 1898
    .local v29, "activeUid":I
    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v32

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1899
    move-object/from16 v0, v34

    move-object/from16 v1, v90

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_37

    .line 1900
    const-string/jumbo v11, "audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1901
    if-eqz v10, :cond_36

    .line 1902
    const-string/jumbo v11, "audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1904
    :cond_36
    if-nez p1, :cond_34

    .line 1905
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1908
    :cond_37
    move-object/from16 v0, v99

    move-object/from16 v1, v90

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_34

    .line 1909
    const-string/jumbo v11, "has visible window & audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v79

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1910
    if-eqz v10, :cond_38

    .line 1911
    const-string/jumbo v11, "has visible window & audio active"

    move-object/from16 v0, p0

    move-object/from16 v1, v78

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2, v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V

    .line 1913
    :cond_38
    if-nez p1, :cond_34

    .line 1914
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastActiveAudioList:Ljava/util/List;

    invoke-static/range {v29 .. v29}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1921
    .end local v29    # "activeUid":I
    .end local v90    # "uid":Ljava/lang/String;
    :cond_39
    if-nez p1, :cond_3b

    invoke-interface/range {v77 .. v77}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3b

    if-eqz v73, :cond_3b

    .line 1922
    const/4 v4, 0x0

    move-object/from16 v0, v77

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1923
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v5, :cond_3b

    .line 1925
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v99

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 1926
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v32

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1925
    if-eqz v4, :cond_3b

    .line 1927
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->isImportantProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 1925
    if-eqz v4, :cond_3b

    .line 1929
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    if-eqz v4, :cond_47

    .line 1931
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v94

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v65

    check-cast v65, Ljava/lang/Long;

    .line 1932
    .local v65, "lastFGTime":Ljava/lang/Long;
    if-eqz v65, :cond_3a

    if-eqz v65, :cond_3b

    invoke-virtual/range {v65 .. v65}, Ljava/lang/Long;->longValue()J

    move-result-wide v12

    sub-long v12, v6, v12

    sget v4, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    int-to-long v0, v4

    move-wide/from16 v18, v0

    cmp-long v4, v12, v18

    if-ltz v4, :cond_3b

    .line 1933
    :cond_3a
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_45

    const/16 v60, 0x1

    .line 1934
    .local v60, "isParallelApp":Z
    :goto_e
    if-eqz v60, :cond_46

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_f
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1935
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v20, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const-string/jumbo v22, "skip lru_huge"

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    .line 1953
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "isParallelApp":Z
    .end local v65    # "lastFGTime":Ljava/lang/Long;
    :cond_3b
    :goto_10
    if-nez p1, :cond_4e

    .line 1955
    const/16 v47, 0x0

    .line 1957
    .local v47, "doKill":Z
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    if-eqz v4, :cond_3f

    .line 1958
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    .line 1960
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_3c

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] mNativeMonitorCount="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1961
    :cond_3c
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMaxNativeMonitorCount:I

    if-ne v4, v8, :cond_3f

    .line 1962
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    .line 1963
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    .line 1964
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_3d

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] mLastBatteryPercent="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ", mBatteryLevelOfStart="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1966
    :cond_3d
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryLevelOfStart:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastBatteryPercent:I

    sub-int/2addr v4, v8

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBatteryDropCriteria:I

    if-le v4, v8, :cond_3e

    .line 1967
    const/16 v47, 0x1

    .line 1969
    :cond_3e
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] stop native process monitoring, start to judge, doKill="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, v47

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1976
    :cond_3f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 1977
    :try_start_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_4d

    .line 1978
    const/16 v59, 0x0

    .line 1979
    .local v59, "isExceed":Z
    const/16 v28, 0x0

    .line 1980
    .local v28, "InProclist":Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v63

    .line 1981
    .local v63, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    :goto_11
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    .line 1982
    const/16 v59, 0x0

    .line 1983
    const/16 v28, 0x0

    .line 1984
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Ljava/util/Map$Entry;

    .line 1986
    .local v50, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    invoke-interface/range {v50 .. v50}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1987
    .local v53, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const/4 v11, 0x1

    if-ne v4, v11, :cond_40

    .line 1989
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->resetAbn()V

    .line 1991
    :cond_40
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-lez v4, :cond_44

    .line 1992
    move-object/from16 v0, v53

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v18, v4, p1

    sub-long v16, v12, v18

    .line 1993
    .restart local v16    # "cputimeUsed":J
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v96, v12, v14

    .line 1996
    .restart local v96    # "usage":J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    move-object/from16 v0, v53

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4b

    .line 1998
    const/16 v28, 0x1

    .line 1999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    move-object/from16 v0, v53

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-ltz v4, :cond_41

    .line 2000
    const/16 v59, 0x1

    .line 2007
    :cond_41
    :goto_12
    if-eqz v59, :cond_42

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const/4 v11, 0x2

    if-gt v4, v11, :cond_42

    .line 2008
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    .line 2009
    invoke-virtual/range {v53 .. v53}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->setAbn()V

    .line 2011
    :cond_42
    if-eqz v59, :cond_44

    .line 2012
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]detect excessive cpu on native process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    move-object/from16 v0, v53

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    const-string/jumbo v12, "(pid : "

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    move-object/from16 v0, v53

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    const-string/jumbo v12, ") level "

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    const-string/jumbo v12, " usage "

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v96

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    const-string/jumbo v12, " monitor="

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    move-object/from16 v0, p0

    iget-boolean v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    const-string/jumbo v12, " round="

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2013
    const-string/jumbo v12, " doKill="

    .line 2012
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, v47

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2015
    if-eqz v47, :cond_44

    invoke-virtual/range {v53 .. v53}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->isAbn()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 2016
    const/16 v64, 0x0

    .line 2017
    .local v64, "killed":Z
    if-eqz v28, :cond_43

    .line 2020
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect] kill native process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v53

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "(pid : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v53

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ")"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v4}, Landroid/os/Process;->killProcess(I)V

    .line 2023
    invoke-interface/range {v63 .. v63}, Ljava/util/Iterator;->remove()V

    .line 2024
    const/16 v64, 0x1

    .line 2030
    :cond_43
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v11, 0xd6e8

    invoke-virtual {v4, v11}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v70

    .line 2031
    .local v70, "msg":Landroid/os/Message;
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    move-object/from16 v0, v70

    iput-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2032
    move-wide/from16 v0, v96

    long-to-int v4, v0

    move-object/from16 v0, v70

    iput v4, v0, Landroid/os/Message;->arg1:I

    .line 2033
    if-eqz v64, :cond_4c

    const/4 v4, 0x1

    :goto_13
    move-object/from16 v0, v70

    iput v4, v0, Landroid/os/Message;->arg2:I

    .line 2034
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    move-object/from16 v0, v70

    invoke-virtual {v4, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 2038
    .end local v16    # "cputimeUsed":J
    .end local v64    # "killed":Z
    .end local v70    # "msg":Landroid/os/Message;
    .end local v96    # "usage":J
    :cond_44
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v53

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_7

    goto/16 :goto_11

    .line 1976
    .end local v28    # "InProclist":Z
    .end local v50    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .end local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v59    # "isExceed":Z
    .end local v63    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    :catchall_7
    move-exception v4

    :try_start_13
    monitor-exit v8

    throw v4

    .line 1933
    .end local v47    # "doKill":Z
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v65    # "lastFGTime":Ljava/lang/Long;
    :cond_45
    const/16 v60, 0x0

    .restart local v60    # "isParallelApp":Z
    goto/16 :goto_e

    .line 1934
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto/16 :goto_f

    .line 1939
    .end local v60    # "isParallelApp":Z
    .end local v65    # "lastFGTime":Ljava/lang/Long;
    :cond_47
    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkKillSkipApp(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_48

    .line 1940
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 1941
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[BgDetect][Skip] kill "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " due to abnormally busy, proc state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, v5, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1940
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto/16 :goto_10

    .line 1943
    :cond_48
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_49

    const/16 v60, 0x1

    .line 1944
    .restart local v60    # "isParallelApp":Z
    :goto_14
    if-eqz v60, :cond_4a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_15
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 1945
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v20, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v21

    const-string/jumbo v22, "skip lru_huge"

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_10

    .line 1943
    .end local v60    # "isParallelApp":Z
    :cond_49
    const/16 v60, 0x0

    .restart local v60    # "isParallelApp":Z
    goto :goto_14

    .line 1944
    :cond_4a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    goto :goto_15

    .line 2003
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v60    # "isParallelApp":Z
    .restart local v16    # "cputimeUsed":J
    .restart local v28    # "InProclist":Z
    .restart local v47    # "doKill":Z
    .restart local v50    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .restart local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .restart local v59    # "isExceed":Z
    .restart local v63    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    .restart local v96    # "usage":J
    :cond_4b
    :try_start_14
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_7

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-ltz v4, :cond_41

    .line 2004
    const/16 v59, 0x1

    goto/16 :goto_12

    .line 2033
    .restart local v64    # "killed":Z
    .restart local v70    # "msg":Landroid/os/Message;
    :cond_4c
    const/4 v4, 0x0

    goto/16 :goto_13

    .end local v16    # "cputimeUsed":J
    .end local v28    # "InProclist":Z
    .end local v50    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .end local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v59    # "isExceed":Z
    .end local v63    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    .end local v64    # "killed":Z
    .end local v70    # "msg":Landroid/os/Message;
    .end local v96    # "usage":J
    :cond_4d
    :try_start_15
    monitor-exit v8

    .line 2043
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    const/4 v8, 0x2

    if-ne v4, v8, :cond_4e

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsObserveAbn:Z

    if-nez v4, :cond_4e

    .line 2044
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsNativeMonitorStart:Z

    .line 2045
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorCount:I

    .line 2046
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v8, "[BgDetect] stop native process monitoring due to no abnormal so far"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    .end local v47    # "doKill":Z
    :cond_4e
    new-instance v45, Landroid/util/SparseArray;

    invoke-direct/range {v45 .. v45}, Landroid/util/SparseArray;-><init>()V

    .line 2052
    .local v45, "doForceStopForkedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_57

    .line 2053
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 2054
    :try_start_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .local v54, "fproc$iterator":Ljava/util/Iterator;
    :cond_4f
    :goto_16
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_56

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2055
    .restart local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->flags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v61

    .line 2057
    .local v61, "isSystemPkg":Z
    if-nez v61, :cond_4f

    .line 2060
    move-object/from16 v0, v53

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v18, v4, p1

    sub-long v16, v12, v18

    .line 2061
    .restart local v16    # "cputimeUsed":J
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_50

    .line 2062
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    const-string/jumbo v11, "dex2oat"

    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2061
    if-nez v4, :cond_50

    .line 2063
    move-object/from16 v0, p0

    move-object/from16 v1, v53

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z

    move-result v4

    .line 2061
    if-eqz v4, :cond_51

    .line 2064
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip fproc "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 2065
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v53

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1

    .line 2068
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4f

    .line 2069
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v96, v12, v14

    .line 2070
    .restart local v96    # "usage":J
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 2071
    .restart local v40    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v96

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 2072
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_8

    goto/16 :goto_16

    .line 2053
    .end local v16    # "cputimeUsed":J
    .end local v40    # "currVal":Ljava/lang/Integer;
    .end local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v54    # "fproc$iterator":Ljava/util/Iterator;
    .end local v61    # "isSystemPkg":Z
    .end local v96    # "usage":J
    :catchall_8
    move-exception v4

    :try_start_17
    monitor-exit v8

    throw v4
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 2076
    .restart local v16    # "cputimeUsed":J
    .restart local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .restart local v54    # "fproc$iterator":Ljava/util/Iterator;
    .restart local v61    # "isSystemPkg":Z
    :cond_51
    :try_start_18
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v4, p1

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-lez v4, :cond_53

    .line 2077
    const-wide/16 v12, 0x64

    mul-long v12, v12, v16

    div-long v96, v12, v14

    .line 2078
    .restart local v96    # "usage":J
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-ltz v4, :cond_54

    .line 2079
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v4, v4, p1

    int-to-long v12, v4

    cmp-long v4, v96, v12

    if-gez v4, :cond_54

    .line 2080
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    const/4 v11, 0x0

    move-object/from16 v0, v45

    invoke-virtual {v0, v4, v11}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_52

    .line 2081
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]detect excessive cpu on forked process "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2082
    move-object/from16 v0, v53

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    .line 2081
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2082
    const-string/jumbo v12, "(pid : "

    .line 2081
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2082
    move-object/from16 v0, v53

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 2081
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2082
    const-string/jumbo v12, ") level "

    .line 2081
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2082
    const-string/jumbo v12, " usage "

    .line 2081
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v96

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2083
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move-object/from16 v0, v45

    move-object/from16 v1, v53

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 2102
    :cond_52
    :goto_17
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    .line 2103
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 2104
    .restart local v40    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v96

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 2105
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v52

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2108
    .end local v40    # "currVal":Ljava/lang/Integer;
    .end local v96    # "usage":J
    :cond_53
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v53

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1

    goto/16 :goto_16

    .line 2086
    .restart local v96    # "usage":J
    :cond_54
    const-string/jumbo v4, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect]forked proc "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v53

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2087
    const-string/jumbo v12, "(pid : "

    .line 2086
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2087
    move-object/from16 v0, v53

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 2086
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2087
    const-string/jumbo v12, " uid: "

    .line 2086
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2087
    move-object/from16 v0, v53

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 2086
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2087
    const-string/jumbo v12, ") "

    .line 2086
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-wide/from16 v0, v16

    invoke-virtual {v11, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 2087
    const-string/jumbo v12, " during "

    .line 2086
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v4, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2089
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_55

    .line 2090
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v40

    check-cast v40, Ljava/lang/Integer;

    .line 2091
    .restart local v40    # "currVal":Ljava/lang/Integer;
    invoke-virtual/range {v40 .. v40}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-wide/from16 v0, v96

    long-to-int v11, v0

    add-int/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    .line 2092
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    move-object/from16 v1, v40

    invoke-virtual {v0, v4, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2096
    .end local v40    # "currVal":Ljava/lang/Integer;
    :goto_18
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-instance v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    move-object/from16 v0, v53

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move-object/from16 v0, v53

    iget v13, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v12, v13, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;-><init>(IILjava/lang/String;)V

    move-object/from16 v0, v92

    invoke-virtual {v0, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2097
    const-wide/16 v12, 0x0

    cmp-long v4, v96, v12

    if-lez v4, :cond_52

    .line 2098
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]accumulate usage "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v96

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, " from procName "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, " to uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v53

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_17

    .line 2094
    :cond_55
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-wide/from16 v0, v96

    long-to-int v11, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object/from16 v0, v93

    invoke-virtual {v0, v4, v11}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_8

    goto :goto_18

    .end local v16    # "cputimeUsed":J
    .end local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v61    # "isSystemPkg":Z
    .end local v96    # "usage":J
    :cond_56
    :try_start_19
    monitor-exit v8

    .line 2113
    .end local v54    # "fproc$iterator":Ljava/util/Iterator;
    :cond_57
    invoke-virtual/range {v46 .. v46}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-lez v4, :cond_6b

    .line 2114
    invoke-virtual/range {v46 .. v46}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v31

    .local v31, "app$iterator":Ljava/util/Iterator;
    :cond_58
    :goto_19
    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6b

    invoke-interface/range {v31 .. v31}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 2115
    .restart local v5    # "app":Lcom/android/server/am/ProcessRecord;
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_60

    .line 2117
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    if-eqz v4, :cond_5f

    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_5f

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_5f

    .line 2118
    const/16 v35, 0x0

    .line 2119
    .local v35, "boundByFG":Z
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    if-eqz v4, :cond_5d

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-lez v4, :cond_5d

    .line 2120
    const/16 v81, 0x0

    .line 2121
    .local v81, "sr":Lcom/android/server/am/ServiceRecord;
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->services:Landroid/util/ArraySet;

    invoke-virtual {v4}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v62

    .end local v81    # "sr":Lcom/android/server/am/ServiceRecord;
    .local v62, "it":Ljava/util/Iterator;
    :cond_59
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->hasNext()Z
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    move-result v4

    if-eqz v4, :cond_5d

    .line 2122
    const/16 v81, 0x0

    .line 2124
    .restart local v81    # "sr":Lcom/android/server/am/ServiceRecord;
    :try_start_1a
    invoke-interface/range {v62 .. v62}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v81

    .end local v81    # "sr":Lcom/android/server/am/ServiceRecord;
    check-cast v81, Lcom/android/server/am/ServiceRecord;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_1
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 2128
    .local v81, "sr":Lcom/android/server/am/ServiceRecord;
    if-eqz v81, :cond_59

    :try_start_1b
    move-object/from16 v0, v81

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    if-eqz v4, :cond_59

    .line 2129
    const/16 v38, 0x0

    .local v38, "conni":I
    :goto_1a
    move-object/from16 v0, v81

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move/from16 v0, v38

    if-ge v0, v4, :cond_59

    .line 2130
    move-object/from16 v0, v81

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->connections:Landroid/util/ArrayMap;

    move/from16 v0, v38

    invoke-virtual {v4, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/util/ArrayList;

    .line 2131
    .local v36, "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v58, 0x0

    .local v58, "idx":I
    :goto_1b
    invoke-virtual/range {v36 .. v36}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v58

    if-ge v0, v4, :cond_5b

    .line 2132
    move-object/from16 v0, v36

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/am/ConnectionRecord;

    .line 2133
    .local v39, "crd":Lcom/android/server/am/ConnectionRecord;
    if-eqz v39, :cond_5c

    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v4, :cond_5c

    .line 2134
    move-object/from16 v0, v39

    iget-object v4, v0, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v4, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    move-object/from16 v37, v0

    .line 2135
    .local v37, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v8, 0x2

    if-eq v4, v8, :cond_5a

    .line 2136
    move-object/from16 v0, v37

    iget v4, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v8, 0x1

    if-ne v4, v8, :cond_5c

    .line 2137
    :cond_5a
    const/16 v35, 0x1

    .line 2138
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ", bound by "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, "("

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    iget-object v11, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") state "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v37

    iget v11, v0, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    .end local v37    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v39    # "crd":Lcom/android/server/am/ConnectionRecord;
    :cond_5b
    add-int/lit8 v38, v38, 0x1

    goto/16 :goto_1a

    .line 2131
    .restart local v39    # "crd":Lcom/android/server/am/ConnectionRecord;
    :cond_5c
    add-int/lit8 v58, v58, 0x1

    goto/16 :goto_1b

    .line 2125
    .end local v36    # "c":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v38    # "conni":I
    .end local v39    # "crd":Lcom/android/server/am/ConnectionRecord;
    .end local v58    # "idx":I
    .end local v81    # "sr":Lcom/android/server/am/ServiceRecord;
    :catch_1
    move-exception v48

    .line 2147
    .end local v62    # "it":Ljava/util/Iterator;
    :cond_5d
    if-nez v35, :cond_5e

    .line 2148
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] kill "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " due to abnormally busy"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    .line 2153
    .end local v35    # "boundByFG":Z
    :cond_5e
    :goto_1c
    add-int/lit8 v76, v76, 0x1

    .line 2154
    goto/16 :goto_19

    .line 2151
    :cond_5f
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip proc "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v79

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1c

    .line 2157
    :cond_60
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_61

    .line 2158
    iget v4, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2161
    :cond_61
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_62

    const/16 v60, 0x1

    .line 2162
    .restart local v60    # "isParallelApp":Z
    :goto_1d
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v98

    .line 2167
    .local v98, "userId":I
    if-nez p1, :cond_66

    .line 2168
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v98

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_64

    .line 2169
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2170
    if-eqz v60, :cond_63

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_1e
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 2171
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v20, v0

    const-string/jumbo v22, "lru_huge"

    const/16 v23, 0x0

    move-object/from16 v18, p0

    move/from16 v21, v98

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    .line 2182
    :goto_1f
    add-int/lit8 v76, v76, 0x1

    goto/16 :goto_19

    .line 2161
    .end local v60    # "isParallelApp":Z
    .end local v98    # "userId":I
    :cond_62
    const/16 v60, 0x0

    .restart local v60    # "isParallelApp":Z
    goto/16 :goto_1d

    .line 2170
    .restart local v98    # "userId":I
    :cond_63
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_1e

    .line 2172
    :cond_64
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_65

    .line 2173
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] kill "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " due to abnormally busy"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto :goto_1f

    .line 2175
    :cond_65
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]force stop "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v11, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v11, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-direct {v0, v4, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 2179
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1f

    .line 2183
    :cond_66
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_68

    .line 2184
    if-eqz v60, :cond_67

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_20
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 2185
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v19, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v20, v0

    const-string/jumbo v22, "lru_high"

    const/16 v23, 0x1

    move-object/from16 v18, p0

    move/from16 v21, v98

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_19

    .line 2184
    :cond_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_20

    .line 2186
    :cond_68
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_6a

    .line 2187
    if-eqz v60, :cond_69

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_21
    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    iget v0, v5, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v24, v0

    iget-object v4, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_19

    :cond_69
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_21

    .line 2188
    :cond_6a
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_58

    .line 2189
    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v5, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProviderBoundByFG(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v4

    if-nez v4, :cond_58

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_58

    .line 2190
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] kill "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v8, v5, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " (uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v8, v5, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ") level "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x1

    invoke-virtual {v5, v4, v8}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V

    goto/16 :goto_19

    .line 2195
    .end local v5    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v31    # "app$iterator":Ljava/util/Iterator;
    .end local v60    # "isParallelApp":Z
    .end local v98    # "userId":I
    :cond_6b
    invoke-virtual/range {v45 .. v45}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-lez v4, :cond_77

    .line 2196
    const/16 v55, 0x0

    :goto_22
    invoke-virtual/range {v45 .. v45}, Landroid/util/SparseArray;->size()I

    move-result v4

    move/from16 v0, v55

    if-ge v0, v4, :cond_77

    .line 2197
    move-object/from16 v0, v45

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2198
    .restart local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v4, :cond_76

    .line 2200
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6c

    .line 2201
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v93

    invoke-virtual {v0, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2203
    :cond_6c
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_6e

    const/16 v60, 0x1

    .line 2204
    .restart local v60    # "isParallelApp":Z
    :goto_23
    move-object/from16 v0, v53

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v98

    .line 2205
    .restart local v98    # "userId":I
    if-nez p1, :cond_72

    .line 2206
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v53

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v98

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_70

    .line 2207
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v53

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v53

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2208
    if-eqz v60, :cond_6f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_24
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 2209
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v20, v0

    const-string/jumbo v22, "fork_huge"

    const/16 v23, 0x0

    move-object/from16 v18, p0

    move/from16 v21, v98

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    .line 2221
    :goto_25
    add-int/lit8 v76, v76, 0x1

    .line 2196
    .end local v60    # "isParallelApp":Z
    .end local v98    # "userId":I
    :cond_6d
    :goto_26
    add-int/lit8 v55, v55, 0x1

    goto/16 :goto_22

    .line 2203
    :cond_6e
    const/16 v60, 0x0

    .restart local v60    # "isParallelApp":Z
    goto/16 :goto_23

    .line 2208
    .restart local v98    # "userId":I
    :cond_6f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_24

    .line 2210
    :cond_70
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_71

    .line 2211
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v53

    iget v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 2212
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect] kill forked "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v53

    iget-object v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " (uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v53

    iget v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2211
    move/from16 v0, v98

    invoke-virtual {v4, v8, v0, v11}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_25

    .line 2214
    :cond_71
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]force stop forked "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v53

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v53

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, p0

    move/from16 v1, v98

    invoke-direct {v0, v4, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 2218
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v86

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_25

    .line 2222
    :cond_72
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_74

    .line 2223
    if-eqz v60, :cond_73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_27
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 2224
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v20, v0

    const-string/jumbo v22, "fork_high"

    const/16 v23, 0x1

    move-object/from16 v18, p0

    move/from16 v21, v98

    invoke-direct/range {v18 .. v23}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_26

    .line 2223
    :cond_73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_27

    .line 2225
    :cond_74
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_6d

    .line 2226
    if-eqz v60, :cond_75

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_28
    move-object/from16 v0, v53

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v24, v0

    move-object/from16 v0, v53

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    move/from16 v25, v0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_26

    :cond_75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_28

    .line 2229
    .end local v60    # "isParallelApp":Z
    .end local v98    # "userId":I
    :cond_76
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect]forked proc "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v53

    iget-object v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->name:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2230
    const-string/jumbo v11, " \'s pkgName is null, uid "

    .line 2229
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2230
    move-object/from16 v0, v53

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    .line 2229
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2230
    const-string/jumbo v11, " pid "

    .line 2229
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2230
    move-object/from16 v0, v53

    iget v11, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    .line 2229
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_26

    .line 2235
    .end local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_77
    invoke-virtual/range {v93 .. v93}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    .local v51, "entry$iterator":Ljava/util/Iterator;
    :cond_78
    :goto_29
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_89

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/Map$Entry;

    .line 2236
    .local v49, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 2237
    .restart local v87    # "uid":Ljava/lang/Integer;
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/Integer;

    .line 2238
    .local v95, "usageSum":Ljava/lang/Integer;
    move-object/from16 v0, v92

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2239
    .local v20, "pkgName":Ljava/lang/String;
    move-object/from16 v0, v92

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    move/from16 v24, v0

    .line 2240
    .local v24, "pid":I
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_7a

    const/16 v60, 0x1

    .line 2241
    .restart local v60    # "isParallelApp":Z
    :goto_2a
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v98

    .line 2242
    .restart local v98    # "userId":I
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_79

    .line 2243
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " pkgName "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, " usage "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v95

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 2244
    :cond_79
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, p1

    if-lt v4, v8, :cond_7c

    .line 2245
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v8, v8, p1

    if-ge v4, v8, :cond_7c

    .line 2246
    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7b

    .line 2247
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] skip pkg "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_29

    .line 2240
    .end local v60    # "isParallelApp":Z
    .end local v98    # "userId":I
    :cond_7a
    const/16 v60, 0x0

    .restart local v60    # "isParallelApp":Z
    goto/16 :goto_2a

    .line 2250
    .restart local v98    # "userId":I
    :cond_7b
    if-nez p1, :cond_81

    .line 2251
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v98

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7f

    .line 2252
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    if-eqz v60, :cond_7e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_2b
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 2254
    const-string/jumbo v26, "accu_huge"

    const/16 v27, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, v20

    move/from16 v25, v98

    invoke-direct/range {v22 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    .line 2266
    :goto_2c
    add-int/lit8 v76, v76, 0x1

    .line 2278
    :cond_7c
    :goto_2d
    const/4 v4, 0x1

    new-array v4, v4, [I

    const/16 v8, 0x22

    const/4 v11, 0x0

    aput v8, v4, v11

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_78

    .line 2279
    const/4 v4, 0x3

    move/from16 v0, p1

    if-ne v0, v4, :cond_78

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    .line 2278
    if-eqz v4, :cond_78

    .line 2280
    move-object/from16 v0, v68

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7d

    .line 2281
    move-object/from16 v0, v69

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_78

    invoke-virtual/range {v95 .. v95}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    if-lt v4, v8, :cond_78

    .line 2282
    :cond_7d
    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_85

    .line 2283
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "(uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "), reason= "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v79

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2253
    :cond_7e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto/16 :goto_2b

    .line 2255
    :cond_7f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_80

    .line 2256
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 2257
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect] total usage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v95

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " over thold, kill "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " (uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v87

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2256
    move/from16 v0, v98

    invoke-virtual {v4, v8, v0, v11}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto/16 :goto_2c

    .line 2259
    :cond_80
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v95

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold, force stop "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2260
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v98

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 2263
    move-object/from16 v0, v86

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2c

    .line 2267
    :cond_81
    const/4 v4, 0x1

    move/from16 v0, p1

    if-ne v0, v4, :cond_83

    .line 2268
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] HighPower total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v95

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold # add forked "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    if-eqz v60, :cond_82

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_2e
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 2270
    const-string/jumbo v26, "accu_high"

    const/16 v27, 0x1

    move-object/from16 v22, p0

    move-object/from16 v23, v20

    move/from16 v25, v98

    invoke-direct/range {v22 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    goto/16 :goto_2d

    .line 2269
    :cond_82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_2e

    .line 2271
    :cond_83
    const/4 v4, 0x2

    move/from16 v0, p1

    if-ne v0, v4, :cond_7c

    .line 2272
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] MediumPower total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v95

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold  # add forked "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    if-eqz v60, :cond_84

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_2f
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    goto/16 :goto_2d

    :cond_84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_2f

    .line 2285
    :cond_85
    move-object/from16 v0, v80

    move-object/from16 v1, v87

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    .line 2286
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "(uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "), reason= small adj"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2288
    :cond_86
    move-object/from16 v0, v30

    move-object/from16 v1, v87

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_87

    .line 2289
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "(uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "), reason= sys alert window"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2291
    :cond_87
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkWidgetPackage(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 2292
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect][RNK] skip pkg "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "(uid "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, "), reason= widget added"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_29

    .line 2296
    :cond_88
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_78

    .line 2297
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    .line 2298
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "[BgDetect][RNK] kill "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " (uid "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v87

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ") usage "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v95

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2297
    invoke-virtual {v4, v8, v11, v12}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto/16 :goto_29

    .line 2303
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v24    # "pid":I
    .end local v49    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v60    # "isParallelApp":Z
    .end local v87    # "uid":Ljava/lang/Integer;
    .end local v95    # "usageSum":Ljava/lang/Integer;
    .end local v98    # "userId":I
    :cond_89
    if-eqz v10, :cond_94

    .line 2304
    const/16 v74, 0x1

    .line 2306
    .local v74, "needReportDrain":Z
    invoke-virtual/range {v52 .. v52}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_8a
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8b

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/Map$Entry;

    .line 2307
    .restart local v49    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/Integer;

    .line 2308
    .restart local v95    # "usageSum":Ljava/lang/Integer;
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 2309
    .restart local v87    # "uid":Ljava/lang/Integer;
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, p1

    if-lt v4, v8, :cond_8a

    .line 2310
    add-int/lit8 v76, v76, 0x1

    .line 2311
    const/16 v74, 0x0

    .line 2312
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] found PD is caused by skipped uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " usg "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v95

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2317
    .end local v49    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v87    # "uid":Ljava/lang/Integer;
    .end local v95    # "usageSum":Ljava/lang/Integer;
    :cond_8b
    if-nez v76, :cond_92

    .line 2318
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect][PD] start review BG procs : screen state "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 2319
    invoke-virtual/range {v93 .. v93}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v51

    :cond_8c
    :goto_30
    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_93

    invoke-interface/range {v51 .. v51}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v49

    check-cast v49, Ljava/util/Map$Entry;

    .line 2320
    .restart local v49    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v87

    check-cast v87, Ljava/lang/Integer;

    .line 2321
    .restart local v87    # "uid":Ljava/lang/Integer;
    invoke-interface/range {v49 .. v49}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v95

    check-cast v95, Ljava/lang/Integer;

    .line 2322
    .restart local v95    # "usageSum":Ljava/lang/Integer;
    move-object/from16 v0, v92

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget-object v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 2323
    .restart local v20    # "pkgName":Ljava/lang/String;
    move-object/from16 v0, v92

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;

    iget v0, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppInfo;->pid:I

    move/from16 v24, v0

    .line 2324
    .restart local v24    # "pid":I
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v8, 0x3e7

    if-ne v4, v8, :cond_8d

    const/16 v60, 0x1

    .line 2325
    .restart local v60    # "isParallelApp":Z
    :goto_31
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v98

    .line 2326
    .restart local v98    # "userId":I
    invoke-virtual/range {v95 .. v95}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    if-lt v4, v8, :cond_8c

    .line 2327
    move-object/from16 v0, v78

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8e

    .line 2328
    const-string/jumbo v8, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] skip pkg "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "(uid "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v87

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v11, "), reason= "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v78

    move-object/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_30

    .line 2324
    .end local v60    # "isParallelApp":Z
    .end local v98    # "userId":I
    :cond_8d
    const/16 v60, 0x0

    .restart local v60    # "isParallelApp":Z
    goto :goto_31

    .line 2331
    .restart local v98    # "userId":I
    :cond_8e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v98

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v66

    invoke-interface {v0, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    .line 2332
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] notify level-0 pkg:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    if-eqz v60, :cond_8f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    :goto_32
    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v25

    const/16 v21, 0x1

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v18, p0

    invoke-virtual/range {v18 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V

    .line 2334
    const-string/jumbo v26, "accu_huge"

    const/16 v27, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, v20

    move/from16 v25, v98

    invoke-direct/range {v22 .. v27}, Lcom/android/server/am/OnePlusHighPowerDetector;->notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V

    .line 2346
    :goto_33
    const/16 v74, 0x0

    goto/16 :goto_30

    .line 2333
    :cond_8f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v19, v0

    goto :goto_32

    .line 2335
    :cond_90
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLevel0KillList(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_91

    .line 2336
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v87 .. v87}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v8

    .line 2337
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[BgDetect][PD] total usage "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v95

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " over thold, kill "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " (uid "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, v87

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ") level "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2336
    move/from16 v0, v98

    invoke-virtual {v4, v8, v0, v11}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V

    goto :goto_33

    .line 2339
    :cond_91
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect][PD] total usage "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v95

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " over thold, force stop "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v20

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, " (uid "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v87

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v11, ") level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2340
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move/from16 v2, v98

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 2343
    move-object/from16 v0, v86

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_33

    .line 2350
    .end local v20    # "pkgName":Ljava/lang/String;
    .end local v24    # "pid":I
    .end local v49    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v60    # "isParallelApp":Z
    .end local v87    # "uid":Ljava/lang/Integer;
    .end local v95    # "usageSum":Ljava/lang/Integer;
    .end local v98    # "userId":I
    :cond_92
    const/16 v74, 0x0

    .line 2353
    :cond_93
    if-eqz v74, :cond_94

    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsBetaRom:Z

    if-eqz v4, :cond_94

    .line 2354
    const-string/jumbo v4, "OHPD"

    const-string/jumbo v8, "[BgDetect][PD] notify OPBR"

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v8, 0xd6df

    invoke-virtual {v4, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v75

    .line 2356
    .restart local v75    # "nmsg":Landroid/os/Message;
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const-wide/16 v12, 0x3e8

    move-object/from16 v0, v75

    invoke-virtual {v4, v0, v12, v13}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2372
    .end local v32    # "audioActiveUids":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v45    # "doForceStopForkedArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .end local v51    # "entry$iterator":Ljava/util/Iterator;
    .end local v74    # "needReportDrain":Z
    .end local v75    # "nmsg":Landroid/os/Message;
    :cond_94
    :goto_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V

    goto/16 :goto_3

    .line 2360
    :cond_95
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_94

    .line 2361
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v8
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0
    .catchall {:try_start_1b .. :try_end_1b} :catchall_3

    .line 2362
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v54

    .restart local v54    # "fproc$iterator":Ljava/util/Iterator;
    :cond_96
    :goto_35
    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_97

    invoke-interface/range {v54 .. v54}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v53

    check-cast v53, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2363
    .restart local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    move-object/from16 v0, v53

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    const-wide/16 v18, 0x0

    cmp-long v4, v12, v18

    if-lez v4, :cond_96

    .line 2364
    move-object/from16 v0, v53

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    move-object/from16 v0, v53

    iget-wide v12, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    aput-wide v12, v4, p1
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_9

    goto :goto_35

    .line 2361
    .end local v53    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v54    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_9
    move-exception v4

    :try_start_1d
    monitor-exit v8

    throw v4

    .restart local v54    # "fproc$iterator":Ljava/util/Iterator;
    :cond_97
    monitor-exit v8
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    goto :goto_34

    .line 2388
    .end local v54    # "fproc$iterator":Ljava/util/Iterator;
    .restart local v72    # "namesString":Ljava/lang/String;
    :cond_98
    :try_start_1e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v72

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v8, ","

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v86

    move/from16 v1, v55

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v72

    goto/16 :goto_5

    .line 2391
    :cond_99
    new-instance v85, Lcom/android/server/SystemEvent;

    const-string/jumbo v4, "ForceStopApplication"

    move-object/from16 v0, v85

    invoke-direct {v0, v4}, Lcom/android/server/SystemEvent;-><init>(Ljava/lang/String;)V

    .line 2392
    .local v85, "stopAppEvent":Lcom/android/server/SystemEvent;
    const-string/jumbo v4, "name"

    move-object/from16 v0, v85

    move-object/from16 v1, v72

    invoke-virtual {v0, v4, v1}, Lcom/android/server/SystemEvent;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2393
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerEventCollector:Lcom/android/server/SystemEventCollector;

    move-object/from16 v0, v85

    invoke-virtual {v4, v0}, Lcom/android/server/SystemEventCollector;->submit(Lcom/android/server/SystemEvent;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_2

    .line 2400
    .end local v55    # "i":I
    .end local v72    # "namesString":Ljava/lang/String;
    .end local v85    # "stopAppEvent":Lcom/android/server/SystemEvent;
    :cond_9a
    :goto_36
    if-eqz v10, :cond_9b

    .line 2401
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->sBattUpdteLock:Ljava/lang/Object;

    monitor-enter v4

    .line 2402
    const/4 v8, 0x0

    :try_start_1f
    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPowerDrain:Z
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_a

    monitor-exit v4

    .line 2406
    :cond_9b
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_9c

    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[BgDetect] checkExcessiveCpuUsageLocked -# level "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2407
    const-string/jumbo v11, " in "

    .line 2406
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    sub-long v12, v12, v82

    .line 2406
    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 2407
    const-string/jumbo v11, "ms"

    .line 2406
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    :cond_9c
    const/4 v4, 0x0

    return v4

    .line 2395
    :catch_2
    move-exception v48

    .line 2396
    .restart local v48    # "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[MDM_Collect] Exception:"

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {v48 .. v48}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v4, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36

    .line 2401
    .end local v48    # "e":Ljava/lang/Exception;
    :catchall_a
    move-exception v8

    monitor-exit v4

    throw v8
.end method

.method private checkIfNotificationExisted(I)Z
    .locals 8
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 1121
    const/4 v1, 0x0

    .line 1122
    .local v1, "found":Z
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 1123
    .local v2, "inm":Landroid/app/INotificationManager;
    const-string/jumbo v6, "android"

    invoke-interface {v2, v6}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1124
    .local v0, "activeList":[Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_0

    array-length v6, v0

    if-ge v6, v7, :cond_2

    .line 1125
    :cond_0
    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string/jumbo v6, "OHPD"

    const-string/jumbo v7, "[BgDetect][Notification] activeList null"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_1
    return v5

    .line 1128
    :cond_2
    if-ne p1, v7, :cond_6

    const v4, 0x33954b8

    .line 1129
    .local v4, "targetId":I
    :goto_0
    array-length v6, v0

    :goto_1
    if-ge v5, v6, :cond_4

    aget-object v3, v0, v5

    .line 1130
    .local v3, "noti":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    if-ne v7, v4, :cond_7

    .line 1131
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_3

    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect][Notification] notification exists, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1132
    :cond_3
    const/4 v1, 0x1

    .line 1136
    .end local v3    # "noti":Landroid/service/notification/StatusBarNotification;
    :cond_4
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect][Notification] notification does NOT exists, type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    :cond_5
    return v1

    .line 1128
    .end local v4    # "targetId":I
    :cond_6
    const v4, 0x33954b9

    .restart local v4    # "targetId":I
    goto :goto_0

    .line 1129
    .restart local v3    # "noti":Landroid/service/notification/StatusBarNotification;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private checkLightIdleCameraProcessKillLocked()V
    .locals 12

    .prologue
    const/4 v6, 0x0

    .line 1300
    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v7, :cond_0

    const-string/jumbo v7, "OHPD"

    const-string/jumbo v8, "[LightIdle] checkLightIdleCameraProcessKillLocked"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1302
    .local v4, "startTime":J
    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1303
    :try_start_0
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v8, :cond_5

    .line 1304
    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v8, :cond_1

    .line 1305
    const-string/jumbo v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[LightIdle] Try to judge camera pid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1306
    const-string/jumbo v10, ", mLastCameraProcUsage="

    .line 1305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1306
    iget-wide v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    .line 1305
    invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1306
    const-string/jumbo v10, ", threshold="

    .line 1305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1307
    iget v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    .line 1305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1308
    const-string/jumbo v10, ", mEnableMonitorCameraProc="

    .line 1305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1308
    sget-boolean v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    .line 1305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1309
    const-string/jumbo v10, ", mEnableKillBusyCameraProc="

    .line 1305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1309
    sget-boolean v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    .line 1305
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1311
    :cond_1
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    if-eqz v8, :cond_5

    iget-wide v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    iget v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-ltz v8, :cond_5

    .line 1312
    const/4 v2, 0x0

    .line 1313
    .local v2, "killed":Z
    iget-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    .line 1314
    .local v0, "cameraProcUsage":J
    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    if-eqz v8, :cond_3

    .line 1315
    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "OHPD"

    const-string/jumbo v9, "[LightIdle] Killing it !"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    :cond_2
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v8}, Landroid/os/Process;->killProcess(I)V

    .line 1317
    const/4 v2, 0x1

    .line 1319
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 1321
    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    .line 1325
    :cond_3
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v9, 0xd6e6

    invoke-virtual {v8, v9}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 1326
    .local v3, "msg":Landroid/os/Message;
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    iput-object v8, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1327
    long-to-int v8, v0

    iput v8, v3, Landroid/os/Message;->arg1:I

    .line 1328
    if-eqz v2, :cond_4

    const/4 v6, 0x1

    :cond_4
    iput v6, v3, Landroid/os/Message;->arg2:I

    .line 1329
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v6, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cameraProcUsage":J
    .end local v2    # "killed":Z
    .end local v3    # "msg":Landroid/os/Message;
    :cond_5
    monitor-exit v7

    .line 1333
    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_6

    const-string/jumbo v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] checkLightIdleCameraProcessKillLocked in "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long/2addr v8, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " ms"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    :cond_6
    return-void

    .line 1302
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private checkLightIdleProcessKillLocked()V
    .locals 34

    .prologue
    .line 1336
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    const-string/jumbo v6, "[LightIdle] checkLightIdleProcessKillLocked"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1337
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 1338
    .local v26, "startTime":J
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1339
    .local v4, "curUptime":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRestartProcessManager:Lcom/android/server/am/RestartProcessManager;

    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/android/server/am/RestartProcessManager;->getHighUsedPackageList(Z)Ljava/util/ArrayList;

    move-result-object v10

    .line 1340
    .local v10, "highUsedPkgList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v14

    .line 1341
    .local v14, "avtiveAudioUids":[Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "com_oneplus_systemui_recent_task_lockd_list"

    const/4 v8, -0x2

    invoke-static {v2, v6, v8}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v20

    .line 1343
    .local v20, "lockedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v18

    .line 1345
    .local v18, "lockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v30, Landroid/util/SparseArray;

    invoke-direct/range {v30 .. v30}, Landroid/util/SparseArray;-><init>()V

    .line 1348
    .local v30, "uidProcessRecordArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v13, Ljava/util/HashSet;

    invoke-direct {v13}, Ljava/util/HashSet;-><init>()V

    .line 1351
    .local v13, "allFinishingUidsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v24, Ljava/util/HashSet;

    invoke-direct/range {v24 .. v24}, Ljava/util/HashSet;-><init>()V

    .line 1353
    .local v24, "nonFinishingUidsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v22, Ljava/util/HashSet;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashSet;-><init>()V

    .line 1356
    .local v22, "needKillUidsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    new-instance v23, Ljava/util/HashSet;

    invoke-direct/range {v23 .. v23}, Ljava/util/HashSet;-><init>()V

    .line 1358
    .local v23, "needSkipUidsSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v31, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v31

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1360
    :try_start_1
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v16

    .line 1361
    .local v16, "i":I
    :goto_0
    if-lez v16, :cond_c

    .line 1362
    add-int/lit8 v16, v16, -0x1

    .line 1363
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1365
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_1

    .line 1366
    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] i="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", pid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ", uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v8, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1367
    const-string/jumbo v8, ", userId="

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1367
    iget v8, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1367
    const-string/jumbo v8, ", persistent="

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1367
    iget-boolean v8, v3, Lcom/android/server/am/ProcessRecord;->persistent:Z

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1368
    const-string/jumbo v8, ", app.info.packageName="

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1368
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1368
    const-string/jumbo v8, ", app.info.uid="

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1369
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1369
    const-string/jumbo v8, ", app.info.flags=0x"

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1369
    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v9, 0x10

    invoke-static {v8, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1370
    const-string/jumbo v8, ", shortName="

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1370
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v8

    .line 1366
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_1
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z

    if-eqz v2, :cond_5

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v6, "com.google.android.gms"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    const/4 v6, 0x0

    aget v2, v2, v6

    int-to-long v0, v2

    move-wide/from16 v32, v0

    cmp-long v2, v8, v32

    if-ltz v2, :cond_5

    .line 1377
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] Observe GMS process-["

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "], Uid="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " busy("

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastGmsProcUsage:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, "%)"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    :cond_2
    const-string/jumbo v2, "[LightIdle] Kill GMS Busy ProcessRecord"

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6}, Lcom/android/server/am/ProcessRecord;->kill(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 1450
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "i":I
    :catch_0
    move-exception v15

    .line 1451
    .local v15, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v15}, Ljava/lang/Exception;->printStackTrace()V

    .line 1452
    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] got exception "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v15    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit v31

    .line 1358
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1455
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] checkLightIdleProcessKillLocked in "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    sub-long v8, v8, v26

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " ms"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :cond_4
    return-void

    .line 1384
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "i":I
    :cond_5
    :try_start_3
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1385
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 1384
    if-eqz v2, :cond_7

    .line 1386
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_6

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] skip uid:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " due to system packages"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :cond_6
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 1358
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v16    # "i":I
    :catchall_0
    move-exception v2

    monitor-exit v31

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 1392
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v16    # "i":I
    :cond_7
    :try_start_4
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v13, v1, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateFinishingStatusUidsSet(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V

    .line 1394
    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z

    move-result v21

    .line 1396
    .local v21, "needCheckProc":Z
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] needCheckProc:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1397
    :cond_8
    if-eqz v21, :cond_b

    .line 1398
    new-instance v7, Ljava/lang/StringBuffer;

    const-string/jumbo v2, "[LightIdle] "

    invoke-direct {v7, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 1399
    .local v7, "result":Ljava/lang/StringBuffer;
    sget v9, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x1

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v11}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheckInner(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v2

    if-nez v2, :cond_9

    .line 1400
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1401
    iget v2, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    move-object/from16 v0, v30

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 1403
    :cond_9
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_a

    const-string/jumbo v2, "OHPD"

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_a
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1407
    .end local v7    # "result":Ljava/lang/StringBuffer;
    :cond_b
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1412
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v21    # "needCheckProc":Z
    :cond_c
    if-eqz v14, :cond_f

    .line 1413
    const/4 v2, 0x0

    array-length v6, v14

    :goto_1
    if-ge v2, v6, :cond_f

    aget-object v28, v14, v2

    .line 1414
    .local v28, "uid":Ljava/lang/String;
    if-eqz v28, :cond_d

    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_e

    .line 1413
    :cond_d
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1417
    :cond_e
    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 1419
    .local v12, "activeUid":I
    const-string/jumbo v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[LightIdle] skip uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, " due to audio active"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1420
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    move-object/from16 v0, v23

    invoke-virtual {v0, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1425
    .end local v12    # "activeUid":I
    .end local v28    # "uid":Ljava/lang/String;
    :cond_f
    if-eqz v18, :cond_11

    .line 1426
    const/16 v17, 0x0

    .local v17, "j":I
    :goto_3
    invoke-virtual/range {v30 .. v30}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v17

    if-ge v0, v2, :cond_11

    .line 1427
    move-object/from16 v0, v30

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 1428
    .restart local v3    # "app":Lcom/android/server/am/ProcessRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    .line 1429
    .local v19, "lockedName":Ljava/lang/String;
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 1430
    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] skip uid "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, " due to locked ap : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1431
    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1426
    :cond_10
    add-int/lit8 v17, v17, 0x1

    goto :goto_3

    .line 1436
    .end local v3    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v17    # "j":I
    .end local v19    # "lockedName":Ljava/lang/String;
    :cond_11
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_12

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] needKillUidsSet: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1437
    :cond_12
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_13

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] needSkipUidsSet: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v23

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1438
    :cond_13
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_14

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] allFinishingUidsSet: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    :cond_14
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_15

    const-string/jumbo v2, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[LightIdle] nonFinishingUidsSet: "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_15
    invoke-interface/range {v22 .. v22}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "uid$iterator":Ljava/util/Iterator;
    :cond_16
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/Integer;

    .line 1443
    .local v25, "uid":Ljava/lang/Integer;
    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_16

    .line 1444
    move-object/from16 v0, v25

    invoke-virtual {v13, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    .line 1443
    if-eqz v2, :cond_16

    .line 1445
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 1446
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[LightIdle][All finishing] kill (uid "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move-object/from16 v0, v25

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v11, ")"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1445
    invoke-virtual {v2, v6, v8, v9}, Lcom/android/server/am/ActivityManagerService;->killUid(IILjava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method private checkNotification(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    .locals 10
    .param p1, "pkgKey"    # Ljava/lang/String;
    .param p4, "type"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1065
    .local p2, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p3, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v7, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1066
    return-void

    .line 1068
    :cond_0
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v7, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1069
    return-void

    .line 1071
    :cond_1
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v7, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1072
    return-void

    .line 1074
    :cond_2
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v7, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1075
    return-void

    .line 1077
    :cond_3
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v7, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1078
    return-void

    .line 1080
    :cond_4
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v7, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1081
    return-void

    .line 1085
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v2

    .line 1086
    .local v2, "inm":Landroid/app/INotificationManager;
    const-string/jumbo v7, "android"

    invoke-interface {v2, v7}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 1087
    .local v0, "activeList":[Landroid/service/notification/StatusBarNotification;
    if-eqz v0, :cond_6

    array-length v7, v0

    const/4 v8, 0x1

    if-ge v7, v8, :cond_8

    .line 1088
    :cond_6
    sget-boolean v7, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v7, :cond_7

    const-string/jumbo v7, "OHPD"

    const-string/jumbo v8, "[BgDetect][Notification] activeList null"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    :cond_7
    return-void

    .line 1091
    :cond_8
    const/4 v1, 0x0

    .line 1092
    .local v1, "found":Z
    const/4 v7, 0x1

    if-ne p4, v7, :cond_a

    const v6, 0x33954b8

    .line 1093
    .local v6, "targetId":I
    :goto_0
    const/4 v7, 0x0

    array-length v8, v0

    :goto_1
    if-ge v7, v8, :cond_9

    aget-object v5, v0, v7

    .line 1094
    .local v5, "noti":Landroid/service/notification/StatusBarNotification;
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    if-ne v9, v6, :cond_b

    .line 1095
    const-string/jumbo v7, "OHPD"

    const-string/jumbo v8, "[BgDetect][Notification] notification exists, cancel it"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    const/4 v1, 0x1

    .line 1097
    const-string/jumbo v7, "android"

    .line 1098
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v8

    .line 1097
    const/4 v9, 0x0

    invoke-interface {v2, v7, v9, v6, v8}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 1105
    .end local v5    # "noti":Landroid/service/notification/StatusBarNotification;
    :cond_9
    if-nez p4, :cond_e

    .line 1106
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "key$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1107
    .local v3, "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    sget-wide v8, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 1092
    .end local v3    # "key":Ljava/lang/String;
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    .end local v6    # "targetId":I
    :cond_a
    const v6, 0x33954b9

    .restart local v6    # "targetId":I
    goto :goto_0

    .line 1093
    .restart local v5    # "noti":Landroid/service/notification/StatusBarNotification;
    :cond_b
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1109
    .end local v5    # "noti":Landroid/service/notification/StatusBarNotification;
    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_c
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1110
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    .line 1118
    .end local v4    # "key$iterator":Ljava/util/Iterator;
    :cond_d
    :goto_3
    return-void

    .line 1111
    :cond_e
    const/4 v7, 0x1

    if-ne p4, v7, :cond_d

    .line 1112
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .restart local v4    # "key$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1113
    .restart local v3    # "key":Ljava/lang/String;
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    sget-wide v8, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    neg-long v8, v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1115
    .end local v3    # "key":Ljava/lang/String;
    :cond_f
    iget-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 1116
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    goto :goto_3
.end method

.method private checkWidgetPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3028
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 3029
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    .line 3028
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private cleanUpNativeMonitorList()V
    .locals 5

    .prologue
    .line 3418
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 3419
    const/4 v1, 0x0

    .line 3421
    .local v1, "file":Ljava/io/File;
    :try_start_0
    const-string/jumbo v3, "sdm845"

    const-string/jumbo v4, "ro.board.platform"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3422
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/data/system/nativeproc/proclist"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v2, "file":Ljava/io/File;
    move-object v1, v2

    .line 3426
    .end local v2    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3427
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 3433
    .end local v1    # "file":Ljava/io/File;
    :cond_0
    :goto_1
    return-void

    .line 3424
    .local v1, "file":Ljava/io/File;
    :cond_1
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "/cache/nativeproc/proclist"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "file":Ljava/io/File;
    move-object v1, v2

    .end local v2    # "file":Ljava/io/File;
    .local v1, "file":Ljava/io/File;
    goto :goto_0

    .line 3429
    .end local v1    # "file":Ljava/io/File;
    :catch_0
    move-exception v0

    .line 3430
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "OHPD"

    const-string/jumbo v4, "fail to delete native monitor list file"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private cleanUpWhenPkgRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2866
    const-string/jumbo v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BgDetect] pkg "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " removed , userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2868
    const/16 v0, 0x3e7

    if-eq p2, v0, :cond_3

    .line 2869
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2870
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2871
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 2874
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2875
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_1
    monitor-exit v1

    .line 2879
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2880
    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2881
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_2
    :goto_0
    monitor-exit v1

    .line 2901
    return-void

    .line 2869
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2874
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2879
    :catchall_2
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2885
    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2886
    :try_start_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2887
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :cond_4
    monitor-exit v1

    .line 2890
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2891
    :try_start_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2892
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :cond_5
    monitor-exit v1

    .line 2895
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2896
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2897
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto :goto_0

    .line 2895
    :catchall_3
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2885
    :catchall_4
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2890
    :catchall_5
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private createNotification(Ljava/lang/String;II)Landroid/app/Notification;
    .locals 26
    .param p1, "triggerPkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I

    .prologue
    .line 1142
    const/16 v22, 0x0

    .line 1144
    .local v22, "pkgLabel":Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    .line 1145
    .local v12, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_0

    .line 1146
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v12}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v22, v0

    .line 1148
    .end local v22    # "pkgLabel":Ljava/lang/String;
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    new-instance v3, Landroid/os/UserHandle;

    move/from16 v0, p2

    invoke-direct {v3, v0}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v22

    .line 1152
    .end local v12    # "applicationInfo":Landroid/content/pm/ApplicationInfo;
    :goto_0
    if-eqz v22, :cond_1

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_2

    .line 1153
    :cond_1
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BgDetect] error: cannot get pkg label : "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    const/4 v2, 0x0

    return-object v2

    .line 1149
    :catch_0
    move-exception v16

    .line 1150
    .local v16, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "get highpower pkg label error"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1157
    .end local v16    # "e":Ljava/lang/Exception;
    :cond_2
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v3, 0x50b0030

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    .line 1158
    .local v24, "title":Ljava/lang/String;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v3, 0x50b002f

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 1159
    .local v15, "content":Ljava/lang/String;
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_3

    .line 1160
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification # title:84607024 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification # content:84607023 "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Notification # triggerPkgName:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v5, ",pkgLabel:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1164
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 1166
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.POWER_USAGE_SUMMARY"

    invoke-direct {v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v4, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "classname"

    const-string/jumbo v3, "com.android.settings.fuelgauge.PowerUsageSummary"

    invoke-virtual {v4, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1170
    new-instance v23, Landroid/content/Intent;

    const/4 v2, 0x1

    move/from16 v0, p3

    if-ne v0, v2, :cond_7

    const-string/jumbo v2, "com.oem.intent.action.force_stop_pkg"

    :goto_1
    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1171
    .local v23, "stopIntent":Landroid/content/Intent;
    const-string/jumbo v2, "pkg"

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string/jumbo v2, "userid"

    move-object/from16 v0, v23

    move/from16 v1, p2

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1173
    const-string/jumbo v2, "type"

    move-object/from16 v0, v23

    move/from16 v1, p3

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1175
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 1176
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1175
    const/4 v5, 0x0

    .line 1176
    const/high16 v6, 0x8000000

    .line 1175
    move-object/from16 v0, v23

    invoke-static {v2, v5, v0, v6, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v21

    .line 1179
    .local v21, "pendingIntent":Landroid/app/PendingIntent;
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v2, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1180
    .local v13, "cancelIntent":Landroid/content/Intent;
    const-string/jumbo v2, "type"

    move/from16 v0, p3

    invoke-virtual {v13, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1181
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 1182
    sget-object v3, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 1181
    const/4 v5, 0x0

    .line 1182
    const/high16 v6, 0x8000000

    .line 1181
    invoke-static {v2, v5, v13, v6, v3}, Landroid/app/PendingIntent;->getBroadcastAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v20

    .line 1185
    .local v20, "pendingCancelIntent":Landroid/app/PendingIntent;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v10

    .line 1186
    .local v10, "PKG_NAME":Ljava/lang/String;
    const-string/jumbo v9, "OP_HP_NOTIFICATION"

    .line 1187
    .local v9, "OP_HP_CHANNEL":Ljava/lang/String;
    new-instance v14, Landroid/app/NotificationChannel;

    .line 1188
    const-string/jumbo v2, "OP_HP_NOTIFICATION"

    .line 1190
    const/4 v3, 0x3

    .line 1187
    move-object/from16 v0, v24

    invoke-direct {v14, v2, v0, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1192
    .local v14, "channelHP":Landroid/app/NotificationChannel;
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v14, v2, v3}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 1193
    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    .line 1194
    const/4 v2, 0x1

    invoke-virtual {v14, v2}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    .line 1195
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v18

    .line 1196
    .local v18, "inm":Landroid/app/INotificationManager;
    const/4 v8, 0x0

    .line 1198
    .local v8, "CHANNEL_ID":Ljava/lang/String;
    :try_start_1
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BgDetect][Notification] Create notification channel for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_4
    new-instance v2, Landroid/content/pm/ParceledListSlice;

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/app/NotificationChannel;

    const/4 v5, 0x0

    aput-object v14, v3, v5

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    move-object/from16 v0, v18

    invoke-interface {v0, v10, v2}, Landroid/app/INotificationManager;->createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 1200
    const-string/jumbo v2, "OP_HP_NOTIFICATION"

    move-object/from16 v0, v18

    invoke-interface {v0, v10, v2}, Landroid/app/INotificationManager;->getNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1201
    const-string/jumbo v8, "OP_HP_NOTIFICATION"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1205
    .end local v8    # "CHANNEL_ID":Ljava/lang/String;
    :cond_5
    if-nez v8, :cond_6

    .line 1206
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 1211
    :cond_6
    :goto_2
    new-instance v2, Landroid/app/Notification$Action$Builder;

    .line 1212
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v5, 0x50b0036

    invoke-virtual {v3, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1211
    const v5, 0x1080338

    move-object/from16 v0, v21

    invoke-direct {v2, v5, v3, v0}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v11

    .line 1214
    .local v11, "action":Landroid/app/Notification$Action;
    new-instance v2, Landroid/app/Notification$Builder;

    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v8}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1215
    const v3, 0x108008a

    .line 1214
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1216
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const v5, 0x106014c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    .line 1214
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v24

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v25

    .line 1219
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    .line 1221
    new-instance v7, Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-direct {v7, v3}, Landroid/os/UserHandle;-><init>(I)V

    .line 1219
    const/4 v3, 0x0

    .line 1220
    const/high16 v5, 0x8000000

    const/4 v6, 0x0

    .line 1219
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1214
    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1222
    const/4 v3, 0x1

    .line 1214
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v2

    .line 1223
    const/4 v3, 0x1

    .line 1214
    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v19

    .line 1229
    .local v19, "notification":Landroid/app/Notification;
    return-object v19

    .line 1170
    .end local v9    # "OP_HP_CHANNEL":Ljava/lang/String;
    .end local v10    # "PKG_NAME":Ljava/lang/String;
    .end local v11    # "action":Landroid/app/Notification$Action;
    .end local v13    # "cancelIntent":Landroid/content/Intent;
    .end local v14    # "channelHP":Landroid/app/NotificationChannel;
    .end local v18    # "inm":Landroid/app/INotificationManager;
    .end local v19    # "notification":Landroid/app/Notification;
    .end local v20    # "pendingCancelIntent":Landroid/app/PendingIntent;
    .end local v21    # "pendingIntent":Landroid/app/PendingIntent;
    .end local v23    # "stopIntent":Landroid/content/Intent;
    :cond_7
    const-string/jumbo v2, "com.oem.intent.action.force_stop_high_pkg"

    goto/16 :goto_1

    .line 1203
    .restart local v8    # "CHANNEL_ID":Ljava/lang/String;
    .restart local v9    # "OP_HP_CHANNEL":Ljava/lang/String;
    .restart local v10    # "PKG_NAME":Ljava/lang/String;
    .restart local v13    # "cancelIntent":Landroid/content/Intent;
    .restart local v14    # "channelHP":Landroid/app/NotificationChannel;
    .restart local v18    # "inm":Landroid/app/INotificationManager;
    .restart local v20    # "pendingCancelIntent":Landroid/app/PendingIntent;
    .restart local v21    # "pendingIntent":Landroid/app/PendingIntent;
    .restart local v23    # "stopIntent":Landroid/content/Intent;
    :catch_1
    move-exception v17

    .line 1206
    .local v17, "ex":Ljava/lang/Exception;
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .local v8, "CHANNEL_ID":Ljava/lang/String;
    goto :goto_2

    .line 1204
    .end local v17    # "ex":Ljava/lang/Exception;
    .local v8, "CHANNEL_ID":Ljava/lang/String;
    :catchall_0
    move-exception v2

    .line 1206
    sget-object v8, Lcom/android/internal/notification/SystemNotificationChannels;->ALERTS:Ljava/lang/String;

    .line 1204
    .local v8, "CHANNEL_ID":Ljava/lang/String;
    throw v2
.end method

.method private forceStopPackage(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    const/4 v1, 0x0

    .line 2629
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    .line 2630
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    .line 2631
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusAppBootManager;->updateAppStopInfo(Ljava/lang/String;)V

    .line 2632
    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    .line 2633
    const v1, 0x8000

    .line 2632
    invoke-virtual {v0, p1, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updatePowerFlag(Ljava/lang/String;I)V

    .line 2635
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->postProcessOfForceStop(Ljava/lang/String;I)V

    .line 2636
    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 3156
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 3158
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 3157
    iput-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    .line 3160
    :cond_0
    const-string/jumbo v0, ""

    .line 3161
    .local v0, "uids":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    .line 3163
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3169
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3166
    :cond_1
    const-string/jumbo v0, ":0"

    goto :goto_0
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 396
    invoke-static {v0, v0, v0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    return-object v0
.end method

.method public static final getInstance(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)Lcom/android/server/am/OnePlusHighPowerDetector;
    .locals 2
    .param p0, "ams"    # Lcom/android/server/am/ActivityManagerService;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;
    .param p3, "restartProcessManager"    # Lcom/android/server/am/RestartProcessManager;

    .prologue
    .line 384
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    if-nez v0, :cond_2

    .line 385
    if-eqz p0, :cond_0

    if-nez p1, :cond_3

    .line 387
    :cond_0
    :goto_0
    const-string/jumbo v0, "OHPD"

    const-string/jumbo v1, "Fatal Exception : param is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    :cond_1
    new-instance v0, Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/am/OnePlusHighPowerDetector;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Lcom/android/server/am/BatteryStatsService;Lcom/android/server/am/RestartProcessManager;)V

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    .line 392
    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->INSTANCE:Lcom/android/server/am/OnePlusHighPowerDetector;

    return-object v0

    .line 386
    :cond_3
    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    goto :goto_0
.end method

.method private getPDLastFGTimeThold()I
    .locals 1

    .prologue
    .line 2904
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsScreenOn:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    goto :goto_0
.end method

.method private init()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 427
    const v2, 0x5080002

    .line 426
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    .line 428
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 429
    const v2, 0x5080003

    .line 428
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 431
    const v2, 0x5080006

    .line 430
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    .line 432
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 433
    const v2, 0x5080004

    .line 432
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    .line 434
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 435
    const v2, 0x5080005

    .line 434
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 437
    const v2, 0x5080007

    .line 436
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    .line 438
    sget-object v0, Landroid/os/Build;->REGION:Ljava/lang/String;

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    .line 439
    const-string/jumbo v0, "persist.sys.ohpd.flags"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    .line 440
    const-string/jumbo v0, "persist.sys.ohpd.kcheck"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 442
    const-string/jumbo v0, "msm8998"

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 443
    const-string/jumbo v0, "/sys/class/thermal/thermal_zone5/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    .line 454
    :cond_0
    :goto_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateCpuThreshold(Ljava/lang/String;)V

    .line 455
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->registerReceiver()V

    .line 458
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->registerNotificationCancelReceiver()V

    .line 460
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->initOnlineConfig()V

    .line 461
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 462
    const-string/jumbo v0, "persist.sys.ohpd.pd.usg.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 463
    const-string/jumbo v0, "persist.sys.ohpd.pd.temp.thold"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 464
    const-string/jumbo v0, "persist.sys.ohpd.rnk.med.usg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    .line 465
    const-string/jumbo v0, "persist.sys.ohpd.pd.on.lastfg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    .line 466
    const-string/jumbo v0, "persist.sys.ohpd.pd.off.lastfg"

    sget v1, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    .line 467
    const-string/jumbo v0, "persist.sys.ohpd.skip.on"

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->FORCE_HANDLE_SKIP_APP:Z

    .line 469
    :cond_1
    return-void

    .line 444
    :cond_2
    const-string/jumbo v0, "sdm845"

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 445
    const-string/jumbo v0, "/sys/class/thermal/thermal_zone68/temp"

    sput-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    .line 446
    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "[BgDetect] mIsPreciseDevTemp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 450
    sput-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    .line 451
    const-string/jumbo v0, "[BgDetect] sdm845 platform, enabled monitoring camera process"

    invoke-static {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2908
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->lastSkipTime:J

    sub-long/2addr v0, v2

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 2910
    const/4 v0, 0x1

    return v0

    .line 2912
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isImportantProc(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 2916
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v1, "com.android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2917
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2916
    if-nez v0, :cond_0

    .line 2918
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.gsf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2916
    if-nez v0, :cond_0

    .line 2919
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.packageinstaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2916
    if-nez v0, :cond_0

    .line 2920
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.google.android.webview"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 2916
    if-nez v0, :cond_0

    .line 2921
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-string/jumbo v1, "android.process"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    .line 2916
    if-eqz v0, :cond_1

    .line 2922
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 2924
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 375
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 376
    const-string/jumbo v0, "OHPD"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :cond_0
    return-void
.end method

.method private notifyBgDetectIfNecessary(Ljava/lang/String;IILjava/lang/String;I)V
    .locals 5
    .param p1, "triggerPkgName"    # Ljava/lang/String;
    .param p2, "pid"    # I
    .param p3, "userId"    # I
    .param p4, "reason"    # Ljava/lang/String;
    .param p5, "type"    # I

    .prologue
    .line 2655
    :try_start_0
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyBgDetectIfNecessary # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reason="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2658
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v3, 0xd6e5

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2659
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2660
    iput p5, v1, Landroid/os/Message;->arg1:I

    .line 2661
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 2662
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2667
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 2663
    :catch_0
    move-exception v0

    .line 2664
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error when notifyBgDetectIfNecessary "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2665
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3
    .param p1, "uids"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 3173
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 3174
    :cond_0
    return-object v2

    .line 3176
    :cond_1
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3177
    return-object v2

    .line 3179
    :cond_2
    const-string/jumbo v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3180
    .local v0, "arrayUid":[Ljava/lang/String;
    return-object v0
.end method

.method private parseLockedStr(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "lockedStr"    # Ljava/lang/String;
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
    .line 3184
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3185
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    .line 3186
    return-object v2

    .line 3188
    :cond_0
    const-string/jumbo v3, ","

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3189
    .local v1, "keys":[Ljava/lang/String;
    if-eqz v1, :cond_1

    array-length v3, v1

    if-lez v3, :cond_1

    .line 3190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    if-ge v0, v3, :cond_1

    .line 3191
    aget-object v3, v1, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3190
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3194
    .end local v0    # "i":I
    :cond_1
    return-object v2
.end method

.method private registerNotificationCancelReceiver()V
    .locals 3

    .prologue
    .line 566
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 567
    .local v0, "notificationCancelFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.oem.intent.action.POWER_NOTIFICATION_CANCEL"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 568
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$2;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 580
    return-void
.end method

.method private registerReceiver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 583
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 584
    .local v0, "batteryStateFilter":Landroid/content/IntentFilter;
    const-string/jumbo v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$3;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$3;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 624
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 625
    .local v1, "generalFilter":Landroid/content/IntentFilter;
    const v2, 0x7fffffff

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 628
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mRegion:Ljava/lang/String;

    const-string/jumbo v3, "CN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 630
    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 631
    invoke-direct {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->responseSIMStateChanged()Z

    move-result v2

    if-nez v2, :cond_0

    .line 632
    const-string/jumbo v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 640
    :cond_0
    :goto_0
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 641
    const-string/jumbo v2, "ohpd.action.test"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 644
    :cond_1
    const-string/jumbo v2, "com.oem.intent.action.force_stop_pkg"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 645
    const-string/jumbo v2, "com.oem.intent.action.force_stop_high_pkg"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 646
    const-string/jumbo v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 647
    const-string/jumbo v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 649
    const-string/jumbo v2, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 650
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 651
    return-void

    .line 637
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    goto :goto_0
.end method

.method private resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 38
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 3212
    sget-boolean v34, Lcom/android/server/am/OnePlusHighPowerDetector;->ONLINE_CONFIG:Z

    if-nez v34, :cond_0

    .line 3213
    return-void

    .line 3215
    :cond_0
    if-nez p1, :cond_1

    .line 3216
    return-void

    .line 3220
    :cond_1
    :try_start_0
    sget-object v35, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v35
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 3223
    :try_start_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cleanUpNativeMonitorList()V

    .line 3225
    const/16 v16, 0x0

    .local v16, "index":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v16

    move/from16 v1, v34

    if-ge v0, v1, :cond_24

    .line 3226
    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v18

    .line 3227
    .local v18, "json":Lorg/json/JSONObject;
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "backgroundprocess_detection_app_whitelist"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_3

    .line 3228
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v33

    .line 3229
    .local v33, "whiteAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3230
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 3231
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_1
    invoke-virtual/range {v33 .. v33}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_2

    .line 3232
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3231
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    :cond_2
    :try_start_3
    monitor-exit v36

    .line 3236
    .end local v15    # "i":I
    .end local v33    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :cond_3
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "black_list"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_5

    .line 3237
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 3238
    .local v3, "blackAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3239
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 3240
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_4

    .line 3241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual {v3, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3240
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 3229
    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v15    # "i":I
    .restart local v33    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :catchall_0
    move-exception v34

    :try_start_5
    monitor-exit v36

    throw v34
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3220
    .end local v16    # "index":I
    .end local v18    # "json":Lorg/json/JSONObject;
    .end local v33    # "whiteAppListJsonArray":Lorg/json/JSONArray;
    :catchall_1
    move-exception v34

    :try_start_6
    monitor-exit v35

    throw v34
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 3409
    :catch_0
    move-exception v9

    .line 3410
    .local v9, "e":Lorg/json/JSONException;
    const-string/jumbo v34, "OHPD"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v9}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3414
    .end local v9    # "e":Lorg/json/JSONException;
    :goto_3
    return-void

    .restart local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .restart local v15    # "i":I
    .restart local v16    # "index":I
    .restart local v18    # "json":Lorg/json/JSONObject;
    :cond_4
    :try_start_7
    monitor-exit v36

    .line 3245
    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .end local v15    # "i":I
    :cond_5
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "black_ex_list"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_7

    .line 3246
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 3247
    .local v4, "blackExAppListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 3248
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 3249
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_6

    .line 3250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual {v4, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 3249
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 3238
    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .end local v15    # "i":I
    .restart local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    :catchall_2
    move-exception v34

    :try_start_9
    monitor-exit v36

    throw v34

    .end local v3    # "blackAppListJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .restart local v15    # "i":I
    :cond_6
    monitor-exit v36

    .line 3254
    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .end local v15    # "i":I
    :cond_7
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "kill_proc_list"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_9

    .line 3255
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v19

    .line 3256
    .local v19, "killProcListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 3257
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 3258
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_5
    invoke-virtual/range {v19 .. v19}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_8

    .line 3259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 3258
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 3247
    .end local v15    # "i":I
    .end local v19    # "killProcListJsonArray":Lorg/json/JSONArray;
    .restart local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    :catchall_3
    move-exception v34

    :try_start_b
    monitor-exit v36

    throw v34

    .end local v4    # "blackExAppListJsonArray":Lorg/json/JSONArray;
    .restart local v15    # "i":I
    .restart local v19    # "killProcListJsonArray":Lorg/json/JSONArray;
    :cond_8
    monitor-exit v36

    .line 3263
    .end local v15    # "i":I
    .end local v19    # "killProcListJsonArray":Lorg/json/JSONArray;
    :cond_9
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "level0_kill_proc_list"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_b

    .line 3264
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v22

    .line 3265
    .local v22, "level0KillListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 3266
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 3267
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_6
    invoke-virtual/range {v22 .. v22}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_a

    .line 3268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 3267
    add-int/lit8 v15, v15, 0x1

    goto :goto_6

    .line 3256
    .end local v15    # "i":I
    .end local v22    # "level0KillListJsonArray":Lorg/json/JSONArray;
    .restart local v19    # "killProcListJsonArray":Lorg/json/JSONArray;
    :catchall_4
    move-exception v34

    :try_start_d
    monitor-exit v36

    throw v34

    .end local v19    # "killProcListJsonArray":Lorg/json/JSONArray;
    .restart local v15    # "i":I
    .restart local v22    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :cond_a
    monitor-exit v36

    .line 3272
    .end local v15    # "i":I
    .end local v22    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :cond_b
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "prebuilt_gms_proc_list"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_d

    .line 3273
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v14

    .line 3274
    .local v14, "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v36, v0

    monitor-enter v36
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    .line 3275
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Ljava/util/ArrayList;->clear()V

    .line 3276
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_7
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v34

    move/from16 v0, v34

    if-ge v15, v0, :cond_c

    .line 3277
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    move-object/from16 v34, v0

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v34

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    .line 3276
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 3265
    .end local v14    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .end local v15    # "i":I
    .restart local v22    # "level0KillListJsonArray":Lorg/json/JSONArray;
    :catchall_5
    move-exception v34

    :try_start_f
    monitor-exit v36

    throw v34

    .end local v22    # "level0KillListJsonArray":Lorg/json/JSONArray;
    .restart local v14    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .restart local v15    # "i":I
    :cond_c
    monitor-exit v36

    .line 3281
    .end local v14    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    .end local v15    # "i":I
    :cond_d
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_cpu_usage_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_e

    .line 3282
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 3283
    .local v32, "thresholdJsonArray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_8
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v15, v0, :cond_e

    .line 3284
    sget-object v34, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    aput v36, v34, v15

    .line 3285
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MIN["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "]:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v37, v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 3274
    .end local v15    # "i":I
    .end local v32    # "thresholdJsonArray":Lorg/json/JSONArray;
    .restart local v14    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    :catchall_6
    move-exception v34

    monitor-exit v36

    throw v34

    .line 3288
    .end local v14    # "gmsMonitorListJsonArray":Lorg/json/JSONArray;
    :cond_e
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_cpu_usage_threshold_max"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_f

    .line 3289
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v32

    .line 3290
    .restart local v32    # "thresholdJsonArray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_9
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v15, v0, :cond_f

    .line 3291
    sget-object v34, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    aput v36, v34, v15

    .line 3292
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_CPU_USAGE_THRESHOLD_MAX["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "]:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v37, v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3290
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 3295
    .end local v15    # "i":I
    .end local v32    # "thresholdJsonArray":Lorg/json/JSONArray;
    :cond_f
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_network_usage_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_10

    .line 3296
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v25

    .line 3297
    .local v25, "netUsageJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    .line 3298
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_NETWORK_USAGE_THRESHOLD:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3300
    .end local v25    # "netUsageJsonArray":Lorg/json/JSONArray;
    :cond_10
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "cpu_check_delay"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_11

    .line 3301
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 3302
    .local v7, "delayJsonArray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_a
    const/16 v34, 0x4

    move/from16 v0, v34

    if-ge v15, v0, :cond_11

    .line 3303
    sget-object v34, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    invoke-virtual {v7, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/Integer;->intValue()I

    move-result v36

    aput v36, v34, v15

    .line 3304
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]CPU_CHECK_DELAY["

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, "]:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-object v37, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v37, v37, v15

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    add-int/lit8 v15, v15, 0x1

    goto :goto_a

    .line 3307
    .end local v7    # "delayJsonArray":Lorg/json/JSONArray;
    .end local v15    # "i":I
    :cond_11
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "cpu_min_check_duration"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_12

    .line 3308
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v23

    .line 3309
    .local v23, "miuDurJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    .line 3310
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]CPU_MIN_CHECK_DURATION:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3312
    .end local v23    # "miuDurJsonArray":Lorg/json/JSONArray;
    :cond_12
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_last_fg_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_13

    .line 3313
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v20

    .line 3314
    .local v20, "lastFgJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    .line 3315
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]APP_LAST_FOREGROUND_TIME_THRESHOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_FOREGROUND_TIME_THRESHOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3317
    .end local v20    # "lastFgJsonArray":Lorg/json/JSONArray;
    :cond_13
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_last_provider_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_14

    .line 3318
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v21

    .line 3319
    .local v21, "lastProviderJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    .line 3320
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3322
    .end local v21    # "lastProviderJsonArray":Lorg/json/JSONArray;
    :cond_14
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_pd_usage_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_15

    .line 3323
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v29

    .line 3324
    .local v29, "pdUsgTholdJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    .line 3325
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]POWER_DRAIN_USG_THOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_USG_THOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3327
    .end local v29    # "pdUsgTholdJsonArray":Lorg/json/JSONArray;
    :cond_15
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_rnk_usage_threshold_medium"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_16

    .line 3328
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v31

    .line 3329
    .local v31, "rnkUsgTholdMedJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v31

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    .line 3330
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]RNK_USG_THOLD_MEDIUM: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_USG_THOLD_MEDIUM:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3332
    .end local v31    # "rnkUsgTholdMedJsonArray":Lorg/json/JSONArray;
    :cond_16
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_rnk_enable"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_17

    .line 3333
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v30

    .line 3334
    .local v30, "rnkSwitchJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v30

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    sput-boolean v34, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    .line 3335
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]RNK_ON: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/server/am/OnePlusHighPowerDetector;->RNK_ON:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3337
    .end local v30    # "rnkSwitchJsonArray":Lorg/json/JSONArray;
    :cond_17
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_pd_tempature_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_18

    .line 3338
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v28

    .line 3339
    .local v28, "pdTempTholdJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v28

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    .line 3340
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]POWER_DRAIN_TEMP_THOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->POWER_DRAIN_TEMP_THOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3343
    .end local v28    # "pdTempTholdJsonArray":Lorg/json/JSONArray;
    :cond_18
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_pd_last_fg_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_19

    .line 3344
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v27

    .line 3345
    .local v27, "pdSOnFGTholdJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    .line 3346
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]S_ON_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_ON_PD_LAST_FG_TIME_THOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3349
    .end local v27    # "pdSOnFGTholdJsonArray":Lorg/json/JSONArray;
    :cond_19
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_s_off_pd_last_fg_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1a

    .line 3350
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v26

    .line 3351
    .local v26, "pdSOffFGTholdJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    .line 3352
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]S_OFF_PD_LAST_FG_TIME_THOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->SCREEN_OFF_PD_LAST_FG_TIME_THOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3354
    .end local v26    # "pdSOffFGTholdJsonArray":Lorg/json/JSONArray;
    :cond_1a
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_app_cont_busy_time_thold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1b

    .line 3355
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 3356
    .local v2, "appBusyTimeTholdJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    sput v34, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    .line 3357
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig] APP_CONT_BUSY_TIME_THOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget v37, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_CONT_BUSY_TIME_THOLD:I

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3359
    .end local v2    # "appBusyTimeTholdJsonArray":Lorg/json/JSONArray;
    :cond_1b
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_enable_skip_handle"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1c

    .line 3360
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v13

    .line 3361
    .local v13, "enableSkipJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v13, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    sput-boolean v34, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    .line 3362
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig] ENABLE_SKIP_HANDLE: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableHandleSkipApps:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3364
    .end local v13    # "enableSkipJsonArray":Lorg/json/JSONArray;
    :cond_1c
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "native_detection_list"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1d

    .line 3365
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v17

    .line 3366
    .local v17, "jasonArray":Lorg/json/JSONArray;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->saveNativeMonitorList(Lorg/json/JSONArray;)V

    .line 3370
    .end local v17    # "jasonArray":Lorg/json/JSONArray;
    :cond_1d
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_enable_kill_busy_gms"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1e

    .line 3371
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 3372
    .local v11, "enableKillBusyGMSJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    sput-boolean v34, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z

    .line 3373
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig] ENABLE_KILL_BUSY_GMS_PROCESS: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyGMSProcess:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3377
    .end local v11    # "enableKillBusyGMSJsonArray":Lorg/json/JSONArray;
    :cond_1e
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_enable_monitor_camera"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_1f

    .line 3378
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 3379
    .local v12, "enableMonitorCameraJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v12, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    sput-boolean v34, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    .line 3380
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_ENABLE_MONITOR_CAMERA_PROCESS: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3383
    .end local v12    # "enableMonitorCameraJsonArray":Lorg/json/JSONArray;
    :cond_1f
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_enable_kill_busy_camera"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_20

    .line 3384
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    .line 3385
    .local v10, "enableKillBusyCameraJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v10, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    sput-boolean v34, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    .line 3386
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_ENABLE_KILL_BUSY_CAMERA_PROCESS: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    sget-boolean v37, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableKillBusyCameraProc:Z

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3389
    .end local v10    # "enableKillBusyCameraJsonArray":Lorg/json/JSONArray;
    :cond_20
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_camera_cpu_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_21

    .line 3390
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 3391
    .local v5, "cameraCpuTholdJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v5, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    .line 3392
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CAMERA_CPU_USAGE_THRESHOLD:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3395
    .end local v5    # "cameraCpuTholdJsonArray":Lorg/json/JSONArray;
    :cond_21
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_camera_proc_name"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_22

    .line 3396
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 3397
    .local v6, "cameraProcNameJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move/from16 v0, v34

    invoke-virtual {v6, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    .line 3398
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_CAMERA_PROC_NAME: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 3401
    .end local v6    # "cameraProcNameJsonArray":Lorg/json/JSONArray;
    :cond_22
    const-string/jumbo v34, "name"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v34

    const-string/jumbo v36, "bg_detection_native_cpu_threshold"

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v34

    if-eqz v34, :cond_23

    .line 3402
    const-string/jumbo v34, "value"

    move-object/from16 v0, v18

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v24

    .line 3403
    .local v24, "nativeCpuTholdJsonArray":Lorg/json/JSONArray;
    const/16 v34, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/Integer;->intValue()I

    move-result v34

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I

    .line 3404
    const-string/jumbo v34, "OHPD"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "[OnlineConfig]BG_DETECTION_NATIVE_CPU_USAGE_THRESHOLD: "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeUsageCriteria:I

    move/from16 v37, v0

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v34

    move-object/from16 v1, v36

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 3225
    .end local v24    # "nativeCpuTholdJsonArray":Lorg/json/JSONArray;
    :cond_23
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_0

    .end local v18    # "json":Lorg/json/JSONObject;
    :cond_24
    :try_start_10
    monitor-exit v35

    .line 3408
    const-string/jumbo v34, "OHPD"

    const-string/jumbo v35, "[OnlineConfig] BackgroundDetection updated complete"

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_0
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_1

    goto/16 :goto_3

    .line 3411
    .end local v16    # "index":I
    :catch_1
    move-exception v8

    .line 3412
    .local v8, "e":Ljava/lang/Exception;
    const-string/jumbo v34, "OHPD"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v36, "[OnlineConfig] resolveConfigFromJSON, error message:"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual {v8}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v35 .. v36}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v34 .. v35}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3
.end method

.method private responseSIMStateChanged()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 666
    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 667
    return v4

    .line 669
    :cond_0
    const/4 v1, 0x0

    .line 671
    .local v1, "ret":Z
    const-string/jumbo v2, "gsm.sim.operator.iso-country"

    const-string/jumbo v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 672
    .local v0, "mccCountry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x2

    if-lt v2, v3, :cond_2

    .line 673
    const-string/jumbo v2, "in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 674
    :cond_1
    invoke-direct {p0, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    .line 678
    :goto_0
    const/4 v1, 0x1

    .line 679
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BgDetect] responseSIMStateChanged # mccCountry="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :cond_2
    return v1

    .line 676
    :cond_3
    invoke-direct {p0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->setKillMechanismState(Z)V

    goto :goto_0
.end method

.method private saveNativeMonitorList(Lorg/json/JSONArray;)V
    .locals 13
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .prologue
    .line 3438
    const/4 v3, 0x0

    .line 3439
    .local v3, "file":Ljava/io/File;
    const/4 v8, 0x0

    .line 3442
    .local v8, "writer":Ljava/io/BufferedWriter;
    :try_start_0
    const-string/jumbo v10, "sdm845"

    const-string/jumbo v11, "ro.board.platform"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3443
    new-instance v4, Ljava/io/File;

    const-string/jumbo v10, "/data/system/nativeproc/proclist"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .local v4, "file":Ljava/io/File;
    move-object v3, v4

    .line 3447
    .end local v4    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    :goto_0
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 3448
    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/File;->mkdirs()Z

    .line 3450
    :cond_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 3451
    new-instance v9, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    new-instance v11, Ljava/io/FileOutputStream;

    invoke-direct {v11, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v10, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v9, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3452
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v9, "writer":Ljava/io/BufferedWriter;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v5, v10, :cond_2

    .line 3453
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 3454
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string/jumbo v10, "daemon"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3455
    .local v0, "daemon":Ljava/lang/String;
    const-string/jumbo v10, "thold"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 3456
    .local v7, "thold":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 3457
    invoke-virtual {v9}, Ljava/io/BufferedWriter;->newLine()V

    .line 3461
    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeMonitorMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v0, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3462
    const-string/jumbo v10, "OHPD"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[OnlineConfig] start monitoring native process:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", thold="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3452
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 3445
    .end local v0    # "daemon":Ljava/lang/String;
    .end local v5    # "i":I
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "thold":Ljava/lang/String;
    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .local v3, "file":Ljava/io/File;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :cond_1
    :try_start_2
    new-instance v4, Ljava/io/File;

    const-string/jumbo v10, "/cache/nativeproc/proclist"

    invoke-direct {v4, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .restart local v4    # "file":Ljava/io/File;
    move-object v3, v4

    .end local v4    # "file":Ljava/io/File;
    .local v3, "file":Ljava/io/File;
    goto/16 :goto_0

    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v5    # "i":I
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :cond_2
    move-object v8, v9

    .line 3469
    .end local v5    # "i":I
    .end local v9    # "writer":Ljava/io/BufferedWriter;
    :cond_3
    if-eqz v8, :cond_4

    .line 3471
    :try_start_3
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 3477
    .end local v3    # "file":Ljava/io/File;
    :cond_4
    :goto_2
    return-void

    .line 3472
    .restart local v3    # "file":Ljava/io/File;
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/io/IOException;
    goto :goto_2

    .line 3465
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "file":Ljava/io/File;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    :catch_1
    move-exception v2

    .line 3466
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .local v2, "e":Ljava/lang/Exception;
    :goto_3
    :try_start_4
    const-string/jumbo v10, "OHPD"

    const-string/jumbo v11, "fail to save native monitor list to file "

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3467
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3469
    if-eqz v8, :cond_4

    .line 3471
    :try_start_5
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    .line 3472
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 3468
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v10

    .line 3469
    :goto_4
    if-eqz v8, :cond_5

    .line 3471
    :try_start_6
    invoke-virtual {v8}, Ljava/io/BufferedWriter;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 3468
    :cond_5
    :goto_5
    throw v10

    .line 3472
    :catch_3
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_5

    .line 3468
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v3    # "file":Ljava/io/File;
    .restart local v5    # "i":I
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catchall_1
    move-exception v10

    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .local v8, "writer":Ljava/io/BufferedWriter;
    goto :goto_4

    .line 3465
    .end local v8    # "writer":Ljava/io/BufferedWriter;
    .restart local v9    # "writer":Ljava/io/BufferedWriter;
    :catch_4
    move-exception v2

    .restart local v2    # "e":Ljava/lang/Exception;
    move-object v8, v9

    .end local v9    # "writer":Ljava/io/BufferedWriter;
    .restart local v8    # "writer":Ljava/io/BufferedWriter;
    goto :goto_3
.end method

.method private scheduleForceStopPkg(Ljava/lang/String;II)V
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "type"    # I

    .prologue
    .line 2671
    :try_start_0
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[BgDetect] scheduleForceStopPkg # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " user id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2672
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v3, 0xd6e0

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2673
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2674
    iput p2, v1, Landroid/os/Message;->arg1:I

    .line 2675
    iput p3, v1, Landroid/os/Message;->arg2:I

    .line 2676
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2681
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 2677
    :catch_0
    move-exception v0

    .line 2678
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Error when scheduleForceStopPkg "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2679
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setKillMechanismState(Z)V
    .locals 3
    .param p1, "set"    # Z

    .prologue
    .line 655
    sput-boolean p1, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    .line 656
    const-string/jumbo v1, "persist.sys.ohpd.kcheck"

    if-eqz p1, :cond_1

    const-string/jumbo v0, "true"

    :goto_0
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 657
    const-string/jumbo v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[BgDetect] mKillMechanism "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mKillMechanism:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 660
    sget v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    .line 661
    const-string/jumbo v0, "persist.sys.ohpd.flags"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mGlobalFlags:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :cond_0
    return-void

    .line 656
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method private skipCheck(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZI)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "curUptime"    # J
    .param p4, "level"    # I
    .param p5, "skipReason"    # Ljava/lang/StringBuffer;
    .param p6, "isBatteryDrain"    # Z
    .param p7, "lastFGTimeThold"    # I

    .prologue
    .line 2929
    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/server/am/OnePlusHighPowerDetector;->skipCheckInner(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z

    move-result v0

    return v0
.end method

.method private skipCheckInner(Lcom/android/server/am/ProcessRecord;JILjava/lang/StringBuffer;ZILjava/util/List;Z)Z
    .locals 12
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "curUptime"    # J
    .param p4, "level"    # I
    .param p5, "skipReason"    # Ljava/lang/StringBuffer;
    .param p6, "isBatteryDrain"    # Z
    .param p7, "lastFGTimeThold"    # I
    .param p9, "forlightidle"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "JI",
            "Ljava/lang/StringBuffer;",
            "ZI",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 2934
    .local p8, "HighUsedPkgList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2935
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "white list pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2936
    const/4 v8, 0x1

    return v8

    .line 2941
    :cond_0
    if-eqz p9, :cond_3

    .line 2942
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v8, :cond_1

    if-eqz p8, :cond_1

    .line 2943
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p8

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2944
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "highUsed list pkg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2945
    const/4 v8, 0x1

    return v8

    .line 2950
    :cond_1
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v9, 0x190

    if-gt v8, v9, :cond_2

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_2

    .line 2951
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "small adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2952
    const/4 v8, 0x1

    return v8

    .line 2956
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isImportantProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2957
    const-string/jumbo v8, "important proc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2958
    const/4 v8, 0x1

    return v8

    .line 2963
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 2964
    const/4 v8, 0x0

    return v8

    .line 2968
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_5

    const/4 v8, 0x2

    move/from16 v0, p4

    if-gt v0, v8, :cond_5

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v9, 0x190

    if-gt v8, v9, :cond_5

    iget v8, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v9, 0xc8

    if-eq v8, v9, :cond_5

    .line 2969
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "small adj "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2970
    const/4 v8, 0x1

    return v8

    .line 2974
    :cond_5
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-nez v8, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isImportantProc(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 2975
    const-string/jumbo v8, "important proc"

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2976
    const/4 v8, 0x1

    return v8

    .line 2981
    :cond_6
    if-nez p9, :cond_7

    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_7

    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v8, p2, v8

    move/from16 v0, p7

    int-to-long v10, v0

    cmp-long v8, v8, v10

    if-gez v8, :cond_7

    .line 2982
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to just switch to bg "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/android/server/am/ProcessRecord;->lastFgTime:J

    sub-long v10, p2, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms ago , thold "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2983
    const/4 v8, 0x1

    return v8

    .line 2987
    :cond_7
    if-nez p9, :cond_8

    if-nez p4, :cond_8

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isAppBusyLongTime(Lcom/android/server/am/ProcessRecord;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 2988
    const-string/jumbo v8, "OHPD"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[BgDetect] skip provider/network check on app "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2989
    const/4 v8, 0x0

    return v8

    .line 2993
    :cond_8
    if-nez p9, :cond_9

    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-eqz v8, :cond_9

    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v8, p2, v8

    sget v10, Lcom/android/server/am/OnePlusHighPowerDetector;->APP_LAST_CONTACT_PROVIDER_TIME_THRESHOLD:I

    int-to-long v10, v10

    cmp-long v8, v8, v10

    if-gez v8, :cond_9

    .line 2994
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to just access contacts provider "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p1, Lcom/android/server/am/ProcessRecord;->lastContactProviderTime:J

    sub-long v10, p2, v10

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " ms ago"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 2995
    const/4 v8, 0x1

    return v8

    .line 2999
    :cond_9
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    .line 3001
    .local v2, "curUsage":J
    if-eqz p9, :cond_a

    .line 3003
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    sub-long v4, v2, v8

    .line 3007
    .local v4, "rxDiff":J
    :goto_0
    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    int-to-long v8, v8

    cmp-long v8, v4, v8

    if-lez v8, :cond_b

    .line 3008
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to net rx usage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3009
    const/4 v8, 0x1

    return v8

    .line 3005
    .end local v4    # "rxDiff":J
    :cond_a
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    aget-wide v8, v8, p4

    sub-long v4, v2, v8

    .restart local v4    # "rxDiff":J
    goto :goto_0

    .line 3012
    :cond_b
    iget v8, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v8}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    .line 3014
    if-eqz p9, :cond_c

    .line 3016
    iget-wide v8, p1, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J

    sub-long v6, v2, v8

    .line 3020
    .local v6, "txDiff":J
    :goto_1
    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_NETWORK_USAGE_THRESHOLD:I

    int-to-long v8, v8

    cmp-long v8, v6, v8

    if-lez v8, :cond_d

    .line 3021
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "app "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ") due to net tx usage is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " bytes"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v0, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 3022
    const/4 v8, 0x1

    return v8

    .line 3018
    .end local v6    # "txDiff":J
    :cond_c
    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    aget-wide v8, v8, p4

    sub-long v6, v2, v8

    .restart local v6    # "txDiff":J
    goto :goto_1

    .line 3024
    :cond_d
    const/4 v8, 0x0

    return v8
.end method

.method private stopBgPowerHungryApp(Ljava/lang/String;IZ)V
    .locals 8
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I
    .param p3, "remove"    # Z

    .prologue
    .line 2851
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopBgPowerHungryApp +# pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", powerLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", remove="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 2852
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 2853
    .local v2, "startTime":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2855
    .local v0, "callerUid":I
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    const/16 v5, 0x3e8

    if-ne v4, v5, :cond_0

    .line 2857
    const/4 v4, -0x2

    :try_start_0
    invoke-direct {p0, p1, v4}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V

    .line 2858
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BgDetect]- stopBgPowerHungryApp : pkg "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " level "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2863
    :cond_0
    :goto_0
    return-void

    .line 2859
    :catch_0
    move-exception v1

    .line 2860
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static updateCpuThreshold(Ljava/lang/String;)V
    .locals 11
    .param p0, "thresh"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    const/4 v10, 0x4

    .line 693
    move-object v5, p0

    .line 694
    .local v5, "threshold":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 695
    const-string/jumbo v6, "persist.sys.ohpd.threshold"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 697
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateCpuThreshold # thresh="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", threshold="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 698
    if-eqz v5, :cond_4

    .line 699
    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 700
    .local v2, "items":[Ljava/lang/String;
    array-length v6, v2

    if-ne v6, v10, :cond_4

    .line 701
    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->sConfigLock:Ljava/lang/Object;

    monitor-enter v7

    .line 703
    :try_start_0
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    const/high16 v8, 0x200000

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 704
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    const/4 v8, 0x0

    aget-object v8, v2, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x0

    aput v8, v6, v9

    .line 705
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v10, :cond_1

    .line 706
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget-object v8, v2, v1

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v6, v1

    .line 707
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    add-int/lit8 v9, v1, -0x1

    aget v8, v8, v9

    aput v8, v6, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 705
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 709
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 710
    .local v0, "e":Ljava/lang/NumberFormatException;
    :try_start_1
    const-string/jumbo v6, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCpuThreshold # NumberFormatException : threshold="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    sget-boolean v6, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v6, :cond_3

    .line 714
    const-string/jumbo v4, ""

    .line 715
    .local v4, "min":Ljava/lang/String;
    const-string/jumbo v3, ""

    .line 716
    .local v3, "max":Ljava/lang/String;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v10, :cond_2

    .line 717
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MIN:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 718
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->BG_DETECTION_CPU_USAGE_THRESHOLD_MAX:[I

    aget v8, v8, v1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 716
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 720
    :cond_2
    const-string/jumbo v6, "OHPD"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "updateCpuThreshold # min="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " max="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "i":I
    .end local v3    # "max":Ljava/lang/String;
    .end local v4    # "min":Ljava/lang/String;
    :cond_3
    monitor-exit v7

    .line 725
    .end local v2    # "items":[Ljava/lang/String;
    :cond_4
    return-void

    .line 701
    .restart local v2    # "items":[Ljava/lang/String;
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6
.end method

.method private updateFinishingStatusUidsSet(Ljava/util/HashSet;Ljava/util/HashSet;Lcom/android/server/am/ProcessRecord;)V
    .locals 5
    .param p3, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/server/am/ProcessRecord;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1282
    .local p1, "setFinish":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .local p2, "setNonFinish":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1283
    .local v3, "uid":I
    const/4 v0, 0x1

    .line 1284
    .local v0, "allfinishing":Z
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    if-eqz v4, :cond_1

    .line 1285
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->activities:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "mActivityRecord$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    .line 1286
    .local v1, "mActivityRecord":Lcom/android/server/am/ActivityRecord;
    if-eqz v1, :cond_0

    iget-boolean v4, v1, Lcom/android/server/am/ActivityRecord;->finishing:Z

    xor-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_0

    .line 1287
    const/4 v0, 0x0

    .line 1292
    .end local v1    # "mActivityRecord":Lcom/android/server/am/ActivityRecord;
    .end local v2    # "mActivityRecord$iterator":Ljava/util/Iterator;
    :cond_1
    if-eqz v0, :cond_2

    .line 1293
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1297
    :goto_0
    return-void

    .line 1295
    :cond_2
    iget-object v4, p3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method addToMap(Ljava/util/HashMap;Ljava/lang/String;IZZII)V
    .locals 10
    .param p2, "pkgName"    # Ljava/lang/String;
    .param p3, "level"    # I
    .param p4, "locked"    # Z
    .param p5, "stopped"    # Z
    .param p6, "pid"    # I
    .param p7, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/lang/String;",
            "IZZII)V"
        }
    .end annotation

    .prologue
    .line 2424
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    monitor-enter p1

    .line 2426
    :try_start_0
    new-instance v1, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v2, p2

    move v3, p3

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;-><init>(Ljava/lang/String;IZZJII)V

    .line 2425
    invoke-virtual {p1, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p1

    .line 2428
    return-void

    .line 2424
    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public beginCpuStatistics()V
    .locals 2

    .prologue
    .line 2490
    sget-boolean v0, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OHPD"

    const-string/jumbo v1, "beginCpuStatistics"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2491
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2492
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2493
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2496
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 2497
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2498
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v1

    .line 2500
    return-void

    .line 2491
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2496
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public cancelBgDetectNotificationIfNeeded()V
    .locals 6

    .prologue
    .line 2641
    :try_start_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2642
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 2644
    :cond_0
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v3, 0xd6dd

    invoke-virtual {v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2645
    .local v1, "msg":Landroid/os/Message;
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2650
    .end local v1    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 2646
    :catch_0
    move-exception v0

    .line 2647
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "OHPD"

    const-string/jumbo v3, "Error when cancelBgDetectNotificationIfNeeded"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2648
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method checkBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3099
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3100
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3101
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 3104
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3102
    :cond_1
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    .line 3103
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    .line 3106
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method checkBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3110
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3111
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v1, "com.truecaller"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 3110
    if-eqz v0, :cond_1

    .line 3112
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 3113
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    .line 3114
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 3116
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method checkGmsList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3120
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3122
    if-eqz p1, :cond_0

    .line 3123
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->gmsMonitorList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 3126
    const/4 v0, 0x0

    return v0

    .line 3120
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkKillSkipApp(Lcom/android/server/am/ProcessRecord;Ljava/util/List;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "lockedList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 2413
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusHighPowerDetector;->isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2414
    return v2

    .line 2417
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2418
    return v2

    .line 2420
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method checkLevel0KillList(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3142
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3143
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3144
    if-eqz p1, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->level0KillList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 3148
    const/4 v0, 0x0

    return v0

    .line 3142
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method checkProcExists(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashSet;Ljava/util/HashSet;)Z
    .locals 6
    .param p1, "currNotifyPkgKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1234
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    .local p3, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .local p4, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    monitor-enter p2

    .line 1235
    :try_start_0
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "pkg$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1237
    .local v1, "pkg":Ljava/lang/String;
    invoke-virtual {p3, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1238
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 1239
    .local v0, "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    iget v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1240
    iget-object v3, v0, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1241
    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string/jumbo v3, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[BgDetect][Notification] cancel abort: running: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1242
    :cond_1
    const/4 v3, 0x1

    monitor-exit p2

    return v3

    .line 1247
    .end local v0    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v1    # "pkg":Ljava/lang/String;
    :cond_2
    const/4 v3, 0x0

    monitor-exit p2

    return v3

    .line 1234
    .end local v2    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit p2

    throw v3
.end method

.method checkSmallAdjKillList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3131
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3132
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3133
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3134
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->killProcList:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 3137
    const/4 v0, 0x0

    return v0

    .line 3131
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public doCpuStatistics(Lcom/android/internal/os/ProcessCpuTracker$Stats;)V
    .locals 10
    .param p1, "st"    # Lcom/android/internal/os/ProcessCpuTracker$Stats;

    .prologue
    const-wide/16 v4, 0x0

    .line 2503
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_3

    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_3

    .line 2504
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2505
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2506
    .local v0, "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2507
    .local v1, "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    if-nez v1, :cond_2

    .line 2508
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2512
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2513
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doCpuStatistics # forkedPid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_1
    monitor-exit v3

    .line 2542
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_1
    :goto_2
    return-void

    .line 2510
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_2
    :try_start_1
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->addTime(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2504
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2516
    :cond_3
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    if-eqz v2, :cond_8

    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    sget v3, Lcom/android/server/am/OnePlusHighPowerDetector;->AID_CAMERASERVER:I

    if-ne v2, v3, :cond_8

    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_8

    .line 2517
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2518
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_4

    const-string/jumbo v2, "OHPD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Get Camera proc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraProcName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2519
    :cond_4
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 2520
    :try_start_2
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-ne v2, v4, :cond_6

    .line 2521
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_5

    const-string/jumbo v2, "OHPD"

    const-string/jumbo v4, "Existed, just update value"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_5
    :goto_3
    monitor-exit v3

    goto :goto_2

    .line 2523
    :cond_6
    :try_start_3
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_7

    const-string/jumbo v2, "OHPD"

    const-string/jumbo v4, "NOT existed, add new AppForkedProc"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2524
    :cond_7
    new-instance v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v4, v5, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;-><init>(IILjava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 2519
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2529
    :cond_8
    iget-wide v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 2530
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 2531
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v4, "_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2532
    .restart local v0    # "key":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2533
    .restart local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    if-nez v1, :cond_9

    .line 2534
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    new-instance v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    iget v6, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    iget-object v7, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    iget v8, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v9, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v8, v9

    invoke-direct {v4, v5, v6, v7, v8}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;-><init>(IILjava/lang/String;I)V

    invoke-virtual {v2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2538
    :goto_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2539
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "doCpuStatistics # NativePid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/16 :goto_1

    .line 2530
    .end local v0    # "key":Ljava/lang/String;
    .end local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :catchall_2
    move-exception v2

    monitor-exit v3

    throw v2

    .line 2536
    .restart local v0    # "key":Ljava/lang/String;
    .restart local v1    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_9
    :try_start_5
    iget v2, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v4, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v2, v4

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->addTime(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4
.end method

.method public finishCpuStatistics()V
    .locals 8

    .prologue
    .line 2545
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 2546
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 2547
    :try_start_0
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "proc$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2548
    .local v0, "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingForkedPidList:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2549
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 2546
    .end local v0    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2552
    .restart local v1    # "proc$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingRemoveList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "target$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2553
    .local v2, "target":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2    # "target":Ljava/lang/String;
    :cond_2
    monitor-exit v5

    .line 2558
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    if-lez v4, :cond_7

    .line 2559
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    monitor-enter v5

    .line 2560
    :try_start_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "proc$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2561
    .restart local v0    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWorkingNativePidList:Ljava/util/ArrayList;

    iget v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 2562
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 2559
    .end local v0    # "proc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2565
    .restart local v1    # "proc$iterator":Ljava/util/Iterator;
    :cond_5
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mPendingNativeRemoveList:Ljava/util/ArrayList;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "target$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 2566
    .restart local v2    # "target":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNativeProcMap:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .end local v2    # "target":Ljava/lang/String;
    :cond_6
    monitor-exit v5

    .line 2570
    .end local v1    # "proc$iterator":Ljava/util/Iterator;
    .end local v3    # "target$iterator":Ljava/util/Iterator;
    :cond_7
    sget-boolean v4, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v4, :cond_8

    const-string/jumbo v4, "OHPD"

    const-string/jumbo v5, "finishCpuStatistics"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2571
    :cond_8
    return-void
.end method

.method public forceUpdateOnlineConfig()V
    .locals 3

    .prologue
    .line 1048
    sget-object v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6e4

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1049
    return-void
.end method

.method public forceUpdateOnlineConfigImmediately()V
    .locals 3

    .prologue
    .line 3207
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3208
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->resolveBackgroundDetectionConfigFromJSON(Lorg/json/JSONArray;)V

    .line 3209
    return-void
.end method

.method public getBgMonitorMode()Z
    .locals 1

    .prologue
    .line 2684
    const/4 v0, 0x0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 30
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2691
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v22

    .line 2692
    .local v22, "startTime":J
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2694
    .local v6, "callerUid":I
    invoke-static {v6}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v25

    const/16 v26, 0x3e8

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_23

    .line 2695
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 2698
    .local v19, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/highpower/HighPowerApp;>;"
    :try_start_0
    sget-object v25, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual/range {v25 .. v25}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v25

    const-string/jumbo v26, "com_oneplus_systemui_recent_task_lockd_list"

    const/16 v27, -0x2

    invoke-static/range {v25 .. v27}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v16

    .line 2699
    .local v16, "lockedStr":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->parseLockedStr(Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 2700
    .local v15, "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v21, Ljava/util/HashSet;

    invoke-direct/range {v21 .. v21}, Ljava/util/HashSet;-><init>()V

    .line 2701
    .local v21, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2702
    .local v4, "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v20, Ljava/util/HashSet;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashSet;-><init>()V

    .line 2704
    .local v20, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v26, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v26
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2705
    sget-object v25, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v18

    .local v18, "pr$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_0

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/server/am/ProcessRecord;

    .line 2706
    .local v17, "pr":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2707
    move-object/from16 v0, v17

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2704
    .end local v17    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v18    # "pr$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v25

    :try_start_2
    monitor-exit v26

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v25
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2829
    .end local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "lockedStr":Ljava/lang/String;
    .end local v20    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v21    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v7

    .line 2830
    .local v7, "e":Ljava/lang/Exception;
    const-string/jumbo v25, "OHPD"

    const-string/jumbo v26, "[BgDetect] Error in getBgPowerHungryList"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2831
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 2833
    .end local v7    # "e":Ljava/lang/Exception;
    :goto_1
    const-string/jumbo v25, "OHPD"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "[BgDetect] getBgPowerHungryList result size "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2834
    const-string/jumbo v27, " in "

    .line 2833
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2834
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    sub-long v28, v28, v22

    .line 2833
    move-object/from16 v0, v26

    move-wide/from16 v1, v28

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 2834
    const-string/jumbo v27, " ms"

    .line 2833
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2835
    sget-boolean v25, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v25, :cond_22

    .line 2836
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v24

    .line 2837
    .local v24, "sz":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    move/from16 v0, v24

    if-ge v13, v0, :cond_22

    .line 2838
    const-string/jumbo v26, "OHPD"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "dump# "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " pkg:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oneplus/highpower/HighPowerApp;

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/oneplus/highpower/HighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v27

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " powerLevel:"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oneplus/highpower/HighPowerApp;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/oneplus/highpower/HighPowerApp;->powerLevel:I

    move/from16 v25, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " uid "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Lcom/oneplus/highpower/HighPowerApp;

    move-object/from16 v0, v25

    iget v0, v0, Lcom/oneplus/highpower/HighPowerApp;->uid:I

    move/from16 v25, v0

    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2837
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_2

    .end local v13    # "i":I
    .end local v24    # "sz":I
    .restart local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v15    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v16    # "lockedStr":Ljava/lang/String;
    .restart local v18    # "pr$iterator":Ljava/util/Iterator;
    .restart local v20    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v21    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_0
    :try_start_3
    monitor-exit v26

    .line 2704
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2711
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->size()I

    move-result v25

    if-lez v25, :cond_3

    .line 2712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 2713
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "fproc$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_2

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2714
    .local v11, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    sget-object v25, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget v0, v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v8

    .line 2715
    .local v8, "cpuTime":J
    const-wide/16 v28, 0x0

    cmp-long v25, v8, v28

    if-lez v25, :cond_1

    .line 2716
    iget-object v0, v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2717
    iget v0, v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 2712
    .end local v8    # "cpuTime":J
    .end local v11    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v12    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_1
    move-exception v25

    :try_start_5
    monitor-exit v26

    throw v25
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 2719
    .restart local v8    # "cpuTime":J
    .restart local v11    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .restart local v12    # "fproc$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_6
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "fproc pkg "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget-object v0, v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, "pid "

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v11, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    move/from16 v27, v0

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v27, " is gone"

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .end local v8    # "cpuTime":J
    .end local v11    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_2
    :try_start_7
    monitor-exit v26

    .line 2725
    .end local v12    # "fproc$iterator":Ljava/util/Iterator;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    .line 2726
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    .local v14, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;>;"
    :cond_4
    :goto_4
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_8

    .line 2727
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2728
    .local v10, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 2729
    .local v5, "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    const/16 v25, 0x1

    :goto_5
    move/from16 v0, v25

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 2730
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 2731
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_6

    .line 2732
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2733
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_4

    .line 2725
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;>;"
    :catchall_2
    move-exception v25

    :try_start_9
    monitor-exit v26

    throw v25
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2729
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    .restart local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;>;"
    :cond_5
    const/16 v25, 0x0

    goto :goto_5

    .line 2735
    :cond_6
    :try_start_a
    sget-boolean v25, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v25, :cond_4

    const-string/jumbo v25, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "huge dead pid:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 2738
    :cond_7
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_4

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_8
    :try_start_b
    monitor-exit v26

    .line 2742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 2743
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_9
    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d

    .line 2744
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2745
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 2746
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_a

    const/16 v25, 0x1

    :goto_7
    move/from16 v0, v25

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 2747
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 2748
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 2749
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2750
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    goto :goto_6

    .line 2742
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :catchall_3
    move-exception v25

    :try_start_d
    monitor-exit v26

    throw v25
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 2746
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_a
    const/16 v25, 0x0

    goto :goto_7

    .line 2752
    :cond_b
    :try_start_e
    sget-boolean v25, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v25, :cond_9

    const-string/jumbo v25, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "high dead pid:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_6

    .line 2755
    :cond_c
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto/16 :goto_6

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_d
    :try_start_f
    monitor-exit v26

    .line 2759
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    .line 2760
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_e
    :goto_8
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_12

    .line 2761
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2762
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 2763
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_f

    const/16 v25, 0x1

    :goto_9
    move/from16 v0, v25

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 2764
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 2765
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    .line 2764
    if-eqz v25, :cond_11

    .line 2766
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_10

    .line 2767
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_8

    .line 2759
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :catchall_4
    move-exception v25

    :try_start_11
    monitor-exit v26

    throw v25
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_0

    .line 2763
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_f
    const/16 v25, 0x0

    goto :goto_9

    .line 2769
    :cond_10
    :try_start_12
    sget-boolean v25, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v25, :cond_e

    const-string/jumbo v25, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "medium dead pid:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 2772
    :cond_11
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    goto/16 :goto_8

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_12
    :try_start_13
    monitor-exit v26

    .line 2777
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 2778
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_0

    .line 2779
    :try_start_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_13
    :goto_a
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_17

    .line 2780
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2781
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 2782
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    const/16 v25, 0x1

    :goto_b
    move/from16 v0, v25

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 2783
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_16

    .line 2784
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_15

    .line 2785
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2786
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto :goto_a

    .line 2778
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :catchall_5
    move-exception v25

    :try_start_15
    monitor-exit v26

    throw v25
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_0

    .line 2782
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_14
    const/16 v25, 0x0

    goto :goto_b

    .line 2788
    :cond_15
    :try_start_16
    sget-boolean v25, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v25, :cond_13

    const-string/jumbo v25, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "huge dead pid:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 2791
    :cond_16
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    goto/16 :goto_a

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_17
    :try_start_17
    monitor-exit v26

    .line 2795
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_0

    .line 2796
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_18
    :goto_c
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_1c

    .line 2797
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2798
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 2799
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_19

    const/16 v25, 0x1

    :goto_d
    move/from16 v0, v25

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 2800
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1b

    .line 2801
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1a

    .line 2802
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2803
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    goto :goto_c

    .line 2795
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :catchall_6
    move-exception v25

    :try_start_19
    monitor-exit v26

    throw v25
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_0

    .line 2799
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_19
    const/16 v25, 0x0

    goto :goto_d

    .line 2805
    :cond_1a
    :try_start_1a
    sget-boolean v25, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v25, :cond_18

    const-string/jumbo v25, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "high dead pid:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_c

    .line 2808
    :cond_1b
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_6

    goto/16 :goto_c

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_1c
    :try_start_1b
    monitor-exit v26

    .line 2812
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v26, v0

    monitor-enter v26
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_0

    .line 2813
    :try_start_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1d
    :goto_e
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_21

    .line 2814
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map$Entry;

    .line 2815
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;

    .line 2816
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->uid:I

    move/from16 v27, v0

    invoke-static/range {v27 .. v27}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v27

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-interface {v15, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1e

    const/16 v25, 0x1

    :goto_f
    move/from16 v0, v25

    iput-boolean v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->isLocked:Z

    .line 2817
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_20

    .line 2818
    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v25

    xor-int/lit8 v25, v25, 0x1

    .line 2817
    if-eqz v25, :cond_20

    .line 2819
    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v25, v0

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_1f

    .line 2820
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_7

    goto :goto_e

    .line 2812
    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :catchall_7
    move-exception v25

    :try_start_1d
    monitor-exit v26

    throw v25
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_0

    .line 2816
    .restart local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .restart local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_1e
    const/16 v25, 0x0

    goto :goto_f

    .line 2822
    :cond_1f
    :try_start_1e
    sget-boolean v25, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v25, :cond_1d

    const-string/jumbo v25, "OHPD"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "medium dead pid:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pid:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, " "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    iget-object v0, v5, Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;->pkgName:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v25

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_e

    .line 2825
    :cond_20
    invoke-interface {v14}, Ljava/util/Iterator;->remove()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_7

    goto/16 :goto_e

    .end local v5    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$ExtendHighPowerApp;
    .end local v10    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_21
    :try_start_1f
    monitor-exit v26
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_0

    goto/16 :goto_1

    .line 2841
    .end local v4    # "addedPkgs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/oneplus/highpower/HighPowerApp;>;>;"
    .end local v15    # "lockedAppList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v16    # "lockedStr":Ljava/lang/String;
    .end local v18    # "pr$iterator":Ljava/util/Iterator;
    .end local v20    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v21    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_22
    return-object v19

    .line 2843
    .end local v19    # "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/highpower/HighPowerApp;>;"
    :cond_23
    const/16 v25, 0x0

    return-object v25
.end method

.method getDeviceTemp()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 2457
    const/16 v5, 0xa

    :try_start_0
    new-array v0, v5, [C

    .line 2458
    .local v0, "buffer":[C
    new-instance v3, Ljava/io/FileReader;

    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2460
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0xa

    :try_start_1
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 2461
    .local v4, "len":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 2462
    .local v1, "deviceTemp":I
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mIsPreciseDevTemp:Z

    if-eqz v5, :cond_0

    .line 2463
    div-int/lit16 v1, v1, 0x3e8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2467
    :cond_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 2465
    return v1

    .line 2466
    .end local v1    # "deviceTemp":I
    .end local v4    # "len":I
    :catchall_0
    move-exception v5

    .line 2467
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 2466
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2469
    .end local v0    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 2470
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get device temp w "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->DEVICE_TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2472
    return v8
.end method

.method public handleMyMessage(Landroid/os/Message;)V
    .locals 53
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 744
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "handleMyMessage # msg.what="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    iget v6, v0, Landroid/os/Message;->what:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V

    .line 745
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->what:I

    packed-switch v5, :pswitch_data_0

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 747
    :pswitch_0
    sget v5, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_MIN_CHECK_DURATION:I

    const/4 v6, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v46

    .line 748
    .local v46, "result":I
    if-nez v46, :cond_0

    .line 749
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 750
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6d8

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 751
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6d8

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    .line 752
    .local v40, "nmsg":Landroid/os/Message;
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v8, 0x0

    aget v7, v7, v8

    int-to-long v10, v7

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v6

    .line 749
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v40    # "nmsg":Landroid/os/Message;
    :catchall_0
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 757
    .end local v46    # "result":I
    :pswitch_1
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v46

    .line 758
    .restart local v46    # "result":I
    if-nez v46, :cond_0

    .line 759
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_1
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 760
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6d9

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 761
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6d9

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    .line 762
    .restart local v40    # "nmsg":Landroid/os/Message;
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    int-to-long v10, v7

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v6

    .line 759
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    .end local v40    # "nmsg":Landroid/os/Message;
    :catchall_1
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 767
    .end local v46    # "result":I
    :pswitch_2
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v6, 0x2

    aget v5, v5, v6

    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v46

    .line 768
    .restart local v46    # "result":I
    if-nez v46, :cond_0

    .line 769
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_2
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 770
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6da

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 771
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6da

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    .line 772
    .restart local v40    # "nmsg":Landroid/os/Message;
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v8, 0x2

    aget v7, v7, v8

    int-to-long v10, v7

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    monitor-exit v6

    .line 769
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v40    # "nmsg":Landroid/os/Message;
    :catchall_2
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 777
    .end local v46    # "result":I
    :pswitch_3
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v6, 0x3

    aget v5, v5, v6

    const/4 v6, 0x3

    move-object/from16 v0, p0

    invoke-direct {v0, v6, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkExcessiveCpuUsageLocked(II)I

    move-result v46

    .line 778
    .restart local v46    # "result":I
    if-nez v46, :cond_0

    .line 779
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 780
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6de

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->removeMessages(I)V

    .line 781
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v7, 0xd6de

    invoke-virtual {v5, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v40

    .line 782
    .restart local v40    # "nmsg":Landroid/os/Message;
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v7, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v8, 0x3

    aget v7, v7, v8

    int-to-long v10, v7

    move-object/from16 v0, v40

    invoke-virtual {v5, v0, v10, v11}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    monitor-exit v6

    .line 779
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto/16 :goto_0

    .end local v40    # "nmsg":Landroid/os/Message;
    :catchall_3
    move-exception v5

    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 788
    .end local v46    # "result":I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;

    .line 789
    .local v50, "triggerPkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v51, v0

    .line 790
    .local v51, "type":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v52, v0

    .line 795
    .local v52, "userId":I
    :try_start_4
    move-object/from16 v0, p0

    move/from16 v1, v51

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkIfNotificationExisted(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 796
    if-nez v51, :cond_4

    .line 797
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 798
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 808
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    if-eqz v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 809
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    if-eqz v5, :cond_5

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 808
    if-eqz v5, :cond_5

    .line 810
    :cond_3
    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " already pop notification , skip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return-void

    .line 799
    :cond_4
    const/4 v5, 0x1

    move/from16 v0, v51

    if-ne v0, v5, :cond_1

    .line 800
    :try_start_5
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    .line 801
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_1

    .line 804
    :catch_0
    move-exception v32

    .line 805
    .local v32, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Error when CHECK_IF_NOTIFICATION_EXISTED_MSG "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 813
    .end local v32    # "e":Ljava/lang/Exception;
    :cond_5
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const/4 v5, 0x1

    move/from16 v0, v51

    if-ne v0, v5, :cond_6

    const v5, 0xd6db

    :goto_2
    invoke-virtual {v6, v5}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    .line 814
    .local v38, "msg2":Landroid/os/Message;
    move-object/from16 v0, v50

    move-object/from16 v1, v38

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 815
    move/from16 v0, v52

    move-object/from16 v1, v38

    iput v0, v1, Landroid/os/Message;->arg2:I

    .line 816
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const-wide/16 v6, 0x3e8

    move-object/from16 v0, v38

    invoke-virtual {v5, v0, v6, v7}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 813
    .end local v38    # "msg2":Landroid/os/Message;
    :cond_6
    const v5, 0xd6e1

    goto :goto_2

    .line 820
    .end local v50    # "triggerPkgName":Ljava/lang/String;
    .end local v51    # "type":I
    .end local v52    # "userId":I
    :pswitch_5
    :try_start_6
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;

    .line 821
    .restart local v50    # "triggerPkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v52, v0

    .line 822
    .restart local v52    # "userId":I
    if-nez v50, :cond_7

    return-void

    .line 824
    :cond_7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 826
    .local v28, "curTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 827
    .local v49, "triggerKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 828
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .line 829
    .local v36, "lastNotifyTime":J
    sub-long v6, v28, v36

    sget-wide v10, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    cmp-long v5, v6, v10

    if-gez v5, :cond_9

    .line 830
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_8

    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notification # too short time to notify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v10, v28, v36

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_8
    return-void

    .line 834
    .end local v36    # "lastNotifyTime":J
    :cond_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v52

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->createNotification(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v9

    .line 837
    .local v9, "notification":Landroid/app/Notification;
    if-nez v9, :cond_a

    .line 838
    return-void

    .line 841
    :cond_a
    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v41, v0

    .line 842
    .local v41, "outId":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 843
    .local v4, "inm":Landroid/app/INotificationManager;
    const-string/jumbo v5, "android"

    const-string/jumbo v6, "android"

    .line 845
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 843
    const/4 v7, 0x0

    .line 844
    const v8, 0x33954b8

    .line 843
    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 847
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKeySet:Ljava/util/HashSet;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 848
    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    .line 849
    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_0

    .line 850
    .end local v4    # "inm":Landroid/app/INotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v28    # "curTime":J
    .end local v41    # "outId":[I
    .end local v49    # "triggerKey":Ljava/lang/String;
    .end local v50    # "triggerPkgName":Ljava/lang/String;
    .end local v52    # "userId":I
    :catch_1
    move-exception v32

    .line 851
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "Error posting power intensive notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 857
    .end local v32    # "e":Ljava/lang/Exception;
    :pswitch_6
    :try_start_7
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v50, v0

    check-cast v50, Ljava/lang/String;

    .line 858
    .restart local v50    # "triggerPkgName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v52, v0

    .line 859
    .restart local v52    # "userId":I
    if-nez v50, :cond_b

    return-void

    .line 861
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v28

    .line 863
    .restart local v28    # "curTime":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v50

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v52

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v49

    .line 864
    .restart local v49    # "triggerKey":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 865
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v36

    .line 866
    .restart local v36    # "lastNotifyTime":J
    sub-long v6, v28, v36

    sget-wide v10, Lcom/android/server/am/OnePlusHighPowerDetector;->NOTIFY_INTERVAL:J

    cmp-long v5, v6, v10

    if-gez v5, :cond_d

    .line 867
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v5, :cond_c

    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Notification # too short time to notify: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v10, v28, v36

    invoke-virtual {v6, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    :cond_c
    return-void

    .line 871
    .end local v36    # "lastNotifyTime":J
    :cond_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mNotifyPkgMap:Ljava/util/HashMap;

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    move-object/from16 v0, v49

    invoke-virtual {v5, v0, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 873
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v50

    move/from16 v2, v52

    invoke-direct {v0, v1, v2, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->createNotification(Ljava/lang/String;II)Landroid/app/Notification;

    move-result-object v9

    .line 874
    .restart local v9    # "notification":Landroid/app/Notification;
    if-nez v9, :cond_e

    .line 875
    return-void

    .line 878
    :cond_e
    const/4 v5, 0x1

    new-array v0, v5, [I

    move-object/from16 v41, v0

    .line 879
    .restart local v41    # "outId":[I
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 880
    .restart local v4    # "inm":Landroid/app/INotificationManager;
    const-string/jumbo v5, "android"

    const-string/jumbo v6, "android"

    .line 882
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v10

    .line 880
    const/4 v7, 0x0

    .line 881
    const v8, 0x33954b9

    .line 880
    invoke-interface/range {v4 .. v10}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V

    .line 884
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKeySet:Ljava/util/HashSet;

    move-object/from16 v0, v49

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 885
    move-object/from16 v0, v49

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    .line 886
    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect][Notification] notify for pkg "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v50

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " userId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v52

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto/16 :goto_0

    .line 887
    .end local v4    # "inm":Landroid/app/INotificationManager;
    .end local v9    # "notification":Landroid/app/Notification;
    .end local v28    # "curTime":J
    .end local v41    # "outId":[I
    .end local v49    # "triggerKey":Ljava/lang/String;
    .end local v50    # "triggerPkgName":Ljava/lang/String;
    .end local v52    # "userId":I
    :catch_2
    move-exception v32

    .line 888
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "Error posting power intensive notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 894
    .end local v32    # "e":Ljava/lang/Exception;
    :pswitch_7
    :try_start_8
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 895
    .local v42, "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v5, v0, Landroid/os/Message;->arg1:I

    move-object/from16 v0, p0

    move-object/from16 v1, v42

    invoke-direct {v0, v1, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->cleanUpWhenPkgRemoved(Ljava/lang/String;I)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_0

    .line 896
    .end local v42    # "pkg":Ljava/lang/String;
    :catch_3
    move-exception v32

    .line 897
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "Error when clean up package removed record"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 904
    .end local v32    # "e":Ljava/lang/Exception;
    :pswitch_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    if-nez v5, :cond_f

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    if-nez v5, :cond_f

    .line 905
    return-void

    .line 908
    :cond_f
    new-instance v48, Ljava/util/HashSet;

    invoke-direct/range {v48 .. v48}, Ljava/util/HashSet;-><init>()V

    .line 909
    .local v48, "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v47, Ljava/util/HashSet;

    invoke-direct/range {v47 .. v47}, Ljava/util/HashSet;-><init>()V

    .line 910
    .local v47, "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    sget-object v6, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v6
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 911
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v45

    .local v45, "pr$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_10

    invoke-interface/range {v45 .. v45}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/server/am/ProcessRecord;

    .line 912
    .local v44, "pr":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v0, v44

    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 913
    move-object/from16 v0, v44

    iget v5, v0, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_3

    .line 910
    .end local v44    # "pr":Lcom/android/server/am/ProcessRecord;
    .end local v45    # "pr$iterator":Ljava/util/Iterator;
    :catchall_4
    move-exception v5

    :try_start_b
    monitor-exit v6

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 936
    .end local v47    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v48    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_4
    move-exception v32

    .line 937
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect] cancel notification fail"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v45    # "pr$iterator":Ljava/util/Iterator;
    .restart local v47    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .restart local v48    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_10
    :try_start_c
    monitor-exit v6

    .line 910
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 916
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_13

    .line 917
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v6
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 918
    :try_start_d
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v34

    .local v34, "fproc$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface/range {v34 .. v34}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 919
    .local v33, "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v33

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v5, v7}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v26

    .line 920
    .local v26, "cpuTime":J
    const-wide/16 v10, 0x0

    cmp-long v5, v26, v10

    if-lez v5, :cond_11

    .line 921
    move-object/from16 v0, v33

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    move-object/from16 v0, v48

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 922
    move-object/from16 v0, v33

    iget v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object/from16 v0, v47

    invoke-virtual {v0, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    .line 917
    .end local v26    # "cpuTime":J
    .end local v33    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v34    # "fproc$iterator":Ljava/util/Iterator;
    :catchall_5
    move-exception v5

    :try_start_e
    monitor-exit v6

    throw v5
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_4

    .line 924
    .restart local v26    # "cpuTime":J
    .restart local v33    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .restart local v34    # "fproc$iterator":Ljava/util/Iterator;
    :cond_11
    :try_start_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "fproc pkg "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    iget-object v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, "pid "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v33

    iget v7, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v7, " is gone"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->myLog(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_4

    .end local v26    # "cpuTime":J
    .end local v33    # "fproc":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    :cond_12
    :try_start_10
    monitor-exit v6

    .line 930
    .end local v34    # "fproc$iterator":Ljava/util/Iterator;
    :cond_13
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    if-eqz v5, :cond_14

    .line 931
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v47

    invoke-direct {v0, v5, v1, v2, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkNotification(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V

    .line 933
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 934
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v48

    move-object/from16 v2, v47

    invoke-direct {v0, v5, v1, v2, v6}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkNotification(Ljava/lang/String;Ljava/util/HashSet;Ljava/util/HashSet;I)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_4

    goto/16 :goto_0

    .line 943
    .end local v45    # "pr$iterator":Ljava/util/Iterator;
    .end local v47    # "runningPids":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/Integer;>;"
    .end local v48    # "runningPkgs":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :pswitch_9
    :try_start_11
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v5, "android.oem.bugreport.power_event"

    invoke-direct {v13, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 944
    .local v13, "intent":Landroid/content/Intent;
    sget-object v10, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v11, "android"

    const/16 v12, 0x3e8

    .line 945
    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, -0x2

    .line 944
    invoke-virtual/range {v10 .. v23}, Lcom/android/server/am/ActivityManagerService;->broadcastIntentInPackage(Ljava/lang/String;ILandroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Landroid/os/Bundle;ZZI)I
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_5

    goto/16 :goto_0

    .line 946
    .end local v13    # "intent":Landroid/content/Intent;
    :catch_5
    move-exception v32

    .line 947
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "[BgDetect] Error when send boradcast to nofity PD event"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 952
    .end local v32    # "e":Ljava/lang/Exception;
    :pswitch_a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v51, v0

    .line 954
    .restart local v51    # "type":I
    :try_start_12
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v4

    .line 955
    .restart local v4    # "inm":Landroid/app/INotificationManager;
    const-string/jumbo v6, "android"

    .line 956
    const/4 v5, 0x1

    move/from16 v0, v51

    if-ne v0, v5, :cond_16

    const v5, 0x33954b8

    .line 957
    :goto_5
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 955
    const/4 v8, 0x0

    invoke-interface {v4, v6, v8, v5, v7}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V

    .line 959
    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[BgDetect] FORCE_STOP_PKG_MSG Type:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v51

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    if-nez v51, :cond_17

    .line 961
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyHighPkgKey:Ljava/lang/String;
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_7

    .line 969
    .end local v4    # "inm":Landroid/app/INotificationManager;
    :cond_15
    :goto_6
    :try_start_13
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v42, v0

    check-cast v42, Ljava/lang/String;

    .line 970
    .restart local v42    # "pkg":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v52, v0

    .line 971
    .restart local v52    # "userId":I
    move-object/from16 v0, p0

    move-object/from16 v1, v42

    move/from16 v2, v52

    invoke-direct {v0, v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_6

    goto/16 :goto_0

    .line 972
    .end local v42    # "pkg":Ljava/lang/String;
    .end local v52    # "userId":I
    :catch_6
    move-exception v32

    .line 973
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "[BgDetect] Error when force stop pkg"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 956
    .end local v32    # "e":Ljava/lang/Exception;
    .restart local v4    # "inm":Landroid/app/INotificationManager;
    :cond_16
    const v5, 0x33954b9

    goto :goto_5

    .line 962
    :cond_17
    const/4 v5, 0x1

    move/from16 v0, v51

    if-ne v0, v5, :cond_15

    .line 963
    const/4 v5, 0x0

    :try_start_14
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCurNotifyPkgKey:Ljava/lang/String;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_7

    goto :goto_6

    .line 965
    .end local v4    # "inm":Landroid/app/INotificationManager;
    :catch_7
    move-exception v32

    .line 966
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "[BgDetect] Error when cancel notification"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 979
    .end local v32    # "e":Ljava/lang/Exception;
    .end local v51    # "type":I
    :pswitch_b
    const/16 v43, 0x0

    .line 981
    .local v43, "policy":I
    :try_start_15
    sget-object v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "doze_mode_policy"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_15
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_15 .. :try_end_15} :catch_8

    move-result v43

    .line 985
    :goto_7
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG_LIGHTIDLE:Z

    if-eqz v5, :cond_18

    const-string/jumbo v5, "OHPD"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[LightIdle] Policy :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v43

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    :cond_18
    const/4 v5, 0x1

    move/from16 v0, v43

    if-ne v0, v5, :cond_19

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    if-nez v5, :cond_19

    .line 987
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLightIdleProcessKillLocked()V

    .line 988
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCheck:Z

    .line 991
    :cond_19
    sget-boolean v5, Lcom/android/server/am/OnePlusHighPowerDetector;->mEnableMonitorCameraProc:Z

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    if-eqz v5, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mFakeTestEnabled:Z

    if-eqz v5, :cond_0

    .line 992
    :cond_1a
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->monitorCameraEnd(I)V

    .line 993
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkLightIdleCameraProcessKillLocked()V

    .line 994
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mEverLightIdleCameraCheck:Z

    goto/16 :goto_0

    .line 982
    :catch_8
    move-exception v31

    .line 983
    .local v31, "e":Landroid/provider/Settings$SettingNotFoundException;
    invoke-virtual/range {v31 .. v31}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_7

    .line 998
    .end local v31    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v43    # "policy":I
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->updateProcRxTx()V

    goto/16 :goto_0

    .line 1002
    :pswitch_d
    new-instance v5, Ljava/lang/Thread;

    new-instance v6, Lcom/android/server/am/OnePlusHighPowerDetector$4;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/am/OnePlusHighPowerDetector$4;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    invoke-direct {v5, v6}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0

    .line 1011
    :pswitch_e
    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/android/server/am/OnePlusHighPowerDetector;->monitorCameraStart(I)V

    goto/16 :goto_0

    .line 1015
    :pswitch_f
    :try_start_16
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v24, v0

    check-cast v24, Ljava/lang/String;

    .line 1016
    .local v24, "cameraProcName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1017
    .local v25, "cpuUsage":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v35, v0

    .line 1018
    .local v35, "killed":I
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 1019
    .local v30, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "proc"

    move-object/from16 v0, v30

    move-object/from16 v1, v24

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1020
    const-string/jumbo v5, "cpu_usage"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    const-string/jumbo v5, "handled"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v6, "camera_proc_busy"

    move-object/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_9

    goto/16 :goto_0

    .line 1023
    .end local v24    # "cameraProcName":Ljava/lang/String;
    .end local v25    # "cpuUsage":I
    .end local v30    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v35    # "killed":I
    :catch_9
    move-exception v32

    .line 1024
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "Error submit SDM"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 1031
    .end local v32    # "e":Ljava/lang/Exception;
    :pswitch_10
    :try_start_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Ljava/lang/String;

    .line 1032
    .local v39, "nativeProcName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v25, v0

    .line 1033
    .restart local v25    # "cpuUsage":I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v35, v0

    .line 1034
    .restart local v35    # "killed":I
    new-instance v30, Ljava/util/HashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/HashMap;-><init>()V

    .line 1035
    .restart local v30    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v5, "proc"

    move-object/from16 v0, v30

    move-object/from16 v1, v39

    invoke-virtual {v0, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1036
    const-string/jumbo v5, "cpu_usage"

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1037
    const-string/jumbo v5, "handled"

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/am/OnePlusHighPowerDetector;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v6, "native_proc_busy"

    move-object/from16 v0, v30

    invoke-virtual {v5, v6, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_a

    goto/16 :goto_0

    .line 1039
    .end local v25    # "cpuUsage":I
    .end local v30    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v35    # "killed":I
    .end local v39    # "nativeProcName":Ljava/lang/String;
    :catch_a
    move-exception v32

    .line 1040
    .restart local v32    # "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OHPD"

    const-string/jumbo v6, "Error submit SDM"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1041
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_0

    .line 745
    :pswitch_data_0
    .packed-switch 0xd6d8
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_3
        :pswitch_9
        :pswitch_a
        :pswitch_6
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_4
        :pswitch_f
        :pswitch_e
        :pswitch_10
    .end packed-switch
.end method

.method hasSystemFlag(I)Z
    .locals 2
    .param p1, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 1252
    and-int/lit16 v1, p1, 0x81

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public initOnlineConfig()V
    .locals 5

    .prologue
    .line 686
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    .line 687
    new-instance v3, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/am/OnePlusHighPowerDetector$BackgroundDetectionConfigUpdater;-><init>(Lcom/android/server/am/OnePlusHighPowerDetector;)V

    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->BACKGROUND_DETECTION_CONFIG_NAME:Ljava/lang/String;

    .line 686
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 688
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBackgroundDetectionConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 690
    return-void
.end method

.method isForkedProcInWhiteList(Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .prologue
    .line 3069
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3070
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3071
    iget-object v0, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3072
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 3075
    const/4 v0, 0x0

    return v0

    .line 3069
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInBlackExList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3089
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3090
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3091
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3092
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackExAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 3095
    const/4 v0, 0x0

    return v0

    .line 3089
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInBlackList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3079
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3080
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3081
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3082
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->blackAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 3085
    const/4 v0, 0x0

    return v0

    .line 3079
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProcInWhiteList(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "pr"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    .line 3059
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    monitor-enter v1

    .line 3060
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3061
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3062
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->whiteAppListSet:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    monitor-exit v1

    return v0

    :cond_0
    monitor-exit v1

    .line 3065
    const/4 v0, 0x0

    return v0

    .line 3059
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method isProviderBoundByFG(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 10
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 2431
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    if-eqz v6, :cond_3

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-lez v6, :cond_3

    .line 2432
    const/4 v2, 0x0

    .local v2, "conni":I
    :goto_0
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v2, v6, :cond_3

    .line 2433
    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->pubProviders:Landroid/util/ArrayMap;

    invoke-virtual {v6, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderRecord;

    .line 2434
    .local v0, "c":Lcom/android/server/am/ContentProviderRecord;
    const/4 v5, 0x0

    .line 2435
    .local v5, "sr":Lcom/android/server/am/ContentProviderConnection;
    iget-object v6, v0, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v5    # "sr":Lcom/android/server/am/ContentProviderConnection;
    .local v4, "it":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2437
    :try_start_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ContentProviderConnection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2441
    .local v5, "sr":Lcom/android/server/am/ContentProviderConnection;
    if-eqz v5, :cond_0

    iget v6, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    iget v7, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq v6, v7, :cond_0

    .line 2442
    iget-object v1, v5, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2443
    .local v1, "client":Lcom/android/server/am/ProcessRecord;
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v7, 0x2

    if-eq v6, v7, :cond_1

    .line 2444
    iget v6, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v6, v9, :cond_0

    .line 2445
    :cond_1
    const-string/jumbo v6, "OHPD"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[BgDetect] skip "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", bound by "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ") state "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " level "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2446
    return v9

    .line 2438
    .end local v1    # "client":Lcom/android/server/am/ProcessRecord;
    .end local v5    # "sr":Lcom/android/server/am/ContentProviderConnection;
    :catch_0
    move-exception v3

    .line 2432
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 2452
    .end local v0    # "c":Lcom/android/server/am/ContentProviderRecord;
    .end local v2    # "conni":I
    .end local v4    # "it":Ljava/util/Iterator;
    :cond_3
    return v8
.end method

.method isSmallAdjState(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;

    .prologue
    const/4 v0, 0x1

    .line 1256
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    .line 1257
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 1256
    :cond_0
    :goto_0
    return v0

    .line 1258
    :cond_1
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method monitorCameraEnd(I)V
    .locals 14
    .param p1, "level"    # I

    .prologue
    .line 1499
    sget-object v9, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1500
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 1501
    .local v4, "monitorEndTime":J
    iget-wide v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    sub-long v6, v4, v10

    .line 1502
    .local v6, "uptimeSince":J
    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string/jumbo v8, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[LightIdle] monitorCameraEnd(), monitorEndTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", uptimeSince="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    :cond_0
    iget-wide v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    sget v8, Lcom/android/server/am/OnePlusHighPowerDetector;->MONITOR_RESET:I

    int-to-long v12, v8

    cmp-long v8, v10, v12

    if-eqz v8, :cond_1

    const-wide/16 v10, 0x0

    cmp-long v8, v6, v10

    if-gtz v8, :cond_3

    .line 1506
    :cond_1
    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v8, :cond_2

    const-string/jumbo v8, "OHPD"

    const-string/jumbo v10, "[LightIdle] skip this round monitoring"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    :cond_2
    const-wide/16 v10, 0x0

    iput-wide v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v9

    .line 1508
    return-void

    .line 1510
    :cond_3
    :try_start_1
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v8, :cond_5

    .line 1513
    sget-object v8, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v10, v10, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v8, v10}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v0

    .line 1514
    .local v0, "cpuTime":J
    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string/jumbo v8, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[LightIdle] End cpuTime="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_4
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iput-wide v0, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    .line 1519
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v10, v8, p1

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-lez v8, :cond_6

    .line 1520
    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-wide v10, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->curCpuTimeBgMonitor:J

    iget-object v8, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v8, v8, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aget-wide v12, v8, p1

    sub-long v2, v10, v12

    .line 1521
    .local v2, "cputimeUsed":J
    const-wide/16 v10, 0x64

    mul-long/2addr v10, v2

    div-long/2addr v10, v6

    iput-wide v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    .line 1522
    sget-boolean v8, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v8, :cond_5

    const-string/jumbo v8, "OHPD"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[LightIdle] cputimeUsed="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, ", mLastCameraProcUsage="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-wide v12, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    invoke-virtual {v10, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " %"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "cpuTime":J
    .end local v2    # "cputimeUsed":J
    :cond_5
    :goto_0
    monitor-exit v9

    .line 1528
    return-void

    .line 1524
    .restart local v0    # "cpuTime":J
    :cond_6
    const-wide/16 v10, 0x0

    :try_start_2
    iput-wide v10, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1499
    .end local v0    # "cpuTime":J
    .end local v4    # "monitorEndTime":J
    .end local v6    # "uptimeSince":J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8
.end method

.method monitorCameraStart(I)V
    .locals 8
    .param p1, "level"    # I

    .prologue
    .line 1481
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1483
    const-wide/16 v4, 0x0

    :try_start_0
    iput-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mLastCameraProcUsage:J

    .line 1484
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    .line 1485
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[LightIdle] monitorCameraStart(), mMonitorStartTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v6, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMonitorStartTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    if-eqz v2, :cond_2

    .line 1489
    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget v4, v4, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pid:I

    invoke-virtual {v2, v4}, Lcom/android/server/am/ActivityManagerService;->getCpuTimeForPid(I)J

    move-result-wide v0

    .line 1490
    .local v0, "cpuTime":J
    sget-boolean v2, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[LightIdle] Start cpuTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mCameraAppForkedProc:Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    iget-object v2, v2, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->lastCpuTimeBgMonitor:[J

    aput-wide v0, v2, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "cpuTime":J
    :cond_2
    monitor-exit v3

    .line 1496
    return-void

    .line 1481
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method needCheckProc(Lcom/android/server/am/ProcessRecord;I)Z
    .locals 6
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .prologue
    const/16 v5, 0xd

    const/16 v4, 0xb

    const/4 v3, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1262
    packed-switch p2, :pswitch_data_0

    .line 1277
    return v1

    .line 1266
    :pswitch_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v2, v5, :cond_0

    .line 1267
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v4, :cond_1

    .line 1266
    :cond_0
    :goto_0
    return v0

    .line 1268
    :cond_1
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    .line 1270
    :pswitch_1
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ge v2, v5, :cond_2

    .line 1271
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-ne v2, v4, :cond_3

    .line 1270
    :cond_2
    :goto_1
    return v0

    .line 1272
    :cond_3
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    if-eq v2, v3, :cond_2

    .line 1273
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 1274
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    .line 1275
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->setProcState:I

    const/4 v3, 0x7

    if-eq v2, v3, :cond_2

    move v0, v1

    goto :goto_1

    .line 1262
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public postProcessOfForceStop(Ljava/lang/String;I)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 2575
    const/16 v4, 0x3e7

    if-eq p2, v4, :cond_4

    .line 2576
    :try_start_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2577
    :try_start_1
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2578
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    :try_start_2
    monitor-exit v5

    .line 2581
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2582
    :try_start_3
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2583
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_1
    :try_start_4
    monitor-exit v5

    .line 2586
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 2587
    :try_start_5
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2588
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :cond_2
    :try_start_6
    monitor-exit v5

    .line 2609
    :goto_0
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 2610
    :try_start_7
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    if-eqz v4, :cond_8

    .line 2611
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mAppForkedProcMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 2612
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 2613
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;

    .line 2614
    .local v0, "app":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    iget-object v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, v0, Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    if-ne v4, p2, :cond_3

    .line 2615
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1

    .line 2609
    .end local v0    # "app":Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;"
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/android/server/am/OnePlusHighPowerDetector$AppForkedProc;>;>;"
    :catchall_0
    move-exception v4

    :try_start_8
    monitor-exit v5

    throw v4
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 2623
    :catch_0
    move-exception v1

    .line 2624
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[BgDetect] postProcessOfForceStop err with "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2626
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_2
    return-void

    .line 2576
    :catchall_1
    move-exception v4

    :try_start_9
    monitor-exit v5

    throw v4

    .line 2581
    :catchall_2
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2586
    :catchall_3
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2592
    :cond_4
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    .line 2593
    :try_start_a
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 2594
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHugePowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :cond_5
    :try_start_b
    monitor-exit v5

    .line 2597
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0

    .line 2598
    :try_start_c
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 2599
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mHighPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    :cond_6
    :try_start_d
    monitor-exit v5

    .line 2602
    iget-object v5, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    monitor-enter v5
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_0

    .line 2603
    :try_start_e
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 2604
    iget-object v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mMediumPowerPkgForDualMap:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_6

    :cond_7
    :try_start_f
    monitor-exit v5

    goto/16 :goto_0

    .line 2592
    :catchall_4
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2597
    :catchall_5
    move-exception v4

    monitor-exit v5

    throw v4

    .line 2602
    :catchall_6
    move-exception v4

    monitor-exit v5

    throw v4

    :cond_8
    monitor-exit v5

    .line 2621
    invoke-virtual {p0}, Lcom/android/server/am/OnePlusHighPowerDetector;->cancelBgDetectNotificationIfNeeded()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_0

    goto :goto_2
.end method

.method public setBgMonitorMode(Z)V
    .locals 0
    .param p1, "auto"    # Z

    .prologue
    .line 2688
    return-void
.end method

.method public startMonitor()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 730
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6d8

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 731
    .local v0, "nmsg":Landroid/os/Message;
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x0

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 732
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6d9

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 733
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    aget v2, v2, v4

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 734
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6da

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 735
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x2

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 736
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    const v2, 0xd6de

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 737
    sget-object v1, Lcom/android/server/am/OnePlusHighPowerDetector;->mHandler:Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;

    sget-object v2, Lcom/android/server/am/OnePlusHighPowerDetector;->CPU_CHECK_DELAY:[I

    const/4 v3, 0x3

    aget v2, v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/am/OnePlusHighPowerDetector$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 738
    const-string/jumbo v1, "OHPD"

    const-string/jumbo v2, "[BgDetect] startMonitor # queue CHECK_EXCESSIVE_CPU MSGs"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    iput-boolean v4, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mBgDetectStartMonitoring:Z

    .line 741
    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "powerLevel"    # I

    .prologue
    .line 2847
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;IZ)V

    .line 2848
    return-void
.end method

.method updateProcRxTx()V
    .locals 8

    .prologue
    .line 1459
    sget-boolean v3, Lcom/android/server/am/OnePlusHighPowerDetector;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string/jumbo v3, "OHPD"

    const-string/jumbo v4, "[LightIdle] updateProcRxTx()"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1460
    :cond_0
    sget-object v4, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1462
    :try_start_1
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1463
    .local v2, "i":I
    :cond_1
    :goto_0
    if-lez v2, :cond_3

    .line 1464
    add-int/lit8 v2, v2, -0x1

    .line 1465
    sget-object v3, Lcom/android/server/am/OnePlusHighPowerDetector;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 1466
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->hasSystemFlag(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1467
    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusHighPowerDetector;->checkGmsList(Ljava/lang/String;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    .line 1466
    if-nez v3, :cond_1

    .line 1470
    :cond_2
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleRxBytes:J

    .line 1471
    iget v3, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v6

    iput-wide v6, v0, Lcom/android/server/am/ProcessRecord;->lastLightIdleTxBytes:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 1473
    .end local v0    # "app":Lcom/android/server/am/ProcessRecord;
    .end local v2    # "i":I
    :catch_0
    move-exception v1

    .line 1474
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1475
    const-string/jumbo v3, "OHPD"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[LightIdle] got exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    monitor-exit v4

    .line 1460
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1478
    return-void

    .line 1460
    :catchall_0
    move-exception v3

    monitor-exit v4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method updateProcUsg(Lcom/android/server/am/ProcessRecord;I)V
    .locals 4
    .param p1, "app"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "level"    # I

    .prologue
    .line 2476
    iget-wide v0, p1, Lcom/android/server/am/ProcessRecord;->curCpuTime:J

    iput-wide v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTime:J

    .line 2477
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastCpuTimeBgMonitor:[J

    iget-wide v2, p1, Lcom/android/server/am/ProcessRecord;->curCpuTimeBgMonitor:J

    aput-wide v2, v0, p2

    .line 2478
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastRxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 2479
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->lastTxBytes:[J

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v2

    aput-wide v2, v0, p2

    .line 2480
    return-void
.end method

.method updateSkipMap(Landroid/util/ArrayMap;ILjava/lang/String;)V
    .locals 1
    .param p2, "uid"    # I
    .param p3, "skipReason"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2484
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Integer;Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2485
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2487
    :cond_0
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "add"    # Z

    .prologue
    .line 3034
    const-string/jumbo v0, "OHPD"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateWidgetPackage pkgName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " add "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v1

    .line 3036
    if-eqz p2, :cond_1

    .line 3037
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v1

    .line 3044
    return-void

    .line 3039
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3040
    iget-object v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3035
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public updateWidgetPackages(Ljava/util/HashSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3047
    .local p1, "pkgSet":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    monitor-enter v3

    .line 3048
    if-nez p1, :cond_1

    .line 3049
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v3

    .line 3056
    return-void

    .line 3051
    :cond_1
    :try_start_1
    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    .line 3052
    iget-object v2, p0, Lcom/android/server/am/OnePlusHighPowerDetector;->mWidgetPkgSet:Ljava/util/HashSet;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "pkg$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3053
    .local v0, "pkg":Ljava/lang/String;
    const-string/jumbo v2, "OHPD"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateWidgetPackage "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 3047
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v1    # "pkg$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method
