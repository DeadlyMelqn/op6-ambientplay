.class public Lcom/android/server/OnePlusPowerController;
.super Lcom/android/server/SystemService;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusPowerController$1;,
        Lcom/android/server/OnePlusPowerController$2;,
        Lcom/android/server/OnePlusPowerController$BinderService;,
        Lcom/android/server/OnePlusPowerController$Cluster;,
        Lcom/android/server/OnePlusPowerController$ConfigUpdater;,
        Lcom/android/server/OnePlusPowerController$IdleItem;,
        Lcom/android/server/OnePlusPowerController$IdleStats;,
        Lcom/android/server/OnePlusPowerController$KMeans;,
        Lcom/android/server/OnePlusPowerController$LocalService;,
        Lcom/android/server/OnePlusPowerController$MyHandler;,
        Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;,
        Lcom/android/server/OnePlusPowerController$Shell;
    }
.end annotation


# static fields
.field private static final ACTION_IDLE_STATS_CONFIG:Ljava/lang/String; = "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

.field private static final ACTION_PROCESS_KMEANS:Ljava/lang/String; = "net.oneplus.powercontroller.action.PROCESS_KMEANS"

.field private static final ACTION_RECORD_IDLE_ITEM:Ljava/lang/String; = "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

.field private static final ACTION_RESTORE_IDLE_ITEM:Ljava/lang/String; = "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

.field public static final BETA_OR_ALPHA_ROM:Z

.field private static DEBUG_IDLE_STATS:Z = false

.field private static DEBUG_KMEANS:Z = false

.field private static DEBUG_ONEPLUS:Z = false

.field private static DEBUG_SLEEP_STATE:Z = false

.field private static final DELAY_START:I = 0x1388

.field private static final DIMENSION:I = 0x2

.field private static final INTENT_OPSM_CHECK:Ljava/lang/String; = "net.oneplus.powercontroller.intent.OPSM"

.field private static final INTENT_SLEEP_CHANGED:Ljava/lang/String; = "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

.field private static final LOG_TAG:Ljava/lang/String; = "OnePlusPowerController"

.field private static final MAX_IDLE_ITEMS:I = 0x3c

.field private static final MAX_IDLE_LENGTH:I = 0x337f980

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "usersleep"

.field private static final MDM_OPSM_ACTIVE:Ljava/lang/String; = "1"

.field private static final MDM_OPSM_CONFIG:Ljava/lang/String; = "oc"

.field private static final MDM_OPSM_INACTIVE:Ljava/lang/String; = "0"

.field private static final MDM_OPSM_STATE:Ljava/lang/String; = "os"

.field private static final MIN_IDLE_ITEMS:I = 0x2

.field private static final MIN_IDLE_LENGTH:I = 0x112a880

.field private static final MIN_RECORD_TIME:I = 0x36ee80

.field private static final MSG_ADD_EXCLUSIVE_WAKELOCK:I = 0x3

.field private static final MSG_ENTER_OPSM:I = 0x15be

.field private static final MSG_INIT:I = 0x1

.field private static final MSG_LEAVE_OPSM:I = 0x1e6c

.field private static final MSG_ONLINE_CONFIG:I = 0x7

.field private static final MSG_PROCESS_KMEANS:I = 0x4

.field private static final MSG_RECORD_IDLE:I = 0x5

.field private static final MSG_RESTORE_IDLE:I = 0x6

.field private static final MSG_UPDATE_POLICY:I = 0x2

.field private static final NUM_CLUSTER:I = 0x2

.field private static final ONE_DAY:I = 0x5265c00

.field private static final ONE_HOUR:I = 0x36ee80

.field private static final ONE_MINUTE:I = 0xea60

.field private static final ONE_SECOND:I = 0x3e8

.field private static final OPSM_DISABLED_BY_SYSTEM:I = -0x1

.field private static final OPSM_DISABLED_BY_USER:I = 0x0

.field private static final OPSM_ENABLED_BY_SYSTEM:I = 0x2

.field private static final OPSM_ENABLED_BY_USER:I = 0x1

.field private static final OPSM_ENABLED_UNKNOWN:I = -0x2

.field private static final POLICY_AGGRESSIVE:I = 0x1

.field private static final POLICY_DEFAULT:I = 0x0

.field private static final PROJECT_CONFIG_NAME:Ljava/lang/String; = "PowerControl"

.field private static final RANDOM_SEED:I = 0x64

.field public static final REQUEST_OPSM:I = 0x1

.field public static final REQUEST_SLEEP_CHANGE:I = 0x0

.field public static SCREEN_OFF:I = 0x0

.field public static SCREEN_ON:I = 0x0

.field private static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field private static final STATE_ACTIVE:I = 0x0

.field private static final STATE_AWAKE:I = 0x1e6c

.field private static final STATE_IDLE:I = 0x5

.field private static final STATE_IDLE_MAINTENANCE:I = 0x6

.field private static final STATE_IDLE_PENDING:I = 0x2

.field private static final STATE_INACTIVE:I = 0x1

.field private static final STATE_LOCATING:I = 0x4

.field private static final STATE_SENSING:I = 0x3

.field private static final STATE_SLEEP:I = 0x15be

.field private static final TIMEOUT_AFTER_SCREEN_OFF:I = 0x44aa20

.field private static final TIMEOUT_BEFORE_USER_AWAKE:I = 0x1b7740

.field private static final TIME_LENGTH:I = 0x1

.field private static final TIME_START:I = 0x0

.field private static final TOLERANCE:I = 0x1

.field private static mAggressive:Z

.field private static mFirstChange:Z

.field private static mFirstMcc:I

.field private static mFirstMnc:I

.field private static mIsDeepSleep:Z

.field private static mMaxIdleItems:I

.field private static mMaxIdleLength:I

.field private static mMinIdleItems:I

.field private static mMinIdleLength:I

.field private static mMinRecordTime:I

.field private static mNumCluster:I

.field private static mRandomSeed:I

.field private static mShuttingDown:Z

.field private static mSleepState:I

.field private static mTimeOutAfterScreenOff:I

.field private static mTimeOutBeforeUserAwake:I

.field private static mTolerance:I


# instance fields
.field public final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

.field SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mAudioManager:Landroid/media/AudioManager;

.field mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

.field private mBootCompletedElapsedTime:J

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mDeepSleepWhitelistAppIdArray:[I

.field private final mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

.field private final mDeepSleepWhitelistApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDozeState:I

.field private mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

.field private mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

.field private mIsCharging:Z

.field private mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

.field private mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

.field private final mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field private final mLock:Ljava/lang/Object;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mOPSMActive:Z

.field private mOPSMEnabled:I

.field private final mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSavedDataState:Z

.field private mSavedIdleFactor:F

.field private mSavedIdleTimeout:J

.field private mSavedNextIdleDelay:J

.field private mSavedNextIdlePendingDelay:J

.field private mSavedPendingTimeout:J

.field private mSavedTetheredIfaces:[Ljava/lang/String;

.field private mSavedWifiScanState:Z

.field private mSavedWifiState:Z

.field private mScreenOffStart:Ljava/time/LocalDateTime;

.field private mScreenOffStartDateTime:Ljava/time/LocalDateTime;

.field private mSensorEnabled:Z

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRestrict:Z

.field private mSleepEndOverridden:Ljava/time/LocalDateTime;

.field private mSleepStartOverridden:Ljava/time/LocalDateTime;

.field private mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

.field private mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUserSleep:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private tetherableBluetoothRegexs:[Ljava/lang/String;

.field private tetherableUsbRegexs:[Ljava/lang/String;

.field private tetherableWifiRegexs:[Ljava/lang/String;

.field private timeout:J


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    return v0
.end method

.method static synthetic -get1()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    return v0
.end method

.method static synthetic -get10(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    return-object v0
.end method

.method static synthetic -get11()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mIsDeepSleep:Z

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$KMeans;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

    return-object v0
.end method

.method static synthetic -get13(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    return-object v0
.end method

.method static synthetic -get14(Lcom/android/server/OnePlusPowerController;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get15()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    return v0
.end method

.method static synthetic -get16()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    return v0
.end method

.method static synthetic -get17()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    return v0
.end method

.method static synthetic -get18(Lcom/android/server/OnePlusPowerController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/OnePlusPowerController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    return v0
.end method

.method static synthetic -get2()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    return v0
.end method

.method static synthetic -get20(Lcom/android/server/OnePlusPowerController;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic -get21(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic -get22(Lcom/android/server/OnePlusPowerController;)Landroid/content/ContentResolver;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get23()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    return v0
.end method

.method static synthetic -get24(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/OnePlusPowerController;)Ljava/time/LocalDateTime;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    return-object v0
.end method

.method static synthetic -get26()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    return v0
.end method

.method static synthetic -get27(Lcom/android/server/OnePlusPowerController;)Landroid/telephony/SubscriptionManager;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object v0
.end method

.method static synthetic -get28()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    return v0
.end method

.method static synthetic -get29()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    return v0
.end method

.method static synthetic -get3()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    return v0
.end method

.method static synthetic -get30(Lcom/android/server/OnePlusPowerController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/OnePlusPowerController;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/OnePlusPowerController;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget v0, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    return v0
.end method

.method static synthetic -get6()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    return v0
.end method

.method static synthetic -get7()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    return v0
.end method

.method static synthetic -get8()I
    .locals 1

    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    return v0
.end method

.method static synthetic -get9(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    return-object v0
.end method

.method static synthetic -set0(Z)Z
    .locals 0
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    return p0
.end method

.method static synthetic -set1(Lcom/android/server/OnePlusPowerController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/OnePlusPowerController;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    return p1
.end method

.method static synthetic -set11(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    return p0
.end method

.method static synthetic -set12(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    return p0
.end method

.method static synthetic -set13(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    return p0
.end method

.method static synthetic -set2(Z)Z
    .locals 0
    .param p0, "-value"    # Z

    .prologue
    sput-boolean p0, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    return p0
.end method

.method static synthetic -set3(Lcom/android/server/OnePlusPowerController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    return p1
.end method

.method static synthetic -set4(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    return p0
.end method

.method static synthetic -set5(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    return p0
.end method

.method static synthetic -set6(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    return p0
.end method

.method static synthetic -set7(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    return p0
.end method

.method static synthetic -set8(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    return p0
.end method

.method static synthetic -set9(I)I
    .locals 0
    .param p0, "-value"    # I

    .prologue
    sput p0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    return p0
.end method

.method static synthetic -wrap0(Lcom/android/server/OnePlusPowerController;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController;
    .param p1, "configList"    # Lorg/json/JSONArray;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 150
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    .line 151
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 152
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 153
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 207
    sput-boolean v1, Lcom/android/server/OnePlusPowerController;->mFirstChange:Z

    .line 227
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->mIsDeepSleep:Z

    .line 307
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    .line 308
    sput-boolean v2, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    .line 309
    const/16 v0, 0x1e6c

    sput v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    .line 310
    sput v3, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    .line 311
    sput v3, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    .line 322
    const v0, 0x44aa20

    sput v0, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 323
    const v0, 0x1b7740

    sput v0, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 337
    const-string/jumbo v0, "ro.build.beta"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v1, :cond_0

    .line 338
    const-string/jumbo v0, "ro.build.alpha"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    .line 337
    :goto_0
    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    .line 339
    sput v2, Lcom/android/server/OnePlusPowerController;->SCREEN_OFF:I

    .line 340
    sput v1, Lcom/android/server/OnePlusPowerController;->SCREEN_ON:I

    .line 148
    return-void

    :cond_0
    move v0, v1

    .line 337
    goto :goto_0

    :cond_1
    move v0, v2

    .line 338
    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 357
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 167
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    .line 171
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    .line 189
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLock:Ljava/lang/Object;

    .line 202
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 203
    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 204
    sget-object v0, Ljava/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljava/time/format/DateTimeFormatter;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    .line 218
    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 219
    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 220
    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 221
    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    .line 222
    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 281
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    .line 284
    iput-boolean v6, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    .line 285
    iput-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 291
    iput v6, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    .line 329
    iput-object v5, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 1036
    new-instance v0, Lcom/android/server/OnePlusPowerController$1;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusPowerController$1;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 1536
    new-instance v0, Lcom/android/server/OnePlusPowerController$2;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusPowerController$2;-><init>(Lcom/android/server/OnePlusPowerController;)V

    .line 1535
    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 2975
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Lcom/android/server/OnePlusPowerController;->timeout:J

    .line 359
    const/16 v0, 0x3c

    sput v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    .line 360
    const v0, 0x112a880

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    .line 361
    const v0, 0x337f980

    sput v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    .line 362
    sput v3, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    .line 363
    const v0, 0x36ee80

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    .line 364
    sput v3, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    .line 365
    const/16 v0, 0x64

    sput v0, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    .line 366
    sput v2, Lcom/android/server/OnePlusPowerController;->mTolerance:I

    .line 368
    const-string/jumbo v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 369
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    .line 370
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    .line 371
    new-instance v0, Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;-><init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    .line 372
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mPowerManager:Landroid/os/PowerManager;

    .line 373
    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 375
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    new-instance v3, Lcom/android/server/OnePlusPowerController$ConfigUpdater;

    invoke-direct {v3, p0, v5}, Lcom/android/server/OnePlusPowerController$ConfigUpdater;-><init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$ConfigUpdater;)V

    const-string/jumbo v4, "PowerControl"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 376
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 378
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "NYNCG4I0TI"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 379
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {v0, p1}, Lcom/android/server/OverHeatingDiagnosis;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    .line 381
    new-instance v0, Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusPowerController$IdleStats;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    .line 382
    new-instance v0, Lcom/android/server/OnePlusPowerController$KMeans;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusPowerController$KMeans;-><init>(Lcom/android/server/OnePlusPowerController;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mKMeans:Lcom/android/server/OnePlusPowerController$KMeans;

    .line 384
    new-instance v0, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-direct {v0, v5}, Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;-><init>(Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    .line 386
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    .line 387
    new-instance v0, Lcom/android/server/OnePlusPowerController$3;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/OnePlusPowerController$3;-><init>(Lcom/android/server/OnePlusPowerController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    .line 416
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    .line 417
    const-string/jumbo v1, "doze_mode_policy"

    .line 416
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 419
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    .line 416
    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 421
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    .line 422
    const-string/jumbo v1, "optimal_power_save_mode_enabled"

    .line 421
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 424
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mContentObserver:Landroid/database/ContentObserver;

    .line 421
    invoke-virtual {v0, v1, v6, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 426
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusPowerController"

    const-string/jumbo v1, "OnePlusPowerController is constructed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_0
    return-void
.end method

.method private static buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I
    .locals 5
    .param p2, "outAppIds"    # Landroid/util/SparseBooleanArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseBooleanArray;",
            ")[I"
        }
    .end annotation

    .prologue
    .local p0, "systemApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    .local p1, "userApps":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const/4 v4, 0x1

    .line 3011
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->clear()V

    .line 3012
    if-eqz p0, :cond_0

    .line 3013
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 3014
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3013
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3017
    .end local v1    # "i":I
    :cond_0
    if-eqz p1, :cond_1

    .line 3018
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 3019
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p2, v3, v4}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3018
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3022
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    .line 3023
    .local v2, "size":I
    new-array v0, v2, [I

    .line 3024
    .local v0, "appids":[I
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    if-ge v1, v2, :cond_2

    .line 3025
    invoke-virtual {p2, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    aput v3, v0, v1

    .line 3024
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3027
    :cond_2
    return-object v0
.end method

.method private convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J
    .locals 4
    .param p1, "date"    # Ljava/time/LocalDateTime;

    .prologue
    .line 3050
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/time/LocalDateTime;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v1

    .line 3051
    .local v1, "zdt":Ljava/time/ZonedDateTime;
    invoke-virtual {v1}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v0

    .line 3053
    .local v0, "instant":Ljava/time/Instant;
    invoke-virtual {v0}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v2

    return-wide v2
.end method

.method private dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .prologue
    .line 2978
    const/4 v7, 0x0

    .line 2979
    .local v7, "fis":Ljava/io/FileInputStream;
    const/16 v2, 0x400

    .line 2980
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 2982
    .local v3, "buffer":[B
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2983
    .local v6, "f":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2984
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2985
    .local v8, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 2986
    .local v9, "length":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .end local v7    # "fis":Ljava/io/FileInputStream;
    move-result-wide v10

    .line 2987
    .local v10, "nowELAPSED":J
    :cond_0
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_4

    .line 2988
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2989
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/OnePlusPowerController;->timeout:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    .line 2990
    const-string/jumbo v12, "**** Exceed read timeout, force exit ***"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v7, v8

    .line 3001
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "nowELAPSED":J
    :goto_0
    if-eqz v7, :cond_1

    .line 3002
    :try_start_2
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 3006
    .end local v6    # "f":Ljava/io/File;
    :cond_1
    :goto_1
    return-void

    .line 2995
    .restart local v6    # "f":Ljava/io/File;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :cond_2
    :try_start_3
    const-string/jumbo v12, "**** File not found ****"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2997
    .end local v6    # "f":Ljava/io/File;
    :catch_0
    move-exception v4

    .line 2998
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/IOException;
    :goto_2
    :try_start_4
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "**** Failed to read, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3001
    if-eqz v7, :cond_1

    .line 3002
    :try_start_5
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 3003
    :catch_1
    move-exception v5

    .local v5, "ex":Ljava/io/IOException;
    goto :goto_1

    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v6    # "f":Ljava/io/File;
    :catch_2
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 2999
    .end local v5    # "ex":Ljava/io/IOException;
    .end local v6    # "f":Ljava/io/File;
    :catchall_0
    move-exception v12

    .line 3001
    :goto_3
    if-eqz v7, :cond_3

    .line 3002
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 2999
    :cond_3
    :goto_4
    throw v12

    .line 3003
    :catch_3
    move-exception v5

    .restart local v5    # "ex":Ljava/io/IOException;
    goto :goto_4

    .line 2999
    .end local v5    # "ex":Ljava/io/IOException;
    .restart local v6    # "f":Ljava/io/File;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 2997
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_2

    .end local v4    # "e":Ljava/io/IOException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "nowELAPSED":J
    :cond_4
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_0
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2347
    const-string/jumbo v0, "OnePlus power controller (powercontrol) commands"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2348
    const-string/jumbo v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2349
    const-string/jumbo v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2350
    const-string/jumbo v0, "  aggressive"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2351
    const-string/jumbo v0, "    Print the information of the aggressive doze mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2352
    const-string/jumbo v0, "  aggressive [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2353
    const-string/jumbo v0, "    Enable or disable the aggressive doze mode"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2354
    const-string/jumbo v0, "  overheat"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2355
    const-string/jumbo v0, "    Print the information of the diagnosis of overheating"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2356
    const-string/jumbo v0, "  overheat [enable|disable]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2357
    const-string/jumbo v0, "    Enable or disable the diagnosis of overheating."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2358
    const-string/jumbo v0, "  overheat [number|temper|period|force-monitor] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2359
    const-string/jumbo v0, "    Configure the property value of the diagnosis of overheating."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2361
    const-string/jumbo v0, "  standby"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2362
    const-string/jumbo v0, "    Print standby diagnosis records"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2364
    const-string/jumbo v0, "  deepsleepwhitelist [update|clean|get] <value>"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2365
    const-string/jumbo v0, "    Update the deepsleepwhitelist, or get, or entire clean"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2366
    const-string/jumbo v0, "  wifi [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2367
    const-string/jumbo v0, "    Enable, disable or query wifi network state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2368
    const-string/jumbo v0, "  data [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2369
    const-string/jumbo v0, "    Enable, disable or query data network state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2370
    const-string/jumbo v0, "  tethering [enable|disable|query]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2371
    const-string/jumbo v0, "    Enable, disable or query tethering state"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2372
    const-string/jumbo v0, "  usersleep"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2373
    const-string/jumbo v0, "    Print the information of the usersleep"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2374
    const-string/jumbo v0, "  usersleep log [on|off]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2375
    const-string/jumbo v0, "    Enable or disable the usersleep log."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2376
    const-string/jumbo v0, "  usersleep opsm [enable|disable]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2377
    const-string/jumbo v0, "    Enable or disable OPSM"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2378
    const-string/jumbo v0, "  usersleep start [Date]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2379
    const-string/jumbo v0, "    Set the usersleep start time with the format, yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2380
    const-string/jumbo v0, "  usersleep end [Date]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2381
    const-string/jumbo v0, "    Set the usersleep end time with the format, yyyy-MM-dd HH:mm:ss"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2382
    const-string/jumbo v0, "  usersleep timeoutAfterScreenOff [milliseconds]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2383
    const-string/jumbo v0, "    Set the threshold to enter OPSM after screen-off"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2384
    const-string/jumbo v0, "  usersleep timeoutBeforeUserAwake [milliseconds]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2385
    const-string/jumbo v0, "    Set the threshold to leave OPSM before user awake"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2386
    const-string/jumbo v0, "  wakelocks"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2387
    const-string/jumbo v0, "    Print exclusive wakelocks"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2388
    return-void
.end method

.method private dumpUseSleep(Ljava/io/PrintWriter;)V
    .locals 10
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 2888
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2889
    const-string/jumbo v6, "**** USER DEEP SLEEP CONFIGURATION ****"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2890
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MAX IDLE ITEMS  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2891
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIN IDLE ITEMS  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2892
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MAX IDLE LENGTH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2893
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIN IDLE LENGTH : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "MIN RECORD TIME : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2896
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " Doze State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    invoke-virtual {p0, v7}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2897
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " User Sleep = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2898
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sleep State = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    invoke-virtual {p0, v7}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2899
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " OPSMEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    invoke-virtual {p0, v7}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2900
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " OPSMActive = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2901
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " SensorRestrict = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2902
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " isCharging = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2903
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2904
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v6, :cond_0

    .line 2905
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    CurrentWifiState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2907
    :cond_0
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v6, :cond_1

    .line 2908
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    CurrentDataState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2910
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     mSavedWifiState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2911
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "     mSavedDataState = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2912
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "    mSavedIdleFactor = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2913
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "   mSavedIdleTImeout = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleTimeout:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2914
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " mSavedPendingImeout = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedPendingTimeout:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2915
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSavedTetheredIfaces = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    invoke-static {v7}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2917
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-nez v6, :cond_5

    .line 2918
    const-string/jumbo v6, "Screen-off time = "

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2923
    :goto_0
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v4

    .line 2924
    .local v4, "now":Ljava/time/LocalDateTime;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Current local date time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v4, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2926
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTimeOutAfterScreenOff = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2927
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mTimeOutBeforeUserAwake = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2928
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2930
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    if-eqz v6, :cond_4

    .line 2931
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v5

    .line 2932
    .local v5, "start":Ljava/time/LocalTime;
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v0

    .line 2933
    .local v0, "duration":Ljava/time/Duration;
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 2934
    .local v3, "nextStart":Ljava/time/LocalDateTime;
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 2936
    .local v2, "nextEnd":Ljava/time/LocalDateTime;
    const-string/jumbo v6, "**** IDLE RECORD STATISTICS ****"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2937
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Total idle records: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v7}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2938
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6, p1}, Lcom/android/server/OnePlusPowerController$IdleStats;->dumpIdleItems(Ljava/io/PrintWriter;)V

    .line 2941
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->getLastRecordTime()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 2943
    .local v1, "lastRecordTime":Ljava/time/LocalDateTime;
    if-eqz v5, :cond_2

    if-nez v0, :cond_6

    .line 2944
    :cond_2
    const-string/jumbo v6, "Last update time: 0"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2945
    const-string/jumbo v6, "deep-sleep: start=0, length=0"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2952
    :goto_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2953
    const-string/jumbo v6, "**** User DEEP SLEEP PROGNOSIS ****"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2955
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    if-eqz v6, :cond_7

    .line 2956
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sleep Start (overridden) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2963
    :cond_3
    :goto_2
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v6, :cond_8

    .line 2964
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sleep End (overridden) = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {v7}, Ljava/time/LocalDateTime;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2971
    .end local v0    # "duration":Ljava/time/Duration;
    .end local v1    # "lastRecordTime":Ljava/time/LocalDateTime;
    .end local v2    # "nextEnd":Ljava/time/LocalDateTime;
    .end local v3    # "nextStart":Ljava/time/LocalDateTime;
    .end local v5    # "start":Ljava/time/LocalTime;
    :cond_4
    :goto_3
    return-void

    .line 2920
    .end local v4    # "now":Ljava/time/LocalDateTime;
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Screen-off time = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v7, v8}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2943
    .restart local v0    # "duration":Ljava/time/Duration;
    .restart local v1    # "lastRecordTime":Ljava/time/LocalDateTime;
    .restart local v2    # "nextEnd":Ljava/time/LocalDateTime;
    .restart local v3    # "nextStart":Ljava/time/LocalDateTime;
    .restart local v4    # "now":Ljava/time/LocalDateTime;
    .restart local v5    # "start":Ljava/time/LocalTime;
    :cond_6
    if-eqz v1, :cond_2

    .line 2947
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Last update time: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v1, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2948
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "deep-sleep: start="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_TIME_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v5, v7}, Ljava/time/LocalTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 2949
    const-string/jumbo v7, ", duration="

    .line 2948
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2958
    :cond_7
    if-eqz v3, :cond_3

    .line 2959
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sleep Start = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v3, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2966
    :cond_8
    if-eqz v2, :cond_4

    .line 2967
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Sleep End = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 3
    .param p1, "iface"    # Ljava/lang/String;

    .prologue
    .line 2785
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2786
    const-string/jumbo v1, "vendor.wigig.interface"

    const-string/jumbo v2, "wigig0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2787
    .local v0, "wigigIface":Ljava/lang/String;
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2788
    const/4 v1, 0x3

    return v1

    .line 2790
    :cond_0
    const/4 v1, 0x0

    return v1

    .line 2791
    .end local v0    # "wigigIface":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2792
    const/4 v1, 0x1

    return v1

    .line 2793
    :cond_2
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {p1, v1}, Lcom/android/server/OnePlusPowerController;->matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2794
    const/4 v1, 0x2

    return v1

    .line 2796
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private isMusicPlaying()Z
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 3062
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 3063
    .local v0, "currentVolume":I
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    .line 3065
    .local v1, "isMusicActive":Z
    sget-boolean v3, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_0

    .line 3066
    const-string/jumbo v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "currentVolume: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    const-string/jumbo v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isMusicActive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3070
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private static matchesDownstreamRegexs(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "iface"    # Ljava/lang/String;
    .param p1, "regexs"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 2800
    array-length v3, p1

    move v1, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, p1, v1

    .line 2801
    .local v0, "regex":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v1, 0x1

    return v1

    .line 2800
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2803
    .end local v0    # "regex":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method private parseOPSM(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    const/4 v11, 0x2

    const/4 v10, -0x2

    const/4 v9, -0x1

    .line 1314
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "parseOPSM..."

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    const-string/jumbo v7, "enabled"

    invoke-virtual {p1, v7, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1326
    .local v2, "enabled":I
    sget-boolean v7, Lcom/android/server/OnePlusPowerController;->BETA_OR_ALPHA_ROM:Z

    if-eqz v7, :cond_0

    .line 1327
    const-string/jumbo v7, "beta_enabled"

    invoke-virtual {p1, v7, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 1330
    :cond_0
    if-eq v2, v11, :cond_1

    if-ne v2, v9, :cond_3

    .line 1332
    :cond_1
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    .line 1333
    const-string/jumbo v8, "optimal_power_save_mode_enabled"

    .line 1331
    invoke-static {v7, v8, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 1335
    .local v4, "opsm":I
    if-eq v4, v9, :cond_2

    .line 1336
    if-ne v4, v11, :cond_4

    .line 1338
    :cond_2
    :goto_0
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 1339
    const-string/jumbo v8, "optimal_power_save_mode_enabled"

    .line 1338
    invoke-static {v7, v8, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1343
    .end local v4    # "opsm":I
    :cond_3
    const-string/jumbo v7, "timeout_after_screen_off"

    const v8, 0x44aa20

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 1345
    const-string/jumbo v7, "timeout_before_user_awake"

    const v8, 0x1b7740

    invoke-virtual {p1, v7, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    sput v7, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 1348
    :try_start_0
    const-string/jumbo v7, "whiteList"

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 1349
    .local v6, "whiteList":Lorg/json/JSONArray;
    if-eqz v6, :cond_5

    .line 1350
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v3, v7, :cond_7

    .line 1351
    invoke-virtual {v6, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v5

    .line 1353
    .local v5, "packageName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p0, v5}, Lcom/android/server/OnePlusPowerController;->addPackageToWhitelist(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1350
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1337
    .end local v3    # "i":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "whiteList":Lorg/json/JSONArray;
    .restart local v4    # "opsm":I
    :cond_4
    if-ne v4, v10, :cond_3

    goto :goto_0

    .line 1354
    .end local v4    # "opsm":I
    .restart local v3    # "i":I
    .restart local v5    # "packageName":Ljava/lang/String;
    .restart local v6    # "whiteList":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 1355
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_2
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pkg:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " is not found"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 1364
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "i":I
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "whiteList":Lorg/json/JSONArray;
    :catch_1
    move-exception v1

    .line 1365
    .local v1, "e":Lorg/json/JSONException;
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1368
    .end local v1    # "e":Lorg/json/JSONException;
    :cond_5
    :goto_3
    sget-boolean v7, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    if-eqz v7, :cond_6

    .line 1369
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] mUserSleep = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1370
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] mOPSMEnabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/OnePlusPowerController;->mOPSMEnabled:I

    invoke-virtual {p0, v9}, Lcom/android/server/OnePlusPowerController;->convertOPSMEnabledToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] mTimeOutAfterScreenOff = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1372
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] mTimeOutBeforeUserAwake = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1373
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "[OnlineConfig] mDeepSleepWhitelistAppIds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    :cond_6
    return-void

    .line 1360
    .restart local v3    # "i":I
    .restart local v6    # "whiteList":Lorg/json/JSONArray;
    :cond_7
    :try_start_3
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    const/4 v9, 0x0

    invoke-static {v9, v7, v8}, Lcom/android/server/OnePlusPowerController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    .line 1361
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-virtual {v7, v8}, Lcom/android/server/AlarmManagerService$LocalService;->setDeepSleepWhitelist([I)V

    .line 1362
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_3
.end method

.method private parseUserSleep(Lorg/json/JSONObject;)V
    .locals 3
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    const/4 v2, 0x2

    .line 1272
    const-string/jumbo v0, "enabled"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    .line 1274
    const-string/jumbo v0, "sensor_restrict"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    .line 1277
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-nez v0, :cond_0

    .line 1278
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    if-nez v0, :cond_0

    .line 1279
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->leaveOPSM()V

    .line 1283
    :cond_0
    const-string/jumbo v0, "seed"

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    .line 1285
    const-string/jumbo v0, "cluster"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    .line 1287
    const-string/jumbo v0, "min_rec"

    const v1, 0x36ee80

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    .line 1289
    const-string/jumbo v0, "min_idle"

    invoke-virtual {p1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    .line 1291
    const-string/jumbo v0, "max_idle"

    const/16 v1, 0x3c

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    .line 1293
    const-string/jumbo v0, "min_len"

    const v1, 0x112a880

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    .line 1295
    const-string/jumbo v0, "max_len"

    const v1, 0x337f980

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    .line 1297
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    if-eqz v0, :cond_1

    .line 1298
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] USER_SLEEP = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] RANDOM_SEED = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusPowerController;->mRandomSeed:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] NUM_CLUSTER = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusPowerController;->mNumCluster:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1301
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] MIN_RECORD_TIME = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] MIN_IDLE_ITEMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] MAX_IDLE_ITEMS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusPowerController;->mMaxIdleItems:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] MIN_IDLE_LENGTH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[OnlineConfig] MAX_IDLE_LENGTH = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    :cond_1
    return-void
.end method

.method private parseWakeLock(Lorg/json/JSONObject;)V
    .locals 12
    .param p1, "config"    # Lorg/json/JSONObject;

    .prologue
    .line 1229
    :try_start_0
    const-string/jumbo v9, "packageList"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    .line 1230
    .local v5, "packageList":Lorg/json/JSONArray;
    const-string/jumbo v9, "packageList"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1231
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v9}, Landroid/os/PowerManagerInternal;->clearExclusiveWakeLock()V

    .line 1232
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v2, v9, :cond_1

    .line 1233
    invoke-virtual {v5, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 1234
    .local v1, "item":Lorg/json/JSONObject;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1235
    const-string/jumbo v9, "packageName"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1236
    .local v6, "packageName":Ljava/lang/String;
    const-string/jumbo v9, "tagList"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1237
    const-string/jumbo v9, "tagList"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1238
    .local v8, "tagList":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "k":I
    :goto_1
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_0

    .line 1239
    invoke-virtual {v8, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1240
    .local v7, "tag":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1241
    .local v3, "jsonExclusiveWakeLock":Lorg/json/JSONObject;
    const-string/jumbo v9, "packageName"

    invoke-virtual {v3, v9, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1242
    const-string/jumbo v9, "tag"

    invoke-virtual {v3, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1243
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v10, 0x3

    invoke-virtual {v9, v10, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    invoke-virtual {v9}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1238
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1232
    .end local v3    # "jsonExclusiveWakeLock":Lorg/json/JSONObject;
    .end local v4    # "k":I
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "tag":Ljava/lang/String;
    .end local v8    # "tagList":Lorg/json/JSONArray;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1249
    .end local v1    # "item":Lorg/json/JSONObject;
    .end local v2    # "j":I
    .end local v5    # "packageList":Lorg/json/JSONArray;
    :catch_0
    move-exception v0

    .line 1250
    .local v0, "e":Lorg/json/JSONException;
    const-string/jumbo v9, "OnePlusPowerController"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_1
    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 7
    .param p1, "configList"    # Lorg/json/JSONArray;

    .prologue
    .line 1163
    if-nez p1, :cond_0

    .line 1164
    const-string/jumbo v4, "OnePlusPowerController"

    const-string/jumbo v5, "[OnlineConfig] configList == null"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    return-void

    .line 1183
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1184
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 1186
    .local v0, "config":Lorg/json/JSONObject;
    const-string/jumbo v4, "program"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1187
    const-string/jumbo v4, "program"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1188
    .local v3, "program":Ljava/lang/String;
    const-string/jumbo v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[OnlineConfig] program: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const-string/jumbo v4, "wakelocks"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1192
    invoke-direct {p0, v0}, Lcom/android/server/OnePlusPowerController;->parseWakeLock(Lorg/json/JSONObject;)V

    .line 1183
    .end local v3    # "program":Ljava/lang/String;
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1190
    .restart local v3    # "program":Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, "usersleep"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1195
    invoke-direct {p0, v0}, Lcom/android/server/OnePlusPowerController;->parseUserSleep(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1205
    .end local v0    # "config":Lorg/json/JSONObject;
    .end local v3    # "program":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1206
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "[OnlineConfig] resolve config from JSON, error message: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    return-void

    .line 1190
    .restart local v0    # "config":Lorg/json/JSONObject;
    .restart local v3    # "program":Ljava/lang/String;
    :cond_4
    :try_start_1
    const-string/jumbo v4, "opsm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1198
    invoke-direct {p0, v0}, Lcom/android/server/OnePlusPowerController;->parseOPSM(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method


# virtual methods
.method addPackageToWhitelist(Ljava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .prologue
    .line 1154
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v2, 0x400000

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1155
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    iget v2, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    return-void
.end method

.method convertOPSMEnabledToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "opsm"    # I

    .prologue
    .line 2873
    packed-switch p1, :pswitch_data_0

    .line 2883
    const-string/jumbo v0, "OPSM_ENABLED_UNKNOWN"

    return-object v0

    .line 2875
    :pswitch_0
    const-string/jumbo v0, "OPSM_DISABLED_BY_SYSTEM"

    return-object v0

    .line 2877
    :pswitch_1
    const-string/jumbo v0, "OPSM_DISABLED_BY_USER"

    return-object v0

    .line 2879
    :pswitch_2
    const-string/jumbo v0, "OPSM_ENABLED_BY_USER"

    return-object v0

    .line 2881
    :pswitch_3
    const-string/jumbo v0, "OPSM_ENABLED_BY_SYSTEM"

    return-object v0

    .line 2873
    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method convertToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "sleepState"    # I

    .prologue
    .line 2848
    sparse-switch p1, :sswitch_data_0

    .line 2868
    const-string/jumbo v0, "STATE_UNKNOWN"

    return-object v0

    .line 2850
    :sswitch_0
    const-string/jumbo v0, "STATE_SLEEP"

    return-object v0

    .line 2852
    :sswitch_1
    const-string/jumbo v0, "STATE_AWAKE"

    return-object v0

    .line 2854
    :sswitch_2
    const-string/jumbo v0, "STATE_ACTIVE"

    return-object v0

    .line 2856
    :sswitch_3
    const-string/jumbo v0, "STATE_INACTIVE"

    return-object v0

    .line 2858
    :sswitch_4
    const-string/jumbo v0, "STATE_IDLE_PENDING"

    return-object v0

    .line 2860
    :sswitch_5
    const-string/jumbo v0, "STATE_SENSING"

    return-object v0

    .line 2862
    :sswitch_6
    const-string/jumbo v0, "STATE_LOCATING"

    return-object v0

    .line 2864
    :sswitch_7
    const-string/jumbo v0, "STATE_IDLE"

    return-object v0

    .line 2866
    :sswitch_8
    const-string/jumbo v0, "STATE_IDLE_MAINTENANCE"

    return-object v0

    .line 2848
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_3
        0x2 -> :sswitch_4
        0x3 -> :sswitch_5
        0x4 -> :sswitch_6
        0x5 -> :sswitch_7
        0x6 -> :sswitch_8
        0x15be -> :sswitch_0
        0x1e6c -> :sswitch_1
    .end sparse-switch
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 2807
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v3, "OnePlusPowerController"

    invoke-static {v1, v3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 2809
    :cond_0
    if-eqz p3, :cond_4

    .line 2810
    const/4 v10, 0x0

    .line 2811
    .local v10, "userId":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v1, p3

    if-ge v9, v1, :cond_4

    .line 2812
    aget-object v8, p3, v9

    .line 2813
    .local v8, "arg":Ljava/lang/String;
    const-string/jumbo v1, "-h"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2814
    invoke-static {p2}, Lcom/android/server/OnePlusPowerController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2815
    return-void

    .line 2816
    :cond_1
    const-string/jumbo v1, "-a"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2811
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 2818
    :cond_2
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_3

    invoke-virtual {v8, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v3, 0x2d

    if-ne v1, v3, :cond_3

    .line 2819
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2820
    return-void

    .line 2822
    :cond_3
    new-instance v0, Lcom/android/server/OnePlusPowerController$Shell;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusPowerController$Shell;-><init>(Lcom/android/server/OnePlusPowerController;)V

    .line 2823
    .local v0, "shell":Lcom/android/server/OnePlusPowerController$Shell;
    iput v4, v0, Lcom/android/server/OnePlusPowerController$Shell;->userId:I

    .line 2824
    array-length v1, p3

    sub-int/2addr v1, v9

    new-array v5, v1, [Ljava/lang/String;

    .line 2825
    .local v5, "newArgs":[Ljava/lang/String;
    array-length v1, p3

    sub-int/2addr v1, v9

    invoke-static {p3, v9, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2826
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    .line 2827
    new-instance v7, Landroid/os/ResultReceiver;

    invoke-direct {v7, v2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v3, p1

    move-object v4, v2

    move-object v6, v2

    .line 2826
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/OnePlusPowerController$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 2828
    return-void

    .line 2833
    .end local v0    # "shell":Lcom/android/server/OnePlusPowerController$Shell;
    .end local v5    # "newArgs":[Ljava/lang/String;
    .end local v8    # "arg":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "userId":I
    :cond_4
    monitor-enter p0

    .line 2834
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/OnePlusPowerController;->dumpUseSleep(Ljava/io/PrintWriter;)V

    .line 2835
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v1, p2}, Lcom/android/server/OverHeatingDiagnosis;->dump(Ljava/io/PrintWriter;)V

    .line 2836
    const-string/jumbo v1, "**** OverHeat Diagnosis Records ****"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2837
    const-string/jumbo v1, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {p0, p2, v1}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2840
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2841
    const-string/jumbo v1, "**** Standby Diagnosis Records ****"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2842
    const-string/jumbo v1, "/data/system/power/diagnosis_standby.txt"

    invoke-direct {p0, p2, v1}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 2845
    return-void

    .line 2833
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method enterOPSMIfAppropriated(Z)V
    .locals 13
    .param p1, "forced"    # Z

    .prologue
    .line 810
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v3

    .line 811
    .local v3, "now":Ljava/time/LocalDateTime;
    if-nez p1, :cond_5

    .line 812
    invoke-direct {p0}, Lcom/android/server/OnePlusPowerController;->isMusicPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 813
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Abort entering OPSM mode because of audio playing"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    return-void

    .line 817
    :cond_0
    sget v7, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v8, 0x1e6c

    if-ne v7, v8, :cond_1

    .line 818
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Abort entering OPSM mode because of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget v9, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    invoke-virtual {p0, v9}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return-void

    .line 822
    :cond_1
    iget v7, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    const/4 v8, 0x5

    if-eq v7, v8, :cond_2

    .line 823
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Abort entering OPSM mode because of "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    invoke-virtual {p0, v9}, Lcom/android/server/OnePlusPowerController;->convertToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 824
    return-void

    .line 827
    :cond_2
    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mIsCharging:Z

    if-eqz v7, :cond_3

    .line 828
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Abort entering OPSM mode because of charging"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    return-void

    .line 832
    :cond_3
    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    if-eqz v7, :cond_4

    .line 833
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Abort entering OPSM mode because OPSM is already active."

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    return-void

    .line 837
    :cond_4
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-eqz v7, :cond_5

    .line 838
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v8

    invoke-static {v7, v8}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Duration;->toMillis()J

    move-result-wide v8

    sget v7, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    int-to-long v10, v7

    cmp-long v7, v8, v10

    if-gez v7, :cond_5

    .line 839
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Abort entering OPSM mode because of Screen-off Timeout"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    return-void

    .line 845
    :cond_5
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Entering OPSM mode"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 848
    const-wide/16 v4, 0x0

    .line 849
    .local v4, "sleepTimeout":J
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v7, :cond_8

    .line 850
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mSleepEndOverridden = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v9, v10}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    sget v8, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    div-int/lit16 v8, v8, 0x3e8

    int-to-long v8, v8

    invoke-virtual {v7, v8, v9}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v6

    .line 852
    .local v6, "time":Ljava/time/LocalDateTime;
    invoke-static {v3, v6}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v1

    .line 853
    .local v1, "duration":Ljava/time/Duration;
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    .line 863
    .end local v6    # "time":Ljava/time/LocalDateTime;
    :cond_6
    :goto_0
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v7}, Lcom/android/server/DeviceIdleController$LocalService;->getIdleTimeout()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleTimeout:J

    .line 864
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setIdleTimeout(J)V

    .line 865
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Adjust idle timeout from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleTimeout:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 866
    const-string/jumbo v9, " to "

    .line 865
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 867
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v7}, Lcom/android/server/DeviceIdleController$LocalService;->getPendingTimeout()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedPendingTimeout:J

    .line 868
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    const-wide/16 v8, 0x7530

    invoke-virtual {v7, v8, v9}, Lcom/android/server/DeviceIdleController$LocalService;->setPendingTimeout(J)V

    .line 869
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v7}, Lcom/android/server/DeviceIdleController$LocalService;->getIdleFactor()F

    move-result v7

    iput v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleFactor:F

    .line 870
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v7, v8}, Lcom/android/server/DeviceIdleController$LocalService;->setIdleFactor(F)V

    .line 872
    iget v7, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    const/4 v8, 0x5

    if-ne v7, v8, :cond_7

    .line 876
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v7}, Lcom/android/server/DeviceIdleController$LocalService;->getNextIdlePendingDelay()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedNextIdlePendingDelay:J

    .line 877
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    const-wide/16 v8, 0xbb8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/DeviceIdleController$LocalService;->setNextIdlePendingDelay(J)V

    .line 878
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v7}, Lcom/android/server/DeviceIdleController$LocalService;->getNextIdleDelay()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedNextIdleDelay:J

    .line 879
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v7, v4, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setNextIdleDelay(J)V

    .line 880
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    const-wide/16 v8, 0x0

    const/4 v10, 0x1

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/DeviceIdleController$LocalService;->scheduleAlarm(JZ)V

    .line 881
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Kick off doze to the next state"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    :cond_7
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    .line 886
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v7}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    .line 888
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "wifi_scan_always_enabled"

    const/4 v9, 0x0

    .line 887
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    .line 888
    const/4 v8, 0x1

    .line 887
    if-ne v7, v8, :cond_9

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    .line 889
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    .line 892
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Tethered interfaces: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    invoke-static {v9}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    const/4 v7, 0x0

    array-length v9, v8

    :goto_2
    if-ge v7, v9, :cond_a

    aget-object v2, v8, v7

    .line 894
    .local v2, "iface":Ljava/lang/String;
    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v2}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 895
    const-string/jumbo v10, "OnePlusPowerController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Disable "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " tethering"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 855
    .end local v1    # "duration":Ljava/time/Duration;
    .end local v2    # "iface":Ljava/lang/String;
    :cond_8
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v7}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v1

    .line 856
    .restart local v1    # "duration":Ljava/time/Duration;
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mIdleStats.getDeepSleepDuration() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    invoke-virtual {v1}, Ljava/time/Duration;->isZero()Z

    move-result v7

    if-nez v7, :cond_6

    .line 858
    invoke-virtual {v1}, Ljava/time/Duration;->toMillis()J

    move-result-wide v8

    sget v7, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    int-to-long v10, v7

    sub-long v4, v8, v10

    goto/16 :goto_0

    .line 887
    :cond_9
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 899
    :cond_a
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Data state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 900
    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    if-eqz v7, :cond_b

    .line 901
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 902
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Disable data"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 906
    :cond_b
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Wifi state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    if-eqz v7, :cond_c

    .line 908
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 909
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Disable wifi"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 913
    :cond_c
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Wifi Scan state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 914
    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    if-eqz v7, :cond_d

    .line 916
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v8, "wifi_scan_always_enabled"

    const/4 v9, 0x0

    .line 915
    invoke-static {v7, v8, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 917
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "Disable wifi scan"

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    :cond_d
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/server/AlarmManagerService$LocalService;->setDeepSleepMode(Z)V

    .line 922
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/os/PowerManagerInternal;->setDeepSleepMode(Z)V

    .line 932
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v7, :cond_e

    iget-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-eqz v7, :cond_e

    .line 933
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v7}, Landroid/hardware/SensorManager;->enterOPSM()V

    .line 934
    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 937
    :cond_e
    const/4 v7, 0x1

    iput-boolean v7, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    .line 940
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 941
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v7, "os"

    const-string/jumbo v8, "1"

    invoke-virtual {v0, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v8, "usersleep"

    invoke-virtual {v7, v8, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 943
    return-void
.end method

.method getSleepState(Ljava/time/LocalDateTime;)I
    .locals 8
    .param p1, "now"    # Ljava/time/LocalDateTime;

    .prologue
    .line 1016
    const/16 v3, 0x1e6c

    .line 1017
    .local v3, "sleepState":I
    if-eqz p1, :cond_0

    .line 1018
    invoke-static {}, Ljava/time/LocalDate;->now()Ljava/time/LocalDate;

    move-result-object v0

    .line 1019
    .local v0, "date":Ljava/time/LocalDate;
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepStart()Ljava/time/LocalTime;

    move-result-object v4

    .line 1020
    .local v4, "time":Ljava/time/LocalTime;
    if-eqz v4, :cond_0

    .line 1021
    invoke-static {v0, v4}, Ljava/time/LocalDateTime;->of(Ljava/time/LocalDate;Ljava/time/LocalTime;)Ljava/time/LocalDateTime;

    move-result-object v2

    .line 1022
    .local v2, "sleepStart":Ljava/time/LocalDateTime;
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v5}, Lcom/android/server/OnePlusPowerController$IdleStats;->getDeepSleepDuration()Ljava/time/Duration;

    move-result-object v5

    sget v6, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Ljava/time/Duration;->minusSeconds(J)Ljava/time/Duration;

    move-result-object v1

    .line 1023
    .local v1, "sleepDuration":Ljava/time/Duration;
    const-string/jumbo v5, "OnePlusPowerController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getSleepState: sleepStart="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v2, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1024
    const-string/jumbo v7, ", sleepDuration="

    .line 1023
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1025
    const-string/jumbo v7, ", now="

    .line 1023
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1025
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, v7}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v7

    .line 1023
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1027
    invoke-virtual {p1, v2}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1028
    invoke-static {v2, p1}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/time/Duration;->compareTo(Ljava/time/Duration;)I

    move-result v5

    if-gez v5, :cond_0

    .line 1029
    const/16 v3, 0x15be

    .line 1033
    .end local v0    # "date":Ljava/time/LocalDate;
    .end local v1    # "sleepDuration":Ljava/time/Duration;
    .end local v2    # "sleepStart":Ljava/time/LocalDateTime;
    .end local v4    # "time":Ljava/time/LocalTime;
    :cond_0
    return v3
.end method

.method isAggressive()Z
    .locals 1

    .prologue
    .line 571
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    if-eqz v0, :cond_0

    .line 572
    const/4 v0, 0x1

    return v0

    .line 574
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isChinaRegionInternal()Z
    .locals 2

    .prologue
    .line 558
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x1cc

    if-ne v0, v1, :cond_0

    .line 559
    const/4 v0, 0x1

    return v0

    .line 561
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isInSleep()Z
    .locals 2

    .prologue
    .line 585
    sget v0, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isIndiaRegionInternal()Z
    .locals 2

    .prologue
    .line 545
    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x194

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    const/16 v1, 0x195

    if-ne v0, v1, :cond_1

    .line 546
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 548
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method leaveOPSM()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v3, 0x0

    .line 951
    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    if-nez v2, :cond_0

    return-void

    .line 954
    :cond_0
    iget v2, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    if-nez v2, :cond_1

    iget v2, p0, Lcom/android/server/OnePlusPowerController;->mDozeState:I

    if-eq v2, v9, :cond_2

    .line 957
    :cond_1
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget-wide v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleTimeout:J

    invoke-virtual {v2, v4, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setIdleTimeout(J)V

    .line 958
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget-wide v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedPendingTimeout:J

    invoke-virtual {v2, v4, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setPendingTimeout(J)V

    .line 959
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget-wide v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedNextIdlePendingDelay:J

    invoke-virtual {v2, v4, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setNextIdlePendingDelay(J)V

    .line 960
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget-wide v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedNextIdleDelay:J

    invoke-virtual {v2, v4, v5}, Lcom/android/server/DeviceIdleController$LocalService;->setNextIdleDelay(J)V

    .line 961
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    iget v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleFactor:F

    invoke-virtual {v2, v4}, Lcom/android/server/DeviceIdleController$LocalService;->setIdleFactor(F)V

    .line 965
    :cond_2
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedTetheredIfaces:[Ljava/lang/String;

    array-length v5, v4

    move v2, v3

    :goto_0
    if-ge v2, v5, :cond_3

    aget-object v1, v4, v2

    .line 966
    .local v1, "iface":Ljava/lang/String;
    const-string/jumbo v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Restore "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " tethering"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    iget-object v6, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-direct {p0, v1}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v7

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    invoke-virtual {v6, v7, v3, v8}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 965
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 971
    .end local v1    # "iface":Ljava/lang/String;
    :cond_3
    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiScanState:Z

    if-eqz v2, :cond_4

    .line 973
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "wifi_scan_always_enabled"

    .line 972
    invoke-static {v2, v4, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 974
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v4, "Restore wifi scan"

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_4
    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    if-eqz v2, :cond_5

    .line 979
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedWifiState:Z

    invoke-virtual {v2, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 980
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v4, "Restore wifi network"

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_5
    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    if-eqz v2, :cond_6

    .line 985
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-boolean v4, p0, Lcom/android/server/OnePlusPowerController;->mSavedDataState:Z

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 986
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v4, "Restore data network"

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    :cond_6
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {v2, v3}, Lcom/android/server/AlarmManagerService$LocalService;->setDeepSleepMode(Z)V

    .line 991
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    invoke-virtual {v2, v3}, Landroid/os/PowerManagerInternal;->setDeepSleepMode(Z)V

    .line 1001
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v2, :cond_7

    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorRestrict:Z

    if-eqz v2, :cond_7

    .line 1002
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2}, Landroid/hardware/SensorManager;->leaveOPSM()V

    .line 1003
    iput-boolean v9, p0, Lcom/android/server/OnePlusPowerController;->mSensorEnabled:Z

    .line 1006
    :cond_7
    iput-boolean v3, p0, Lcom/android/server/OnePlusPowerController;->mOPSMActive:Z

    .line 1009
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1010
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "os"

    const-string/jumbo v3, "0"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1011
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v3, "usersleep"

    invoke-virtual {v2, v3, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1013
    return-void
.end method

.method public millisToLocalDateTime(J)Ljava/time/LocalDateTime;
    .locals 3
    .param p1, "millis"    # J

    .prologue
    .line 3044
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v1

    .line 3045
    .local v1, "instant":Ljava/time/Instant;
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v2

    invoke-virtual {v2}, Ljava/time/ZonedDateTime;->toLocalDateTime()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 3046
    .local v0, "date":Ljava/time/LocalDateTime;
    return-object v0
.end method

.method notifyScreenStateInternal(I)V
    .locals 14
    .param p1, "state"    # I

    .prologue
    const-wide/16 v12, 0x1388

    const/4 v11, 0x0

    .line 593
    sget v7, Lcom/android/server/OnePlusPowerController;->SCREEN_OFF:I

    if-ne p1, v7, :cond_1

    .line 594
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "SCREEN is OFF"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-nez v7, :cond_0

    .line 597
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v7

    iput-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    .line 598
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mScreenOffStart="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v9, v10}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController;->scheduleAlarmToEnterOPSM()V

    .line 648
    :goto_0
    return-void

    .line 603
    :cond_1
    const-string/jumbo v7, "OnePlusPowerController"

    const-string/jumbo v8, "SCREEN is ON"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 605
    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v6

    .line 607
    .local v6, "screenOffEnd":Ljava/time/LocalDateTime;
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    if-eqz v7, :cond_3

    .line 610
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-static {v7, v6}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Duration;->toMillis()J

    move-result-wide v0

    .line 611
    .local v0, "duration":J
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screen off duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    sget v7, Lcom/android/server/OnePlusPowerController;->mMinIdleLength:I

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-lez v7, :cond_3

    sget v7, Lcom/android/server/OnePlusPowerController;->mMaxIdleLength:I

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gez v7, :cond_3

    .line 614
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mScreenOffStart: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    iget-object v10, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v9, v10}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "screenOffEnd: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {v6, v9}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    iget-object v8, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    invoke-virtual {v7, v8, v6}, Lcom/android/server/OnePlusPowerController$IdleStats;->addIdleItem(Ljava/time/LocalDateTime;Ljava/time/LocalDateTime;)V

    .line 619
    const-wide/16 v4, 0x0

    .line 620
    .local v4, "recordDuration":J
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v7}, Lcom/android/server/OnePlusPowerController$IdleStats;->getLastRecordTime()Ljava/time/LocalDateTime;

    move-result-object v2

    .line 622
    .local v2, "last":Ljava/time/LocalDateTime;
    if-nez v2, :cond_4

    .line 623
    const-wide v4, 0x7fffffffffffffffL

    .line 628
    :goto_1
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "record duration: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    sget v7, Lcom/android/server/OnePlusPowerController;->mMinRecordTime:I

    int-to-long v8, v7

    cmp-long v7, v4, v8

    if-lez v7, :cond_3

    .line 632
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v7}, Lcom/android/server/OnePlusPowerController$IdleStats;->getSize()I

    move-result v7

    sget v8, Lcom/android/server/OnePlusPowerController;->mMinIdleItems:I

    if-lt v7, v8, :cond_2

    .line 634
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 635
    .local v3, "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v7, v3, v12, v13}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 638
    .end local v3    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v8, 0x5

    invoke-virtual {v7, v8}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 639
    .restart local v3    # "msg":Landroid/os/Message;
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    invoke-virtual {v7, v3, v12, v13}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 643
    .end local v0    # "duration":J
    .end local v2    # "last":Ljava/time/LocalDateTime;
    .end local v3    # "msg":Landroid/os/Message;
    .end local v4    # "recordDuration":J
    :cond_3
    iput-object v11, p0, Lcom/android/server/OnePlusPowerController;->mScreenOffStart:Ljava/time/LocalDateTime;

    .line 646
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/16 v8, 0x1e6c

    invoke-virtual {v7, v8}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 625
    .restart local v0    # "duration":J
    .restart local v2    # "last":Ljava/time/LocalDateTime;
    .restart local v4    # "recordDuration":J
    :cond_4
    invoke-static {v2, v6}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v7

    invoke-virtual {v7}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    goto :goto_1
.end method

.method public onBootPhase(I)V
    .locals 12
    .param p1, "phase"    # I

    .prologue
    .line 439
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "OnePlusPowerController onBootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_2

    .line 441
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 442
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_1

    .line 443
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mSubscriptionChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 445
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 449
    :cond_2
    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3

    .line 450
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 451
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 452
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 453
    const-class v0, Lcom/android/server/AlarmManagerService$LocalService;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/AlarmManagerService$LocalService;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    .line 454
    const-class v0, Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/DeviceIdleController$LocalService;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    .line 455
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    if-eqz v0, :cond_3

    .line 456
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getIdleTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleTimeout:J

    .line 457
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getPendingTimeout()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedPendingTimeout:J

    .line 458
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLocalIdleController:Lcom/android/server/DeviceIdleController$LocalService;

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$LocalService;->getIdleFactor()F

    move-result v0

    iput v0, p0, Lcom/android/server/OnePlusPowerController;->mSavedIdleFactor:F

    .line 462
    :cond_3
    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_5

    .line 464
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 467
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 468
    .local v10, "msg":Landroid/os/Message;
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const-wide/16 v4, 0x1388

    invoke-virtual {v0, v10, v4, v5}, Lcom/android/server/OnePlusPowerController$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 471
    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    .line 472
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 473
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 474
    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 475
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 476
    const-string/jumbo v0, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 477
    const-string/jumbo v0, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 478
    const-string/jumbo v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 481
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_4

    .line 482
    const-string/jumbo v0, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 483
    const-string/jumbo v0, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 484
    const-string/jumbo v0, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 485
    const-string/jumbo v0, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 488
    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    .line 489
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 488
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 492
    const-string/jumbo v11, "{\"packageName\":\"net.oneplus.test_gms_wakelock\",\"tag\":\"TEST_GMS\"}"

    .line 494
    .local v11, "test_1":Ljava/lang/String;
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 495
    .local v9, "json_1":Lorg/json/JSONObject;
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v9}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 500
    .end local v9    # "json_1":Lorg/json/JSONObject;
    :goto_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis;->start()V

    .line 501
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusPowerController;->mBootCompletedElapsedTime:J

    .line 504
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 505
    const v1, 0x1070048

    .line 504
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableUsbRegexs:[Ljava/lang/String;

    .line 509
    const-string/jumbo v0, "persist.vendor.fst.softap.en"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 510
    const-string/jumbo v6, "bond0"

    .line 512
    .local v6, "defaultFstInterfaceName":Ljava/lang/String;
    const-string/jumbo v0, "persist.vendor.fst.data.interface"

    .line 511
    invoke-static {v0, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 513
    .local v8, "fstInterfaceName":Ljava/lang/String;
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    .line 519
    .end local v6    # "defaultFstInterfaceName":Ljava/lang/String;
    .end local v8    # "fstInterfaceName":Ljava/lang/String;
    :goto_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 520
    const v1, 0x1070045

    .line 519
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableBluetoothRegexs:[Ljava/lang/String;

    .line 522
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mAudioManager:Landroid/media/AudioManager;

    .line 523
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusPowerController;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    .line 524
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mNotificationLight:Lcom/android/server/lights/Light;

    .line 526
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v10    # "msg":Landroid/os/Message;
    .end local v11    # "test_1":Ljava/lang/String;
    :cond_5
    return-void

    .line 496
    .restart local v3    # "filter":Landroid/content/IntentFilter;
    .restart local v10    # "msg":Landroid/os/Message;
    .restart local v11    # "test_1":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 497
    .local v7, "e":Lorg/json/JSONException;
    const-string/jumbo v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Failed to create an exclusive wakelock for testing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 515
    .end local v7    # "e":Lorg/json/JSONException;
    :cond_6
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 516
    const v1, 0x1070049

    .line 515
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->tetherableWifiRegexs:[Ljava/lang/String;

    goto :goto_1
.end method

.method onShellCommand(Lcom/android/server/OnePlusPowerController$Shell;Ljava/lang/String;)I
    .locals 43
    .param p1, "shell"    # Lcom/android/server/OnePlusPowerController$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .prologue
    .line 2407
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v24

    .line 2409
    .local v24, "pw":Ljava/io/PrintWriter;
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "onShellCommand: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    const-string/jumbo v38, "aggressive"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_4

    .line 2411
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v38

    const-string/jumbo v39, "android.permission.DEVICE_POWER"

    .line 2412
    const/16 v40, 0x0

    .line 2411
    invoke-virtual/range {v38 .. v40}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2414
    monitor-enter p0

    .line 2415
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 2416
    .local v34, "token":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v4

    .line 2419
    .local v4, "arg":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 2420
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v19

    .line 2421
    .local v19, "option":Ljava/lang/String;
    const-string/jumbo v38, "on"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2

    .line 2422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    .line 2423
    const-string/jumbo v39, "doze_mode_policy"

    const/16 v40, 0x1

    .line 2422
    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2424
    const-string/jumbo v38, "Aggressive doze mode is on"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2434
    .end local v19    # "option":Ljava/lang/String;
    :cond_0
    :goto_0
    :try_start_2
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v4    # "arg":Ljava/lang/String;
    .end local v34    # "token":J
    :goto_1
    monitor-exit p0

    .line 2781
    :cond_1
    :goto_2
    const/16 v38, 0x0

    return v38

    .line 2425
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v19    # "option":Ljava/lang/String;
    .restart local v34    # "token":J
    :cond_2
    :try_start_3
    const-string/jumbo v38, "off"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_0

    .line 2426
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    .line 2427
    const-string/jumbo v39, "doze_mode_policy"

    const/16 v40, 0x0

    .line 2426
    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2428
    const-string/jumbo v38, "Aggressive doze mode is off"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 2433
    .end local v19    # "option":Ljava/lang/String;
    :catchall_0
    move-exception v38

    .line 2434
    :try_start_4
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2433
    throw v38
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 2414
    .end local v4    # "arg":Ljava/lang/String;
    .end local v34    # "token":J
    :catchall_1
    move-exception v38

    monitor-exit p0

    throw v38

    .line 2431
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v34    # "token":J
    :cond_3
    :try_start_5
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "mAggressive="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget-boolean v39, Lcom/android/server/OnePlusPowerController;->mAggressive:Z

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 2437
    .end local v4    # "arg":Ljava/lang/String;
    .end local v34    # "token":J
    :cond_4
    const-string/jumbo v38, "wakelocks"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_7

    .line 2438
    monitor-enter p0

    .line 2440
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/os/PowerManagerInternal;->getExclusiveWakeLock()Ljava/util/HashMap;

    move-result-object v11

    .line 2442
    .local v11, "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    .line 2443
    .local v26, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v38

    invoke-interface/range {v38 .. v38}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "entry$iterator":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_6

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    .line 2444
    .local v9, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 2445
    .local v22, "packageName":Ljava/lang/String;
    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Ljava/util/HashSet;

    .line 2446
    .local v30, "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    const-string/jumbo v38, "packageName: "

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const/16 v39, 0xa

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2447
    const-string/jumbo v38, "tags: "

    move-object/from16 v0, v26

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2448
    invoke-interface/range {v30 .. v30}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .local v29, "tag$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v38

    if-eqz v38, :cond_5

    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/lang/String;

    .line 2449
    .local v28, "tag":Ljava/lang/String;
    move-object/from16 v0, v26

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ", "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 2438
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v11    # "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    .end local v28    # "tag":Ljava/lang/String;
    .end local v29    # "tag$iterator":Ljava/util/Iterator;
    .end local v30    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catchall_2
    move-exception v38

    monitor-exit p0

    throw v38

    .line 2451
    .restart local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .restart local v10    # "entry$iterator":Ljava/util/Iterator;
    .restart local v11    # "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .restart local v22    # "packageName":Ljava/lang/String;
    .restart local v26    # "sb":Ljava/lang/StringBuilder;
    .restart local v29    # "tag$iterator":Ljava/util/Iterator;
    .restart local v30    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_5
    const/16 v38, 0xa

    :try_start_7
    move-object/from16 v0, v26

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 2453
    .end local v9    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v22    # "packageName":Ljava/lang/String;
    .end local v29    # "tag$iterator":Ljava/util/Iterator;
    .end local v30    # "tags":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :cond_6
    move-object/from16 v0, v24

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/16 :goto_1

    .line 2455
    .end local v10    # "entry$iterator":Ljava/util/Iterator;
    .end local v11    # "exclusiveWakeLocks":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/HashSet<Ljava/lang/String;>;>;"
    .end local v26    # "sb":Ljava/lang/StringBuilder;
    :cond_7
    const-string/jumbo v38, "usersleep"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1c

    .line 2456
    monitor-enter p0

    .line 2457
    :try_start_8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2458
    .restart local v4    # "arg":Ljava/lang/String;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result-wide v34

    .line 2460
    .restart local v34    # "token":J
    if-eqz v4, :cond_1b

    .line 2461
    :try_start_9
    const-string/jumbo v38, "log"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_a

    .line 2462
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v19

    .line 2463
    .restart local v19    # "option":Ljava/lang/String;
    const-string/jumbo v38, "on"

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_9

    .line 2464
    const/16 v38, 0x1

    sput-boolean v38, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 2465
    const/16 v38, 0x1

    sput-boolean v38, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 2466
    const/16 v38, 0x1

    sput-boolean v38, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 2467
    const-string/jumbo v38, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned on"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2468
    const-string/jumbo v38, "OnePlusPowerController"

    const-string/jumbo v39, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned on"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 2584
    .end local v19    # "option":Ljava/lang/String;
    :cond_8
    :goto_5
    :try_start_a
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto/16 :goto_1

    .line 2456
    .end local v4    # "arg":Ljava/lang/String;
    .end local v34    # "token":J
    :catchall_3
    move-exception v38

    monitor-exit p0

    throw v38

    .line 2470
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v19    # "option":Ljava/lang/String;
    .restart local v34    # "token":J
    :cond_9
    const/16 v38, 0x0

    :try_start_b
    sput-boolean v38, Lcom/android/server/OnePlusPowerController;->DEBUG_KMEANS:Z

    .line 2471
    const/16 v38, 0x0

    sput-boolean v38, Lcom/android/server/OnePlusPowerController;->DEBUG_IDLE_STATS:Z

    .line 2472
    const/16 v38, 0x0

    sput-boolean v38, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    .line 2473
    const-string/jumbo v38, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned off"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2474
    const-string/jumbo v38, "OnePlusPowerController"

    const-string/jumbo v39, "DEBUG_KMEANS, DEBUG_IDLE_STATS, DEBUG_SLEEP_STATE are turned off"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    goto :goto_5

    .line 2583
    .end local v19    # "option":Ljava/lang/String;
    :catchall_4
    move-exception v38

    .line 2584
    :try_start_c
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2583
    throw v38
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 2476
    :cond_a
    :try_start_d
    const-string/jumbo v38, "start"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_c

    .line 2477
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v20

    .line 2478
    .local v20, "optionDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v21

    .line 2479
    .local v21, "optionTime":Ljava/lang/String;
    const-string/jumbo v38, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    move-result-object v5

    .line 2483
    .local v5, "dateFormat":Ljava/lang/String;
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v16

    .line 2484
    .local v16, "ldt":Ljava/time/LocalDateTime;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    .line 2485
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "mSleepStartOverridden: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2487
    sget v38, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v39, 0x1e6c

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_b

    .line 2488
    const/16 v38, 0x15be

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    .line 2491
    :cond_b
    const-string/jumbo v38, "User sleep time is overrided!"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/time/format/DateTimeParseException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto/16 :goto_5

    .line 2492
    .end local v16    # "ldt":Ljava/time/LocalDateTime;
    :catch_0
    move-exception v6

    .line 2493
    .local v6, "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_f
    const-string/jumbo v38, "Invalid date format!!!"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2495
    .end local v5    # "dateFormat":Ljava/lang/String;
    .end local v6    # "dtpe":Ljava/time/format/DateTimeParseException;
    .end local v20    # "optionDate":Ljava/lang/String;
    .end local v21    # "optionTime":Ljava/lang/String;
    :cond_c
    const-string/jumbo v38, "end"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_e

    .line 2496
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v20

    .line 2497
    .restart local v20    # "optionDate":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v21

    .line 2498
    .restart local v21    # "optionTime":Ljava/lang/String;
    const-string/jumbo v38, " "

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    move-result-object v5

    .line 2501
    .restart local v5    # "dateFormat":Ljava/lang/String;
    :try_start_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-static {v5, v0}, Ljava/time/LocalDateTime;->parse(Ljava/lang/CharSequence;Ljava/time/format/DateTimeFormatter;)Ljava/time/LocalDateTime;

    move-result-object v16

    .line 2503
    .restart local v16    # "ldt":Ljava/time/LocalDateTime;
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    .line 2504
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "mSleepEndOverridden: "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2506
    sget v38, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v39, 0x15be

    move/from16 v0, v38

    move/from16 v1, v39

    if-ne v0, v1, :cond_d

    .line 2507
    const/16 v38, 0x15be

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    .line 2510
    :cond_d
    const-string/jumbo v38, "User awake time is overrided!"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/time/format/DateTimeParseException; {:try_start_10 .. :try_end_10} :catch_1
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/16 :goto_5

    .line 2511
    .end local v16    # "ldt":Ljava/time/LocalDateTime;
    :catch_1
    move-exception v6

    .line 2512
    .restart local v6    # "dtpe":Ljava/time/format/DateTimeParseException;
    :try_start_11
    const-string/jumbo v38, "Invalid date format!!!"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2514
    .end local v5    # "dateFormat":Ljava/lang/String;
    .end local v6    # "dtpe":Ljava/time/format/DateTimeParseException;
    .end local v20    # "optionDate":Ljava/lang/String;
    .end local v21    # "optionTime":Ljava/lang/String;
    :cond_e
    const-string/jumbo v38, "reset"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_f

    .line 2515
    const/16 v38, 0x1e6c

    sput v38, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    .line 2516
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mHandler:Lcom/android/server/OnePlusPowerController$MyHandler;

    move-object/from16 v38, v0

    const/16 v39, 0x1e6c

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/os/Message;->sendToTarget()V

    .line 2517
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    .line 2518
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    .line 2519
    const v38, 0x44aa20

    sput v38, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 2520
    const v38, 0x1b7740

    sput v38, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 2521
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    goto/16 :goto_5

    .line 2522
    :cond_f
    const-string/jumbo v38, "timeoutAfterScreenOff"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_12

    .line 2523
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v19

    .line 2524
    .restart local v19    # "option":Ljava/lang/String;
    if-eqz v19, :cond_11

    .line 2525
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 2527
    .local v33, "timeout":I
    if-ltz v33, :cond_10

    .line 2528
    sput v33, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    .line 2529
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "mTimeOutAfterScreenOff="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget v39, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2531
    :cond_10
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Invalid value: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2534
    .end local v33    # "timeout":I
    :cond_11
    const-string/jumbo v38, "Option cannot be null!"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2536
    .end local v19    # "option":Ljava/lang/String;
    :cond_12
    const-string/jumbo v38, "timeoutBeforeUserAwake"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_15

    .line 2537
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v19

    .line 2538
    .restart local v19    # "option":Ljava/lang/String;
    if-eqz v19, :cond_14

    .line 2539
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v33

    .line 2541
    .restart local v33    # "timeout":I
    if-ltz v33, :cond_13

    .line 2542
    sput v33, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    .line 2543
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "mTimeOutBeforeUserAwake="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    sget v39, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2545
    :cond_13
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Invalid value: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2548
    .end local v33    # "timeout":I
    :cond_14
    const-string/jumbo v38, "Option cannot be null!"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2550
    .end local v19    # "option":Ljava/lang/String;
    :cond_15
    const-string/jumbo v38, "opsm"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_18

    .line 2551
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v19

    .line 2552
    .restart local v19    # "option":Ljava/lang/String;
    const-string/jumbo v38, "enable"

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_16

    .line 2554
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    .line 2555
    const-string/jumbo v39, "optimal_power_save_mode_enabled"

    .line 2556
    const/16 v40, 0x2

    .line 2553
    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 2557
    :cond_16
    const-string/jumbo v38, "disable"

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_17

    .line 2559
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mResolver:Landroid/content/ContentResolver;

    move-object/from16 v38, v0

    .line 2560
    const-string/jumbo v39, "optimal_power_save_mode_enabled"

    .line 2561
    const/16 v40, -0x1

    .line 2558
    invoke-static/range {v38 .. v40}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_5

    .line 2563
    :cond_17
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unknown option: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2565
    .end local v19    # "option":Ljava/lang/String;
    :cond_18
    const-string/jumbo v38, "sensor"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_8

    .line 2566
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v19

    .line 2567
    .restart local v19    # "option":Ljava/lang/String;
    const-string/jumbo v38, "on"

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_19

    .line 2568
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v38, v0

    if-eqz v38, :cond_8

    .line 2569
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/hardware/SensorManager;->leaveOPSM()V

    goto/16 :goto_5

    .line 2571
    :cond_19
    const-string/jumbo v38, "off"

    move-object/from16 v0, v38

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1a

    .line 2572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v38, v0

    if-eqz v38, :cond_8

    .line 2573
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mSensorManager:Landroid/hardware/SensorManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/hardware/SensorManager;->enterOPSM()V

    goto/16 :goto_5

    .line 2576
    :cond_1a
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unknown option: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2577
    const-string/jumbo v38, "Please use on/off"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 2581
    .end local v19    # "option":Ljava/lang/String;
    :cond_1b
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController;->dumpUseSleep(Ljava/io/PrintWriter;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    goto/16 :goto_5

    .line 2587
    .end local v4    # "arg":Ljava/lang/String;
    .end local v34    # "token":J
    :cond_1c
    const-string/jumbo v38, "overheat"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2a

    .line 2588
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/OnePlusPowerController;->getContext()Landroid/content/Context;

    move-result-object v38

    const-string/jumbo v39, "android.permission.DEVICE_POWER"

    .line 2589
    const/16 v40, 0x0

    .line 2588
    invoke-virtual/range {v38 .. v40}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2590
    monitor-enter p0

    .line 2591
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2592
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_29

    .line 2593
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_5

    move-result-wide v34

    .line 2595
    .restart local v34    # "token":J
    :try_start_13
    const-string/jumbo v38, "enable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1d

    .line 2596
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorEnabled(Z)V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    .line 2634
    :goto_6
    :try_start_14
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_5

    goto/16 :goto_1

    .line 2590
    .end local v4    # "arg":Ljava/lang/String;
    .end local v34    # "token":J
    :catchall_5
    move-exception v38

    monitor-exit p0

    throw v38

    .line 2597
    .restart local v4    # "arg":Ljava/lang/String;
    .restart local v34    # "token":J
    :cond_1d
    :try_start_15
    const-string/jumbo v38, "disable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1e

    .line 2598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorEnabled(Z)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    goto :goto_6

    .line 2633
    :catchall_6
    move-exception v38

    .line 2634
    :try_start_16
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2633
    throw v38
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_5

    .line 2599
    :cond_1e
    :try_start_17
    const-string/jumbo v38, "number"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1f

    .line 2600
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v18

    .line 2601
    .local v18, "num_arg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorNum(I)V

    goto :goto_6

    .line 2602
    .end local v18    # "num_arg":Ljava/lang/String;
    :cond_1f
    const-string/jumbo v38, "temper"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_20

    .line 2603
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v31

    .line 2604
    .local v31, "temp_arg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorTemp(I)V

    goto :goto_6

    .line 2605
    .end local v31    # "temp_arg":Ljava/lang/String;
    :cond_20
    const-string/jumbo v38, "period"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_21

    .line 2606
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v23

    .line 2607
    .local v23, "period_arg":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v40

    move-object/from16 v0, v38

    move-wide/from16 v1, v40

    invoke-virtual {v0, v1, v2}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorPeriod(J)V

    goto :goto_6

    .line 2608
    .end local v23    # "period_arg":Ljava/lang/String;
    :cond_21
    const-string/jumbo v38, "force-monitor"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_24

    .line 2609
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v12

    .line 2610
    .local v12, "force_arg":Ljava/lang/String;
    const-string/jumbo v38, "enable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_22

    .line 2611
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorForced(Z)V

    goto/16 :goto_6

    .line 2612
    :cond_22
    const-string/jumbo v38, "disable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_23

    .line 2613
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/OverHeatingDiagnosis;->setMonitorForced(Z)V

    goto/16 :goto_6

    .line 2615
    :cond_23
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unknown option: overheat force-monitor "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2616
    const-string/jumbo v38, "Please enter overheat force-monitor [enable|disable]"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2618
    .end local v12    # "force_arg":Ljava/lang/String;
    :cond_24
    const-string/jumbo v38, "monitor"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_28

    .line 2619
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v17

    .line 2620
    .local v17, "monitor_arg":Ljava/lang/String;
    const-string/jumbo v38, "start"

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_25

    .line 2621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/OverHeatingDiagnosis;->startMonitor()V

    goto/16 :goto_6

    .line 2622
    :cond_25
    const-string/jumbo v38, "update"

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_26

    .line 2623
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/OverHeatingDiagnosis;->updateMonitor()V

    goto/16 :goto_6

    .line 2624
    :cond_26
    const-string/jumbo v38, "end"

    move-object/from16 v0, v38

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_27

    .line 2625
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lcom/android/server/OverHeatingDiagnosis;->endMonitor()V

    goto/16 :goto_6

    .line 2627
    :cond_27
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unknown option: overheat monitor "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2628
    const-string/jumbo v38, "Please enter overheat monitor [start|update|end]"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 2631
    .end local v17    # "monitor_arg":Ljava/lang/String;
    :cond_28
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Unknown option: overheat "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    goto/16 :goto_6

    .line 2637
    .end local v34    # "token":J
    :cond_29
    :try_start_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis;->dump(Ljava/io/PrintWriter;)V

    .line 2638
    const-string/jumbo v38, "**** OverHeat Diagnosis Records ****"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2639
    const-string/jumbo v38, "/data/system/power/diagnosis_heating.txt"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_5

    goto/16 :goto_1

    .line 2644
    .end local v4    # "arg":Ljava/lang/String;
    :cond_2a
    const-string/jumbo v38, "standby"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2b

    .line 2645
    const-string/jumbo v38, "**** Standby Diagnosis Records ****"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2646
    const-string/jumbo v38, "/data/system/power/diagnosis_standby.txt"

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v38

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusPowerController;->dumpDiagnosisRecords(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2647
    :cond_2b
    const-string/jumbo v38, "deepsleepwhitelist"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2f

    .line 2648
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2649
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2650
    const-string/jumbo v38, "update"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2d

    .line 2651
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2652
    if-eqz v4, :cond_1

    .line 2653
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "deepsleepwhitelist update to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2654
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "deepsleepwhitelist update to "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2655
    const-string/jumbo v38, ","

    move-object/from16 v0, v38

    invoke-virtual {v4, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 2656
    .local v27, "split_pkg":[Ljava/lang/String;
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_7
    move-object/from16 v0, v27

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v13, v0, :cond_2c

    .line 2658
    :try_start_19
    aget-object v38, v27, v13

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController;->addPackageToWhitelist(Ljava/lang/String;)V
    :try_end_19
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_19 .. :try_end_19} :catch_2

    .line 2656
    :goto_8
    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    .line 2659
    :catch_2
    move-exception v7

    .line 2660
    .local v7, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "pkg: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    aget-object v39, v27, v13

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, " is not found"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    .line 2664
    .end local v7    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistApps:Landroid/util/ArrayMap;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIds:Landroid/util/SparseBooleanArray;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v40

    move-object/from16 v1, v38

    move-object/from16 v2, v39

    invoke-static {v0, v1, v2}, Lcom/android/server/OnePlusPowerController;->buildAppIdArray(Landroid/util/ArrayMap;Landroid/util/ArrayMap;Landroid/util/SparseBooleanArray;)[I

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    .line 2665
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/AlarmManagerService$LocalService;->setDeepSleepWhitelist([I)V

    .line 2666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V

    goto/16 :goto_2

    .line 2668
    .end local v13    # "i":I
    .end local v27    # "split_pkg":[Ljava/lang/String;
    :cond_2d
    const-string/jumbo v38, "get"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_2e

    .line 2669
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "mDeepSleepWhitelistAppIds:"

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    move-object/from16 v40, v0

    invoke-static/range {v40 .. v40}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2670
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "WhitelistAppIdArray: "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mDeepSleepWhitelistAppIdArray:[I

    move-object/from16 v39, v0

    invoke-static/range {v39 .. v39}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2671
    :cond_2e
    const-string/jumbo v38, "clean"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_1

    .line 2673
    const-string/jumbo v38, "OnePlusPowerController"

    const-string/jumbo v39, "deepsleepwhitelist clean up to empty"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2674
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mLocalAlarmManager:Lcom/android/server/AlarmManagerService$LocalService;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Lcom/android/server/AlarmManagerService$LocalService;->setDeepSleepWhitelist([I)V

    .line 2675
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    move/from16 v0, v39

    new-array v0, v0, [I

    move-object/from16 v39, v0

    invoke-virtual/range {v38 .. v39}, Landroid/os/PowerManagerInternal;->setDeepSleepWhitelist([I)V

    goto/16 :goto_2

    .line 2678
    .end local v4    # "arg":Ljava/lang/String;
    :cond_2f
    const-string/jumbo v38, "wifi"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_38

    .line 2679
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2680
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_37

    .line 2681
    const/4 v8, 0x0

    .line 2682
    .local v8, "enabled":Z
    const-string/jumbo v38, "enable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_32

    .line 2683
    const/4 v8, 0x1

    .line 2697
    :goto_9
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v34

    .line 2699
    .restart local v34    # "token":J
    :try_start_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v37

    .line 2700
    .local v37, "wifiApState":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v15

    .line 2701
    .local v15, "isWifiEnabled":Z
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "wifiApState="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", isWifiEnabled="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", set to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2702
    if-eqz v8, :cond_31

    const/16 v38, 0xc

    move/from16 v0, v37

    move/from16 v1, v38

    if-eq v0, v1, :cond_30

    .line 2703
    const/16 v38, 0xd

    move/from16 v0, v37

    move/from16 v1, v38

    if-ne v0, v1, :cond_31

    .line 2704
    :cond_30
    const-string/jumbo v38, "OnePlusPowerController"

    const-string/jumbo v39, "setWifiApEnabled to true, to turn off tethering first"

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    invoke-virtual/range {v38 .. v40}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 2707
    :cond_31
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "setWifiEnabled to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2708
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "WiFi is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    if-eqz v8, :cond_36

    const-string/jumbo v38, "enabled"

    :goto_a
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2709
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    .line 2711
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto/16 :goto_2

    .line 2684
    .end local v15    # "isWifiEnabled":Z
    .end local v34    # "token":J
    .end local v37    # "wifiApState":I
    :cond_32
    const-string/jumbo v38, "disable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_33

    .line 2685
    const/4 v8, 0x0

    goto/16 :goto_9

    .line 2686
    :cond_33
    const-string/jumbo v38, "query"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_35

    .line 2687
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    if-eqz v38, :cond_34

    .line 2688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v38

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2689
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "mWifiManager.isWifiEnabled()="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mWifiManager:Landroid/net/wifi/WifiManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2691
    :cond_34
    const/16 v38, 0x0

    return v38

    .line 2693
    :cond_35
    const-string/jumbo v38, "Unknown option"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2694
    const/16 v38, 0x0

    return v38

    .line 2708
    .restart local v15    # "isWifiEnabled":Z
    .restart local v34    # "token":J
    .restart local v37    # "wifiApState":I
    :cond_36
    :try_start_1b
    const-string/jumbo v38, "disabled"
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    goto/16 :goto_a

    .line 2710
    .end local v15    # "isWifiEnabled":Z
    .end local v37    # "wifiApState":I
    :catchall_7
    move-exception v38

    .line 2711
    invoke-static/range {v34 .. v35}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2710
    throw v38

    .line 2714
    .end local v8    # "enabled":Z
    .end local v34    # "token":J
    :cond_37
    const-string/jumbo v38, "Please enter wifi option. [enable|disable|query]"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2716
    .end local v4    # "arg":Ljava/lang/String;
    :cond_38
    const-string/jumbo v38, "tether"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3f

    .line 2718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v38

    if-nez v38, :cond_39

    .line 2719
    const-string/jumbo v38, "Tethering is not supported"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2720
    const/16 v38, 0x0

    return v38

    .line 2723
    :cond_39
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v32

    .line 2724
    .local v32, "tetheredIfaces":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2725
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_3e

    .line 2726
    const/4 v8, 0x0

    .line 2727
    .restart local v8    # "enabled":Z
    const-string/jumbo v38, "enable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3a

    .line 2728
    const/4 v8, 0x1

    .line 2739
    :goto_b
    if-eqz v8, :cond_3d

    .line 2741
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 2742
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mStartTetheringCallback:Lcom/android/server/OnePlusPowerController$OnStartTetheringCallback;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    const/16 v41, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v40

    move/from16 v2, v41

    move-object/from16 v3, v39

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    goto/16 :goto_2

    .line 2729
    :cond_3a
    const-string/jumbo v38, "disable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3b

    .line 2730
    const/4 v8, 0x0

    goto :goto_b

    .line 2731
    :cond_3b
    const-string/jumbo v38, "query"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_3c

    .line 2732
    invoke-static/range {v32 .. v32}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2733
    const/16 v38, 0x0

    return v38

    .line 2735
    :cond_3c
    const-string/jumbo v38, "Unknown option"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2736
    const/16 v38, 0x0

    return v38

    .line 2745
    :cond_3d
    const/16 v38, 0x0

    move-object/from16 v0, v32

    array-length v0, v0

    move/from16 v39, v0

    :goto_c
    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_1

    aget-object v25, v32, v38

    .line 2746
    .local v25, "s":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v36

    .line 2747
    .local v36, "type":I
    const-string/jumbo v40, "OnePlusPowerController"

    new-instance v41, Ljava/lang/StringBuilder;

    invoke-direct/range {v41 .. v41}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v42, "Tether interface = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    const-string/jumbo v42, ", type = "

    invoke-virtual/range {v41 .. v42}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v41

    move-object/from16 v0, v41

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v41

    invoke-virtual/range {v41 .. v41}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v41

    invoke-static/range {v40 .. v41}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController;->ifaceNameToType(Ljava/lang/String;)I

    move-result v41

    invoke-virtual/range {v40 .. v41}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 2745
    add-int/lit8 v38, v38, 0x1

    goto :goto_c

    .line 2753
    .end local v8    # "enabled":Z
    .end local v25    # "s":Ljava/lang/String;
    .end local v36    # "type":I
    :cond_3e
    const-string/jumbo v38, "Please enter tether option. [enable|disable|query]"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2755
    .end local v4    # "arg":Ljava/lang/String;
    .end local v32    # "tetheredIfaces":[Ljava/lang/String;
    :cond_3f
    const-string/jumbo v38, "data"

    move-object/from16 v0, v38

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_45

    .line 2756
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/OnePlusPowerController$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v4

    .line 2757
    .restart local v4    # "arg":Ljava/lang/String;
    if-eqz v4, :cond_44

    .line 2758
    const/4 v8, 0x0

    .line 2759
    .restart local v8    # "enabled":Z
    const-string/jumbo v38, "enable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_40

    .line 2760
    const/4 v8, 0x1

    .line 2771
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v14

    .line 2772
    .local v14, "isDataEnabled":Z
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "isDataEnabled="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    const-string/jumbo v40, ", setDataEnabled to "

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, v39

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2773
    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v39, "Data is "

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    if-eqz v8, :cond_43

    const-string/jumbo v38, "enabled"

    :goto_e
    move-object/from16 v0, v39

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2774
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    invoke-virtual {v0, v8}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    goto/16 :goto_2

    .line 2761
    .end local v14    # "isDataEnabled":Z
    :cond_40
    const-string/jumbo v38, "disable"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_41

    .line 2762
    const/4 v8, 0x0

    goto :goto_d

    .line 2763
    :cond_41
    const-string/jumbo v38, "query"

    move-object/from16 v0, v38

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v38

    if-eqz v38, :cond_42

    .line 2764
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v38

    move-object/from16 v0, v24

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 2765
    const-string/jumbo v38, "OnePlusPowerController"

    new-instance v39, Ljava/lang/StringBuilder;

    invoke-direct/range {v39 .. v39}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v40, "TelephonyManager.getDataEnabled()="

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v40

    invoke-virtual/range {v39 .. v40}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v39

    invoke-virtual/range {v39 .. v39}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    invoke-static/range {v38 .. v39}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2766
    const/16 v38, 0x0

    return v38

    .line 2768
    :cond_42
    const-string/jumbo v38, "Unknown option"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2769
    const/16 v38, 0x0

    return v38

    .line 2773
    .restart local v14    # "isDataEnabled":Z
    :cond_43
    const-string/jumbo v38, "disabled"

    goto :goto_e

    .line 2776
    .end local v8    # "enabled":Z
    .end local v14    # "isDataEnabled":Z
    :cond_44
    const-string/jumbo v38, "Please enter data option. [enable|disable|query]"

    move-object/from16 v0, v24

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 2779
    .end local v4    # "arg":Ljava/lang/String;
    :cond_45
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/OnePlusPowerController$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v38

    return v38
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 431
    sget-boolean v0, Lcom/android/server/OnePlusPowerController;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "OnePlusPowerController"

    const-string/jumbo v1, "OnePlusPowerController onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    :cond_0
    new-instance v0, Lcom/android/server/OnePlusPowerController$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/OnePlusPowerController$BinderService;-><init>(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$BinderService;)V

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    .line 433
    const-string/jumbo v0, "powercontrol"

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController;->mBinderService:Lcom/android/server/OnePlusPowerController$BinderService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 434
    const-class v0, Lcom/android/server/OnePlusPowerController$LocalService;

    new-instance v1, Lcom/android/server/OnePlusPowerController$LocalService;

    invoke-direct {v1, p0}, Lcom/android/server/OnePlusPowerController$LocalService;-><init>(Lcom/android/server/OnePlusPowerController;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OnePlusPowerController;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 435
    return-void
.end method

.method scheduleAlarmToEnterOPSM()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 654
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v7, "net.oneplus.powercontroller.intent.OPSM"

    invoke-direct {v1, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 657
    .local v1, "intent":Landroid/content/Intent;
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const/4 v8, 0x1

    .line 656
    invoke-static {v7, v8, v1, v10}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 660
    .local v6, "pending":Landroid/app/PendingIntent;
    if-eqz v6, :cond_0

    .line 661
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v6}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 664
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 665
    .local v4, "now":J
    sget v7, Lcom/android/server/OnePlusPowerController;->mTimeOutAfterScreenOff:I

    int-to-long v8, v7

    add-long v2, v4, v8

    .line 668
    .local v2, "next":J
    iget-object v7, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v7, v10, v2, v3, v6}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 671
    sget-boolean v7, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    if-eqz v7, :cond_1

    .line 672
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 674
    .local v0, "date":Ljava/util/Date;
    const-string/jumbo v7, "OnePlusPowerController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "schedule next alarm  @"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 675
    iget-object v9, p0, Lcom/android/server/OnePlusPowerController;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v9, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    .line 674
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 675
    const-string/jumbo v9, " for OPSM check"

    .line 674
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 677
    .end local v0    # "date":Ljava/util/Date;
    :cond_1
    return-void
.end method

.method scheduleNextAlarmIfNeededLocked()V
    .locals 7

    .prologue
    const/16 v6, 0x1e6c

    const/16 v3, 0x15be

    .line 684
    iget-boolean v2, p0, Lcom/android/server/OnePlusPowerController;->mUserSleep:Z

    if-nez v2, :cond_0

    return-void

    .line 685
    :cond_0
    sget v2, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    if-ne v2, v3, :cond_4

    .line 687
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    if-eqz v2, :cond_2

    .line 689
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSleepEndOverridden:Ljava/time/LocalDateTime;

    sget v3, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v3, v3, 0x3e8

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    .line 711
    :cond_1
    :goto_0
    return-void

    .line 691
    :cond_2
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v0

    .line 692
    .local v0, "sleepEnd":Ljava/time/LocalDateTime;
    if-eqz v0, :cond_3

    .line 693
    sget v2, Lcom/android/server/OnePlusPowerController;->mTimeOutBeforeUserAwake:I

    div-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/time/LocalDateTime;->minusSeconds(J)Ljava/time/LocalDateTime;

    move-result-object v2

    invoke-virtual {p0, v2, v6}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    goto :goto_0

    .line 695
    :cond_3
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v3, "failed to scheudle the alarm for sleep end"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 699
    .end local v0    # "sleepEnd":Ljava/time/LocalDateTime;
    :cond_4
    sget v2, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    if-ne v2, v6, :cond_1

    .line 700
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    if-eqz v2, :cond_5

    .line 701
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mSleepStartOverridden:Ljava/time/LocalDateTime;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    goto :goto_0

    .line 703
    :cond_5
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController;->mIdleStats:Lcom/android/server/OnePlusPowerController$IdleStats;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepStart()Ljava/time/LocalDateTime;

    move-result-object v1

    .line 704
    .local v1, "sleepStart":Ljava/time/LocalDateTime;
    if-eqz v1, :cond_6

    .line 705
    invoke-virtual {p0, v1, v3}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V

    goto :goto_0

    .line 707
    :cond_6
    const-string/jumbo v2, "OnePlusPowerController"

    const-string/jumbo v3, "failed to scheudle the alarm for sleep start"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method scheduleNextAlarmIfNeededLocked(Ljava/time/LocalDateTime;I)V
    .locals 7
    .param p1, "date"    # Ljava/time/LocalDateTime;
    .param p2, "state"    # I

    .prologue
    const/4 v6, 0x0

    .line 717
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v3, "net.oneplus.powercontroller.intent.SLEEP_CHANGED"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 718
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v3, "state"

    invoke-virtual {v0, v3, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 720
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mContext:Landroid/content/Context;

    const/high16 v4, 0x8000000

    .line 719
    invoke-static {v3, v6, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 722
    .local v1, "pending":Landroid/app/PendingIntent;
    iget-object v3, p0, Lcom/android/server/OnePlusPowerController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 723
    invoke-direct {p0, p1}, Lcom/android/server/OnePlusPowerController;->convertLocalDateTimeToUtcMillis(Ljava/time/LocalDateTime;)J

    move-result-wide v4

    .line 722
    invoke-virtual {v3, v6, v4, v5, v1}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 725
    sget-boolean v3, Lcom/android/server/OnePlusPowerController;->DEBUG_SLEEP_STATE:Z

    if-eqz v3, :cond_0

    .line 727
    sget v3, Lcom/android/server/OnePlusPowerController;->mSleepState:I

    const/16 v4, 0x15be

    if-ne v3, v4, :cond_1

    .line 728
    const-string/jumbo v2, "END"

    .line 732
    .local v2, "reason":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "schedule next alarm  @"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 733
    iget-object v5, p0, Lcom/android/server/OnePlusPowerController;->SIMPLE_DATE_FORMAT:Ljava/time/format/DateTimeFormatter;

    invoke-virtual {p1, v5}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v5

    .line 732
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 733
    const-string/jumbo v5, " for "

    .line 732
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    .end local v2    # "reason":Ljava/lang/String;
    :cond_0
    return-void

    .line 730
    :cond_1
    const-string/jumbo v2, "START"

    .restart local v2    # "reason":Ljava/lang/String;
    goto :goto_0
.end method

.method setMccMncValue(Landroid/telephony/SubscriptionInfo;)V
    .locals 1
    .param p1, "subInfo"    # Landroid/telephony/SubscriptionInfo;

    .prologue
    .line 533
    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mFirstMcc:I

    .line 535
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v0

    sput v0, Lcom/android/server/OnePlusPowerController;->mFirstMnc:I

    .line 537
    :cond_0
    return-void
.end method

.method shutdownLocked()V
    .locals 1

    .prologue
    .line 589
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/OnePlusPowerController;->mShuttingDown:Z

    .line 590
    return-void
.end method
