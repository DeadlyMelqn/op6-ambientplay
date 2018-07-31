.class public abstract Landroid/os/BatteryStats;
.super Ljava/lang/Object;
.source "BatteryStats.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/BatteryStats$BitDescription;,
        Landroid/os/BatteryStats$ControllerActivityCounter;,
        Landroid/os/BatteryStats$Counter;,
        Landroid/os/BatteryStats$DailyItem;,
        Landroid/os/BatteryStats$HistoryEventTracker;,
        Landroid/os/BatteryStats$HistoryItem;,
        Landroid/os/BatteryStats$HistoryPrinter;,
        Landroid/os/BatteryStats$HistoryStepDetails;,
        Landroid/os/BatteryStats$HistoryTag;,
        Landroid/os/BatteryStats$IntToString;,
        Landroid/os/BatteryStats$LevelStepTracker;,
        Landroid/os/BatteryStats$LongCounter;,
        Landroid/os/BatteryStats$LongCounterArray;,
        Landroid/os/BatteryStats$PackageChange;,
        Landroid/os/BatteryStats$Timer;,
        Landroid/os/BatteryStats$TimerEntry;,
        Landroid/os/BatteryStats$Uid;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I = null

.field private static final AGGREGATED_WAKELOCK_DATA:Ljava/lang/String; = "awl"

.field public static final AGGREGATED_WAKE_TYPE_PARTIAL:I = 0x14

.field private static final APK_DATA:Ljava/lang/String; = "apk"

.field private static final AUDIO_DATA:Ljava/lang/String; = "aud"

.field public static final AUDIO_TURNED_ON:I = 0xf

.field private static final BATTERY_DATA:Ljava/lang/String; = "bt"

.field private static final BATTERY_DISCHARGE_DATA:Ljava/lang/String; = "dc"

.field private static final BATTERY_LEVEL_DATA:Ljava/lang/String; = "lv"

.field private static final BATTERY_STATS_CHECKIN_VERSION:I = 0x9

.field private static final BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "ble"

.field private static final BLUETOOTH_MISC_DATA:Ljava/lang/String; = "blem"

.field public static final BLUETOOTH_SCAN_ON:I = 0x13

.field public static final BLUETOOTH_UNOPTIMIZED_SCAN_ON:I = 0x15

.field private static final BYTES_PER_GB:J = 0x40000000L

.field private static final BYTES_PER_KB:J = 0x400L

.field private static final BYTES_PER_MB:J = 0x100000L

.field private static final CAMERA_DATA:Ljava/lang/String; = "cam"

.field public static final CAMERA_TURNED_ON:I = 0x11

.field private static final CHARGE_STEP_DATA:Ljava/lang/String; = "csd"

.field private static final CHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "ctr"

.field static final CHECKIN_VERSION:Ljava/lang/String; = "27"

.field private static final CPU_DATA:Ljava/lang/String; = "cpu"

.field private static final CPU_TIMES_AT_FREQ_DATA:Ljava/lang/String; = "ctf"

.field public static final DATA_CONNECTION_1xRTT:I = 0x7

.field public static final DATA_CONNECTION_CDMA:I = 0x4

.field private static final DATA_CONNECTION_COUNT_DATA:Ljava/lang/String; = "dcc"

.field public static final DATA_CONNECTION_EDGE:I = 0x2

.field public static final DATA_CONNECTION_EHRPD:I = 0xe

.field public static final DATA_CONNECTION_EVDO_0:I = 0x5

.field public static final DATA_CONNECTION_EVDO_A:I = 0x6

.field public static final DATA_CONNECTION_EVDO_B:I = 0xc

.field public static final DATA_CONNECTION_GPRS:I = 0x1

.field public static final DATA_CONNECTION_HSDPA:I = 0x8

.field public static final DATA_CONNECTION_HSPA:I = 0xa

.field public static final DATA_CONNECTION_HSPAP:I = 0xf

.field public static final DATA_CONNECTION_HSUPA:I = 0x9

.field public static final DATA_CONNECTION_IDEN:I = 0xb

.field public static final DATA_CONNECTION_LTE:I = 0xd

.field static final DATA_CONNECTION_NAMES:[Ljava/lang/String;

.field public static final DATA_CONNECTION_NONE:I = 0x0

.field public static final DATA_CONNECTION_OTHER:I = 0x10

.field private static final DATA_CONNECTION_TIME_DATA:Ljava/lang/String; = "dct"

.field public static final DATA_CONNECTION_UMTS:I = 0x3

.field public static final DEVICE_IDLE_MODE_DEEP:I = 0x2

.field public static final DEVICE_IDLE_MODE_LIGHT:I = 0x1

.field public static final DEVICE_IDLE_MODE_OFF:I = 0x0

.field private static final DISCHARGE_STEP_DATA:Ljava/lang/String; = "dsd"

.field private static final DISCHARGE_TIME_REMAIN_DATA:Ljava/lang/String; = "dtr"

.field public static final DUMP_CHARGED_ONLY:I = 0x2

.field public static final DUMP_DAILY_ONLY:I = 0x4

.field public static final DUMP_DEVICE_WIFI_ONLY:I = 0x40

.field public static final DUMP_HISTORY_ONLY:I = 0x8

.field public static final DUMP_INCLUDE_HISTORY:I = 0x10

.field public static final DUMP_VERBOSE:I = 0x20

.field private static final FLASHLIGHT_DATA:Ljava/lang/String; = "fla"

.field public static final FLASHLIGHT_TURNED_ON:I = 0x10

.field public static final FOREGROUND_ACTIVITY:I = 0xa

.field private static final FOREGROUND_ACTIVITY_DATA:Ljava/lang/String; = "fg"

.field public static final FOREGROUND_SERVICE:I = 0x16

.field private static final FOREGROUND_SERVICE_DATA:Ljava/lang/String; = "fgs"

.field public static final FULL_WIFI_LOCK:I = 0x5

.field private static final GLOBAL_BLUETOOTH_CONTROLLER_DATA:Ljava/lang/String; = "gble"

.field private static final GLOBAL_CPU_FREQ_DATA:Ljava/lang/String; = "gcf"

.field private static final GLOBAL_MODEM_CONTROLLER_DATA:Ljava/lang/String; = "gmcd"

.field private static final GLOBAL_NETWORK_DATA:Ljava/lang/String; = "gn"

.field private static final GLOBAL_WIFI_CONTROLLER_DATA:Ljava/lang/String; = "gwfcd"

.field private static final GLOBAL_WIFI_DATA:Ljava/lang/String; = "gwfl"

.field private static final HISTORY_DATA:Ljava/lang/String; = "h"

.field public static final HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

.field public static final HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

.field public static final HISTORY_EVENT_NAMES:[Ljava/lang/String;

.field public static final HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field public static final HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

.field private static final HISTORY_STRING_POOL:Ljava/lang/String; = "hsp"

.field public static final JOB:I = 0xe

.field private static final JOB_COMPLETION_DATA:Ljava/lang/String; = "jbc"

.field private static final JOB_DATA:Ljava/lang/String; = "jb"

.field private static final KERNEL_WAKELOCK_DATA:Ljava/lang/String; = "kwl"

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_TRACKED_SCREEN_STATE:I = 0x4

.field private static final MISC_DATA:Ljava/lang/String; = "m"

.field private static final MODEM_CONTROLLER_DATA:Ljava/lang/String; = "mcd"

.field public static final NETWORK_BT_RX_DATA:I = 0x4

.field public static final NETWORK_BT_TX_DATA:I = 0x5

.field private static final NETWORK_DATA:Ljava/lang/String; = "nt"

.field public static final NETWORK_MOBILE_BG_RX_DATA:I = 0x6

.field public static final NETWORK_MOBILE_BG_TX_DATA:I = 0x7

.field public static final NETWORK_MOBILE_RX_DATA:I = 0x0

.field public static final NETWORK_MOBILE_TX_DATA:I = 0x1

.field public static final NETWORK_WIFI_BG_RX_DATA:I = 0x8

.field public static final NETWORK_WIFI_BG_TX_DATA:I = 0x9

.field public static final NETWORK_WIFI_RX_DATA:I = 0x2

.field public static final NETWORK_WIFI_TX_DATA:I = 0x3

.field public static final NUM_DATA_CONNECTION_TYPES:I = 0x11

.field public static final NUM_NETWORK_ACTIVITY_TYPES:I = 0xa

.field public static final NUM_SCREEN_BRIGHTNESS_BINS:I = 0x5

.field public static final NUM_WIFI_SIGNAL_STRENGTH_BINS:I = 0x5

.field public static final NUM_WIFI_STATES:I = 0x8

.field public static final NUM_WIFI_SUPPL_STATES:I = 0xd

.field private static final POWER_USE_ITEM_DATA:Ljava/lang/String; = "pwi"

.field private static final POWER_USE_SUMMARY_DATA:Ljava/lang/String; = "pws"

.field private static final PROCESS_DATA:Ljava/lang/String; = "pr"

.field public static final PROCESS_STATE:I = 0xc

.field private static final RESOURCE_POWER_MANAGER_DATA:Ljava/lang/String; = "rpm"

.field public static final RESULT_RECEIVER_CONTROLLER_KEY:Ljava/lang/String; = "controller_activity"

.field public static final SCREEN_BRIGHTNESS_BRIGHT:I = 0x4

.field public static final SCREEN_BRIGHTNESS_DARK:I = 0x0

.field private static final SCREEN_BRIGHTNESS_DATA:Ljava/lang/String; = "br"

.field public static final SCREEN_BRIGHTNESS_DIM:I = 0x1

.field public static final SCREEN_BRIGHTNESS_LIGHT:I = 0x3

.field public static final SCREEN_BRIGHTNESS_MEDIUM:I = 0x2

.field static final SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

.field static final SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

.field protected static final SCREEN_OFF_RPM_STATS_ENABLED:Z = false

.field public static final SENSOR:I = 0x3

.field private static final SENSOR_DATA:Ljava/lang/String; = "sr"

.field public static final SERVICE_NAME:Ljava/lang/String; = "batterystats"

.field private static final SIGNAL_SCANNING_TIME_DATA:Ljava/lang/String; = "sst"

.field private static final SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "sgc"

.field private static final SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "sgt"

.field private static final STATE_TIME_DATA:Ljava/lang/String; = "st"

.field public static final STATS_CURRENT:I = 0x1

.field public static final STATS_SINCE_CHARGED:I = 0x0

.field public static final STATS_SINCE_UNPLUGGED:I = 0x2

.field private static final STAT_NAMES:[Ljava/lang/String;

.field public static final STEP_LEVEL_INITIAL_MODE_MASK:J = 0xff000000000000L

.field public static final STEP_LEVEL_INITIAL_MODE_SHIFT:I = 0x30

.field public static final STEP_LEVEL_LEVEL_MASK:J = 0xff0000000000L

.field public static final STEP_LEVEL_LEVEL_SHIFT:I = 0x28

.field public static final STEP_LEVEL_MODES_OF_INTEREST:[I

.field public static final STEP_LEVEL_MODE_DEVICE_IDLE:I = 0x8

.field public static final STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

.field public static final STEP_LEVEL_MODE_POWER_SAVE:I = 0x4

.field public static final STEP_LEVEL_MODE_SCREEN_STATE:I = 0x3

.field public static final STEP_LEVEL_MODE_VALUES:[I

.field public static final STEP_LEVEL_MODIFIED_MODE_MASK:J = -0x100000000000000L

.field public static final STEP_LEVEL_MODIFIED_MODE_SHIFT:I = 0x38

.field public static final STEP_LEVEL_TIME_MASK:J = 0xffffffffffL

.field public static final SYNC:I = 0xd

.field private static final SYNC_DATA:Ljava/lang/String; = "sy"

.field private static final TAG:Ljava/lang/String; = "BatteryStats"

.field private static final UID_DATA:Ljava/lang/String; = "uid"

.field private static final USER_ACTIVITY_DATA:Ljava/lang/String; = "ua"

.field private static final VERSION_DATA:Ljava/lang/String; = "vers"

.field private static final VIBRATOR_DATA:Ljava/lang/String; = "vib"

.field public static final VIBRATOR_ON:I = 0x9

.field private static final VIDEO_DATA:Ljava/lang/String; = "vid"

.field public static final VIDEO_TURNED_ON:I = 0x8

.field private static final WAKELOCK_DATA:Ljava/lang/String; = "wl"

.field private static final WAKEUP_ALARM_DATA:Ljava/lang/String; = "wua"

.field private static final WAKEUP_REASON_DATA:Ljava/lang/String; = "wr"

.field public static final WAKE_TYPE_DRAW:I = 0x12

.field public static final WAKE_TYPE_FULL:I = 0x1

.field public static final WAKE_TYPE_PARTIAL:I = 0x0

.field public static final WAKE_TYPE_WINDOW:I = 0x2

.field public static final WIFI_BATCHED_SCAN:I = 0xb

.field private static final WIFI_CONTROLLER_DATA:Ljava/lang/String; = "wfcd"

.field private static final WIFI_DATA:Ljava/lang/String; = "wfl"

.field public static final WIFI_MULTICAST_ENABLED:I = 0x7

.field public static final WIFI_RUNNING:I = 0x4

.field public static final WIFI_SCAN:I = 0x6

.field private static final WIFI_SIGNAL_STRENGTH_COUNT_DATA:Ljava/lang/String; = "wsgc"

.field private static final WIFI_SIGNAL_STRENGTH_TIME_DATA:Ljava/lang/String; = "wsgt"

.field private static final WIFI_STATE_COUNT_DATA:Ljava/lang/String; = "wsc"

.field static final WIFI_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_STATE_OFF:I = 0x0

.field public static final WIFI_STATE_OFF_SCANNING:I = 0x1

.field public static final WIFI_STATE_ON_CONNECTED_P2P:I = 0x5

.field public static final WIFI_STATE_ON_CONNECTED_STA:I = 0x4

.field public static final WIFI_STATE_ON_CONNECTED_STA_P2P:I = 0x6

.field public static final WIFI_STATE_ON_DISCONNECTED:I = 0x3

.field public static final WIFI_STATE_ON_NO_NETWORKS:I = 0x2

.field public static final WIFI_STATE_SOFT_AP:I = 0x7

.field private static final WIFI_STATE_TIME_DATA:Ljava/lang/String; = "wst"

.field public static final WIFI_SUPPL_STATE_ASSOCIATED:I = 0x7

.field public static final WIFI_SUPPL_STATE_ASSOCIATING:I = 0x6

.field public static final WIFI_SUPPL_STATE_AUTHENTICATING:I = 0x5

.field public static final WIFI_SUPPL_STATE_COMPLETED:I = 0xa

.field private static final WIFI_SUPPL_STATE_COUNT_DATA:Ljava/lang/String; = "wssc"

.field public static final WIFI_SUPPL_STATE_DISCONNECTED:I = 0x1

.field public static final WIFI_SUPPL_STATE_DORMANT:I = 0xb

.field public static final WIFI_SUPPL_STATE_FOUR_WAY_HANDSHAKE:I = 0x8

.field public static final WIFI_SUPPL_STATE_GROUP_HANDSHAKE:I = 0x9

.field public static final WIFI_SUPPL_STATE_INACTIVE:I = 0x3

.field public static final WIFI_SUPPL_STATE_INTERFACE_DISABLED:I = 0x2

.field public static final WIFI_SUPPL_STATE_INVALID:I = 0x0

.field static final WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

.field public static final WIFI_SUPPL_STATE_SCANNING:I = 0x4

.field static final WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

.field private static final WIFI_SUPPL_STATE_TIME_DATA:Ljava/lang/String; = "wsst"

.field public static final WIFI_SUPPL_STATE_UNINITIALIZED:I = 0xc

.field private static final sClk_File:Ljava/lang/String; = "/d/clk/clk_enabled_list"

.field private static final sIntToString:Landroid/os/BatteryStats$IntToString;

.field private static final sRPMFile:Ljava/lang/String; = "/d/rpm_stats"

.field private static final sRPMMasterFile:Ljava/lang/String; = "/d/rpm_master_stats"

.field private static final sRPMMaster_SDM845_File:Ljava/lang/String; = "/sys/power/rpmh_stats/master_stats"

.field private static final sRPM_SDM845_File:Ljava/lang/String; = "/sys/power/system_sleep/stats"

.field private static final sUidToString:Landroid/os/BatteryStats$IntToString;


# instance fields
.field private final UID_TIMES_TYPE_ALL:Ljava/lang/String;

.field private final mFormatBuilder:Ljava/lang/StringBuilder;

.field private final mFormatter:Ljava/util/Formatter;

.field private timeout:J


# direct methods
.method static synthetic -android_os_BatteryStats-mthref-0(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2217
    invoke-static {p0}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -android_os_BatteryStats-mthref-1(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 2218
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic -getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/internal/os/BatterySipper$DrainType;->values()[Lcom/android/internal/os/BatterySipper$DrainType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->BLUETOOTH:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CAMERA:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->CELL:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->FLASHLIGHT:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->IDLE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->MEMORY:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->PHONE:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->SCREEN:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->WIFI:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Landroid/os/BatteryStats;->-com-android-internal-os-BatterySipper$DrainTypeSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 13

    .prologue
    const/4 v12, 0x4

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x3

    const/4 v8, 0x0

    .line 203
    new-array v0, v9, [Ljava/lang/String;

    const-string/jumbo v1, "l"

    aput-object v1, v0, v8

    const-string/jumbo v1, "c"

    aput-object v1, v0, v10

    const-string/jumbo v1, "u"

    aput-object v1, v0, v11

    sput-object v0, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    .line 1899
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1900
    const-string/jumbo v1, "dark"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dim"

    aput-object v1, v0, v10

    const-string/jumbo v1, "medium"

    aput-object v1, v0, v11

    const-string/jumbo v1, "light"

    aput-object v1, v0, v9

    const-string/jumbo v1, "bright"

    aput-object v1, v0, v12

    .line 1899
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    .line 1903
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 1904
    const-string/jumbo v1, "0"

    aput-object v1, v0, v8

    const-string/jumbo v1, "1"

    aput-object v1, v0, v10

    const-string/jumbo v1, "2"

    aput-object v1, v0, v11

    const-string/jumbo v1, "3"

    aput-object v1, v0, v9

    const-string/jumbo v1, "4"

    aput-object v1, v0, v12

    .line 1903
    sput-object v0, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 2091
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    .line 2092
    const-string/jumbo v1, "none"

    aput-object v1, v0, v8

    const-string/jumbo v1, "gprs"

    aput-object v1, v0, v10

    const-string/jumbo v1, "edge"

    aput-object v1, v0, v11

    const-string/jumbo v1, "umts"

    aput-object v1, v0, v9

    const-string/jumbo v1, "cdma"

    aput-object v1, v0, v12

    const-string/jumbo v1, "evdo_0"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_A"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2093
    const-string/jumbo v1, "1xrtt"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsdpa"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "hsupa"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspa"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "iden"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "evdo_b"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "lte"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 2094
    const-string/jumbo v1, "ehrpd"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "hspap"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "other"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2091
    sput-object v0, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 2132
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 2133
    const-string/jumbo v1, "invalid"

    aput-object v1, v0, v8

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v10

    const-string/jumbo v1, "disabled"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inactive"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v12

    .line 2134
    const-string/jumbo v1, "authenticating"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "associating"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "associated"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way-handshake"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2135
    const-string/jumbo v1, "group-handshake"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "completed"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dormant"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2132
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    .line 2138
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    .line 2139
    const-string/jumbo v1, "inv"

    aput-object v1, v0, v8

    const-string/jumbo v1, "dsc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "dis"

    aput-object v1, v0, v11

    const-string/jumbo v1, "inact"

    aput-object v1, v0, v9

    const-string/jumbo v1, "scan"

    aput-object v1, v0, v12

    .line 2140
    const-string/jumbo v1, "auth"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "ascing"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "asced"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "4-way"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2141
    const-string/jumbo v1, "group"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    const-string/jumbo v1, "compl"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "dorm"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "uninit"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 2138
    sput-object v0, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 2144
    const/16 v0, 0x12

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    .line 2145
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "running"

    const-string/jumbo v2, "r"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    .line 2146
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wake_lock"

    const-string/jumbo v2, "w"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    .line 2147
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "sensor"

    const-string/jumbo v2, "s"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    .line 2148
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "gps"

    const-string/jumbo v2, "g"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    .line 2149
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_full_lock"

    const-string/jumbo v2, "Wl"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    .line 2150
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_scan"

    const-string/jumbo v2, "Ws"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    .line 2151
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_multicast"

    const-string/jumbo v2, "Wm"

    const/high16 v3, 0x10000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    .line 2152
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_radio"

    const-string/jumbo v2, "Wr"

    const/high16 v3, 0x4000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    .line 2153
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "mobile_radio"

    const-string/jumbo v2, "Pr"

    const/high16 v3, 0x2000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    .line 2154
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_scanning"

    const-string/jumbo v2, "Psc"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    .line 2155
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "audio"

    const-string/jumbo v2, "a"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    .line 2156
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "screen"

    const-string/jumbo v2, "S"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    .line 2157
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "plugged"

    const-string/jumbo v2, "BP"

    const/high16 v3, 0x80000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    .line 2158
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "screen_doze"

    const-string/jumbo v2, "Sd"

    const/high16 v3, 0x40000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xd

    aput-object v0, v7, v1

    .line 2159
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2160
    const-string/jumbo v3, "data_conn"

    const-string/jumbo v4, "Pcn"

    .line 2161
    sget-object v5, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    .line 2159
    const/16 v1, 0x3e00

    .line 2160
    const/16 v2, 0x9

    .line 2159
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xe

    aput-object v0, v7, v1

    .line 2162
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2163
    const-string/jumbo v3, "phone_state"

    const-string/jumbo v4, "Pst"

    .line 2164
    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v5, v8

    const-string/jumbo v1, "out"

    aput-object v1, v5, v10

    const-string/jumbo v1, "emergency"

    aput-object v1, v5, v11

    const-string/jumbo v1, "off"

    aput-object v1, v5, v9

    .line 2165
    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "in"

    aput-object v1, v6, v8

    const-string/jumbo v1, "out"

    aput-object v1, v6, v10

    const-string/jumbo v1, "em"

    aput-object v1, v6, v11

    const-string/jumbo v1, "off"

    aput-object v1, v6, v9

    .line 2162
    const/16 v1, 0x1c0

    .line 2163
    const/4 v2, 0x6

    .line 2162
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xf

    aput-object v0, v7, v1

    .line 2166
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2167
    const-string/jumbo v3, "phone_signal_strength"

    const-string/jumbo v4, "Pss"

    .line 2168
    sget-object v5, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    .line 2169
    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    .line 2166
    const/16 v1, 0x38

    move v2, v9

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x10

    aput-object v0, v7, v1

    .line 2170
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2171
    const-string/jumbo v3, "brightness"

    const-string/jumbo v4, "Sb"

    .line 2172
    sget-object v5, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_SHORT_NAMES:[Ljava/lang/String;

    .line 2170
    const/4 v1, 0x7

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x11

    aput-object v0, v7, v1

    .line 2144
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2176
    const/16 v0, 0xd

    new-array v7, v0, [Landroid/os/BatteryStats$BitDescription;

    .line 2177
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "power_save"

    const-string/jumbo v2, "ps"

    const/high16 v3, -0x80000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v8

    .line 2178
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "video"

    const-string/jumbo v2, "v"

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v10

    .line 2179
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi_running"

    const-string/jumbo v2, "Ww"

    const/high16 v3, 0x20000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v11

    .line 2180
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "wifi"

    const-string/jumbo v2, "W"

    const/high16 v3, 0x10000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v9

    .line 2181
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "flashlight"

    const-string/jumbo v2, "fl"

    const/high16 v3, 0x8000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v7, v12

    .line 2182
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2183
    const-string/jumbo v3, "device_idle"

    const-string/jumbo v4, "di"

    .line 2184
    new-array v5, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v5, v8

    const-string/jumbo v1, "light"

    aput-object v1, v5, v10

    const-string/jumbo v1, "full"

    aput-object v1, v5, v11

    const-string/jumbo v1, "???"

    aput-object v1, v5, v9

    .line 2185
    new-array v6, v12, [Ljava/lang/String;

    const-string/jumbo v1, "off"

    aput-object v1, v6, v8

    const-string/jumbo v1, "light"

    aput-object v1, v6, v10

    const-string/jumbo v1, "full"

    aput-object v1, v6, v11

    const-string/jumbo v1, "???"

    aput-object v1, v6, v9

    .line 2182
    const/high16 v1, 0x6000000

    .line 2183
    const/16 v2, 0x19

    .line 2182
    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/4 v1, 0x5

    aput-object v0, v7, v1

    .line 2186
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "charging"

    const-string/jumbo v2, "ch"

    const/high16 v3, 0x1000000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    aput-object v0, v7, v1

    .line 2187
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "phone_in_call"

    const-string/jumbo v2, "Pcl"

    const/high16 v3, 0x800000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x7

    aput-object v0, v7, v1

    .line 2188
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "bluetooth"

    const-string/jumbo v2, "b"

    const/high16 v3, 0x400000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0x8

    aput-object v0, v7, v1

    .line 2189
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2190
    const-string/jumbo v3, "wifi_signal_strength"

    const-string/jumbo v4, "Wss"

    .line 2191
    const/4 v1, 0x5

    new-array v5, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v5, v8

    const-string/jumbo v1, "1"

    aput-object v1, v5, v10

    const-string/jumbo v1, "2"

    aput-object v1, v5, v11

    const-string/jumbo v1, "3"

    aput-object v1, v5, v9

    const-string/jumbo v1, "4"

    aput-object v1, v5, v12

    .line 2192
    const/4 v1, 0x5

    new-array v6, v1, [Ljava/lang/String;

    const-string/jumbo v1, "0"

    aput-object v1, v6, v8

    const-string/jumbo v1, "1"

    aput-object v1, v6, v10

    const-string/jumbo v1, "2"

    aput-object v1, v6, v11

    const-string/jumbo v1, "3"

    aput-object v1, v6, v9

    const-string/jumbo v1, "4"

    aput-object v1, v6, v12

    .line 2189
    const/16 v1, 0x70

    move v2, v12

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0x9

    aput-object v0, v7, v1

    .line 2193
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    .line 2194
    const-string/jumbo v3, "wifi_suppl"

    const-string/jumbo v4, "Wsp"

    .line 2195
    sget-object v5, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_SHORT_NAMES:[Ljava/lang/String;

    .line 2193
    const/16 v1, 0xf

    move v2, v8

    invoke-direct/range {v0 .. v6}, Landroid/os/BatteryStats$BitDescription;-><init>(IILjava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const/16 v1, 0xa

    aput-object v0, v7, v1

    .line 2196
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "camera"

    const-string/jumbo v2, "ca"

    const/high16 v3, 0x200000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xb

    aput-object v0, v7, v1

    .line 2197
    new-instance v0, Landroid/os/BatteryStats$BitDescription;

    const-string/jumbo v1, "ble_scan"

    const-string/jumbo v2, "bles"

    const/high16 v3, 0x100000

    invoke-direct {v0, v3, v1, v2}, Landroid/os/BatteryStats$BitDescription;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const/16 v1, 0xc

    aput-object v0, v7, v1

    .line 2175
    sput-object v7, Landroid/os/BatteryStats;->HISTORY_STATE2_DESCRIPTIONS:[Landroid/os/BatteryStats$BitDescription;

    .line 2200
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    .line 2201
    const-string/jumbo v1, "null"

    aput-object v1, v0, v8

    const-string/jumbo v1, "proc"

    aput-object v1, v0, v10

    const-string/jumbo v1, "fg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "top"

    aput-object v1, v0, v9

    const-string/jumbo v1, "sync"

    aput-object v1, v0, v12

    const-string/jumbo v1, "wake_lock_in"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "job"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "user"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "userfg"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "conn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2202
    const-string/jumbo v1, "active"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkginst"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkgunin"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "alarm"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "stats"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkginactive"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "pkgactive"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 2203
    const-string/jumbo v1, "tmpwhitelist"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    const-string/jumbo v1, "screenwake"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "wakeupap"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "longwake"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "est_capacity"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2200
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_NAMES:[Ljava/lang/String;

    .line 2206
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    .line 2207
    const-string/jumbo v1, "Enl"

    aput-object v1, v0, v8

    const-string/jumbo v1, "Epr"

    aput-object v1, v0, v10

    const-string/jumbo v1, "Efg"

    aput-object v1, v0, v11

    const-string/jumbo v1, "Etp"

    aput-object v1, v0, v9

    const-string/jumbo v1, "Esy"

    aput-object v1, v0, v12

    const-string/jumbo v1, "Ewl"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ejb"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eur"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    const-string/jumbo v1, "Euf"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ecn"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2208
    const-string/jumbo v1, "Eac"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epi"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    const-string/jumbo v1, "Epu"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eal"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    const-string/jumbo v1, "Est"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eai"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eaa"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    const-string/jumbo v1, "Etw"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2209
    const-string/jumbo v1, "Esw"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    const-string/jumbo v1, "Ewa"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    const-string/jumbo v1, "Elw"

    const/16 v2, 0x14

    aput-object v1, v0, v2

    const-string/jumbo v1, "Eec"

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2206
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_CHECKIN_NAMES:[Ljava/lang/String;

    sget-object v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$INST$0:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    .line 2217
    sput-object v0, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    sget-object v0, Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;->$INST$1:Landroid/os/-$Lambda$-dncxFEc2F2bgG2fsIoC6FC6WNE;

    .line 2218
    sput-object v0, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    .line 2220
    const/16 v0, 0x16

    new-array v0, v0, [Landroid/os/BatteryStats$IntToString;

    .line 2221
    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v8

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v10

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v11

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v9

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    aput-object v1, v0, v12

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2222
    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 2223
    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 2224
    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sUidToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Landroid/os/BatteryStats;->sIntToString:Landroid/os/BatteryStats$IntToString;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    .line 2220
    sput-object v0, Landroid/os/BatteryStats;->HISTORY_EVENT_INT_FORMATTERS:[Landroid/os/BatteryStats$IntToString;

    .line 2252
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    .line 2253
    const-string/jumbo v1, "off"

    aput-object v1, v0, v8

    const-string/jumbo v1, "scanning"

    aput-object v1, v0, v10

    const-string/jumbo v1, "no_net"

    aput-object v1, v0, v11

    const-string/jumbo v1, "disconn"

    aput-object v1, v0, v9

    .line 2254
    const-string/jumbo v1, "sta"

    aput-object v1, v0, v12

    const-string/jumbo v1, "p2p"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    const-string/jumbo v1, "sta_p2p"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const-string/jumbo v1, "soft_ap"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2252
    sput-object v0, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    .line 2592
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    .line 2604
    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    .line 2616
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 2617
    const-string/jumbo v1, "screen off"

    aput-object v1, v0, v8

    .line 2618
    const-string/jumbo v1, "screen off power save"

    aput-object v1, v0, v10

    .line 2619
    const-string/jumbo v1, "screen off device idle"

    aput-object v1, v0, v11

    .line 2620
    const-string/jumbo v1, "screen on"

    aput-object v1, v0, v9

    .line 2621
    const-string/jumbo v1, "screen on power save"

    aput-object v1, v0, v12

    .line 2622
    const-string/jumbo v1, "screen doze"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 2623
    const-string/jumbo v1, "screen doze power save"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 2624
    const-string/jumbo v1, "screen doze-suspend"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 2625
    const-string/jumbo v1, "screen doze-suspend power save"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 2626
    const-string/jumbo v1, "screen doze-suspend device idle"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 2616
    sput-object v0, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    .line 60
    return-void

    .line 2592
    nop

    :array_0
    .array-data 4
        0x7
        0xf
        0xb
        0x7
        0x7
        0x7
        0x7
        0x7
        0xf
        0xb
    .end array-data

    .line 2604
    :array_1
    .array-data 4
        0x0
        0x4
        0x8
        0x1
        0x5
        0x2
        0x6
        0x3
        0x7
        0xb
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 323
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    iput-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    .line 330
    const-string/jumbo v0, "A"

    iput-object v0, p0, Landroid/os/BatteryStats;->UID_TIMES_TYPE_ALL:Ljava/lang/String;

    .line 5513
    const-wide/16 v0, 0x1388

    iput-wide v0, p0, Landroid/os/BatteryStats;->timeout:J

    .line 60
    return-void
.end method

.method private static computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J
    .locals 9
    .param p0, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p1, "elapsedRealtimeUs"    # J
    .param p3, "which"    # I

    .prologue
    .line 2786
    if-eqz p0, :cond_0

    .line 2788
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    .line 2789
    .local v0, "totalTimeMicros":J
    const-wide/16 v4, 0x1f4

    add-long/2addr v4, v0

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 2790
    .local v2, "totalTimeMillis":J
    return-wide v2

    .line 2792
    .end local v0    # "totalTimeMicros":J
    .end local v2    # "totalTimeMillis":J
    :cond_0
    const-wide/16 v4, 0x0

    return-wide v4
.end method

.method private static controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z
    .locals 11
    .param p0, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p1, "which"    # I

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    const-wide/16 v8, 0x0

    .line 3002
    if-nez p0, :cond_0

    .line 3003
    return v2

    .line 3006
    :cond_0
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    .line 3007
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-eqz v1, :cond_2

    .line 3009
    :cond_1
    return v10

    .line 3008
    :cond_2
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    cmp-long v1, v4, v8

    if-nez v1, :cond_1

    .line 3012
    invoke-virtual {p0}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v3

    array-length v4, v3

    move v1, v2

    :goto_0
    if-ge v1, v4, :cond_4

    aget-object v0, v3, v1

    .line 3013
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    invoke-virtual {v0, p1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    cmp-long v5, v6, v8

    if-eqz v5, :cond_3

    .line 3014
    return v10

    .line 3012
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3017
    .end local v0    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_4
    return v2
.end method

.method private static final dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 6
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p5, "which"    # I

    .prologue
    .line 3032
    invoke-static {p4, p5}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3033
    return-void

    .line 3036
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 3037
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 3039
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3040
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 3041
    const-string/jumbo v1, ","

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3042
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v1

    invoke-virtual {v1, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    div-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 3043
    invoke-virtual {p4}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 3044
    .local v0, "c":Landroid/os/BatteryStats$LongCounter;
    const-string/jumbo v4, ","

    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3045
    invoke-virtual {v0, p5}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v4

    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->print(J)V

    .line 3043
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3047
    .end local v0    # "c":Landroid/os/BatteryStats$LongCounter;
    :cond_1
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 3048
    return-void
.end method

.method private dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/String;
    .param p4, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p5, "tmpSb"    # Ljava/lang/StringBuilder;
    .param p6, "tmpOutInt"    # [I

    .prologue
    .line 6173
    if-nez p4, :cond_0

    .line 6174
    return-void

    .line 6176
    :cond_0
    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v12

    .line 6177
    .local v12, "timeRemaining":J
    const-wide/16 v4, 0x0

    cmp-long v3, v12, v4

    if-ltz v3, :cond_1

    .line 6178
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " total time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6179
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6180
    move-object/from16 v0, p5

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6181
    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6182
    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 6183
    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6185
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v3, v3

    if-ge v2, v3, :cond_3

    .line 6186
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v3, v3, v2

    int-to-long v4, v3

    .line 6187
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v3, v3, v2

    int-to-long v6, v3

    move-object/from16 v3, p4

    move-object/from16 v8, p6

    .line 6186
    invoke-virtual/range {v3 .. v8}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v10

    .line 6188
    .local v10, "estimatedTime":J
    const-wide/16 v4, 0x0

    cmp-long v3, v10, v4

    if-lez v3, :cond_2

    .line 6189
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p3

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, " "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6190
    sget-object v3, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6191
    const-string/jumbo v3, " time: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6192
    const/4 v3, 0x0

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 6193
    move-object/from16 v0, p5

    invoke-static {v0, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 6194
    move-object/from16 v0, p5

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 6195
    const-string/jumbo v3, " (from "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v3, 0x0

    aget v3, p6, v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 6196
    const-string/jumbo v3, " steps)"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6185
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6199
    .end local v10    # "estimatedTime":J
    :cond_3
    return-void
.end method

.method private dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 6203
    .local p3, "changes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    if-nez p3, :cond_0

    .line 6204
    return-void

    .line 6206
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "Package changes:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6207
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 6208
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/BatteryStats$PackageChange;

    .line 6209
    .local v1, "pc":Landroid/os/BatteryStats$PackageChange;
    iget-boolean v2, v1, Landroid/os/BatteryStats$PackageChange;->mUpdate:Z

    if-eqz v2, :cond_1

    .line 6210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Update "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6211
    const-string/jumbo v2, " vers="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/os/BatteryStats$PackageChange;->mVersionCode:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 6207
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6213
    :cond_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v2, "  Uninstall "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/os/BatteryStats$PackageChange;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 6216
    .end local v1    # "pc":Landroid/os/BatteryStats$PackageChange;
    :cond_2
    return-void
.end method

.method private static dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z
    .locals 18
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "header"    # Ljava/lang/String;
    .param p3, "steps"    # Landroid/os/BatteryStats$LevelStepTracker;
    .param p4, "checkin"    # Z

    .prologue
    .line 6001
    if-nez p3, :cond_0

    .line 6002
    const/4 v11, 0x0

    return v11

    .line 6004
    :cond_0
    move-object/from16 v0, p3

    iget v2, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    .line 6005
    .local v2, "count":I
    if-gtz v2, :cond_1

    .line 6006
    const/4 v11, 0x0

    return v11

    .line 6008
    :cond_1
    if-nez p4, :cond_2

    .line 6009
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6011
    :cond_2
    const/4 v11, 0x5

    new-array v10, v11, [Ljava/lang/String;

    .line 6012
    .local v10, "lineArgs":[Ljava/lang/String;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v2, :cond_11

    .line 6013
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getDurationAt(I)J

    move-result-wide v4

    .line 6014
    .local v4, "duration":J
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getLevelAt(I)I

    move-result v7

    .line 6015
    .local v7, "level":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getInitModeAt(I)I

    move-result v11

    int-to-long v8, v11

    .line 6016
    .local v8, "initMode":J
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$LevelStepTracker;->getModModeAt(I)I

    move-result v11

    int-to-long v12, v11

    .line 6017
    .local v12, "modMode":J
    if-eqz p4, :cond_8

    .line 6018
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    aput-object v11, v10, v14

    .line 6019
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x1

    aput-object v11, v10, v14

    .line 6020
    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_3

    .line 6021
    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_0

    .line 6026
    const-string/jumbo v11, "?"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    .line 6031
    :goto_1
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_5

    .line 6032
    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_4

    const-string/jumbo v11, "p+"

    :goto_2
    const/4 v14, 0x3

    aput-object v11, v10, v14

    .line 6036
    :goto_3
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_7

    .line 6037
    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_6

    const-string/jumbo v11, "i+"

    :goto_4
    const/4 v14, 0x4

    aput-object v11, v10, v14

    .line 6041
    :goto_5
    const-string/jumbo v11, "i"

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v14, v11, v1, v10}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6012
    :goto_6
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 6022
    :pswitch_0
    const-string/jumbo v11, "s-"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 6023
    :pswitch_1
    const-string/jumbo v11, "s+"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 6024
    :pswitch_2
    const-string/jumbo v11, "sd"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 6025
    :pswitch_3
    const-string/jumbo v11, "sds"

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 6029
    :cond_3
    const-string/jumbo v11, ""

    const/4 v14, 0x2

    aput-object v11, v10, v14

    goto :goto_1

    .line 6032
    :cond_4
    const-string/jumbo v11, "p-"

    goto :goto_2

    .line 6034
    :cond_5
    const-string/jumbo v11, ""

    const/4 v14, 0x3

    aput-object v11, v10, v14

    goto :goto_3

    .line 6037
    :cond_6
    const-string/jumbo v11, "i-"

    goto :goto_4

    .line 6039
    :cond_7
    const-string/jumbo v11, ""

    const/4 v14, 0x4

    aput-object v11, v10, v14

    goto :goto_5

    .line 6043
    :cond_8
    invoke-virtual/range {p0 .. p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6044
    const-string/jumbo v11, "#"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v11, ": "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6045
    move-object/from16 v0, p0

    invoke-static {v4, v5, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6046
    const-string/jumbo v11, " to "

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(I)V

    .line 6047
    const/4 v3, 0x0

    .line 6048
    .local v3, "haveModes":Z
    const-wide/16 v14, 0x3

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_9

    .line 6049
    const-string/jumbo v11, " ("

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6050
    const-wide/16 v14, 0x3

    and-long/2addr v14, v8

    long-to-int v11, v14

    add-int/lit8 v11, v11, 0x1

    packed-switch v11, :pswitch_data_1

    .line 6055
    const-string/jumbo v11, "screen-?"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6057
    :goto_7
    const/4 v3, 0x1

    .line 6059
    :cond_9
    const-wide/16 v14, 0x4

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_a

    .line 6060
    if-eqz v3, :cond_d

    const-string/jumbo v11, ", "

    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6061
    const-wide/16 v14, 0x4

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_e

    .line 6062
    const-string/jumbo v11, "power-save-on"

    .line 6061
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6063
    const/4 v3, 0x1

    .line 6065
    :cond_a
    const-wide/16 v14, 0x8

    and-long/2addr v14, v12

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-nez v11, :cond_b

    .line 6066
    if-eqz v3, :cond_f

    const-string/jumbo v11, ", "

    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6067
    const-wide/16 v14, 0x8

    and-long/2addr v14, v8

    const-wide/16 v16, 0x0

    cmp-long v11, v14, v16

    if-eqz v11, :cond_10

    .line 6068
    const-string/jumbo v11, "device-idle-on"

    .line 6067
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6069
    const/4 v3, 0x1

    .line 6071
    :cond_b
    if-eqz v3, :cond_c

    .line 6072
    const-string/jumbo v11, ")"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6074
    :cond_c
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_6

    .line 6051
    :pswitch_4
    const-string/jumbo v11, "screen-off"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 6052
    :pswitch_5
    const-string/jumbo v11, "screen-on"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 6053
    :pswitch_6
    const-string/jumbo v11, "screen-doze"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 6054
    :pswitch_7
    const-string/jumbo v11, "screen-doze-suspend"

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_7

    .line 6060
    :cond_d
    const-string/jumbo v11, " ("

    goto :goto_8

    .line 6062
    :cond_e
    const-string/jumbo v11, "power-save-off"

    goto :goto_9

    .line 6066
    :cond_f
    const-string/jumbo v11, " ("

    goto :goto_a

    .line 6068
    :cond_10
    const-string/jumbo v11, "device-idle-off"

    goto :goto_b

    .line 6077
    .end local v3    # "haveModes":Z
    .end local v4    # "duration":J
    .end local v7    # "level":I
    .end local v8    # "initMode":J
    .end local v12    # "modMode":J
    :cond_11
    const/4 v11, 0x1

    return v11

    .line 6021
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 6050
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    .locals 25
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "flags"    # I
    .param p3, "histStart"    # J
    .param p5, "checkin"    # Z

    .prologue
    .line 6088
    new-instance v3, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v3}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 6089
    .local v3, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    new-instance v5, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 6090
    .local v5, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-wide/16 v16, -0x1

    .line 6091
    .local v16, "lastTime":J
    const-wide/16 v6, -0x1

    .line 6092
    .local v6, "baseTime":J
    const/16 v19, 0x0

    .line 6093
    .local v19, "printed":Z
    const/16 v20, 0x0

    .line 6094
    .local v20, "tracker":Landroid/os/BatteryStats$HistoryEventTracker;
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 6095
    iget-wide v0, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v16, v0

    .line 6096
    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-gez v4, :cond_1

    .line 6097
    move-wide/from16 v6, v16

    .line 6099
    :cond_1
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->time:J

    cmp-long v4, v8, p3

    if-ltz v4, :cond_0

    .line 6100
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_e

    xor-int/lit8 v4, v19, 0x1

    if-eqz v4, :cond_e

    .line 6101
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x5

    if-eq v4, v8, :cond_2

    .line 6102
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x7

    if-ne v4, v8, :cond_6

    .line 6105
    :cond_2
    const/16 v19, 0x1

    .line 6107
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_7

    const/4 v9, 0x1

    :goto_1
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 6106
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6108
    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 6117
    :cond_3
    :goto_2
    const/4 v4, 0x0

    if-eqz v4, :cond_e

    .line 6118
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eqz v4, :cond_4

    .line 6120
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_9

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 6119
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6121
    const/4 v4, 0x0

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 6123
    :cond_4
    iget v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 6124
    .local v15, "oldEventCode":I
    iget-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v18, v0

    .line 6125
    .local v18, "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    new-instance v4, Landroid/os/BatteryStats$HistoryTag;

    invoke-direct {v4}, Landroid/os/BatteryStats$HistoryTag;-><init>()V

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 6126
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_4
    const/16 v4, 0x16

    if-ge v13, v4, :cond_d

    .line 6128
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/os/BatteryStats$HistoryEventTracker;->getStateForEvent(I)Ljava/util/HashMap;

    move-result-object v2

    .line 6129
    .local v2, "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    if-nez v2, :cond_a

    .line 6126
    :cond_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 6103
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_6
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v8, 0x4

    if-eq v4, v8, :cond_2

    .line 6104
    iget-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v8, 0x8

    if-eq v4, v8, :cond_2

    .line 6109
    iget-wide v8, v5, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide/16 v22, 0x0

    cmp-long v4, v8, v22

    if-eqz v4, :cond_3

    .line 6110
    const/16 v19, 0x1

    .line 6111
    iget-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 6112
    .local v10, "cmd":B
    const/4 v4, 0x5

    iput-byte v4, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    .line 6114
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_8

    const/4 v9, 0x1

    :goto_5
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 6113
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6115
    iput-byte v10, v5, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    goto :goto_2

    .line 6107
    .end local v10    # "cmd":B
    :cond_7
    const/4 v9, 0x0

    goto :goto_1

    .line 6114
    .restart local v10    # "cmd":B
    :cond_8
    const/4 v9, 0x0

    goto :goto_5

    .line 6120
    .end local v10    # "cmd":B
    :cond_9
    const/4 v9, 0x0

    goto :goto_3

    .line 6133
    .restart local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .restart local v13    # "i":I
    .restart local v15    # "oldEventCode":I
    .restart local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_a
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    .line 6132
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .local v12, "ent$iterator":Ljava/util/Iterator;
    :cond_b
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 6134
    .local v11, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/util/SparseIntArray;

    .line 6135
    .local v21, "uids":Landroid/util/SparseIntArray;
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_6
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseIntArray;->size()I

    move-result v4

    if-ge v14, v4, :cond_b

    .line 6136
    iput v13, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 6137
    iget-object v8, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    invoke-interface {v11}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v8, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    .line 6138
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->uid:I

    .line 6139
    iget-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    iput v8, v4, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    .line 6141
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_c

    const/4 v9, 0x1

    :goto_7
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 6140
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    .line 6142
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakeReasonTag:Landroid/os/BatteryStats$HistoryTag;

    .line 6143
    const/4 v4, 0x0

    iput-object v4, v5, Landroid/os/BatteryStats$HistoryItem;->wakelockTag:Landroid/os/BatteryStats$HistoryTag;

    .line 6135
    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    .line 6141
    :cond_c
    const/4 v9, 0x0

    goto :goto_7

    .line 6147
    .end local v2    # "active":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v11    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v12    # "ent$iterator":Ljava/util/Iterator;
    .end local v14    # "j":I
    .end local v21    # "uids":Landroid/util/SparseIntArray;
    :cond_d
    iput v15, v5, Landroid/os/BatteryStats$HistoryItem;->eventCode:I

    .line 6148
    move-object/from16 v0, v18

    iput-object v0, v5, Landroid/os/BatteryStats$HistoryItem;->eventTag:Landroid/os/BatteryStats$HistoryTag;

    .line 6149
    const/16 v20, 0x0

    .line 6153
    .end local v13    # "i":I
    .end local v15    # "oldEventCode":I
    .end local v18    # "oldEventTag":Landroid/os/BatteryStats$HistoryTag;
    :cond_e
    and-int/lit8 v4, p2, 0x20

    if-eqz v4, :cond_f

    const/4 v9, 0x1

    :goto_8
    move-object/from16 v4, p1

    move/from16 v8, p5

    .line 6152
    invoke-virtual/range {v3 .. v9}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V

    goto/16 :goto_0

    .line 6153
    :cond_f
    const/4 v9, 0x0

    goto :goto_8

    .line 6165
    :cond_10
    const-wide/16 v8, 0x0

    cmp-long v4, p3, v8

    if-ltz v4, :cond_11

    .line 6166
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->commitCurrentHistoryBatchLocked()V

    .line 6167
    if-eqz p5, :cond_12

    const-string/jumbo v4, "NEXT: "

    :goto_9
    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-wide/16 v8, 0x1

    add-long v8, v8, v16

    move-object/from16 v0, p1

    invoke-virtual {v0, v8, v9}, Ljava/io/PrintWriter;->println(J)V

    .line 6169
    :cond_11
    return-void

    .line 6167
    :cond_12
    const-string/jumbo v4, "  NEXT: "

    goto :goto_9
.end method

.method private static final varargs dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/Object;

    .prologue
    .line 2966
    invoke-static {p0, p1, p2, p3}, Landroid/os/BatteryStats;->dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V

    .line 2967
    const/4 v1, 0x0

    array-length v2, p4

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p4, v1

    .line 2968
    .local v0, "arg":Ljava/lang/Object;
    const/16 v3, 0x2c

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(C)V

    .line 2969
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 2967
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2971
    .end local v0    # "arg":Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2972
    return-void
.end method

.method private static final dumpLineHeader(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .prologue
    const/16 v1, 0x2c

    .line 2947
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 2948
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2949
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 2950
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2951
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2952
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 2953
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2954
    return-void
.end method

.method private dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 16
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .prologue
    .line 5516
    const/4 v7, 0x0

    .line 5517
    .local v7, "fis":Ljava/io/FileInputStream;
    const/16 v2, 0x400

    .line 5518
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 5520
    .local v3, "buffer":[B
    :try_start_0
    new-instance v8, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5521
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 5522
    .local v9, "length":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 5523
    .local v10, "nowELAPSED":J
    :cond_0
    invoke-virtual {v8, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v9

    const/4 v12, -0x1

    if-eq v9, v12, :cond_1

    .line 5524
    new-instance v12, Ljava/lang/String;

    const/4 v13, 0x0

    invoke-direct {v12, v3, v13, v9}, Ljava/lang/String;-><init>([BII)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5525
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    sub-long/2addr v12, v10

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/os/BatteryStats;->timeout:J

    cmp-long v12, v12, v14

    if-ltz v12, :cond_0

    .line 5526
    const-string/jumbo v12, "**** Exceed read timeout, force exit ***"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5536
    :cond_1
    if-eqz v8, :cond_2

    .line 5537
    :try_start_2
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v7, v8

    .line 5541
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "nowELAPSED":J
    :cond_3
    :goto_1
    return-void

    .line 5538
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    .restart local v10    # "nowELAPSED":J
    :catch_0
    move-exception v6

    .local v6, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 5532
    .end local v6    # "ex":Ljava/io/IOException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .end local v9    # "length":I
    .end local v10    # "nowELAPSED":J
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v5

    .line 5533
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "**** Failed to read, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5536
    if-eqz v7, :cond_3

    .line 5537
    :try_start_4
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 5538
    :catch_2
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 5530
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v4

    .line 5531
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v4, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "**** File not found, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 5536
    if-eqz v7, :cond_3

    .line 5537
    :try_start_6
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 5538
    :catch_4
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 5534
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v12

    .line 5536
    :goto_4
    if-eqz v7, :cond_4

    .line 5537
    :try_start_7
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 5534
    :cond_4
    :goto_5
    throw v12

    .line 5538
    :catch_5
    move-exception v6

    .restart local v6    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 5534
    .end local v6    # "ex":Ljava/io/IOException;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "length":I
    :catchall_1
    move-exception v12

    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v7, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 5530
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v4

    .restart local v4    # "e":Ljava/io/FileNotFoundException;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 5532
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v5

    .restart local v5    # "e":Ljava/io/IOException;
    move-object v7, v8

    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private static dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "label1"    # Ljava/lang/String;
    .param p2, "label2"    # Ljava/lang/String;
    .param p3, "label3"    # Ljava/lang/String;
    .param p4, "estimatedTime"    # J

    .prologue
    .line 5986
    const-wide/16 v2, 0x0

    cmp-long v1, p4, v2

    if-gez v1, :cond_0

    .line 5987
    const/4 v1, 0x0

    return v1

    .line 5989
    :cond_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5990
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5991
    invoke-virtual {p0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5992
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 5993
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {v0, p4, p5}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5994
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5995
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 5996
    const/4 v1, 0x1

    return v1
.end method

.method private static final dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V
    .locals 11
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "uid"    # I
    .param p2, "category"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;
    .param p4, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p5, "rawRealtime"    # J
    .param p7, "which"    # I

    .prologue
    .line 2987
    if-eqz p4, :cond_0

    .line 2989
    invoke-virtual/range {p4 .. p7}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x1f4

    add-long/2addr v6, v8

    .line 2990
    const-wide/16 v8, 0x3e8

    .line 2989
    div-long v4, v6, v8

    .line 2991
    .local v4, "totalTime":J
    move/from16 v0, p7

    invoke-virtual {p4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 2992
    .local v2, "count":I
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_0

    .line 2993
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v3, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x1

    aput-object v6, v3, v7

    invoke-static {p0, p1, p2, p3, v3}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2996
    .end local v2    # "count":I
    .end local v4    # "totalTime":J
    :cond_0
    return-void
.end method

.method public static final formatTimeMs(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 2745
    div-long v0, p1, v2

    .line 2746
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 2747
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2748
    const-string/jumbo v2, "ms "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2749
    return-void
.end method

.method public static final formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V
    .locals 5
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "time"    # J

    .prologue
    const-wide/16 v2, 0x3e8

    .line 2752
    div-long v0, p1, v2

    .line 2753
    .local v0, "sec":J
    invoke-static {p0, v0, v1}, Landroid/os/BatteryStats;->formatTimeRaw(Ljava/lang/StringBuilder;J)V

    .line 2754
    mul-long/2addr v2, v0

    sub-long v2, p1, v2

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2755
    const-string/jumbo v2, "ms"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2756
    return-void
.end method

.method private static final formatTimeRaw(Ljava/lang/StringBuilder;J)V
    .locals 13
    .param p0, "out"    # Ljava/lang/StringBuilder;
    .param p1, "seconds"    # J

    .prologue
    .line 2717
    const-wide/32 v8, 0x15180

    div-long v0, p1, v8

    .line 2718
    .local v0, "days":J
    const-wide/16 v8, 0x0

    cmp-long v8, v0, v8

    if-eqz v8, :cond_0

    .line 2719
    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2720
    const-string/jumbo v8, "d "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    :cond_0
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v0

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    const-wide/16 v10, 0x18

    mul-long v6, v8, v10

    .line 2724
    .local v6, "used":J
    sub-long v8, p1, v6

    const-wide/16 v10, 0xe10

    div-long v2, v8, v10

    .line 2725
    .local v2, "hours":J
    const-wide/16 v8, 0x0

    cmp-long v8, v2, v8

    if-nez v8, :cond_1

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    .line 2726
    :cond_1
    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2727
    const-string/jumbo v8, "h "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    :cond_2
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v2

    const-wide/16 v10, 0x3c

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    .line 2731
    sub-long v8, p1, v6

    const-wide/16 v10, 0x3c

    div-long v4, v8, v10

    .line 2732
    .local v4, "mins":J
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-nez v8, :cond_3

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_4

    .line 2733
    :cond_3
    invoke-virtual {p0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2734
    const-string/jumbo v8, "m "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2736
    :cond_4
    const-wide/16 v8, 0x3c

    mul-long/2addr v8, v4

    add-long/2addr v6, v8

    .line 2738
    const-wide/16 v8, 0x0

    cmp-long v8, p1, v8

    if-nez v8, :cond_5

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_6

    .line 2739
    :cond_5
    sub-long v8, p1, v6

    invoke-virtual {p0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2740
    const-string/jumbo v8, "s "

    invoke-virtual {p0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    :cond_6
    return-void
.end method

.method static printBitDescriptions(Ljava/io/PrintWriter;IILandroid/os/BatteryStats$HistoryTag;[Landroid/os/BatteryStats$BitDescription;Z)V
    .locals 7
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "oldval"    # I
    .param p2, "newval"    # I
    .param p3, "wakelockTag"    # Landroid/os/BatteryStats$HistoryTag;
    .param p4, "descriptions"    # [Landroid/os/BatteryStats$BitDescription;
    .param p5, "longNames"    # Z

    .prologue
    .line 5546
    xor-int v2, p1, p2

    .line 5547
    .local v2, "diff":I
    if-nez v2, :cond_0

    return-void

    .line 5548
    :cond_0
    const/4 v1, 0x0

    .line 5549
    .local v1, "didWake":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, p4

    if-ge v3, v5, :cond_a

    .line 5550
    aget-object v0, p4, v3

    .line 5551
    .local v0, "bd":Landroid/os/BatteryStats$BitDescription;
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, v2

    if-eqz v5, :cond_1

    .line 5552
    if-eqz p5, :cond_2

    const-string/jumbo v5, " "

    :goto_1
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5553
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    if-gez v5, :cond_6

    .line 5554
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    if-eqz v5, :cond_3

    const-string/jumbo v5, "+"

    :goto_2
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5555
    if-eqz p5, :cond_4

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_3
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5556
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    const/high16 v6, 0x40000000    # 2.0f

    if-ne v5, v6, :cond_1

    if-eqz p3, :cond_1

    .line 5557
    const/4 v1, 0x1

    .line 5558
    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5559
    if-eqz p5, :cond_5

    .line 5560
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5561
    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5562
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5563
    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5549
    :cond_1
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5552
    :cond_2
    const-string/jumbo v5, ","

    goto :goto_1

    .line 5554
    :cond_3
    const-string/jumbo v5, "-"

    goto :goto_2

    .line 5555
    :cond_4
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_3

    .line 5565
    :cond_5
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4

    .line 5569
    :cond_6
    if-eqz p5, :cond_7

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->name:Ljava/lang/String;

    :goto_5
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5570
    const-string/jumbo v5, "="

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5571
    iget v5, v0, Landroid/os/BatteryStats$BitDescription;->mask:I

    and-int/2addr v5, p2

    iget v6, v0, Landroid/os/BatteryStats$BitDescription;->shift:I

    shr-int v4, v5, v6

    .line 5572
    .local v4, "val":I
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    if-eqz v5, :cond_9

    if-ltz v4, :cond_9

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    array-length v5, v5

    if-ge v4, v5, :cond_9

    .line 5573
    if-eqz p5, :cond_8

    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->values:[Ljava/lang/String;

    aget-object v5, v5, v4

    :goto_6
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 5569
    .end local v4    # "val":I
    :cond_7
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortName:Ljava/lang/String;

    goto :goto_5

    .line 5573
    .restart local v4    # "val":I
    :cond_8
    iget-object v5, v0, Landroid/os/BatteryStats$BitDescription;->shortValues:[Ljava/lang/String;

    aget-object v5, v5, v4

    goto :goto_6

    .line 5575
    :cond_9
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_4

    .line 5580
    .end local v0    # "bd":Landroid/os/BatteryStats$BitDescription;
    .end local v4    # "val":I
    :cond_a
    if-nez v1, :cond_b

    if-eqz p3, :cond_b

    .line 5581
    if-eqz p5, :cond_c

    const-string/jumbo v5, " wake_lock="

    :goto_7
    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5582
    if-eqz p5, :cond_d

    .line 5583
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->uid:I

    invoke-static {p0, v5}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 5584
    const-string/jumbo v5, ":\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5585
    iget-object v5, p3, Landroid/os/BatteryStats$HistoryTag;->string:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5586
    const-string/jumbo v5, "\""

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5591
    :cond_b
    :goto_8
    return-void

    .line 5581
    :cond_c
    const-string/jumbo v5, ",w="

    goto :goto_7

    .line 5588
    :cond_d
    iget v5, p3, Landroid/os/BatteryStats$HistoryTag;->poolIdx:I

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->print(I)V

    goto :goto_8
.end method

.method private final printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 30
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .prologue
    .line 3062
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getIdleTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v6

    .line 3063
    .local v6, "idleTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getRxTimeCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v14

    .line 3064
    .local v14, "rxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getPowerCounter()Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v10

    .line 3067
    .local v10, "powerDrainMaMs":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    mul-long v24, v24, v26

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p6

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v24

    const-wide/16 v26, 0x3e8

    div-long v18, v24, v26

    .line 3068
    .local v18, "totalControllerActivityTimeMs":J
    const-wide/16 v20, 0x0

    .line 3069
    .local v20, "totalTxTimeMs":J
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v25

    const/16 v24, 0x0

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v26, v0

    :goto_0
    move/from16 v0, v24

    move/from16 v1, v26

    if-ge v0, v1, :cond_0

    aget-object v13, v25, v24

    .line 3070
    .local v13, "txState":Landroid/os/BatteryStats$LongCounter;
    move/from16 v0, p6

    invoke-virtual {v13, v0}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v28

    add-long v20, v20, v28

    .line 3069
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 3073
    .end local v13    # "txState":Landroid/os/BatteryStats$LongCounter;
    :cond_0
    add-long v24, v6, v14

    add-long v24, v24, v20

    sub-long v16, v18, v24

    .line 3075
    .local v16, "sleepTimeMs":J
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3076
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3077
    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3078
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3079
    const-string/jumbo v24, " Sleep time:  "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3080
    move-object/from16 v0, p2

    move-wide/from16 v1, v16

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3081
    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3082
    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3083
    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3084
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3086
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3087
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3089
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3090
    const-string/jumbo v24, " Idle time:   "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3091
    move-object/from16 v0, p2

    invoke-static {v0, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3092
    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3093
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v6, v7, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3094
    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3095
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3097
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3098
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3099
    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3100
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3101
    const-string/jumbo v24, " Rx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3102
    move-object/from16 v0, p2

    invoke-static {v0, v14, v15}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3103
    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3104
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v14, v15, v1, v2}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3105
    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3106
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3108
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3109
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3110
    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3111
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3112
    const-string/jumbo v24, " Tx time:     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3115
    const-string/jumbo v24, "Cellular"

    move-object/from16 v0, p4

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_1

    .line 3117
    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v12, v0, [Ljava/lang/String;

    .line 3118
    const-string/jumbo v24, "   less than 0dBm: "

    const/16 v25, 0x0

    aput-object v24, v12, v25

    .line 3119
    const-string/jumbo v24, "   0dBm to 8dBm: "

    const/16 v25, 0x1

    aput-object v24, v12, v25

    .line 3120
    const-string/jumbo v24, "   8dBm to 15dBm: "

    const/16 v25, 0x2

    aput-object v24, v12, v25

    .line 3121
    const-string/jumbo v24, "   15dBm to 20dBm: "

    const/16 v25, 0x3

    aput-object v24, v12, v25

    .line 3122
    const-string/jumbo v24, "   above 20dBm: "

    const/16 v25, 0x4

    aput-object v24, v12, v25

    .line 3128
    .local v12, "powerLevel":[Ljava/lang/String;
    :goto_1
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v24, v0

    array-length v0, v12

    move/from16 v25, v0

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 3129
    .local v9, "numTxLvls":I
    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v9, v0, :cond_2

    .line 3130
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    const/4 v8, 0x0

    .local v8, "lvl":I
    :goto_2
    if-ge v8, v9, :cond_3

    .line 3132
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    aget-object v24, v24, v8

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    .line 3133
    .local v22, "txLvlTimeMs":J
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3134
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3135
    const-string/jumbo v24, "    "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    aget-object v24, v12, v8

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    const-string/jumbo v24, " "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3139
    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3140
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3131
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 3125
    .end local v8    # "lvl":I
    .end local v9    # "numTxLvls":I
    .end local v12    # "powerLevel":[Ljava/lang/String;
    .end local v22    # "txLvlTimeMs":J
    :cond_1
    const/16 v24, 0x5

    move/from16 v0, v24

    new-array v12, v0, [Ljava/lang/String;

    const-string/jumbo v24, "[0]"

    const/16 v25, 0x0

    aput-object v24, v12, v25

    const-string/jumbo v24, "[1]"

    const/16 v25, 0x1

    aput-object v24, v12, v25

    const-string/jumbo v24, "[2]"

    const/16 v25, 0x2

    aput-object v24, v12, v25

    const-string/jumbo v24, "[3]"

    const/16 v25, 0x3

    aput-object v24, v12, v25

    const-string/jumbo v24, "[4]"

    const/16 v25, 0x4

    aput-object v24, v12, v25

    .line 3126
    .restart local v12    # "powerLevel":[Ljava/lang/String;
    goto/16 :goto_1

    .line 3145
    .restart local v9    # "numTxLvls":I
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/os/BatteryStats$ControllerActivityCounter;->getTxTimeCounters()[Landroid/os/BatteryStats$LongCounter;

    move-result-object v24

    const/16 v25, 0x0

    aget-object v24, v24, v25

    move-object/from16 v0, v24

    move/from16 v1, p6

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$LongCounter;->getCountLocked(I)J

    move-result-wide v22

    .line 3146
    .restart local v22    # "txLvlTimeMs":J
    move-object/from16 v0, p2

    move-wide/from16 v1, v22

    invoke-static {v0, v1, v2}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3147
    const-string/jumbo v24, "("

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3148
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    move-wide/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3149
    const-string/jumbo v24, ")"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3150
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3153
    .end local v22    # "txLvlTimeMs":J
    :cond_3
    const-wide/16 v24, 0x0

    cmp-long v24, v10, v24

    if-lez v24, :cond_4

    .line 3154
    const/16 v24, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3155
    invoke-virtual/range {p2 .. p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3156
    const-string/jumbo v24, "     "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3157
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3158
    const-string/jumbo v24, " Battery drain: "

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 3159
    long-to-double v0, v10

    move-wide/from16 v26, v0

    const-wide v28, 0x414b774000000000L    # 3600000.0

    div-double v26, v26, v28

    invoke-static/range {v26 .. v27}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v25

    .line 3158
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3160
    const-string/jumbo v24, "mAh"

    move-object/from16 v0, p2

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3161
    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, p1

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3163
    :cond_4
    return-void
.end method

.method private final printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "sb"    # Ljava/lang/StringBuilder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "controllerName"    # Ljava/lang/String;
    .param p5, "counter"    # Landroid/os/BatteryStats$ControllerActivityCounter;
    .param p6, "which"    # I

    .prologue
    .line 3054
    invoke-static {p5, p6}, Landroid/os/BatteryStats;->controllerActivityHasData(Landroid/os/BatteryStats$ControllerActivityCounter;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3055
    invoke-direct/range {p0 .. p6}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3057
    :cond_0
    return-void
.end method

.method private printSizeValue(Ljava/io/PrintWriter;J)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "size"    # J

    .prologue
    const/high16 v4, 0x46200000    # 10240.0f

    const/high16 v3, 0x44800000    # 1024.0f

    .line 5958
    long-to-float v0, p2

    .line 5959
    .local v0, "result":F
    const-string/jumbo v1, ""

    .line 5960
    .local v1, "suffix":Ljava/lang/String;
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_0

    .line 5961
    const-string/jumbo v1, "KB"

    .line 5962
    div-float/2addr v0, v3

    .line 5964
    :cond_0
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_1

    .line 5965
    const-string/jumbo v1, "MB"

    .line 5966
    div-float/2addr v0, v3

    .line 5968
    :cond_1
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_2

    .line 5969
    const-string/jumbo v1, "GB"

    .line 5970
    div-float/2addr v0, v3

    .line 5972
    :cond_2
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_3

    .line 5973
    const-string/jumbo v1, "TB"

    .line 5974
    div-float/2addr v0, v3

    .line 5976
    :cond_3
    cmpl-float v2, v0, v4

    if-ltz v2, :cond_4

    .line 5977
    const-string/jumbo v1, "PB"

    .line 5978
    div-float/2addr v0, v3

    .line 5980
    :cond_4
    float-to-int v2, v0

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5981
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5982
    return-void
.end method

.method private static final printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z
    .locals 15
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p3, "rawRealtimeUs"    # J
    .param p5, "which"    # I
    .param p6, "prefix"    # Ljava/lang/String;
    .param p7, "type"    # Ljava/lang/String;

    .prologue
    .line 2864
    if-eqz p2, :cond_3

    .line 2866
    invoke-virtual/range {p2 .. p5}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    .line 2867
    const-wide/16 v12, 0x1f4

    .line 2866
    add-long/2addr v10, v12

    .line 2867
    const-wide/16 v12, 0x3e8

    .line 2866
    div-long v8, v10, v12

    .line 2868
    .local v8, "totalTimeMs":J
    move-object/from16 v0, p2

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v2

    .line 2869
    .local v2, "count":I
    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-eqz v3, :cond_3

    .line 2870
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2871
    move-object/from16 v0, p1

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2872
    const-string/jumbo v3, "    "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2873
    move-object/from16 v0, p1

    move-object/from16 v1, p7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2874
    const-string/jumbo v3, ": "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2875
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2876
    const-string/jumbo v3, "realtime ("

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2877
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2878
    const-string/jumbo v3, " times)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2879
    const-wide/16 v10, 0x3e8

    div-long v10, p3, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v6

    .line 2880
    .local v6, "maxDurationMs":J
    const-wide/16 v10, 0x0

    cmp-long v3, v6, v10

    if-ltz v3, :cond_0

    .line 2881
    const-string/jumbo v3, " max="

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2882
    move-object/from16 v0, p1

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2884
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2885
    const-wide/16 v10, 0x3e8

    div-long v10, p3, v10

    move-object/from16 v0, p2

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v4

    .line 2886
    .local v4, "currentMs":J
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-ltz v3, :cond_2

    .line 2887
    const-string/jumbo v3, " (running for "

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2888
    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2889
    const-string/jumbo v3, "ms)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2894
    .end local v4    # "currentMs":J
    :cond_1
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2895
    const/4 v3, 0x1

    return v3

    .line 2891
    .restart local v4    # "currentMs":J
    :cond_2
    const-string/jumbo v3, " (running)"

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2898
    .end local v2    # "count":I
    .end local v4    # "currentMs":J
    .end local v6    # "maxDurationMs":J
    .end local v8    # "totalTimeMs":J
    :cond_3
    const/4 v3, 0x0

    return v3
.end method

.method private static final printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 16
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2808
    if-eqz p1, :cond_5

    .line 2809
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v12

    .line 2811
    .local v12, "totalTimeMillis":J
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 2812
    .local v4, "count":I
    const-wide/16 v14, 0x0

    cmp-long v5, v12, v14

    if-eqz v5, :cond_5

    .line 2813
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2814
    move-object/from16 v0, p0

    invoke-static {v0, v12, v13}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 2815
    if-eqz p4, :cond_0

    .line 2816
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2817
    const/16 v5, 0x20

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2819
    :cond_0
    const/16 v5, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2820
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2821
    const-string/jumbo v5, " times)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2822
    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    .line 2823
    .local v8, "maxDurationMs":J
    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-ltz v5, :cond_1

    .line 2824
    const-string/jumbo v5, " max="

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2825
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2828
    :cond_1
    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    .line 2829
    .local v10, "totalDurMs":J
    cmp-long v5, v10, v12

    if-lez v5, :cond_2

    .line 2830
    const-string/jumbo v5, " actual="

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2831
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2833
    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 2834
    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v6

    .line 2835
    .local v6, "currentMs":J
    const-wide/16 v14, 0x0

    cmp-long v5, v6, v14

    if-ltz v5, :cond_4

    .line 2836
    const-string/jumbo v5, " (running for "

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2837
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2838
    const-string/jumbo v5, "ms)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2844
    .end local v6    # "currentMs":J
    :cond_3
    :goto_0
    const-string/jumbo v5, ", "

    return-object v5

    .line 2840
    .restart local v6    # "currentMs":J
    :cond_4
    const-string/jumbo v5, " (running)"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2847
    .end local v4    # "count":I
    .end local v6    # "currentMs":J
    .end local v8    # "maxDurationMs":J
    .end local v10    # "totalDurMs":J
    .end local v12    # "totalTimeMillis":J
    :cond_5
    return-object p6
.end method

.method private static final printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 18
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "timer"    # Landroid/os/BatteryStats$Timer;
    .param p2, "elapsedRealtimeUs"    # J
    .param p4, "name"    # Ljava/lang/String;
    .param p5, "which"    # I
    .param p6, "linePrefix"    # Ljava/lang/String;

    .prologue
    .line 2914
    const-wide/16 v12, 0x0

    .line 2915
    .local v12, "totalTimeMicros":J
    const/4 v4, 0x0

    .line 2916
    .local v4, "count":I
    const-wide/16 v8, 0x0

    .line 2917
    .local v8, "max":J
    const-wide/16 v6, 0x0

    .line 2918
    .local v6, "current":J
    const-wide/16 v10, 0x0

    .line 2919
    .local v10, "totalDuration":J
    if-eqz p1, :cond_0

    .line 2920
    move-object/from16 v0, p1

    move-wide/from16 v1, p2

    move/from16 v3, p5

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    .line 2921
    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v4

    .line 2922
    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getCurrentDurationMsLocked(J)J

    move-result-wide v6

    .line 2923
    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v8

    .line 2924
    const-wide/16 v14, 0x3e8

    div-long v14, p2, v14

    move-object/from16 v0, p1

    invoke-virtual {v0, v14, v15}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v10

    .line 2926
    :cond_0
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2927
    const-wide/16 v14, 0x1f4

    add-long/2addr v14, v12

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2928
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2929
    if-eqz p4, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p4

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v14, ","

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2930
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2931
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2932
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2933
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2934
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2938
    if-eqz p4, :cond_1

    .line 2939
    const/16 v5, 0x2c

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2940
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2942
    :cond_1
    const-string/jumbo v5, ","

    return-object v5

    .line 2929
    :cond_2
    const-string/jumbo v5, ""

    goto :goto_0
.end method

.method private printmAh(Ljava/io/PrintWriter;D)V
    .locals 2
    .param p1, "printer"    # Ljava/io/PrintWriter;
    .param p2, "power"    # D

    .prologue
    .line 3882
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 3883
    return-void
.end method

.method private printmAh(Ljava/lang/StringBuilder;D)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;
    .param p2, "power"    # D

    .prologue
    .line 3886
    invoke-static {p2, p3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3887
    return-void
.end method


# virtual methods
.method public abstract commitCurrentHistoryBatchLocked()V
.end method

.method public abstract computeBatteryRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffRealtime(JI)J
.end method

.method public abstract computeBatteryScreenOffUptime(JI)J
.end method

.method public abstract computeBatteryTimeRemaining(J)J
.end method

.method public abstract computeBatteryUptime(JI)J
.end method

.method public abstract computeChargeTimeRemaining(J)J
.end method

.method public abstract computeRealtime(JI)J
.end method

.method public abstract computeUptime(JI)J
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;II)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I

    .prologue
    .line 3169
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    .line 3170
    return-void
.end method

.method public final dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V
    .locals 265
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "which"    # I
    .param p4, "reqUid"    # I
    .param p5, "wifiOnly"    # Z

    .prologue
    .line 3179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    mul-long v148, v12, v18

    .line 3180
    .local v148, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    mul-long v10, v12, v18

    .line 3181
    .local v10, "rawRealtime":J
    const-wide/16 v12, 0x1f4

    add-long/2addr v12, v10

    const-wide/16 v18, 0x3e8

    div-long v146, v12, v18

    .line 3182
    .local v146, "rawRealtimeMs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v32

    .line 3183
    .local v32, "batteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v224

    .line 3184
    .local v224, "whichBatteryUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v218

    .line 3185
    .local v218, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v222

    .line 3186
    .local v222, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v220

    .line 3188
    .local v220, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v184

    .line 3189
    .local v184, "totalRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v148

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v194

    .line 3190
    .local v194, "totalUptime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v160

    .line 3191
    .local v160, "screenOnTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v152

    .line 3192
    .local v152, "screenDozeTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v88

    .line 3193
    .local v88, "interactiveTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v140

    .line 3194
    .local v140, "powerSaveModeEnabledTime":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v62

    .line 3196
    .local v62, "deviceIdleModeLightTime":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v60

    .line 3198
    .local v60, "deviceIdleModeFullTime":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v66

    .line 3200
    .local v66, "deviceLightIdlingTime":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v10, v11, v1}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v64

    .line 3202
    .local v64, "deviceIdlingTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v54

    .line 3203
    .local v54, "connChanges":I
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v138

    .line 3204
    .local v138, "phoneOnTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischarge(I)J

    move-result-wide v68

    .line 3205
    .local v68, "dischargeCount":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenOff(I)J

    move-result-wide v72

    .line 3206
    .local v72, "dischargeScreenOffCount":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenDoze(I)J

    move-result-wide v70

    .line 3208
    .local v70, "dischargeScreenDozeCount":J
    new-instance v16, Ljava/lang/StringBuilder;

    const/16 v4, 0x80

    move-object/from16 v0, v16

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3210
    .local v16, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v197

    .line 3211
    .local v197, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v197 .. v197}, Landroid/util/SparseArray;->size()I

    move-result v25

    .line 3213
    .local v25, "NU":I
    sget-object v4, Landroid/os/BatteryStats;->STAT_NAMES:[Ljava/lang/String;

    move/from16 v0, p3

    aget-object v6, v4, v0

    .line 3216
    .local v6, "category":Ljava/lang/String;
    const-string/jumbo v7, "bt"

    const/16 v4, 0xc

    new-array v8, v4, [Ljava/lang/Object;

    .line 3217
    move/from16 v0, p3

    if-nez v0, :cond_2

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    :goto_0
    const/4 v12, 0x0

    aput-object v4, v8, v12

    .line 3218
    const-wide/16 v12, 0x3e8

    div-long v12, v218, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v224, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    .line 3219
    const-wide/16 v12, 0x3e8

    div-long v12, v184, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v194, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    .line 3220
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x5

    aput-object v4, v8, v12

    .line 3221
    const-wide/16 v12, 0x3e8

    div-long v12, v220, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x6

    aput-object v4, v8, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v222, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v8, v12

    .line 3222
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0x8

    aput-object v4, v8, v12

    .line 3223
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0x9

    aput-object v4, v8, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v12, 0xa

    aput-object v4, v8, v12

    .line 3224
    const-wide/16 v12, 0x3e8

    div-long v12, v152, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/16 v12, 0xb

    aput-object v4, v8, v12

    .line 3216
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3228
    const-wide/16 v78, 0x0

    .line 3229
    .local v78, "fullWakeLockTimeTotal":J
    const-wide/16 v136, 0x0

    .line 3231
    .local v136, "partialWakeLockTimeTotal":J
    const/16 v95, 0x0

    .local v95, "iu":I
    :goto_1
    move/from16 v0, v95

    move/from16 v1, v25

    if-ge v0, v1, :cond_4

    .line 3232
    move-object/from16 v0, v197

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v196

    check-cast v196, Landroid/os/BatteryStats$Uid;

    .line 3235
    .local v196, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v215

    .line 3236
    .local v215, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v215 .. v215}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v96, v4, -0x1

    .local v96, "iw":I
    :goto_2
    if-ltz v96, :cond_3

    .line 3237
    move-object/from16 v0, v215

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v264, v0

    move-object/from16 v0, v264

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v264, v0

    .line 3239
    .local v264, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v4, 0x1

    move-object/from16 v0, v264

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v75

    .line 3240
    .local v75, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v75, :cond_0

    .line 3241
    move-object/from16 v0, v75

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v78, v78, v12

    .line 3245
    :cond_0
    const/4 v4, 0x0

    move-object/from16 v0, v264

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v135

    .line 3246
    .local v135, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v135, :cond_1

    .line 3247
    move-object/from16 v0, v135

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    add-long v136, v136, v12

    .line 3236
    :cond_1
    add-int/lit8 v96, v96, -0x1

    goto :goto_2

    .line 3217
    .end local v75    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v78    # "fullWakeLockTimeTotal":J
    .end local v95    # "iu":I
    .end local v96    # "iw":I
    .end local v135    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v136    # "partialWakeLockTimeTotal":J
    .end local v196    # "u":Landroid/os/BatteryStats$Uid;
    .end local v215    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v264    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_2
    const-string/jumbo v4, "N/A"

    goto/16 :goto_0

    .line 3231
    .restart local v78    # "fullWakeLockTimeTotal":J
    .restart local v95    # "iu":I
    .restart local v96    # "iw":I
    .restart local v136    # "partialWakeLockTimeTotal":J
    .restart local v196    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v215    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_3
    add-int/lit8 v95, v95, 0x1

    goto :goto_1

    .line 3254
    .end local v96    # "iw":I
    .end local v196    # "u":Landroid/os/BatteryStats$Uid;
    .end local v215    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_4
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v122

    .line 3255
    .local v122, "mobileRxTotalBytes":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v126

    .line 3256
    .local v126, "mobileTxTotalBytes":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v246

    .line 3257
    .local v246, "wifiRxTotalBytes":J
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v258, v0

    .line 3258
    .local v258, "wifiTxTotalBytes":J
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v124

    .line 3259
    .local v124, "mobileRxTotalPackets":J
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v128

    .line 3260
    .local v128, "mobileTxTotalPackets":J
    const/4 v4, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v248

    .line 3261
    .local v248, "wifiRxTotalPackets":J
    const/4 v4, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v260, v0

    .line 3262
    .local v260, "wifiTxTotalPackets":J
    const/4 v4, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v50

    .line 3263
    .local v50, "btRxTotalBytes":J
    const/4 v4, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v52

    .line 3264
    .local v52, "btTxTotalBytes":J
    const-string/jumbo v4, "gn"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    .line 3265
    invoke-static/range {v122 .. v123}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v126 .. v127}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-static/range {v246 .. v247}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v258 .. v259}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3266
    invoke-static/range {v124 .. v125}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    invoke-static/range {v248 .. v249}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    invoke-static/range {v260 .. v261}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    .line 3267
    invoke-static/range {v50 .. v51}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    invoke-static/range {v52 .. v53}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    .line 3264
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3270
    const-string/jumbo v7, "gmcd"

    .line 3271
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    .line 3270
    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3274
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v234

    .line 3275
    .local v234, "wifiOnTime":J
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v244

    .line 3276
    .local v244, "wifiRunningTime":J
    const-string/jumbo v4, "gwfl"

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v12, 0x3e8

    div-long v12, v234, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    .line 3277
    const-wide/16 v12, 0x3e8

    div-long v12, v244, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    .line 3276
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3279
    const-string/jumbo v7, "gwfcd"

    .line 3280
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    .line 3279
    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3283
    const-string/jumbo v7, "gble"

    .line 3284
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    .line 3283
    const/4 v5, 0x0

    move-object/from16 v4, p2

    move/from16 v9, p3

    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3287
    const-string/jumbo v4, "m"

    const/16 v7, 0x15

    new-array v7, v7, [Ljava/lang/Object;

    .line 3288
    const-wide/16 v12, 0x3e8

    div-long v12, v160, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v138, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3289
    const-wide/16 v12, 0x3e8

    div-long v12, v78, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v136, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3290
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    .line 3291
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveAdjustedTime(I)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v88, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    .line 3292
    const-wide/16 v12, 0x3e8

    div-long v12, v140, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v54 .. v54}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v60, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    .line 3293
    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0xa

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v64, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xb

    aput-object v8, v7, v12

    .line 3294
    const/4 v8, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0xc

    aput-object v8, v7, v12

    .line 3295
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveCount(I)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0xd

    aput-object v8, v7, v12

    .line 3296
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMobileRadioActiveUnknownTime(I)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xe

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v62, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xf

    aput-object v8, v7, v12

    .line 3297
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x10

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v66, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x11

    aput-object v8, v7, v12

    .line 3298
    const/4 v8, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v8, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x12

    aput-object v8, v7, v12

    .line 3299
    const/4 v8, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x13

    aput-object v8, v7, v12

    .line 3300
    const/4 v8, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x14

    aput-object v8, v7, v12

    .line 3287
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3303
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 3304
    .local v31, "args":[Ljava/lang/Object;
    const/16 v84, 0x0

    .local v84, "i":I
    :goto_3
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_5

    .line 3305
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3304
    add-int/lit8 v84, v84, 0x1

    goto :goto_3

    .line 3307
    :cond_5
    const-string/jumbo v4, "br"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3310
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 3311
    const/16 v84, 0x0

    :goto_4
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_6

    .line 3312
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3311
    add-int/lit8 v84, v84, 0x1

    goto :goto_4

    .line 3314
    :cond_6
    const-string/jumbo v4, "sgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3315
    const-string/jumbo v4, "sst"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    .line 3316
    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats;->getPhoneSignalScanningTime(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    .line 3315
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3317
    const/16 v84, 0x0

    :goto_5
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_7

    .line 3318
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3317
    add-int/lit8 v84, v84, 0x1

    goto :goto_5

    .line 3320
    :cond_7
    const-string/jumbo v4, "sgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3323
    const/16 v4, 0x11

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 3324
    const/16 v84, 0x0

    :goto_6
    const/16 v4, 0x11

    move/from16 v0, v84

    if-ge v0, v4, :cond_8

    .line 3325
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3324
    add-int/lit8 v84, v84, 0x1

    goto :goto_6

    .line 3327
    :cond_8
    const-string/jumbo v4, "dct"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3328
    const/16 v84, 0x0

    :goto_7
    const/16 v4, 0x11

    move/from16 v0, v84

    if-ge v0, v4, :cond_9

    .line 3329
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getPhoneDataConnectionCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3328
    add-int/lit8 v84, v84, 0x1

    goto :goto_7

    .line 3331
    :cond_9
    const-string/jumbo v4, "dcc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3334
    const/16 v4, 0x8

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 3335
    const/16 v84, 0x0

    :goto_8
    const/16 v4, 0x8

    move/from16 v0, v84

    if-ge v0, v4, :cond_a

    .line 3336
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3335
    add-int/lit8 v84, v84, 0x1

    goto :goto_8

    .line 3338
    :cond_a
    const-string/jumbo v4, "wst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3339
    const/16 v84, 0x0

    :goto_9
    const/16 v4, 0x8

    move/from16 v0, v84

    if-ge v0, v4, :cond_b

    .line 3340
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3339
    add-int/lit8 v84, v84, 0x1

    goto :goto_9

    .line 3342
    :cond_b
    const-string/jumbo v4, "wsc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3345
    const/16 v4, 0xd

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 3346
    const/16 v84, 0x0

    :goto_a
    const/16 v4, 0xd

    move/from16 v0, v84

    if-ge v0, v4, :cond_c

    .line 3347
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3346
    add-int/lit8 v84, v84, 0x1

    goto :goto_a

    .line 3349
    :cond_c
    const-string/jumbo v4, "wsst"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3350
    const/16 v84, 0x0

    :goto_b
    const/16 v4, 0xd

    move/from16 v0, v84

    if-ge v0, v4, :cond_d

    .line 3351
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSupplStateCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3350
    add-int/lit8 v84, v84, 0x1

    goto :goto_b

    .line 3353
    :cond_d
    const-string/jumbo v4, "wssc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3356
    const/4 v4, 0x5

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 3357
    const/16 v84, 0x0

    :goto_c
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_e

    .line 3358
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v12

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3357
    add-int/lit8 v84, v84, 0x1

    goto :goto_c

    .line 3360
    :cond_e
    const-string/jumbo v4, "wsgt"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3361
    const/16 v84, 0x0

    :goto_d
    const/4 v4, 0x5

    move/from16 v0, v84

    if-ge v0, v4, :cond_f

    .line 3362
    move-object/from16 v0, p0

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getWifiSignalStrengthCount(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3361
    add-int/lit8 v84, v84, 0x1

    goto :goto_d

    .line 3364
    :cond_f
    const-string/jumbo v4, "wsgc"

    const/4 v7, 0x0

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v7, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3366
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_10

    .line 3367
    const-string/jumbo v4, "lv"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    .line 3368
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3367
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3371
    :cond_10
    const/4 v4, 0x2

    move/from16 v0, p3

    if-ne v0, v4, :cond_11

    .line 3372
    const-string/jumbo v4, "dc"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    .line 3373
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v12

    sub-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    .line 3374
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v12

    sub-int/2addr v8, v12

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3375
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3376
    const-wide/16 v12, 0x3e8

    div-long v12, v68, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v72, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    .line 3377
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v70, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    .line 3372
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3387
    :goto_e
    move/from16 v0, p4

    if-gez v0, :cond_13

    .line 3388
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v99

    .line 3389
    .local v99, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v99 .. v99}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_12

    .line 3390
    invoke-interface/range {v99 .. v99}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v74

    .local v74, "ent$iterator":Ljava/util/Iterator;
    :goto_f
    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    .line 3391
    .local v59, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3392
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/BatteryStats$Timer;

    const-string/jumbo v14, ""

    const/4 v12, 0x0

    move-object/from16 v8, v16

    move/from16 v13, p3

    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 3393
    const-string/jumbo v7, "kwl"

    const/4 v4, 0x2

    new-array v8, v4, [Ljava/lang/Object;

    .line 3394
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    .line 3393
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_f

    .line 3379
    .end local v59    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v74    # "ent$iterator":Ljava/util/Iterator;
    .end local v99    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_11
    const-string/jumbo v4, "dc"

    const/16 v7, 0x8

    new-array v7, v7, [Ljava/lang/Object;

    .line 3380
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3381
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    .line 3382
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3383
    const-wide/16 v12, 0x3e8

    div-long v12, v68, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v72, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    .line 3384
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v70, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    .line 3379
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_e

    .line 3397
    .restart local v99    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v216

    .line 3398
    .local v216, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v216 .. v216}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_13

    .line 3399
    invoke-interface/range {v216 .. v216}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v74

    .restart local v74    # "ent$iterator":Ljava/util/Iterator;
    :goto_10
    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    .line 3402
    .restart local v59    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v10, v11, v0}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v190

    .line 3403
    .local v190, "totalTimeMicros":J
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Timer;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    .line 3404
    .local v55, "count":I
    const-string/jumbo v7, "wr"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    .line 3405
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    const-wide/16 v12, 0x1f4

    add-long v12, v12, v190

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    .line 3404
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_10

    .line 3410
    .end local v55    # "count":I
    .end local v59    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v74    # "ent$iterator":Ljava/util/Iterator;
    .end local v99    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v190    # "totalTimeMicros":J
    .end local v216    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v151

    .line 3411
    .local v151, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getScreenOffRpmStats()Ljava/util/Map;

    move-result-object v156

    .line 3412
    .local v156, "screenOffRpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v151 .. v151}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_16

    .line 3413
    invoke-interface/range {v151 .. v151}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v74

    .restart local v74    # "ent$iterator":Ljava/util/Iterator;
    :goto_11
    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-interface/range {v74 .. v74}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v59

    check-cast v59, Ljava/util/Map$Entry;

    .line 3414
    .restart local v59    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3415
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v192

    check-cast v192, Landroid/os/BatteryStats$Timer;

    .line 3416
    .local v192, "totalTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v192

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v180, v12, v18

    .line 3417
    .local v180, "timeMs":J
    move-object/from16 v0, v192

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    .line 3418
    .restart local v55    # "count":I
    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, v156

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v157

    check-cast v157, Landroid/os/BatteryStats$Timer;

    .line 3419
    .local v157, "screenOffTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v157, :cond_14

    .line 3420
    move-object/from16 v0, v157

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v158, v12, v18

    .line 3421
    .local v158, "screenOffTimeMs":J
    :goto_12
    if-eqz v157, :cond_15

    .line 3422
    move-object/from16 v0, v157

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v154

    .line 3428
    .local v154, "screenOffCount":I
    :goto_13
    const-string/jumbo v7, "rpm"

    const/4 v4, 0x3

    new-array v8, v4, [Ljava/lang/Object;

    .line 3429
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {v59 .. v59}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    invoke-static/range {v180 .. v181}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    .line 3428
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_11

    .line 3420
    .end local v154    # "screenOffCount":I
    .end local v158    # "screenOffTimeMs":J
    :cond_14
    const-wide/16 v158, 0x0

    .restart local v158    # "screenOffTimeMs":J
    goto :goto_12

    .line 3422
    :cond_15
    const/16 v154, 0x0

    .restart local v154    # "screenOffCount":I
    goto :goto_13

    .line 3434
    .end local v55    # "count":I
    .end local v59    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v74    # "ent$iterator":Ljava/util/Iterator;
    .end local v154    # "screenOffCount":I
    .end local v157    # "screenOffTimer":Landroid/os/BatteryStats$Timer;
    .end local v158    # "screenOffTimeMs":J
    .end local v180    # "timeMs":J
    .end local v192    # "totalTimer":Landroid/os/BatteryStats$Timer;
    :cond_16
    new-instance v83, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v4, 0x0

    move-object/from16 v0, v83

    move-object/from16 v1, p1

    move/from16 v2, p5

    invoke-direct {v0, v1, v4, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 3435
    .local v83, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v83

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 3436
    const/4 v4, -0x1

    move-object/from16 v0, v83

    move/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 3437
    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v166

    .line 3438
    .local v166, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v166, :cond_18

    invoke-interface/range {v166 .. v166}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_18

    .line 3439
    const-string/jumbo v4, "pws"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    .line 3440
    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    .line 3441
    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3442
    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    .line 3443
    invoke-virtual/range {v83 .. v83}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v12

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3439
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3444
    const/16 v84, 0x0

    :goto_14
    invoke-interface/range {v166 .. v166}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v84

    if-ge v0, v4, :cond_18

    .line 3445
    move-object/from16 v0, v166

    move/from16 v1, v84

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Lcom/android/internal/os/BatterySipper;

    .line 3446
    .local v44, "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v5, 0x0

    .line 3448
    .local v5, "uid":I
    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v4

    move-object/from16 v0, v44

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v4, v4, v7

    packed-switch v4, :pswitch_data_0

    .line 3488
    const-string/jumbo v100, "???"

    .line 3490
    .local v100, "label":Ljava/lang/String;
    :goto_15
    const-string/jumbo v7, "pwi"

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v100, v8, v4

    .line 3491
    move-object/from16 v0, v44

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    .line 3492
    move-object/from16 v0, v44

    iget-boolean v4, v0, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v4, :cond_17

    const/4 v4, 0x1

    :goto_16
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    .line 3493
    move-object/from16 v0, v44

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    .line 3494
    move-object/from16 v0, v44

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    invoke-static {v12, v13}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    .line 3490
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3444
    add-int/lit8 v84, v84, 0x1

    goto :goto_14

    .line 3450
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v100, "idle"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3453
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v100, "cell"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3456
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v100, "phone"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3459
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v100, "wifi"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3462
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v100, "blue"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3465
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_5
    const-string/jumbo v100, "scrn"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3468
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_6
    const-string/jumbo v100, "flashlight"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3471
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v0, v44

    iget-object v4, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    .line 3472
    const-string/jumbo v100, "uid"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3475
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v0, v44

    iget v4, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    const/4 v7, 0x0

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 3476
    const-string/jumbo v100, "user"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3479
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_9
    const-string/jumbo v100, "unacc"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3482
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_a
    const-string/jumbo v100, "over"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3485
    .end local v100    # "label":Ljava/lang/String;
    :pswitch_b
    const-string/jumbo v100, "camera"

    .restart local v100    # "label":Ljava/lang/String;
    goto :goto_15

    .line 3492
    :cond_17
    const/4 v4, 0x0

    goto :goto_16

    .line 3498
    .end local v5    # "uid":I
    .end local v44    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v100    # "label":Ljava/lang/String;
    :cond_18
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v58

    .line 3499
    .local v58, "cpuFreqs":[J
    if-eqz v58, :cond_1b

    .line 3500
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3501
    const/16 v84, 0x0

    :goto_17
    move-object/from16 v0, v58

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_1a

    .line 3502
    if-nez v84, :cond_19

    const-string/jumbo v4, ""

    :goto_18
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v12, v58, v84

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3501
    add-int/lit8 v84, v84, 0x1

    goto :goto_17

    .line 3502
    :cond_19
    const-string/jumbo v4, ","

    goto :goto_18

    .line 3504
    :cond_1a
    const-string/jumbo v4, "gcf"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v8, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3507
    :cond_1b
    const/16 v95, 0x0

    :goto_19
    move/from16 v0, v95

    move/from16 v1, v25

    if-ge v0, v1, :cond_58

    .line 3508
    move-object/from16 v0, v197

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 3509
    .restart local v5    # "uid":I
    move/from16 v0, p4

    if-ltz v0, :cond_1d

    move/from16 v0, p4

    if-eq v5, v0, :cond_1d

    .line 3507
    :cond_1c
    add-int/lit8 v95, v95, 0x1

    goto :goto_19

    .line 3512
    :cond_1d
    move-object/from16 v0, v197

    move/from16 v1, v95

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v196

    check-cast v196, Landroid/os/BatteryStats$Uid;

    .line 3515
    .restart local v196    # "u":Landroid/os/BatteryStats$Uid;
    const/4 v4, 0x0

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v110

    .line 3516
    .local v110, "mobileBytesRx":J
    const/4 v4, 0x1

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v112

    .line 3517
    .local v112, "mobileBytesTx":J
    const/4 v4, 0x2

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v230

    .line 3518
    .local v230, "wifiBytesRx":J
    const/4 v4, 0x3

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v232

    .line 3519
    .local v232, "wifiBytesTx":J
    const/4 v4, 0x0

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v118

    .line 3520
    .local v118, "mobilePacketsRx":J
    const/4 v4, 0x1

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v120

    .line 3521
    .local v120, "mobilePacketsTx":J
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v104

    .line 3522
    .local v104, "mobileActiveTime":J
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v102

    .line 3523
    .local v102, "mobileActiveCount":I
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v130

    .line 3524
    .local v130, "mobileWakeup":J
    const/4 v4, 0x2

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v240

    .line 3525
    .local v240, "wifiPacketsRx":J
    const/4 v4, 0x3

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v242

    .line 3526
    .local v242, "wifiPacketsTx":J
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    move-wide/16 v262, v0

    .line 3527
    .local v262, "wifiWakeup":J
    const/4 v4, 0x4

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v46

    .line 3528
    .local v46, "btBytesRx":J
    const/4 v4, 0x5

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v48

    .line 3530
    .local v48, "btBytesTx":J
    const/4 v4, 0x6

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v106

    .line 3532
    .local v106, "mobileBytesBgRx":J
    const/4 v4, 0x7

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v108

    .line 3534
    .local v108, "mobileBytesBgTx":J
    const/16 v4, 0x8

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v226

    .line 3535
    .local v226, "wifiBytesBgRx":J
    const/16 v4, 0x9

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v228

    .line 3536
    .local v228, "wifiBytesBgTx":J
    const/4 v4, 0x6

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v114

    .line 3538
    .local v114, "mobilePacketsBgRx":J
    const/4 v4, 0x7

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v116

    .line 3540
    .local v116, "mobilePacketsBgTx":J
    const/16 v4, 0x8

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v236

    .line 3542
    .local v236, "wifiPacketsBgRx":J
    const/16 v4, 0x9

    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v4, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v238

    .line 3545
    .local v238, "wifiPacketsBgTx":J
    const-wide/16 v12, 0x0

    cmp-long v4, v110, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v112, v12

    if-lez v4, :cond_24

    .line 3553
    :cond_1e
    :goto_1a
    const-string/jumbo v4, "nt"

    const/16 v7, 0x16

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v110 .. v111}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v112 .. v113}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3554
    invoke-static/range {v230 .. v231}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v232 .. v233}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3555
    invoke-static/range {v118 .. v119}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v120 .. v121}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    .line 3556
    invoke-static/range {v240 .. v241}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    invoke-static/range {v242 .. v243}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    .line 3557
    invoke-static/range {v104 .. v105}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    invoke-static/range {v102 .. v102}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    .line 3558
    invoke-static/range {v46 .. v47}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xa

    aput-object v8, v7, v12

    invoke-static/range {v48 .. v49}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xb

    aput-object v8, v7, v12

    invoke-static/range {v130 .. v131}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xc

    aput-object v8, v7, v12

    invoke-static/range {v262 .. v263}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xd

    aput-object v8, v7, v12

    .line 3559
    invoke-static/range {v106 .. v107}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xe

    aput-object v8, v7, v12

    invoke-static/range {v108 .. v109}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xf

    aput-object v8, v7, v12

    invoke-static/range {v226 .. v227}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x10

    aput-object v8, v7, v12

    invoke-static/range {v228 .. v229}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x11

    aput-object v8, v7, v12

    .line 3560
    invoke-static/range {v114 .. v115}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x12

    aput-object v8, v7, v12

    invoke-static/range {v116 .. v117}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x13

    aput-object v8, v7, v12

    invoke-static/range {v236 .. v237}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x14

    aput-object v8, v7, v12

    invoke-static/range {v238 .. v239}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x15

    aput-object v8, v7, v12

    .line 3553
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3565
    :cond_1f
    const-string/jumbo v7, "mcd"

    .line 3566
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    .line 3565
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3569
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v80

    .line 3570
    .local v80, "fullWifiLockOnTime":J
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0

    move-wide/16 v256, v0

    .line 3571
    .local v256, "wifiScanTime":J
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v254

    .line 3572
    .local v254, "wifiScanCount":I
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v255

    .line 3574
    .local v255, "wifiScanCountBg":I
    move-object/from16 v0, v196

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v250, v12, v18

    .line 3575
    .local v250, "wifiScanActualTimeMs":J
    move-object/from16 v0, v196

    invoke-virtual {v0, v10, v11}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    .line 3576
    const-wide/16 v18, 0x3e8

    .line 3575
    div-long v252, v12, v18

    .line 3577
    .local v252, "wifiScanActualTimeMsBg":J
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v198

    .line 3578
    .local v198, "uidWifiRunningTime":J
    const-wide/16 v12, 0x0

    cmp-long v4, v80, v12

    if-nez v4, :cond_20

    const-wide/16 v12, 0x0

    move-wide/from16 v0, v256

    cmp-long v4, v0, v12

    if-eqz v4, :cond_25

    .line 3581
    :cond_20
    :goto_1b
    const-string/jumbo v4, "wfl"

    const/16 v7, 0xa

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v80 .. v81}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v256 .. v257}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3582
    invoke-static/range {v198 .. v199}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v254 .. v254}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3583
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    .line 3584
    invoke-static/range {v255 .. v255}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v250 .. v251}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    invoke-static/range {v252 .. v253}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    .line 3581
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3587
    :cond_21
    const-string/jumbo v7, "wfcd"

    .line 3588
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    .line 3587
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3590
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v42

    .line 3591
    .local v42, "bleTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v42, :cond_22

    .line 3593
    move-object/from16 v0, v42

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    .line 3594
    const-wide/16 v18, 0x3e8

    .line 3593
    div-long v188, v12, v18

    .line 3595
    .local v188, "totalTime":J
    const-wide/16 v12, 0x0

    cmp-long v4, v188, v12

    if-eqz v4, :cond_22

    .line 3596
    move-object/from16 v0, v42

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    .line 3597
    .restart local v55    # "count":I
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v43

    .line 3598
    .local v43, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v43, :cond_26

    move-object/from16 v0, v43

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v56

    .line 3600
    .local v56, "countBg":I
    :goto_1c
    move-object/from16 v0, v42

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v26

    .line 3601
    .local v26, "actualTime":J
    if-eqz v43, :cond_27

    .line 3602
    move-object/from16 v0, v43

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v28

    .line 3604
    .local v28, "actualTimeBg":J
    :goto_1d
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 3605
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v145

    .line 3606
    .local v145, "resultCount":I
    :goto_1e
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    if-eqz v4, :cond_29

    .line 3607
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v150

    .line 3609
    .local v150, "resultCountBg":I
    :goto_1f
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v204

    .line 3610
    .local v204, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v204, :cond_2a

    .line 3611
    move-object/from16 v0, v204

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v206

    .line 3612
    .local v206, "unoptimizedScanTotalTime":J
    :goto_20
    if-eqz v204, :cond_2b

    .line 3613
    move-object/from16 v0, v204

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v200

    .line 3616
    .local v200, "unoptimizedScanMaxTime":J
    :goto_21
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v205

    .line 3617
    .local v205, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v205, :cond_2c

    .line 3618
    move-object/from16 v0, v205

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v208

    .line 3619
    .local v208, "unoptimizedScanTotalTimeBg":J
    :goto_22
    if-eqz v205, :cond_2d

    .line 3620
    move-object/from16 v0, v205

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v202

    .line 3622
    .local v202, "unoptimizedScanMaxTimeBg":J
    :goto_23
    const-string/jumbo v4, "blem"

    const/16 v7, 0xb

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3623
    invoke-static/range {v56 .. v56}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v145 .. v145}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    invoke-static/range {v150 .. v150}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x6

    aput-object v8, v7, v12

    .line 3624
    invoke-static/range {v206 .. v207}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x7

    aput-object v8, v7, v12

    invoke-static/range {v208 .. v209}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x8

    aput-object v8, v7, v12

    .line 3625
    invoke-static/range {v200 .. v201}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0x9

    aput-object v8, v7, v12

    invoke-static/range {v202 .. v203}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/16 v12, 0xa

    aput-object v8, v7, v12

    .line 3622
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3629
    .end local v26    # "actualTime":J
    .end local v28    # "actualTimeBg":J
    .end local v43    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v55    # "count":I
    .end local v56    # "countBg":I
    .end local v145    # "resultCount":I
    .end local v150    # "resultCountBg":I
    .end local v188    # "totalTime":J
    .end local v200    # "unoptimizedScanMaxTime":J
    .end local v202    # "unoptimizedScanMaxTimeBg":J
    .end local v204    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v205    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v206    # "unoptimizedScanTotalTime":J
    .end local v208    # "unoptimizedScanTotalTimeBg":J
    :cond_22
    const-string/jumbo v7, "ble"

    .line 3630
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v8

    move-object/from16 v4, p2

    move/from16 v9, p3

    .line 3629
    invoke-static/range {v4 .. v9}, Landroid/os/BatteryStats;->dumpControllerActivityLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 3632
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 3633
    const/4 v4, 0x4

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v31, v0

    .line 3634
    const/16 v82, 0x0

    .line 3635
    .local v82, "hasData":Z
    const/16 v84, 0x0

    :goto_24
    const/4 v4, 0x4

    move/from16 v0, v84

    if-ge v0, v4, :cond_2e

    .line 3636
    move-object/from16 v0, v196

    move/from16 v1, v84

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v214

    .line 3637
    .local v214, "val":I
    invoke-static/range {v214 .. v214}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v31, v84

    .line 3638
    if-eqz v214, :cond_23

    const/16 v82, 0x1

    .line 3635
    :cond_23
    add-int/lit8 v84, v84, 0x1

    goto :goto_24

    .line 3545
    .end local v42    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v80    # "fullWifiLockOnTime":J
    .end local v82    # "hasData":Z
    .end local v198    # "uidWifiRunningTime":J
    .end local v214    # "val":I
    .end local v250    # "wifiScanActualTimeMs":J
    .end local v252    # "wifiScanActualTimeMsBg":J
    .end local v254    # "wifiScanCount":I
    .end local v255    # "wifiScanCountBg":I
    .end local v256    # "wifiScanTime":J
    :cond_24
    const-wide/16 v12, 0x0

    cmp-long v4, v230, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v232, v12

    if-gtz v4, :cond_1e

    .line 3546
    const-wide/16 v12, 0x0

    cmp-long v4, v118, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v120, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v240, v12

    if-gtz v4, :cond_1e

    .line 3547
    const-wide/16 v12, 0x0

    cmp-long v4, v242, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v104, v12

    if-gtz v4, :cond_1e

    if-gtz v102, :cond_1e

    .line 3548
    const-wide/16 v12, 0x0

    cmp-long v4, v46, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v48, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v130, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    move-wide/from16 v0, v262

    cmp-long v4, v0, v12

    if-gtz v4, :cond_1e

    .line 3549
    const-wide/16 v12, 0x0

    cmp-long v4, v106, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v108, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v226, v12

    if-gtz v4, :cond_1e

    .line 3550
    const-wide/16 v12, 0x0

    cmp-long v4, v228, v12

    if-gtz v4, :cond_1e

    .line 3551
    const-wide/16 v12, 0x0

    cmp-long v4, v114, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v116, v12

    if-gtz v4, :cond_1e

    const-wide/16 v12, 0x0

    cmp-long v4, v236, v12

    if-gtz v4, :cond_1e

    .line 3552
    const-wide/16 v12, 0x0

    cmp-long v4, v238, v12

    if-lez v4, :cond_1f

    goto/16 :goto_1a

    .line 3578
    .restart local v80    # "fullWifiLockOnTime":J
    .restart local v198    # "uidWifiRunningTime":J
    .restart local v250    # "wifiScanActualTimeMs":J
    .restart local v252    # "wifiScanActualTimeMsBg":J
    .restart local v254    # "wifiScanCount":I
    .restart local v255    # "wifiScanCountBg":I
    .restart local v256    # "wifiScanTime":J
    :cond_25
    if-nez v254, :cond_20

    .line 3579
    if-nez v255, :cond_20

    const-wide/16 v12, 0x0

    cmp-long v4, v250, v12

    if-nez v4, :cond_20

    .line 3580
    const-wide/16 v12, 0x0

    cmp-long v4, v252, v12

    if-nez v4, :cond_20

    const-wide/16 v12, 0x0

    cmp-long v4, v198, v12

    if-eqz v4, :cond_21

    goto/16 :goto_1b

    .line 3598
    .restart local v42    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v43    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v55    # "count":I
    .restart local v188    # "totalTime":J
    :cond_26
    const/16 v56, 0x0

    .restart local v56    # "countBg":I
    goto/16 :goto_1c

    .line 3602
    .restart local v26    # "actualTime":J
    :cond_27
    const-wide/16 v28, 0x0

    .restart local v28    # "actualTimeBg":J
    goto/16 :goto_1d

    .line 3605
    :cond_28
    const/16 v145, 0x0

    .restart local v145    # "resultCount":I
    goto/16 :goto_1e

    .line 3607
    :cond_29
    const/16 v150, 0x0

    .restart local v150    # "resultCountBg":I
    goto/16 :goto_1f

    .line 3611
    .restart local v204    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    :cond_2a
    const-wide/16 v206, 0x0

    .restart local v206    # "unoptimizedScanTotalTime":J
    goto/16 :goto_20

    .line 3613
    :cond_2b
    const-wide/16 v200, 0x0

    .restart local v200    # "unoptimizedScanMaxTime":J
    goto/16 :goto_21

    .line 3618
    .restart local v205    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    :cond_2c
    const-wide/16 v208, 0x0

    .restart local v208    # "unoptimizedScanTotalTimeBg":J
    goto/16 :goto_22

    .line 3620
    :cond_2d
    const-wide/16 v202, 0x0

    .restart local v202    # "unoptimizedScanMaxTimeBg":J
    goto/16 :goto_23

    .line 3640
    .end local v26    # "actualTime":J
    .end local v28    # "actualTimeBg":J
    .end local v43    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v55    # "count":I
    .end local v56    # "countBg":I
    .end local v145    # "resultCount":I
    .end local v150    # "resultCountBg":I
    .end local v188    # "totalTime":J
    .end local v200    # "unoptimizedScanMaxTime":J
    .end local v202    # "unoptimizedScanMaxTimeBg":J
    .end local v204    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v205    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v206    # "unoptimizedScanTotalTime":J
    .end local v208    # "unoptimizedScanTotalTimeBg":J
    .restart local v82    # "hasData":Z
    :cond_2e
    if-eqz v82, :cond_2f

    .line 3641
    const-string/jumbo v4, "ua"

    move-object/from16 v0, p2

    move-object/from16 v1, v31

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3645
    .end local v82    # "hasData":Z
    :cond_2f
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 3646
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v173

    .line 3648
    .local v173, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v173

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v182

    .line 3649
    .local v182, "totTimeMs":J
    invoke-virtual/range {v173 .. v173}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    .line 3650
    .local v37, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v37, :cond_35

    .line 3651
    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v40

    .line 3652
    .local v40, "bgTimeMs":J
    :goto_25
    const-string/jumbo v4, "awl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v182 .. v183}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v40 .. v41}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3655
    .end local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v40    # "bgTimeMs":J
    .end local v173    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v182    # "totTimeMs":J
    :cond_30
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v215

    .line 3656
    .restart local v215    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v215 .. v215}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v96, v4, -0x1

    .restart local v96    # "iw":I
    :goto_26
    if-ltz v96, :cond_37

    .line 3657
    move-object/from16 v0, v215

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v264, v0

    move-object/from16 v0, v264

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v264, v0

    .line 3658
    .restart local v264    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v14, ""

    .line 3659
    .local v14, "linePrefix":Ljava/lang/String;
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3660
    const/4 v4, 0x1

    move-object/from16 v0, v264

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 3661
    const-string/jumbo v12, "f"

    move-object/from16 v8, v16

    move/from16 v13, p3

    .line 3660
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3662
    const/4 v4, 0x0

    move-object/from16 v0, v264

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 3664
    .local v9, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v12, "p"

    move-object/from16 v8, v16

    move/from16 v13, p3

    .line 3663
    invoke-static/range {v8 .. v14}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3665
    if-eqz v9, :cond_36

    invoke-virtual {v9}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v17

    .line 3666
    :goto_27
    const-string/jumbo v20, "bp"

    move-wide/from16 v18, v10

    move/from16 v21, p3

    move-object/from16 v22, v14

    .line 3665
    invoke-static/range {v16 .. v22}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3667
    const/4 v4, 0x2

    move-object/from16 v0, v264

    invoke-virtual {v0, v4}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v17

    .line 3668
    const-string/jumbo v20, "w"

    move-wide/from16 v18, v10

    move/from16 v21, p3

    move-object/from16 v22, v14

    .line 3667
    invoke-static/range {v16 .. v22}, Landroid/os/BatteryStats;->printWakeLockCheckin(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3671
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-lez v4, :cond_34

    .line 3672
    move-object/from16 v0, v215

    move/from16 v1, v96

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v103

    check-cast v103, Ljava/lang/String;

    .line 3673
    .local v103, "name":Ljava/lang/String;
    const/16 v4, 0x2c

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_31

    .line 3674
    const/16 v4, 0x2c

    const/16 v7, 0x5f

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    .line 3676
    :cond_31
    const/16 v4, 0xa

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_32

    .line 3677
    const/16 v4, 0xa

    const/16 v7, 0x5f

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    .line 3679
    :cond_32
    const/16 v4, 0xd

    move-object/from16 v0, v103

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_33

    .line 3680
    const/16 v4, 0xd

    const/16 v7, 0x5f

    move-object/from16 v0, v103

    invoke-virtual {v0, v4, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    .line 3682
    :cond_33
    const-string/jumbo v4, "wl"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v103, v7, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3656
    .end local v103    # "name":Ljava/lang/String;
    :cond_34
    add-int/lit8 v96, v96, -0x1

    goto/16 :goto_26

    .line 3651
    .end local v9    # "pTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "linePrefix":Ljava/lang/String;
    .end local v96    # "iw":I
    .end local v215    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v264    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .restart local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v173    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v182    # "totTimeMs":J
    :cond_35
    const-wide/16 v40, 0x0

    .restart local v40    # "bgTimeMs":J
    goto/16 :goto_25

    .line 3665
    .end local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v40    # "bgTimeMs":J
    .end local v173    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v182    # "totTimeMs":J
    .restart local v9    # "pTimer":Landroid/os/BatteryStats$Timer;
    .restart local v14    # "linePrefix":Ljava/lang/String;
    .restart local v96    # "iw":I
    .restart local v215    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v264    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_36
    const/16 v17, 0x0

    goto/16 :goto_27

    .line 3686
    .end local v9    # "pTimer":Landroid/os/BatteryStats$Timer;
    .end local v14    # "linePrefix":Ljava/lang/String;
    .end local v264    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_37
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v172

    .line 3687
    .local v172, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v172 .. v172}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v94, v4, -0x1

    .local v94, "isy":I
    :goto_28
    if-ltz v94, :cond_3b

    .line 3688
    move-object/from16 v0, v172

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Landroid/os/BatteryStats$Timer;

    .line 3690
    .restart local v173    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v173

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v188, v12, v18

    .line 3691
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v173

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    .line 3692
    .restart local v55    # "count":I
    invoke-virtual/range {v173 .. v173}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    .line 3693
    .restart local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v37, :cond_39

    .line 3694
    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v38

    .line 3695
    .local v38, "bgTime":J
    :goto_29
    if-eqz v37, :cond_3a

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v36

    .line 3696
    .local v36, "bgCount":I
    :goto_2a
    const-wide/16 v12, 0x0

    cmp-long v4, v188, v12

    if-eqz v4, :cond_38

    .line 3697
    const-string/jumbo v7, "sy"

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v172

    move/from16 v1, v94

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    .line 3698
    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    .line 3697
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3687
    :cond_38
    add-int/lit8 v94, v94, -0x1

    goto/16 :goto_28

    .line 3694
    .end local v36    # "bgCount":I
    .end local v38    # "bgTime":J
    :cond_39
    const-wide/16 v38, -0x1

    .restart local v38    # "bgTime":J
    goto :goto_29

    .line 3695
    :cond_3a
    const/16 v36, -0x1

    .restart local v36    # "bgCount":I
    goto :goto_2a

    .line 3702
    .end local v36    # "bgCount":I
    .end local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v38    # "bgTime":J
    .end local v55    # "count":I
    .end local v173    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v188    # "totalTime":J
    :cond_3b
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v98

    .line 3703
    .local v98, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v98 .. v98}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v86, v4, -0x1

    .local v86, "ij":I
    :goto_2b
    if-ltz v86, :cond_3f

    .line 3704
    move-object/from16 v0, v98

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v173

    check-cast v173, Landroid/os/BatteryStats$Timer;

    .line 3706
    .restart local v173    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v173

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    const-wide/16 v18, 0x3e8

    div-long v188, v12, v18

    .line 3707
    .restart local v188    # "totalTime":J
    move-object/from16 v0, v173

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    .line 3708
    .restart local v55    # "count":I
    invoke-virtual/range {v173 .. v173}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    .line 3709
    .restart local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v37, :cond_3d

    .line 3710
    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v38

    .line 3711
    .restart local v38    # "bgTime":J
    :goto_2c
    if-eqz v37, :cond_3e

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v36

    .line 3712
    .restart local v36    # "bgCount":I
    :goto_2d
    const-wide/16 v12, 0x0

    cmp-long v4, v188, v12

    if-eqz v4, :cond_3c

    .line 3713
    const-string/jumbo v7, "jb"

    const/4 v4, 0x5

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v98

    move/from16 v1, v86

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    .line 3714
    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    invoke-static/range {v38 .. v39}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    .line 3713
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3703
    :cond_3c
    add-int/lit8 v86, v86, -0x1

    goto/16 :goto_2b

    .line 3710
    .end local v36    # "bgCount":I
    .end local v38    # "bgTime":J
    :cond_3d
    const-wide/16 v38, -0x1

    .restart local v38    # "bgTime":J
    goto :goto_2c

    .line 3711
    :cond_3e
    const/16 v36, -0x1

    .restart local v36    # "bgCount":I
    goto :goto_2d

    .line 3718
    .end local v36    # "bgCount":I
    .end local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v38    # "bgTime":J
    .end local v55    # "count":I
    .end local v173    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v188    # "totalTime":J
    :cond_3f
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v45

    .line 3719
    .local v45, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual/range {v45 .. v45}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v85, v4, -0x1

    .local v85, "ic":I
    :goto_2e
    if-ltz v85, :cond_41

    .line 3720
    move-object/from16 v0, v45

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v193

    check-cast v193, Landroid/util/SparseIntArray;

    .line 3721
    .local v193, "types":Landroid/util/SparseIntArray;
    if-eqz v193, :cond_40

    .line 3722
    const-string/jumbo v7, "jbc"

    const/4 v4, 0x6

    new-array v8, v4, [Ljava/lang/Object;

    .line 3723
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v45

    move/from16 v1, v85

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    .line 3724
    const/4 v4, 0x0

    const/4 v12, 0x0

    move-object/from16 v0, v193

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    .line 3725
    const/4 v4, 0x1

    const/4 v12, 0x0

    move-object/from16 v0, v193

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    .line 3726
    const/4 v4, 0x2

    const/4 v12, 0x0

    move-object/from16 v0, v193

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    .line 3727
    const/4 v4, 0x3

    const/4 v12, 0x0

    move-object/from16 v0, v193

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    .line 3728
    const/4 v4, 0x4

    const/4 v12, 0x0

    move-object/from16 v0, v193

    invoke-virtual {v0, v4, v12}, Landroid/util/SparseIntArray;->get(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x5

    aput-object v4, v8, v12

    .line 3722
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3719
    :cond_40
    add-int/lit8 v85, v85, -0x1

    goto/16 :goto_2e

    .line 3732
    .end local v193    # "types":Landroid/util/SparseIntArray;
    :cond_41
    const-string/jumbo v20, "fla"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3734
    const-string/jumbo v20, "cam"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3736
    const-string/jumbo v20, "vid"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3738
    const-string/jumbo v20, "aud"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3741
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v164

    .line 3742
    .local v164, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v164 .. v164}, Landroid/util/SparseArray;->size()I

    move-result v15

    .line 3743
    .local v15, "NSE":I
    const/16 v92, 0x0

    .local v92, "ise":I
    :goto_2f
    move/from16 v0, v92

    if-ge v0, v15, :cond_45

    .line 3744
    move-object/from16 v0, v164

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v162

    check-cast v162, Landroid/os/BatteryStats$Uid$Sensor;

    .line 3745
    .local v162, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v164

    move/from16 v1, v92

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v163

    .line 3746
    .local v163, "sensorNumber":I
    invoke-virtual/range {v162 .. v162}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v173

    .line 3747
    .restart local v173    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v173, :cond_42

    .line 3749
    move-object/from16 v0, v173

    move/from16 v1, p3

    invoke-virtual {v0, v10, v11, v1}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v12

    const-wide/16 v18, 0x1f4

    add-long v12, v12, v18

    .line 3750
    const-wide/16 v18, 0x3e8

    .line 3749
    div-long v188, v12, v18

    .line 3751
    .restart local v188    # "totalTime":J
    const-wide/16 v12, 0x0

    cmp-long v4, v188, v12

    if-eqz v4, :cond_42

    .line 3752
    move-object/from16 v0, v173

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v55

    .line 3753
    .restart local v55    # "count":I
    invoke-virtual/range {v162 .. v162}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v37

    .line 3754
    .restart local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v37, :cond_43

    move-object/from16 v0, v37

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v36

    .line 3756
    .restart local v36    # "bgCount":I
    :goto_30
    move-object/from16 v0, v173

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v26

    .line 3757
    .restart local v26    # "actualTime":J
    if-eqz v37, :cond_44

    .line 3758
    move-object/from16 v0, v37

    move-wide/from16 v1, v146

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v34

    .line 3759
    .local v34, "bgActualTime":J
    :goto_31
    const-string/jumbo v4, "sr"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static/range {v163 .. v163}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    invoke-static/range {v188 .. v189}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3760
    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v36 .. v36}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    invoke-static/range {v26 .. v27}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    .line 3759
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3743
    .end local v26    # "actualTime":J
    .end local v34    # "bgActualTime":J
    .end local v36    # "bgCount":I
    .end local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v55    # "count":I
    .end local v188    # "totalTime":J
    :cond_42
    add-int/lit8 v92, v92, 0x1

    goto/16 :goto_2f

    .line 3754
    .restart local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v55    # "count":I
    .restart local v188    # "totalTime":J
    :cond_43
    const/16 v36, 0x0

    .restart local v36    # "bgCount":I
    goto :goto_30

    .line 3758
    .restart local v26    # "actualTime":J
    :cond_44
    const-wide/16 v34, 0x0

    .restart local v34    # "bgActualTime":J
    goto :goto_31

    .line 3765
    .end local v26    # "actualTime":J
    .end local v34    # "bgActualTime":J
    .end local v36    # "bgCount":I
    .end local v37    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v55    # "count":I
    .end local v162    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v163    # "sensorNumber":I
    .end local v173    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v188    # "totalTime":J
    :cond_45
    const-string/jumbo v20, "vib"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3768
    const-string/jumbo v20, "fg"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3771
    const-string/jumbo v20, "fgs"

    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v21

    move-object/from16 v17, p2

    move/from16 v18, v5

    move-object/from16 v19, v6

    move-wide/from16 v22, v10

    move/from16 v24, p3

    invoke-static/range {v17 .. v24}, Landroid/os/BatteryStats;->dumpTimer(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$Timer;JI)V

    .line 3774
    const/4 v4, 0x6

    new-array v0, v4, [Ljava/lang/Object;

    move-object/from16 v171, v0

    .line 3775
    .local v171, "stateTimes":[Ljava/lang/Object;
    const-wide/16 v186, 0x0

    .line 3776
    .local v186, "totalStateTime":J
    const/16 v91, 0x0

    .local v91, "ips":I
    :goto_32
    const/4 v4, 0x6

    move/from16 v0, v91

    if-ge v0, v4, :cond_46

    .line 3777
    move-object/from16 v0, v196

    move/from16 v1, v91

    move/from16 v2, p3

    invoke-virtual {v0, v1, v10, v11, v2}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v178

    .line 3778
    .local v178, "time":J
    add-long v186, v186, v178

    .line 3779
    const-wide/16 v12, 0x1f4

    add-long v12, v12, v178

    const-wide/16 v18, 0x3e8

    div-long v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v171, v91

    .line 3776
    add-int/lit8 v91, v91, 0x1

    goto :goto_32

    .line 3781
    .end local v178    # "time":J
    :cond_46
    const-wide/16 v12, 0x0

    cmp-long v4, v186, v12

    if-lez v4, :cond_47

    .line 3782
    const-string/jumbo v4, "st"

    move-object/from16 v0, p2

    move-object/from16 v1, v171

    invoke-static {v0, v5, v6, v4, v1}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3785
    :cond_47
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v210

    .line 3786
    .local v210, "userCpuTimeUs":J
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v174

    .line 3787
    .local v174, "systemCpuTimeUs":J
    const-wide/16 v12, 0x0

    cmp-long v4, v210, v12

    if-gtz v4, :cond_48

    const-wide/16 v12, 0x0

    cmp-long v4, v174, v12

    if-lez v4, :cond_49

    .line 3788
    :cond_48
    const-string/jumbo v4, "cpu"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-wide/16 v12, 0x3e8

    div-long v12, v210, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    const-wide/16 v12, 0x3e8

    div-long v12, v174, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3789
    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    .line 3788
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3793
    :cond_49
    if-eqz v58, :cond_4e

    .line 3794
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v57

    .line 3797
    .local v57, "cpuFreqTimeMs":[J
    if-eqz v57, :cond_4e

    move-object/from16 v0, v57

    array-length v4, v0

    move-object/from16 v0, v58

    array-length v7, v0

    if-ne v4, v7, :cond_4e

    .line 3798
    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3799
    const/16 v84, 0x0

    :goto_33
    move-object/from16 v0, v57

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_4b

    .line 3800
    if-nez v84, :cond_4a

    const-string/jumbo v4, ""

    :goto_34
    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v12, v57, v84

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3799
    add-int/lit8 v84, v84, 0x1

    goto :goto_33

    .line 3800
    :cond_4a
    const-string/jumbo v4, ","

    goto :goto_34

    .line 3802
    :cond_4b
    move-object/from16 v0, v196

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v155

    .line 3803
    .local v155, "screenOffCpuFreqTimeMs":[J
    if-eqz v155, :cond_4c

    .line 3804
    const/16 v84, 0x0

    :goto_35
    move-object/from16 v0, v155

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_4d

    .line 3805
    const-string/jumbo v4, ","

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-wide v12, v155, v84

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3804
    add-int/lit8 v84, v84, 0x1

    goto :goto_35

    .line 3808
    :cond_4c
    const/16 v84, 0x0

    :goto_36
    move-object/from16 v0, v57

    array-length v4, v0

    move/from16 v0, v84

    if-ge v0, v4, :cond_4d

    .line 3809
    const-string/jumbo v4, ",0"

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3808
    add-int/lit8 v84, v84, 0x1

    goto :goto_36

    .line 3812
    :cond_4d
    const-string/jumbo v4, "ctf"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string/jumbo v8, "A"

    const/4 v12, 0x0

    aput-object v8, v7, v12

    .line 3813
    move-object/from16 v0, v57

    array-length v8, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    .line 3812
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3818
    .end local v57    # "cpuFreqTimeMs":[J
    .end local v155    # "screenOffCpuFreqTimeMs":[J
    :cond_4e
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v142

    .line 3819
    .local v142, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v142 .. v142}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v90, v4, -0x1

    .local v90, "ipr":I
    :goto_37
    if-ltz v90, :cond_52

    .line 3820
    move-object/from16 v0, v142

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v144

    check-cast v144, Landroid/os/BatteryStats$Uid$Proc;

    .line 3822
    .local v144, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v212

    .line 3823
    .local v212, "userMillis":J
    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v176

    .line 3824
    .local v176, "systemMillis":J
    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v76

    .line 3825
    .local v76, "foregroundMillis":J
    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v170

    .line 3826
    .local v170, "starts":I
    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v133

    .line 3827
    .local v133, "numCrashes":I
    move-object/from16 v0, v144

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v132

    .line 3829
    .local v132, "numAnrs":I
    const-wide/16 v12, 0x0

    cmp-long v4, v212, v12

    if-nez v4, :cond_4f

    const-wide/16 v12, 0x0

    cmp-long v4, v176, v12

    if-eqz v4, :cond_51

    .line 3831
    :cond_4f
    :goto_38
    const-string/jumbo v7, "pr"

    const/4 v4, 0x7

    new-array v8, v4, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, v142

    move/from16 v1, v90

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v12, "\""

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x0

    aput-object v4, v8, v12

    .line 3832
    invoke-static/range {v212 .. v213}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x1

    aput-object v4, v8, v12

    invoke-static/range {v176 .. v177}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x2

    aput-object v4, v8, v12

    invoke-static/range {v76 .. v77}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v12, 0x3

    aput-object v4, v8, v12

    invoke-static/range {v170 .. v170}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x4

    aput-object v4, v8, v12

    invoke-static/range {v132 .. v132}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x5

    aput-object v4, v8, v12

    invoke-static/range {v133 .. v133}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v12, 0x6

    aput-object v4, v8, v12

    .line 3831
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v7, v8}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3819
    :cond_50
    add-int/lit8 v90, v90, -0x1

    goto/16 :goto_37

    .line 3829
    :cond_51
    const-wide/16 v12, 0x0

    cmp-long v4, v76, v12

    if-nez v4, :cond_4f

    .line 3830
    if-nez v170, :cond_4f

    if-nez v132, :cond_4f

    if-eqz v133, :cond_50

    goto :goto_38

    .line 3837
    .end local v76    # "foregroundMillis":J
    .end local v132    # "numAnrs":I
    .end local v133    # "numCrashes":I
    .end local v144    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v170    # "starts":I
    .end local v176    # "systemMillis":J
    .end local v212    # "userMillis":J
    :cond_52
    invoke-virtual/range {v196 .. v196}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v134

    .line 3838
    .local v134, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v134 .. v134}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v87, v4, -0x1

    .local v87, "ipkg":I
    :goto_39
    if-ltz v87, :cond_1c

    .line 3839
    move-object/from16 v0, v134

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v143

    check-cast v143, Landroid/os/BatteryStats$Uid$Pkg;

    .line 3840
    .local v143, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    const/16 v217, 0x0

    .line 3841
    .local v217, "wakeups":I
    invoke-virtual/range {v143 .. v143}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v30

    .line 3842
    .local v30, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v30 .. v30}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v97, v4, -0x1

    .local v97, "iwa":I
    :goto_3a
    if-ltz v97, :cond_53

    .line 3843
    move-object/from16 v0, v30

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v55

    .line 3844
    .restart local v55    # "count":I
    add-int v217, v217, v55

    .line 3845
    move-object/from16 v0, v30

    move/from16 v1, v97

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/16 v7, 0x2c

    const/16 v8, 0x5f

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v103

    .line 3846
    .restart local v103    # "name":Ljava/lang/String;
    const-string/jumbo v4, "wua"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v103, v7, v8

    invoke-static/range {v55 .. v55}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3842
    add-int/lit8 v97, v97, -0x1

    goto :goto_3a

    .line 3848
    .end local v55    # "count":I
    .end local v103    # "name":Ljava/lang/String;
    :cond_53
    invoke-virtual/range {v143 .. v143}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v165

    .line 3849
    .local v165, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v165 .. v165}, Landroid/util/ArrayMap;->size()I

    move-result v4

    add-int/lit8 v93, v4, -0x1

    .local v93, "isvc":I
    :goto_3b
    if-ltz v93, :cond_57

    .line 3850
    move-object/from16 v0, v165

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v167

    check-cast v167, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 3851
    .local v167, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v167

    move-wide/from16 v1, v32

    move/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v168

    .line 3852
    .local v168, "startTime":J
    move-object/from16 v0, v167

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v170

    .line 3853
    .restart local v170    # "starts":I
    move-object/from16 v0, v167

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v101

    .line 3854
    .local v101, "launches":I
    const-wide/16 v12, 0x0

    cmp-long v4, v168, v12

    if-nez v4, :cond_54

    if-eqz v170, :cond_56

    .line 3855
    :cond_54
    :goto_3c
    const-string/jumbo v4, "apk"

    const/4 v7, 0x6

    new-array v7, v7, [Ljava/lang/Object;

    .line 3856
    invoke-static/range {v217 .. v217}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x0

    aput-object v8, v7, v12

    .line 3857
    move-object/from16 v0, v134

    move/from16 v1, v87

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x1

    aput-object v8, v7, v12

    .line 3858
    move-object/from16 v0, v165

    move/from16 v1, v93

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    .line 3859
    const-wide/16 v12, 0x3e8

    div-long v12, v168, v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v12, 0x3

    aput-object v8, v7, v12

    .line 3860
    invoke-static/range {v170 .. v170}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x4

    aput-object v8, v7, v12

    .line 3861
    invoke-static/range {v101 .. v101}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x5

    aput-object v8, v7, v12

    .line 3855
    move-object/from16 v0, p2

    invoke-static {v0, v5, v6, v4, v7}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3849
    :cond_55
    add-int/lit8 v93, v93, -0x1

    goto :goto_3b

    .line 3854
    :cond_56
    if-eqz v101, :cond_55

    goto :goto_3c

    .line 3838
    .end local v101    # "launches":I
    .end local v167    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v168    # "startTime":J
    .end local v170    # "starts":I
    :cond_57
    add-int/lit8 v87, v87, -0x1

    goto/16 :goto_39

    .line 3866
    .end local v5    # "uid":I
    .end local v15    # "NSE":I
    .end local v30    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v42    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v45    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v46    # "btBytesRx":J
    .end local v48    # "btBytesTx":J
    .end local v80    # "fullWifiLockOnTime":J
    .end local v85    # "ic":I
    .end local v86    # "ij":I
    .end local v87    # "ipkg":I
    .end local v90    # "ipr":I
    .end local v91    # "ips":I
    .end local v92    # "ise":I
    .end local v93    # "isvc":I
    .end local v94    # "isy":I
    .end local v96    # "iw":I
    .end local v97    # "iwa":I
    .end local v98    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v102    # "mobileActiveCount":I
    .end local v104    # "mobileActiveTime":J
    .end local v106    # "mobileBytesBgRx":J
    .end local v108    # "mobileBytesBgTx":J
    .end local v110    # "mobileBytesRx":J
    .end local v112    # "mobileBytesTx":J
    .end local v114    # "mobilePacketsBgRx":J
    .end local v116    # "mobilePacketsBgTx":J
    .end local v118    # "mobilePacketsRx":J
    .end local v120    # "mobilePacketsTx":J
    .end local v130    # "mobileWakeup":J
    .end local v134    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v142    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v143    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v164    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v165    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v171    # "stateTimes":[Ljava/lang/Object;
    .end local v172    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v174    # "systemCpuTimeUs":J
    .end local v186    # "totalStateTime":J
    .end local v196    # "u":Landroid/os/BatteryStats$Uid;
    .end local v198    # "uidWifiRunningTime":J
    .end local v210    # "userCpuTimeUs":J
    .end local v215    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v217    # "wakeups":I
    .end local v226    # "wifiBytesBgRx":J
    .end local v228    # "wifiBytesBgTx":J
    .end local v230    # "wifiBytesRx":J
    .end local v232    # "wifiBytesTx":J
    .end local v236    # "wifiPacketsBgRx":J
    .end local v238    # "wifiPacketsBgTx":J
    .end local v240    # "wifiPacketsRx":J
    .end local v242    # "wifiPacketsTx":J
    .end local v250    # "wifiScanActualTimeMs":J
    .end local v252    # "wifiScanActualTimeMsBg":J
    .end local v254    # "wifiScanCount":I
    .end local v255    # "wifiScanCountBg":I
    .end local v256    # "wifiScanTime":J
    .end local v262    # "wifiWakeup":J
    :cond_58
    return-void

    .line 3448
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/util/List;IJ)V
    .locals 25
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p4, "flags"    # I
    .param p5, "histStart"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;IJ)V"
        }
    .end annotation

    .prologue
    .line 6418
    .local p3, "apps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 6420
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "vers"

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    .line 6421
    const-string/jumbo v5, "27"

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getParcelVersion()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    .line 6422
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEndPlatformVersion()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    aput-object v5, v4, v6

    .line 6420
    const/4 v5, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v5, v2, v3, v4}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6424
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryBaseTime()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long v16, v2, v4

    .line 6426
    .local v16, "now":J
    and-int/lit8 v2, p4, 0xe

    if-eqz v2, :cond_1

    const/4 v11, 0x1

    .line 6429
    .local v11, "filtering":Z
    :goto_0
    and-int/lit8 v2, p4, 0x10

    if-nez v2, :cond_0

    and-int/lit8 v2, p4, 0x8

    if-eqz v2, :cond_3

    .line 6430
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 6432
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_1
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 6433
    const/16 v2, 0x9

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 6434
    const-string/jumbo v2, "hsp"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v2, 0x2c

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 6435
    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 6436
    const-string/jumbo v2, ","

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6437
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolUid(I)I

    move-result v2

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 6438
    const-string/jumbo v2, ",\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6439
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Landroid/os/BatteryStats;->getHistoryTagPoolString(I)Ljava/lang/String;

    move-result-object v18

    .line 6440
    .local v18, "str":Ljava/lang/String;
    const-string/jumbo v2, "\\"

    const-string/jumbo v3, "\\\\"

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 6441
    const-string/jumbo v2, "\""

    const-string/jumbo v3, "\\\""

    move-object/from16 v0, v18

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v18

    .line 6442
    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6443
    const-string/jumbo v2, "\""

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6444
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6432
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 6426
    .end local v11    # "filtering":Z
    .end local v12    # "i":I
    .end local v18    # "str":Ljava/lang/String;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "filtering":Z
    goto/16 :goto_0

    .line 6446
    .restart local v12    # "i":I
    :cond_2
    const/4 v8, 0x1

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move/from16 v5, p4

    move-wide/from16 v6, p5

    invoke-direct/range {v3 .. v8}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6448
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 6453
    .end local v12    # "i":I
    :cond_3
    if-eqz v11, :cond_4

    and-int/lit8 v2, p4, 0x6

    if-nez v2, :cond_4

    .line 6454
    return-void

    .line 6447
    .restart local v12    # "i":I
    :catchall_0
    move-exception v2

    .line 6448
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 6447
    throw v2

    .line 6457
    .end local v12    # "i":I
    :cond_4
    if-eqz p3, :cond_8

    .line 6458
    new-instance v23, Landroid/util/SparseArray;

    invoke-direct/range {v23 .. v23}, Landroid/util/SparseArray;-><init>()V

    .line 6459
    .local v23, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_2
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v12, v2, :cond_6

    .line 6460
    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ApplicationInfo;

    .line 6462
    .local v10, "ai":Landroid/content/pm/ApplicationInfo;
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    .line 6461
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 6463
    .local v15, "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-nez v15, :cond_5

    .line 6464
    new-instance v15, Landroid/util/Pair;

    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/util/MutableBoolean;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Landroid/util/MutableBoolean;-><init>(Z)V

    invoke-direct {v15, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 6465
    .restart local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6467
    :cond_5
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6459
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 6469
    .end local v10    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v22

    .line 6470
    .local v22, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/SparseArray;->size()I

    move-result v9

    .line 6471
    .local v9, "NU":I
    const/4 v2, 0x2

    new-array v14, v2, [Ljava/lang/String;

    .line 6472
    .local v14, "lineArgs":[Ljava/lang/String;
    const/4 v12, 0x0

    :goto_3
    if-ge v12, v9, :cond_8

    .line 6473
    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v19

    .line 6474
    .local v19, "uid":I
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/Pair;

    .line 6475
    .restart local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    if-eqz v15, :cond_7

    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    iget-boolean v2, v2, Landroid/util/MutableBoolean;->value:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7

    .line 6476
    iget-object v2, v15, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v2, Landroid/util/MutableBoolean;

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/util/MutableBoolean;->value:Z

    .line 6477
    const/4 v13, 0x0

    .local v13, "j":I
    :goto_4
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v13, v2, :cond_7

    .line 6478
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    .line 6479
    iget-object v2, v15, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    aput-object v2, v14, v3

    .line 6480
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "uid"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6477
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 6472
    .end local v13    # "j":I
    :cond_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 6486
    .end local v9    # "NU":I
    .end local v12    # "i":I
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v15    # "pkgs":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;"
    .end local v19    # "uid":I
    .end local v22    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v23    # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/Pair<Ljava/util/ArrayList<Ljava/lang/String;>;Landroid/util/MutableBoolean;>;>;"
    :cond_8
    if-eqz v11, :cond_9

    and-int/lit8 v2, p4, 0x2

    if-eqz v2, :cond_c

    .line 6487
    :cond_9
    const-string/jumbo v2, ""

    const-string/jumbo v3, "dsd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 6488
    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    .line 6489
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v20

    .line 6490
    .local v20, "timeRemaining":J
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_a

    .line 6491
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    .line 6492
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "dtr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6495
    :cond_a
    const-string/jumbo v2, ""

    const-string/jumbo v3, "csd"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v4

    const/4 v5, 0x1

    move-object/from16 v0, p2

    invoke-static {v0, v2, v3, v4, v5}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    .line 6496
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v20

    .line 6497
    const-wide/16 v2, 0x0

    cmp-long v2, v20, v2

    if-ltz v2, :cond_b

    .line 6498
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v14, v3

    .line 6499
    const-string/jumbo v2, "i"

    const-string/jumbo v3, "ctr"

    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-static {v0, v4, v2, v3, v14}, Landroid/os/BatteryStats;->dumpLine(Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6503
    :cond_b
    and-int/lit8 v2, p4, 0x40

    if-eqz v2, :cond_d

    const/4 v7, 0x1

    .line 6502
    :goto_5
    const/4 v5, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-virtual/range {v2 .. v7}, Landroid/os/BatteryStats;->dumpCheckinLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIZ)V

    .line 6505
    .end local v14    # "lineArgs":[Ljava/lang/String;
    .end local v20    # "timeRemaining":J
    :cond_c
    return-void

    .line 6503
    .restart local v14    # "lineArgs":[Ljava/lang/String;
    .restart local v20    # "timeRemaining":J
    :cond_d
    const/4 v7, 0x0

    goto :goto_5
.end method

.method public dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;IIJ)V
    .locals 53
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "flags"    # I
    .param p4, "reqUid"    # I
    .param p5, "histStart"    # J

    .prologue
    .line 6225
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->prepareForDumpLocked()V

    .line 6227
    and-int/lit8 v6, p3, 0xe

    if-eqz v6, :cond_3

    const/16 v34, 0x1

    .line 6230
    .local v34, "filtering":Z
    :goto_0
    and-int/lit8 v6, p3, 0x8

    if-nez v6, :cond_0

    xor-int/lit8 v6, v34, 0x1

    if-eqz v6, :cond_6

    .line 6231
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryTotalSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v36, v0

    .line 6232
    .local v36, "historyTotalSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryUsedSize()I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v38, v0

    .line 6233
    .local v38, "historyUsedSize":J
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 6235
    :try_start_0
    const-string/jumbo v6, "Battery History ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6236
    const-wide/16 v12, 0x64

    mul-long v12, v12, v38

    div-long v12, v12, v36

    move-object/from16 v0, p2

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 6237
    const-string/jumbo v6, "% used, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6238
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v38

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 6239
    const-string/jumbo v6, " used of "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6240
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, v36

    invoke-direct {v0, v1, v2, v3}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 6241
    const-string/jumbo v6, ", "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6242
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolSize()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 6243
    const-string/jumbo v6, " strings using "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6244
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHistoryStringPoolBytes()I

    move-result v6

    int-to-long v12, v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v12, v13}, Landroid/os/BatteryStats;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 6245
    const-string/jumbo v6, "):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6246
    const/4 v10, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p2

    move/from16 v7, p3

    move-wide/from16 v8, p5

    invoke-direct/range {v5 .. v10}, Landroid/os/BatteryStats;->dumpHistoryLocked(Ljava/io/PrintWriter;IJZ)V

    .line 6247
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6249
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 6253
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingOldHistoryLocked()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 6255
    :try_start_1
    new-instance v7, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v7}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 6256
    .local v7, "rec":Landroid/os/BatteryStats$HistoryItem;
    const-string/jumbo v6, "Old battery History:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6257
    new-instance v5, Landroid/os/BatteryStats$HistoryPrinter;

    invoke-direct {v5}, Landroid/os/BatteryStats$HistoryPrinter;-><init>()V

    .line 6258
    .local v5, "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    const-wide/16 v8, -0x1

    .line 6259
    .local v8, "baseTime":J
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/os/BatteryStats;->getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 6260
    const-wide/16 v12, 0x0

    cmp-long v6, v8, v12

    if-gez v6, :cond_2

    .line 6261
    iget-wide v8, v7, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 6263
    :cond_2
    and-int/lit8 v6, p3, 0x20

    if-eqz v6, :cond_4

    const/4 v11, 0x1

    :goto_2
    const/4 v10, 0x0

    move-object/from16 v6, p2

    invoke-virtual/range {v5 .. v11}, Landroid/os/BatteryStats$HistoryPrinter;->printNextItem(Ljava/io/PrintWriter;Landroid/os/BatteryStats$HistoryItem;JZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 6266
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    :catchall_0
    move-exception v6

    .line 6267
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    .line 6266
    throw v6

    .line 6227
    .end local v34    # "filtering":Z
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_3
    const/16 v34, 0x0

    .restart local v34    # "filtering":Z
    goto/16 :goto_0

    .line 6248
    .restart local v36    # "historyTotalSize":J
    .restart local v38    # "historyUsedSize":J
    :catchall_1
    move-exception v6

    .line 6249
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 6248
    throw v6

    .line 6263
    .restart local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .restart local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .restart local v8    # "baseTime":J
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 6265
    :cond_5
    :try_start_2
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 6267
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingOldHistoryLocked()V

    .line 6272
    .end local v5    # "hprinter":Landroid/os/BatteryStats$HistoryPrinter;
    .end local v7    # "rec":Landroid/os/BatteryStats$HistoryItem;
    .end local v8    # "baseTime":J
    .end local v36    # "historyTotalSize":J
    .end local v38    # "historyUsedSize":J
    :cond_6
    if-eqz v34, :cond_7

    and-int/lit8 v6, p3, 0x6

    if-nez v6, :cond_7

    .line 6273
    return-void

    .line 6276
    :cond_7
    if-nez v34, :cond_c

    .line 6277
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v51

    .line 6278
    .local v51, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v51 .. v51}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 6279
    .local v4, "NU":I
    const/16 v32, 0x0

    .line 6280
    .local v32, "didPid":Z
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v42

    .line 6281
    .local v42, "nowRealtime":J
    const/16 v35, 0x0

    .local v35, "i":I
    :goto_3
    move/from16 v0, v35

    if-ge v0, v4, :cond_b

    .line 6282
    move-object/from16 v0, v51

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v50

    check-cast v50, Landroid/os/BatteryStats$Uid;

    .line 6283
    .local v50, "uid":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v50 .. v50}, Landroid/os/BatteryStats$Uid;->getPidStats()Landroid/util/SparseArray;

    move-result-object v44

    .line 6284
    .local v44, "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    if-eqz v44, :cond_a

    .line 6285
    const/16 v40, 0x0

    .local v40, "j":I
    :goto_4
    invoke-virtual/range {v44 .. v44}, Landroid/util/SparseArray;->size()I

    move-result v6

    move/from16 v0, v40

    if-ge v0, v6, :cond_a

    .line 6286
    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v41

    check-cast v41, Landroid/os/BatteryStats$Uid$Pid;

    .line 6287
    .local v41, "pid":Landroid/os/BatteryStats$Uid$Pid;
    if-nez v32, :cond_8

    .line 6288
    const-string/jumbo v6, "Per-PID Stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6289
    const/16 v32, 0x1

    .line 6291
    :cond_8
    move-object/from16 v0, v41

    iget-wide v14, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeSumMs:J

    move-object/from16 v0, v41

    iget v6, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeNesting:I

    if-lez v6, :cond_9

    .line 6292
    move-object/from16 v0, v41

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Pid;->mWakeStartMs:J

    sub-long v12, v42, v12

    .line 6291
    :goto_5
    add-long v46, v14, v12

    .line 6293
    .local v46, "time":J
    const-string/jumbo v6, "  PID "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v44

    move/from16 v1, v40

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 6294
    const-string/jumbo v6, " wake time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6295
    move-wide/from16 v0, v46

    move-object/from16 v2, p2

    invoke-static {v0, v1, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6296
    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6285
    add-int/lit8 v40, v40, 0x1

    goto :goto_4

    .line 6292
    .end local v46    # "time":J
    :cond_9
    const-wide/16 v12, 0x0

    goto :goto_5

    .line 6281
    .end local v40    # "j":I
    .end local v41    # "pid":Landroid/os/BatteryStats$Uid$Pid;
    :cond_a
    add-int/lit8 v35, v35, 0x1

    goto :goto_3

    .line 6300
    .end local v44    # "pids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Pid;>;"
    .end local v50    # "uid":Landroid/os/BatteryStats$Uid;
    :cond_b
    if-eqz v32, :cond_c

    .line 6301
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6305
    .end local v4    # "NU":I
    .end local v32    # "didPid":Z
    .end local v35    # "i":I
    .end local v42    # "nowRealtime":J
    .end local v51    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    :cond_c
    if-eqz v34, :cond_d

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_12

    .line 6306
    :cond_d
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Discharge step durations:"

    .line 6307
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    .line 6306
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 6309
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 6308
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v48

    .line 6310
    .local v48, "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_e

    .line 6311
    const-string/jumbo v6, "  Estimated discharge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6312
    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6313
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6315
    :cond_e
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v11

    .line 6316
    .local v11, "steps":Landroid/os/BatteryStats$LevelStepTracker;
    const/16 v35, 0x0

    .restart local v35    # "i":I
    :goto_6
    sget-object v6, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    array-length v6, v6

    move/from16 v0, v35

    if-ge v0, v6, :cond_f

    .line 6317
    const-string/jumbo v6, "  Estimated "

    sget-object v10, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_LABELS:[Ljava/lang/String;

    aget-object v10, v10, v35

    const-string/jumbo v19, " time: "

    .line 6318
    sget-object v12, Landroid/os/BatteryStats;->STEP_LEVEL_MODES_OF_INTEREST:[I

    aget v12, v12, v35

    int-to-long v12, v12

    .line 6319
    sget-object v14, Landroid/os/BatteryStats;->STEP_LEVEL_MODE_VALUES:[I

    aget v14, v14, v35

    int-to-long v14, v14

    const/16 v16, 0x0

    .line 6318
    invoke-virtual/range {v11 .. v16}, Landroid/os/BatteryStats$LevelStepTracker;->computeTimeEstimate(JJ[I)J

    move-result-wide v16

    move-object/from16 v12, p2

    move-object v13, v6

    move-object v14, v10

    move-object/from16 v15, v19

    .line 6317
    invoke-static/range {v12 .. v17}, Landroid/os/BatteryStats;->dumpTimeEstimate(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Z

    .line 6316
    add-int/lit8 v35, v35, 0x1

    goto :goto_6

    .line 6321
    :cond_f
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6323
    .end local v11    # "steps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v35    # "i":I
    .end local v48    # "timeRemaining":J
    :cond_10
    const-string/jumbo v6, "  "

    const-string/jumbo v10, "Charge step durations:"

    .line 6324
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v12

    const/4 v13, 0x0

    .line 6323
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 6326
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    .line 6325
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v48

    .line 6327
    .restart local v48    # "timeRemaining":J
    const-wide/16 v12, 0x0

    cmp-long v6, v48, v12

    if-ltz v6, :cond_11

    .line 6328
    const-string/jumbo v6, "  Estimated charge time remaining: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6329
    const-wide/16 v12, 0x3e8

    div-long v12, v48, v12

    move-object/from16 v0, p2

    invoke-static {v12, v13, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 6330
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6332
    :cond_11
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6335
    .end local v48    # "timeRemaining":J
    :cond_12
    if-eqz v34, :cond_13

    and-int/lit8 v6, p3, 0x6

    if-eqz v6, :cond_21

    .line 6336
    :cond_13
    const-string/jumbo v6, "Daily stats:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6337
    const-string/jumbo v6, "  Current start time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6338
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    .line 6339
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCurrentDailyStartTime()J

    move-result-wide v12

    .line 6338
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6340
    const-string/jumbo v6, "  Next min deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6341
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    .line 6342
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMinDailyDeadline()J

    move-result-wide v12

    .line 6341
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6343
    const-string/jumbo v6, "  Next max deadline: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6344
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    .line 6345
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getNextMaxDailyDeadline()J

    move-result-wide v12

    .line 6344
    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6346
    new-instance v17, Ljava/lang/StringBuilder;

    const/16 v6, 0x40

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 6347
    .local v17, "sb":Ljava/lang/StringBuilder;
    const/4 v6, 0x1

    new-array v0, v6, [I

    move-object/from16 v18, v0

    .line 6348
    .local v18, "outInt":[I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v16

    .line 6349
    .local v16, "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;

    move-result-object v23

    .line 6350
    .local v23, "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDailyPackageChanges()Ljava/util/ArrayList;

    move-result-object v45

    .line 6351
    .local v45, "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    move-object/from16 v0, v16

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-gtz v6, :cond_14

    move-object/from16 v0, v23

    iget v6, v0, Landroid/os/BatteryStats$LevelStepTracker;->mNumStepDurations:I

    if-lez v6, :cond_1d

    .line 6352
    :cond_14
    :goto_7
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_15

    xor-int/lit8 v6, v34, 0x1

    if-eqz v6, :cond_1e

    .line 6353
    :cond_15
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily discharge step durations:"

    .line 6354
    const/4 v12, 0x0

    .line 6353
    move-object/from16 v0, p2

    move-object/from16 v1, v16

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 6355
    const-string/jumbo v14, "      "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 6358
    :cond_16
    const-string/jumbo v6, "    "

    const-string/jumbo v10, "  Current daily charge step durations:"

    .line 6359
    const/4 v12, 0x0

    .line 6358
    move-object/from16 v0, p2

    move-object/from16 v1, v23

    invoke-static {v0, v6, v10, v1, v12}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 6360
    const-string/jumbo v21, "      "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 6363
    :cond_17
    const-string/jumbo v6, "    "

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, v45

    invoke-direct {v0, v1, v6, v2}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 6373
    :cond_18
    :goto_8
    const/16 v31, 0x0

    .line 6374
    .local v31, "curIndex":I
    :goto_9
    move-object/from16 v0, p0

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;

    move-result-object v33

    .local v33, "dit":Landroid/os/BatteryStats$DailyItem;
    if-eqz v33, :cond_20

    .line 6375
    add-int/lit8 v31, v31, 0x1

    .line 6376
    and-int/lit8 v6, p3, 0x4

    if-eqz v6, :cond_19

    .line 6377
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6379
    :cond_19
    const-string/jumbo v6, "  Daily from "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6380
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mStartTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6381
    const-string/jumbo v6, " to "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6382
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    move-object/from16 v0, v33

    iget-wide v12, v0, Landroid/os/BatteryStats$DailyItem;->mEndTime:J

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6383
    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6384
    and-int/lit8 v6, p3, 0x4

    if-nez v6, :cond_1a

    xor-int/lit8 v6, v34, 0x1

    if-eqz v6, :cond_1f

    .line 6385
    :cond_1a
    const-string/jumbo v6, "      "

    .line 6386
    const-string/jumbo v10, "    Discharge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    .line 6385
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1b

    .line 6387
    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 6390
    :cond_1b
    const-string/jumbo v6, "      "

    .line 6391
    const-string/jumbo v10, "    Charge step durations:"

    move-object/from16 v0, v33

    iget-object v12, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    const/4 v13, 0x0

    .line 6390
    move-object/from16 v0, p2

    invoke-static {v0, v6, v10, v12, v13}, Landroid/os/BatteryStats;->dumpDurationSteps(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Z)Z

    move-result v6

    if-eqz v6, :cond_1c

    .line 6392
    const-string/jumbo v26, "        "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 6395
    :cond_1c
    const-string/jumbo v6, "    "

    move-object/from16 v0, v33

    iget-object v10, v0, Landroid/os/BatteryStats$DailyItem;->mPackageChanges:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v10}, Landroid/os/BatteryStats;->dumpDailyPackageChanges(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/ArrayList;)V

    goto/16 :goto_9

    .line 6351
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1d
    if-eqz v45, :cond_18

    goto/16 :goto_7

    .line 6365
    :cond_1e
    const-string/jumbo v6, "  Current daily steps:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6366
    const-string/jumbo v14, "    "

    const-string/jumbo v15, "Discharge"

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 6368
    const-string/jumbo v21, "    "

    const-string/jumbo v22, "Charge"

    move-object/from16 v19, p0

    move-object/from16 v20, p2

    move-object/from16 v24, v17

    move-object/from16 v25, v18

    invoke-direct/range {v19 .. v25}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_8

    .line 6397
    .restart local v31    # "curIndex":I
    .restart local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    :cond_1f
    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Discharge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mDischargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    .line 6399
    const-string/jumbo v26, "    "

    const-string/jumbo v27, "Charge"

    move-object/from16 v0, v33

    iget-object v0, v0, Landroid/os/BatteryStats$DailyItem;->mChargeSteps:Landroid/os/BatteryStats$LevelStepTracker;

    move-object/from16 v28, v0

    move-object/from16 v24, p0

    move-object/from16 v25, p2

    move-object/from16 v29, v17

    move-object/from16 v30, v18

    invoke-direct/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpDailyLevelStepSummary(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$LevelStepTracker;Ljava/lang/StringBuilder;[I)V

    goto/16 :goto_9

    .line 6403
    :cond_20
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6405
    .end local v16    # "dsteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v17    # "sb":Ljava/lang/StringBuilder;
    .end local v18    # "outInt":[I
    .end local v23    # "csteps":Landroid/os/BatteryStats$LevelStepTracker;
    .end local v31    # "curIndex":I
    .end local v33    # "dit":Landroid/os/BatteryStats$DailyItem;
    .end local v45    # "pkgc":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$PackageChange;>;"
    :cond_21
    if-eqz v34, :cond_22

    and-int/lit8 v6, p3, 0x2

    if-eqz v6, :cond_23

    .line 6406
    :cond_22
    const-string/jumbo v6, "Statistics since last charge:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6407
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "  System starts: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartCount()I

    move-result v10

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6408
    const-string/jumbo v10, ", currently on battery: "

    .line 6407
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 6408
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v10

    .line 6407
    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6409
    const-string/jumbo v27, ""

    .line 6410
    and-int/lit8 v6, p3, 0x40

    if-eqz v6, :cond_24

    const/16 v30, 0x1

    .line 6409
    :goto_a
    const/16 v28, 0x0

    move-object/from16 v24, p0

    move-object/from16 v25, p1

    move-object/from16 v26, p2

    move/from16 v29, p4

    invoke-virtual/range {v24 .. v30}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 6411
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 6413
    :cond_23
    return-void

    .line 6410
    :cond_24
    const/16 v30, 0x0

    goto :goto_a
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I

    .prologue
    .line 3894
    invoke-static {p1}, Lcom/android/internal/os/BatteryStatsHelper;->checkWifiOnly(Landroid/content/Context;)Z

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Landroid/os/BatteryStats;->dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V

    .line 3895
    return-void
.end method

.method public final dumpLocked(Landroid/content/Context;Ljava/io/PrintWriter;Ljava/lang/String;IIZ)V
    .locals 305
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "which"    # I
    .param p5, "reqUid"    # I
    .param p6, "wifiOnly"    # Z

    .prologue
    .line 3900
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v190, v6, v12

    .line 3901
    .local v190, "rawUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    mul-long v24, v6, v12

    .line 3902
    .local v24, "rawRealtime":J
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v24

    const-wide/16 v12, 0x3e8

    div-long v188, v6, v12

    .line 3903
    .local v188, "rawRealtimeMs":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->getBatteryUptime(J)J

    move-result-wide v62

    .line 3905
    .local v62, "batteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryUptime(JI)J

    move-result-wide v0

    move-wide/16 v272, v0

    .line 3906
    .local v272, "whichBatteryUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v0

    move-wide/16 v266, v0

    .line 3907
    .local v266, "whichBatteryRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeRealtime(JI)J

    move-result-wide v226

    .line 3908
    .local v226, "totalRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeUptime(JI)J

    move-result-wide v234

    .line 3909
    .local v234, "totalUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v190

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffUptime(JI)J

    move-result-wide v0

    move-wide/16 v270, v0

    .line 3910
    .local v270, "whichBatteryScreenOffUptime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeBatteryScreenOffRealtime(JI)J

    move-result-wide v0

    move-wide/16 v268, v0

    .line 3912
    .local v268, "whichBatteryScreenOffRealtime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v60

    .line 3913
    .local v60, "batteryTimeRemaining":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v86

    .line 3914
    .local v86, "chargeTimeRemaining":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenDozeTime(JI)J

    move-result-wide v196

    .line 3916
    .local v196, "screenDozeTime":J
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v6, 0x80

    invoke-direct {v14, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3918
    .local v14, "sb":Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getUidStats()Landroid/util/SparseArray;

    move-result-object v243

    .line 3919
    .local v243, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v243 .. v243}, Landroid/util/SparseArray;->size()I

    move-result v46

    .line 3921
    .local v46, "NU":I
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getEstimatedBatteryCapacity()I

    move-result v114

    .line 3922
    .local v114, "estimatedBatteryCapacity":I
    if-lez v114, :cond_0

    .line 3923
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3924
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3925
    const-string/jumbo v6, "  Estimated battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3926
    move/from16 v0, v114

    int-to-double v6, v0

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3927
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3928
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3931
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMinLearnedBatteryCapacity()I

    move-result v149

    .line 3932
    .local v149, "minLearnedBatteryCapacity":I
    if-lez v149, :cond_1

    .line 3933
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3934
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3935
    const-string/jumbo v6, "  Min learned battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3936
    move/from16 v0, v149

    div-int/lit16 v6, v0, 0x3e8

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3937
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3938
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getMaxLearnedBatteryCapacity()I

    move-result v148

    .line 3941
    .local v148, "maxLearnedBatteryCapacity":I
    if-lez v148, :cond_2

    .line 3942
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3943
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3944
    const-string/jumbo v6, "  Max learned battery capacity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3945
    move/from16 v0, v148

    div-int/lit16 v6, v0, 0x3e8

    int-to-double v6, v6

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3946
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3947
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3950
    :cond_2
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3951
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3952
    const-string/jumbo v6, "  Time on battery: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3953
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v266

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3954
    move-object/from16 v0, p0

    move-wide/from16 v1, v266

    move-wide/from16 v3, v226

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3955
    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3956
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v272

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3957
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v272

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3958
    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3959
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3961
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3962
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3963
    const-string/jumbo v6, "  Time on battery screen off: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3964
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v268

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3965
    move-object/from16 v0, p0

    move-wide/from16 v1, v268

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3966
    const-string/jumbo v6, ") realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3967
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v270

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3968
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3969
    move-object/from16 v0, p0

    move-wide/from16 v1, v270

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3970
    const-string/jumbo v6, ") uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3971
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3973
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3974
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3975
    const-string/jumbo v6, "  Time on battery screen doze: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3976
    const-wide/16 v6, 0x3e8

    div-long v6, v196, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3977
    move-object/from16 v0, p0

    move-wide/from16 v1, v196

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3978
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3979
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3981
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3982
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    const-string/jumbo v6, "  Total run time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3984
    const-wide/16 v6, 0x3e8

    div-long v6, v226, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3985
    const-string/jumbo v6, "realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3986
    const-wide/16 v6, 0x3e8

    div-long v6, v234, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3987
    const-string/jumbo v6, "uptime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3988
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3989
    const-wide/16 v6, 0x0

    cmp-long v6, v60, v6

    if-ltz v6, :cond_3

    .line 3990
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3991
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3992
    const-string/jumbo v6, "  Battery time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3993
    const-wide/16 v6, 0x3e8

    div-long v6, v60, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 3994
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3996
    :cond_3
    const-wide/16 v6, 0x0

    cmp-long v6, v86, v6

    if-ltz v6, :cond_4

    .line 3997
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3998
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3999
    const-string/jumbo v6, "  Charge time remaining: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4000
    const-wide/16 v6, 0x3e8

    div-long v6, v86, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4001
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4004
    :cond_4
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischarge(I)J

    move-result-wide v104

    .line 4005
    .local v104, "dischargeCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v104, v6

    if-ltz v6, :cond_5

    .line 4006
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4007
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4008
    const-string/jumbo v6, "  Discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4009
    move-wide/from16 v0, v104

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4010
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4011
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4014
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenOff(I)J

    move-result-wide v108

    .line 4015
    .local v108, "dischargeScreenOffCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v108, v6

    if-ltz v6, :cond_6

    .line 4016
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4017
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4018
    const-string/jumbo v6, "  Screen off discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4019
    move-wide/from16 v0, v108

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4020
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4021
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4024
    :cond_6
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getMahDischargeScreenDoze(I)J

    move-result-wide v106

    .line 4025
    .local v106, "dischargeScreenDozeCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v106, v6

    if-ltz v6, :cond_7

    .line 4026
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4027
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4028
    const-string/jumbo v6, "  Screen doze discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4029
    move-wide/from16 v0, v106

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4030
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4031
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4035
    :cond_7
    sub-long v6, v104, v108

    sub-long v110, v6, v106

    .line 4036
    .local v110, "dischargeScreenOnCount":J
    const-wide/16 v6, 0x0

    cmp-long v6, v110, v6

    if-ltz v6, :cond_8

    .line 4037
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4038
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4039
    const-string/jumbo v6, "  Screen on discharge: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4040
    move-wide/from16 v0, v110

    long-to-double v6, v0

    const-wide v12, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4041
    const-string/jumbo v6, " mAh"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4042
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4045
    :cond_8
    const-string/jumbo v6, "  Start clock time: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4046
    const-string/jumbo v6, "yyyy-MM-dd-HH-mm-ss"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getStartClockTime()J

    move-result-wide v12

    invoke-static {v6, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4048
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getScreenOnTime(JI)J

    move-result-wide v200

    .line 4049
    .local v200, "screenOnTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getInteractiveTime(JI)J

    move-result-wide v132

    .line 4050
    .local v132, "interactiveTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPowerSaveModeEnabledTime(JI)J

    move-result-wide v184

    .line 4051
    .local v184, "powerSaveModeEnabledTime":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v96

    .line 4053
    .local v96, "deviceIdleModeLightTime":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdleModeTime(IJI)J

    move-result-wide v94

    .line 4055
    .local v94, "deviceIdleModeFullTime":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v100

    .line 4057
    .local v100, "deviceLightIdlingTime":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v6, v1, v2, v3}, Landroid/os/BatteryStats;->getDeviceIdlingTime(IJI)J

    move-result-wide v98

    .line 4059
    .local v98, "deviceIdlingTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getPhoneOnTime(JI)J

    move-result-wide v182

    .line 4060
    .local v182, "phoneOnTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    move-wide/16 v276, v0

    .line 4061
    .local v276, "wifiRunningTime":J
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getWifiOnTime(JI)J

    move-result-wide v0

    move-wide/16 v274, v0

    .line 4062
    .local v274, "wifiOnTime":J
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4063
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4064
    const-string/jumbo v6, "  Screen on: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v200, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4065
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v200

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4066
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getScreenOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4067
    const-string/jumbo v6, "x, Interactive: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v132, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4068
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v132

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4069
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4070
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4071
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4072
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4073
    const-string/jumbo v6, "  Screen brightnesses:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4074
    const/16 v102, 0x0

    .line 4075
    .local v102, "didOne":Z
    const/16 v127, 0x0

    .local v127, "i":I
    :goto_0
    const/4 v6, 0x5

    move/from16 v0, v127

    if-ge v0, v6, :cond_a

    .line 4076
    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getScreenBrightnessTime(IJI)J

    move-result-wide v216

    .line 4077
    .local v216, "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v216, v6

    if-nez v6, :cond_9

    .line 4075
    :goto_1
    add-int/lit8 v127, v127, 0x1

    goto :goto_0

    .line 4080
    :cond_9
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4081
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    const/16 v102, 0x1

    .line 4083
    sget-object v6, Landroid/os/BatteryStats;->SCREEN_BRIGHTNESS_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4084
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4085
    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4086
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4087
    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v200

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4088
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 4090
    .end local v216    # "time":J
    :cond_a
    if-nez v102, :cond_b

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4091
    :cond_b
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4092
    const-wide/16 v6, 0x0

    cmp-long v6, v184, v6

    if-eqz v6, :cond_c

    .line 4093
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4094
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4095
    const-string/jumbo v6, "  Power save mode enabled: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4096
    const-wide/16 v6, 0x3e8

    div-long v6, v184, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4097
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4098
    move-object/from16 v0, p0

    move-wide/from16 v1, v184

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4099
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4100
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4102
    :cond_c
    const-wide/16 v6, 0x0

    cmp-long v6, v100, v6

    if-eqz v6, :cond_d

    .line 4103
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4104
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4105
    const-string/jumbo v6, "  Device light idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4106
    const-wide/16 v6, 0x3e8

    div-long v6, v100, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4107
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4108
    move-object/from16 v0, p0

    move-wide/from16 v1, v100

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4109
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4110
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4111
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4113
    :cond_d
    const-wide/16 v6, 0x0

    cmp-long v6, v96, v6

    if-eqz v6, :cond_e

    .line 4114
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4115
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4116
    const-string/jumbo v6, "  Idle mode light time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4117
    const-wide/16 v6, 0x3e8

    div-long v6, v96, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4118
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4119
    move-object/from16 v0, p0

    move-wide/from16 v1, v96

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4120
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4121
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4122
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4123
    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4124
    const/4 v6, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4125
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4127
    :cond_e
    const-wide/16 v6, 0x0

    cmp-long v6, v98, v6

    if-eqz v6, :cond_f

    .line 4128
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4129
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4130
    const-string/jumbo v6, "  Device full idling: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4131
    const-wide/16 v6, 0x3e8

    div-long v6, v98, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4132
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4133
    move-object/from16 v0, p0

    move-wide/from16 v1, v98

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4134
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdlingCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4135
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4136
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4138
    :cond_f
    const-wide/16 v6, 0x0

    cmp-long v6, v94, v6

    if-eqz v6, :cond_10

    .line 4139
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4140
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4141
    const-string/jumbo v6, "  Idle mode full time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4142
    const-wide/16 v6, 0x3e8

    div-long v6, v94, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4143
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4144
    move-object/from16 v0, p0

    move-wide/from16 v1, v94

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4145
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4146
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getDeviceIdleModeCount(II)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4147
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4148
    const-string/jumbo v6, " -- longest "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4149
    const/4 v6, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats;->getLongestDeviceIdleModeTime(I)J

    move-result-wide v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4150
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4152
    :cond_10
    const-wide/16 v6, 0x0

    cmp-long v6, v182, v6

    if-eqz v6, :cond_11

    .line 4153
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4154
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4155
    const-string/jumbo v6, "  Active phone call: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v6, 0x3e8

    div-long v6, v182, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4156
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v182

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4157
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getPhoneOnCount(I)I

    move-result v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4159
    :cond_11
    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNumConnectivityChange(I)I

    move-result v88

    .line 4160
    .local v88, "connChanges":I
    if-eqz v88, :cond_12

    .line 4161
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4162
    const-string/jumbo v6, "  Connectivity changes: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move/from16 v1, v88

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 4166
    :cond_12
    const-wide/16 v118, 0x0

    .line 4167
    .local v118, "fullWakeLockTimeTotalMicros":J
    const-wide/16 v180, 0x0

    .line 4169
    .local v180, "partialWakeLockTimeTotalMicros":J
    new-instance v219, Ljava/util/ArrayList;

    invoke-direct/range {v219 .. v219}, Ljava/util/ArrayList;-><init>()V

    .line 4171
    .local v219, "timers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    const/16 v140, 0x0

    .local v140, "iu":I
    :goto_2
    move/from16 v0, v140

    move/from16 v1, v46

    if-ge v0, v1, :cond_17

    .line 4172
    move-object/from16 v0, v243

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v239

    check-cast v239, Landroid/os/BatteryStats$Uid;

    .line 4175
    .local v239, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    move-object/16 v263, v0

    .line 4176
    .local v263, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v263 .. v263}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v141, v6, -0x1

    .local v141, "iw":I
    :goto_3
    if-ltz v141, :cond_16

    .line 4177
    move-object/from16 v0, v263

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v304, v0

    move-object/from16 v0, v304

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v304, v0

    .line 4179
    .local v304, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/4 v6, 0x1

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v120

    .line 4180
    .local v120, "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v120, :cond_13

    .line 4181
    move-object/from16 v0, v120

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    add-long v118, v118, v6

    .line 4185
    :cond_13
    const/4 v6, 0x0

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v9

    .line 4186
    .local v9, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v9, :cond_15

    .line 4187
    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-virtual {v9, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v10

    .line 4189
    .local v10, "totalTimeMicros":J
    const-wide/16 v6, 0x0

    cmp-long v6, v10, v6

    if-lez v6, :cond_15

    .line 4190
    move/from16 v0, p5

    if-gez v0, :cond_14

    .line 4194
    new-instance v6, Landroid/os/BatteryStats$TimerEntry;

    move-object/from16 v0, v263

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v8

    invoke-direct/range {v6 .. v11}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v219

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4197
    :cond_14
    add-long v180, v180, v10

    .line 4176
    .end local v10    # "totalTimeMicros":J
    :cond_15
    add-int/lit8 v141, v141, -0x1

    goto :goto_3

    .line 4171
    .end local v9    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v120    # "fullWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v304    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_16
    add-int/lit8 v140, v140, 0x1

    goto :goto_2

    .line 4203
    .end local v141    # "iw":I
    .end local v239    # "u":Landroid/os/BatteryStats$Uid;
    .end local v263    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :cond_17
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v156

    .line 4204
    .local v156, "mobileRxTotalBytes":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v164

    .line 4205
    .local v164, "mobileTxTotalBytes":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v282, v0

    .line 4206
    .local v282, "wifiRxTotalBytes":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v298, v0

    .line 4207
    .local v298, "wifiTxTotalBytes":J
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v158

    .line 4208
    .local v158, "mobileRxTotalPackets":J
    const/4 v6, 0x1

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v166

    .line 4209
    .local v166, "mobileTxTotalPackets":J
    const/4 v6, 0x2

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v284, v0

    .line 4210
    .local v284, "wifiRxTotalPackets":J
    const/4 v6, 0x3

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v300, v0

    .line 4211
    .local v300, "wifiTxTotalPackets":J
    const/4 v6, 0x4

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v78

    .line 4212
    .local v78, "btRxTotalBytes":J
    const/4 v6, 0x5

    move-object/from16 v0, p0

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats;->getNetworkActivityBytes(II)J

    move-result-wide v82

    .line 4214
    .local v82, "btTxTotalBytes":J
    const-wide/16 v6, 0x0

    cmp-long v6, v118, v6

    if-eqz v6, :cond_18

    .line 4215
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4216
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4217
    const-string/jumbo v6, "  Total full wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4218
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v118

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    .line 4217
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4219
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4222
    :cond_18
    const-wide/16 v6, 0x0

    cmp-long v6, v180, v6

    if-eqz v6, :cond_19

    .line 4223
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4224
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4225
    const-string/jumbo v6, "  Total partial wakelock time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4226
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v180

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    .line 4225
    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4227
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4230
    :cond_19
    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4231
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4232
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4233
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4234
    const-string/jumbo v6, "  CONNECTIVITY POWER SUMMARY START"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4235
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4237
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4238
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4239
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    const-string/jumbo v6, "  Logging duration for connectivity statistics: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4241
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v266

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4242
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4244
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4245
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4246
    const-string/jumbo v6, "  Cellular Statistics:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4247
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4249
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4250
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4251
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4252
    const-string/jumbo v6, "     Cellular kernel active time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4253
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getMobileRadioActiveTime(JI)J

    move-result-wide v150

    .line 4254
    .local v150, "mobileActiveTime":J
    const-wide/16 v6, 0x3e8

    div-long v6, v150, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4255
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v150

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4256
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4259
    const-string/jumbo v6, "     Cellular data received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v156

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4260
    const-string/jumbo v6, "     Cellular data sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v164

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4261
    const-string/jumbo v6, "     Cellular packets received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v158

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 4262
    const-string/jumbo v6, "     Cellular packets sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v166

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 4264
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4265
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4266
    const-string/jumbo v6, "     Cellular Radio Access Technology:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4267
    const/16 v102, 0x0

    .line 4268
    const/16 v127, 0x0

    :goto_4
    const/16 v6, 0x11

    move/from16 v0, v127

    if-ge v0, v6, :cond_1b

    .line 4269
    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneDataConnectionTime(IJI)J

    move-result-wide v216

    .line 4270
    .restart local v216    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v216, v6

    if-nez v6, :cond_1a

    .line 4268
    :goto_5
    add-int/lit8 v127, v127, 0x1

    goto :goto_4

    .line 4273
    :cond_1a
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4274
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4275
    const/16 v102, 0x1

    .line 4276
    sget-object v6, Landroid/os/BatteryStats;->DATA_CONNECTION_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4277
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4278
    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4279
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4280
    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4281
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 4283
    .end local v216    # "time":J
    :cond_1b
    if-nez v102, :cond_1c

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4284
    :cond_1c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4286
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4287
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4288
    const-string/jumbo v6, "     Cellular Rx signal strength (RSRP):"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4289
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    move-object/from16 v84, v0

    .line 4290
    const-string/jumbo v6, "very poor (less than -128dBm): "

    const/4 v7, 0x0

    aput-object v6, v84, v7

    .line 4291
    const-string/jumbo v6, "poor (-128dBm to -118dBm): "

    const/4 v7, 0x1

    aput-object v6, v84, v7

    .line 4292
    const-string/jumbo v6, "moderate (-118dBm to -108dBm): "

    const/4 v7, 0x2

    aput-object v6, v84, v7

    .line 4293
    const-string/jumbo v6, "good (-108dBm to -98dBm): "

    const/4 v7, 0x3

    aput-object v6, v84, v7

    .line 4294
    const-string/jumbo v6, "great (greater than -98dBm): "

    const/4 v7, 0x4

    aput-object v6, v84, v7

    .line 4295
    .local v84, "cellularRxSignalStrengthDescription":[Ljava/lang/String;
    const/16 v102, 0x0

    .line 4297
    move-object/from16 v0, v84

    array-length v6, v0

    .line 4296
    const/4 v7, 0x5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v172

    .line 4298
    .local v172, "numCellularRxBins":I
    const/16 v127, 0x0

    :goto_6
    move/from16 v0, v127

    move/from16 v1, v172

    if-ge v0, v1, :cond_1e

    .line 4299
    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v216

    .line 4300
    .restart local v216    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v216, v6

    if-nez v6, :cond_1d

    .line 4298
    :goto_7
    add-int/lit8 v127, v127, 0x1

    goto :goto_6

    .line 4303
    :cond_1d
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4304
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4305
    const/16 v102, 0x1

    .line 4306
    aget-object v6, v84, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4307
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4308
    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4309
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4310
    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 4313
    .end local v216    # "time":J
    :cond_1e
    if-nez v102, :cond_1f

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4314
    :cond_1f
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4316
    const-string/jumbo v16, "Cellular"

    .line 4317
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    .line 4316
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4319
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4320
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4321
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4322
    const-string/jumbo v6, "  Wifi Statistics:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4323
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4325
    const-string/jumbo v6, "     Wifi data received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v282

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4326
    const-string/jumbo v6, "     Wifi data sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v298

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4327
    const-string/jumbo v6, "     Wifi packets received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v284

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 4328
    const-string/jumbo v6, "     Wifi packets sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v300

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->println(J)V

    .line 4330
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4331
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4332
    const-string/jumbo v6, "     Wifi states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4333
    const/16 v102, 0x0

    .line 4334
    const/16 v127, 0x0

    :goto_8
    const/16 v6, 0x8

    move/from16 v0, v127

    if-ge v0, v6, :cond_21

    .line 4335
    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiStateTime(IJI)J

    move-result-wide v216

    .line 4336
    .restart local v216    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v216, v6

    if-nez v6, :cond_20

    .line 4334
    :goto_9
    add-int/lit8 v127, v127, 0x1

    goto :goto_8

    .line 4339
    :cond_20
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4340
    const/16 v102, 0x1

    .line 4341
    sget-object v6, Landroid/os/BatteryStats;->WIFI_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4342
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4343
    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4344
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4345
    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4346
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 4348
    .end local v216    # "time":J
    :cond_21
    if-nez v102, :cond_22

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4349
    :cond_22
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4351
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4352
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4353
    const-string/jumbo v6, "     Wifi supplicant states:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4354
    const/16 v102, 0x0

    .line 4355
    const/16 v127, 0x0

    :goto_a
    const/16 v6, 0xd

    move/from16 v0, v127

    if-ge v0, v6, :cond_24

    .line 4356
    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSupplStateTime(IJI)J

    move-result-wide v216

    .line 4357
    .restart local v216    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v216, v6

    if-nez v6, :cond_23

    .line 4355
    :goto_b
    add-int/lit8 v127, v127, 0x1

    goto :goto_a

    .line 4360
    :cond_23
    const-string/jumbo v6, "\n       "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4361
    const/16 v102, 0x1

    .line 4362
    sget-object v6, Landroid/os/BatteryStats;->WIFI_SUPPL_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4363
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4364
    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4365
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4366
    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4367
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 4369
    .end local v216    # "time":J
    :cond_24
    if-nez v102, :cond_25

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4370
    :cond_25
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4372
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4373
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4374
    const-string/jumbo v6, "     Wifi Rx signal strength (RSSI):"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4375
    const/4 v6, 0x5

    new-array v0, v6, [Ljava/lang/String;

    move-object/16 v265, v0

    .line 4376
    const-string/jumbo v6, "very poor (less than -88.75dBm): "

    const/4 v7, 0x0

    move-object/from16 v0, v265

    aput-object v6, v0, v7

    .line 4377
    const-string/jumbo v6, "poor (-88.75 to -77.5dBm): "

    const/4 v7, 0x1

    move-object/from16 v0, v265

    aput-object v6, v0, v7

    .line 4378
    const-string/jumbo v6, "moderate (-77.5dBm to -66.25dBm): "

    const/4 v7, 0x2

    move-object/from16 v0, v265

    aput-object v6, v0, v7

    .line 4379
    const-string/jumbo v6, "good (-66.25dBm to -55dBm): "

    const/4 v7, 0x3

    move-object/from16 v0, v265

    aput-object v6, v0, v7

    .line 4380
    const-string/jumbo v6, "great (greater than -55dBm): "

    const/4 v7, 0x4

    move-object/from16 v0, v265

    aput-object v6, v0, v7

    .line 4381
    .local v265, "wifiRxSignalStrengthDescription":[Ljava/lang/String;
    const/16 v102, 0x0

    .line 4383
    move-object/from16 v0, v265

    array-length v6, v0

    .line 4382
    const/4 v7, 0x5

    invoke-static {v7, v6}, Ljava/lang/Math;->min(II)I

    move-result v175

    .line 4384
    .local v175, "numWifiRxBins":I
    const/16 v127, 0x0

    :goto_c
    move/from16 v0, v127

    move/from16 v1, v175

    if-ge v0, v1, :cond_27

    .line 4385
    move-object/from16 v0, p0

    move/from16 v1, v127

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->getWifiSignalStrengthTime(IJI)J

    move-result-wide v216

    .line 4386
    .restart local v216    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v216, v6

    if-nez v6, :cond_26

    .line 4384
    :goto_d
    add-int/lit8 v127, v127, 0x1

    goto :goto_c

    .line 4389
    :cond_26
    const-string/jumbo v6, "\n    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4390
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4391
    const/16 v102, 0x1

    .line 4392
    const-string/jumbo v6, "     "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4393
    move-object/from16 v0, v265

    aget-object v6, v0, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4394
    const-wide/16 v6, 0x3e8

    div-long v6, v216, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4395
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4396
    move-object/from16 v0, p0

    move-wide/from16 v1, v216

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4397
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 4399
    .end local v216    # "time":J
    :cond_27
    if-nez v102, :cond_28

    const-string/jumbo v6, " (no activity)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4400
    :cond_28
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4402
    const-string/jumbo v16, "WiFi"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4404
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4405
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4406
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4407
    const-string/jumbo v6, "  CONNECTIVITY POWER SUMMARY END"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4408
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4409
    const-string/jumbo v6, ""

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4411
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4412
    const-string/jumbo v6, "  Bluetooth total received: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v78

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4413
    const-string/jumbo v6, ", sent: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-wide/from16 v1, v82

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4415
    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats;->getBluetoothScanTime(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x3e8

    div-long v74, v6, v12

    .line 4416
    .local v74, "bluetoothScanTimeMs":J
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4417
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4418
    const-string/jumbo v6, "  Bluetooth scan time: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v0, v74

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4419
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4421
    const-string/jumbo v16, "Bluetooth"

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move-object/from16 v15, p3

    move/from16 v18, p4

    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivity(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4424
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4426
    const/4 v6, 0x2

    move/from16 v0, p4

    if-ne v0, v6, :cond_3a

    .line 4427
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getIsOnBattery()Z

    move-result v6

    if-eqz v6, :cond_39

    .line 4428
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently unplugged"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4429
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4430
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4431
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Discharge cycle current level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4432
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4440
    :goto_e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4441
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOn()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4442
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4443
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOff()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4444
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen doze: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4445
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDoze()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4446
    const-string/jumbo v6, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4462
    :goto_f
    new-instance v126, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, 0x0

    move-object/from16 v0, v126

    move-object/from16 v1, p1

    move/from16 v2, p6

    invoke-direct {v0, v1, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    .line 4463
    .local v126, "helper":Lcom/android/internal/os/BatteryStatsHelper;
    move-object/from16 v0, v126

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 4464
    const/4 v6, -0x1

    move-object/from16 v0, v126

    move/from16 v1, p4

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 4465
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v205

    .line 4466
    .local v205, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz v205, :cond_3c

    invoke-interface/range {v205 .. v205}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3c

    .line 4467
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Estimated power use (mAh):"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4468
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Capacity: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4469
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/os/PowerProfile;->getBatteryCapacity()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4470
    const-string/jumbo v6, ", Computed drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getComputedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4471
    const-string/jumbo v6, ", actual drain: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4472
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMinDrainedPower()D

    move-result-wide v6

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v12

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_29

    .line 4473
    const-string/jumbo v6, "-"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxDrainedPower()D

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4475
    :cond_29
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4476
    const/16 v127, 0x0

    :goto_10
    invoke-interface/range {v205 .. v205}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_3b

    .line 4477
    move-object/from16 v0, v205

    move/from16 v1, v127

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/internal/os/BatterySipper;

    .line 4478
    .local v73, "bs":Lcom/android/internal/os/BatterySipper;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4479
    invoke-static {}, Landroid/os/BatteryStats;->-getcom-android-internal-os-BatterySipper$DrainTypeSwitchesValues()[I

    move-result-object v6

    move-object/from16 v0, v73

    iget-object v7, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v7}, Lcom/android/internal/os/BatterySipper$DrainType;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 4520
    const-string/jumbo v6, "    ???: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4523
    :goto_11
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4525
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, v73

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_34

    .line 4529
    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4530
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2a

    .line 4531
    const-string/jumbo v6, " usage="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4532
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4534
    :cond_2a
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2b

    .line 4535
    const-string/jumbo v6, " cpu="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4536
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4538
    :cond_2b
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2c

    .line 4539
    const-string/jumbo v6, " wake="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4540
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4542
    :cond_2c
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2d

    .line 4543
    const-string/jumbo v6, " radio="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4544
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4546
    :cond_2d
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2e

    .line 4547
    const-string/jumbo v6, " wifi="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4548
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4550
    :cond_2e
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_2f

    .line 4551
    const-string/jumbo v6, " bt="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4552
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4554
    :cond_2f
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_30

    .line 4555
    const-string/jumbo v6, " gps="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4556
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4558
    :cond_30
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_31

    .line 4559
    const-string/jumbo v6, " sensor="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4560
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4562
    :cond_31
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_32

    .line 4563
    const-string/jumbo v6, " camera="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4564
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4566
    :cond_32
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_33

    .line 4567
    const-string/jumbo v6, " flash="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4568
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4570
    :cond_33
    const-string/jumbo v6, " )"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4574
    :cond_34
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    move-object/from16 v0, v73

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_37

    .line 4575
    const-string/jumbo v6, " Including smearing: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4576
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4577
    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4578
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_35

    .line 4579
    const-string/jumbo v6, " screen="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4580
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4582
    :cond_35
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    const-wide/16 v12, 0x0

    cmpl-double v6, v6, v12

    if-eqz v6, :cond_36

    .line 4583
    const-string/jumbo v6, " proportional="

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4584
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6, v7}, Landroid/os/BatteryStats;->printmAh(Ljava/io/PrintWriter;D)V

    .line 4586
    :cond_36
    const-string/jumbo v6, " )"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4588
    :cond_37
    move-object/from16 v0, v73

    iget-boolean v6, v0, Lcom/android/internal/os/BatterySipper;->shouldHide:Z

    if-eqz v6, :cond_38

    .line 4589
    const-string/jumbo v6, " Excluded from smearing"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4592
    :cond_38
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4476
    add-int/lit8 v127, v127, 0x1

    goto/16 :goto_10

    .line 4434
    .end local v73    # "bs":Lcom/android/internal/os/BatterySipper;
    .end local v126    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .end local v205    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_39
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device is currently plugged into power"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4435
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle start level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4436
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeStartLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4437
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Last discharge cycle end level: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4438
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeCurrentLevel()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_e

    .line 4448
    :cond_3a
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Device battery use since last full charge"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4449
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (lower bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4450
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getLowDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4451
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged (upper bound): "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4452
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getHighDischargeAmountSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4453
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen on: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4454
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOnSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4455
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen off: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4456
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenOffSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4457
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Amount discharged while screen doze: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4458
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getDischargeAmountScreenDozeSinceCharge()I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 4459
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_f

    .line 4481
    .restart local v73    # "bs":Lcom/android/internal/os/BatterySipper;
    .restart local v126    # "helper":Lcom/android/internal/os/BatteryStatsHelper;
    .restart local v205    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :pswitch_0
    const-string/jumbo v6, "    Idle: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4484
    :pswitch_1
    const-string/jumbo v6, "    Cell standby: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4487
    :pswitch_2
    const-string/jumbo v6, "    Phone calls: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4490
    :pswitch_3
    const-string/jumbo v6, "    Wifi: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4493
    :pswitch_4
    const-string/jumbo v6, "    Bluetooth: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4496
    :pswitch_5
    const-string/jumbo v6, "    Screen: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4499
    :pswitch_6
    const-string/jumbo v6, "    Flashlight: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4502
    :pswitch_7
    const-string/jumbo v6, "    Uid "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4503
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    move-object/from16 v0, p2

    invoke-static {v0, v6}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4504
    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4507
    :pswitch_8
    const-string/jumbo v6, "    User "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v73

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->userId:I

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 4508
    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4511
    :pswitch_9
    const-string/jumbo v6, "    Unaccounted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4514
    :pswitch_a
    const-string/jumbo v6, "    Over-counted: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4517
    :pswitch_b
    const-string/jumbo v6, "    Camera: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto/16 :goto_11

    .line 4594
    .end local v73    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_3b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4597
    :cond_3c
    invoke-virtual/range {v126 .. v126}, Lcom/android/internal/os/BatteryStatsHelper;->getMobilemsppList()Ljava/util/List;

    move-result-object v205

    .line 4598
    if-eqz v205, :cond_3e

    invoke-interface/range {v205 .. v205}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_3e

    .line 4599
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Per-app mobile ms per packet:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4600
    const-wide/16 v230, 0x0

    .line 4601
    .local v230, "totalTime":J
    const/16 v127, 0x0

    :goto_12
    invoke-interface/range {v205 .. v205}, Ljava/util/List;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_3d

    .line 4602
    move-object/from16 v0, v205

    move/from16 v1, v127

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v73

    check-cast v73, Lcom/android/internal/os/BatterySipper;

    .line 4603
    .restart local v73    # "bs":Lcom/android/internal/os/BatterySipper;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4604
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Uid "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4605
    move-object/from16 v0, v73

    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 4606
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4607
    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    move-object/from16 v0, v73

    iget-wide v12, v0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v6, v12

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4608
    const-string/jumbo v6, " packets over "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMsNoSpace(Ljava/lang/StringBuilder;J)V

    .line 4609
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, v73

    iget v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4610
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4611
    move-object/from16 v0, v73

    iget-wide v6, v0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long v230, v230, v6

    .line 4601
    add-int/lit8 v127, v127, 0x1

    goto :goto_12

    .line 4613
    .end local v73    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_3d
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4614
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4615
    const-string/jumbo v6, "    TOTAL TIME: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4616
    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4617
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v230

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4618
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4619
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4620
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4623
    .end local v230    # "totalTime":J
    :cond_3e
    new-instance v218, Landroid/os/BatteryStats$1;

    move-object/from16 v0, v218

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/os/BatteryStats$1;-><init>(Landroid/os/BatteryStats;)V

    .line 4638
    .local v218, "timerComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/os/BatteryStats$TimerEntry;>;"
    move/from16 v0, p5

    if-gez v0, :cond_48

    .line 4640
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelWakelockStats()Ljava/util/Map;

    move-result-object v144

    .line 4641
    .local v144, "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v144 .. v144}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_43

    .line 4642
    new-instance v145, Ljava/util/ArrayList;

    invoke-direct/range {v145 .. v145}, Ljava/util/ArrayList;-><init>()V

    .line 4644
    .local v145, "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v144 .. v144}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    .line 4643
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v113

    .local v113, "ent$iterator":Ljava/util/Iterator;
    :cond_3f
    :goto_13
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_40

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/util/Map$Entry;

    .line 4645
    .local v112, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 4646
    .local v19, "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-static {v0, v1, v2, v3}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v20

    .line 4647
    .local v20, "totalTimeMillis":J
    const-wide/16 v6, 0x0

    cmp-long v6, v20, v6

    if-lez v6, :cond_3f

    .line 4648
    new-instance v16, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x0

    invoke-direct/range {v16 .. v21}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v145

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 4651
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v20    # "totalTimeMillis":J
    .end local v112    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_40
    invoke-virtual/range {v145 .. v145}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_43

    .line 4652
    move-object/from16 v0, v145

    move-object/from16 v1, v218

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4653
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All kernel wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4654
    const/16 v127, 0x0

    :goto_14
    invoke-virtual/range {v145 .. v145}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_42

    .line 4655
    move-object/from16 v0, v145

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/os/BatteryStats$TimerEntry;

    .line 4656
    .local v211, "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    .line 4657
    .local v28, "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4658
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4659
    const-string/jumbo v6, "  Kernel Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4660
    move-object/from16 v0, v211

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4661
    move-object/from16 v0, v211

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v23, v0

    const/16 v26, 0x0

    move-object/from16 v22, v14

    move/from16 v27, p4

    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 4663
    const-string/jumbo v6, ": "

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_41

    .line 4664
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4666
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4654
    :cond_41
    add-int/lit8 v127, v127, 0x1

    goto :goto_14

    .line 4669
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v211    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_42
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4673
    .end local v113    # "ent$iterator":Ljava/util/Iterator;
    .end local v145    # "ktimers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    :cond_43
    invoke-virtual/range {v219 .. v219}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_45

    .line 4674
    move-object/from16 v0, v219

    move-object/from16 v1, v218

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4675
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All partial wake locks:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4676
    const/16 v127, 0x0

    :goto_15
    invoke-virtual/range {v219 .. v219}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_44

    .line 4677
    move-object/from16 v0, v219

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/os/BatteryStats$TimerEntry;

    .line 4678
    .restart local v211    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4679
    const-string/jumbo v6, "  Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4680
    move-object/from16 v0, v211

    iget v6, v0, Landroid/os/BatteryStats$TimerEntry;->mId:I

    invoke-static {v14, v6}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 4681
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4682
    move-object/from16 v0, v211

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4683
    move-object/from16 v0, v211

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4684
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4685
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4676
    add-int/lit8 v127, v127, 0x1

    goto :goto_15

    .line 4687
    .end local v211    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_44
    invoke-virtual/range {v219 .. v219}, Ljava/util/ArrayList;->clear()V

    .line 4688
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4691
    :cond_45
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getWakeupReasonStats()Ljava/util/Map;

    move-result-object v0

    move-object/16 v264, v0

    .line 4692
    .local v264, "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v264 .. v264}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_48

    .line 4693
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  All wakeup reasons:"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4694
    new-instance v192, Ljava/util/ArrayList;

    invoke-direct/range {v192 .. v192}, Ljava/util/ArrayList;-><init>()V

    .line 4695
    .local v192, "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    invoke-interface/range {v264 .. v264}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v113

    .restart local v113    # "ent$iterator":Ljava/util/Iterator;
    :goto_16
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_46

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/util/Map$Entry;

    .line 4696
    .restart local v112    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 4697
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    new-instance v30, Landroid/os/BatteryStats$TimerEntry;

    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Ljava/lang/String;

    .line 4698
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v6

    int-to-long v0, v6

    move-wide/from16 v34, v0

    .line 4697
    const/16 v32, 0x0

    move-object/from16 v33, v19

    invoke-direct/range {v30 .. v35}, Landroid/os/BatteryStats$TimerEntry;-><init>(Ljava/lang/String;ILandroid/os/BatteryStats$Timer;J)V

    move-object/from16 v0, v192

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    .line 4700
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v112    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_46
    move-object/from16 v0, v192

    move-object/from16 v1, v218

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4701
    const/16 v127, 0x0

    :goto_17
    invoke-virtual/range {v192 .. v192}, Ljava/util/ArrayList;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_47

    .line 4702
    move-object/from16 v0, v192

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v211

    check-cast v211, Landroid/os/BatteryStats$TimerEntry;

    .line 4703
    .restart local v211    # "timer":Landroid/os/BatteryStats$TimerEntry;
    const-string/jumbo v28, ": "

    .line 4704
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4705
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4706
    const-string/jumbo v6, "  Wakeup reason "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4707
    move-object/from16 v0, v211

    iget-object v6, v0, Landroid/os/BatteryStats$TimerEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4708
    move-object/from16 v0, v211

    iget-object v0, v0, Landroid/os/BatteryStats$TimerEntry;->mTimer:Landroid/os/BatteryStats$Timer;

    move-object/from16 v31, v0

    const-string/jumbo v36, ": "

    const/16 v34, 0x0

    move-object/from16 v30, v14

    move-wide/from16 v32, v24

    move/from16 v35, p4

    invoke-static/range {v30 .. v36}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 4709
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4710
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4701
    add-int/lit8 v127, v127, 0x1

    goto :goto_17

    .line 4712
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v211    # "timer":Landroid/os/BatteryStats$TimerEntry;
    :cond_47
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4716
    .end local v113    # "ent$iterator":Ljava/util/Iterator;
    .end local v144    # "kernelWakelocks":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v192    # "reasons":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/BatteryStats$TimerEntry;>;"
    .end local v264    # "wakeupReasons":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    :cond_48
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getKernelMemoryStats()Landroid/util/LongSparseArray;

    move-result-object v147

    .line 4717
    .local v147, "mMemoryStats":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v147 .. v147}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    if-lez v6, :cond_4a

    .line 4718
    const-string/jumbo v6, "  Memory Stats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4719
    const/16 v127, 0x0

    :goto_18
    invoke-virtual/range {v147 .. v147}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    move/from16 v0, v127

    if-ge v0, v6, :cond_49

    .line 4720
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4721
    const-string/jumbo v6, "  Bandwidth "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4722
    move-object/from16 v0, v147

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4723
    const-string/jumbo v6, " Time "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4724
    move-object/from16 v0, v147

    move/from16 v1, v127

    invoke-virtual {v0, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Timer;

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-virtual {v6, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    invoke-virtual {v14, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4725
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4719
    add-int/lit8 v127, v127, 0x1

    goto :goto_18

    .line 4727
    :cond_49
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4730
    :cond_4a
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getRpmStats()Ljava/util/Map;

    move-result-object v195

    .line 4731
    .local v195, "rpmStats":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v195 .. v195}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_4c

    .line 4732
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "  Resource Power Manager Stats"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4733
    invoke-interface/range {v195 .. v195}, Ljava/util/Map;->size()I

    move-result v6

    if-lez v6, :cond_4b

    .line 4734
    invoke-interface/range {v195 .. v195}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v113

    .restart local v113    # "ent$iterator":Ljava/util/Iterator;
    :goto_19
    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface/range {v113 .. v113}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Ljava/util/Map$Entry;

    .line 4735
    .restart local v112    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Ljava/lang/String;

    .line 4736
    .local v36, "timerName":Ljava/lang/String;
    invoke-interface/range {v112 .. v112}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v29, p2

    move-object/from16 v30, v14

    move-object/from16 v31, v19

    move-wide/from16 v32, v24

    move/from16 v34, p4

    move-object/from16 v35, p3

    .line 4737
    invoke-static/range {v29 .. v36}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    goto :goto_19

    .line 4740
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v36    # "timerName":Ljava/lang/String;
    .end local v112    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v113    # "ent$iterator":Ljava/util/Iterator;
    :cond_4b
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4758
    :cond_4c
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->getCpuFreqs()[J

    move-result-object v93

    .line 4759
    .local v93, "cpuFreqs":[J
    if-eqz v93, :cond_4e

    .line 4760
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4761
    const-string/jumbo v6, "  CPU freqs:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4762
    const/16 v127, 0x0

    :goto_1a
    move-object/from16 v0, v93

    array-length v6, v0

    move/from16 v0, v127

    if-ge v0, v6, :cond_4d

    .line 4763
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v12, v93, v127

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4762
    add-int/lit8 v127, v127, 0x1

    goto :goto_1a

    .line 4765
    :cond_4d
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4766
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4769
    :cond_4e
    const/16 v140, 0x0

    :goto_1b
    move/from16 v0, v140

    move/from16 v1, v46

    if-ge v0, v1, :cond_bd

    .line 4770
    move-object/from16 v0, v243

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v240

    .line 4771
    .local v240, "uid":I
    move/from16 v0, p5

    if-ltz v0, :cond_50

    move/from16 v0, v240

    move/from16 v1, p5

    if-eq v0, v1, :cond_50

    const/16 v6, 0x3e8

    move/from16 v0, v240

    if-eq v0, v6, :cond_50

    .line 4769
    :cond_4f
    :goto_1c
    add-int/lit8 v140, v140, 0x1

    goto :goto_1b

    .line 4775
    :cond_50
    move-object/from16 v0, v243

    move/from16 v1, v140

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v239

    check-cast v239, Landroid/os/BatteryStats$Uid;

    .line 4777
    .restart local v239    # "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4778
    const-string/jumbo v6, "  "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4779
    move-object/from16 v0, p2

    move/from16 v1, v240

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4780
    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4781
    const/16 v241, 0x0

    .line 4783
    .local v241, "uidActivity":Z
    const/4 v6, 0x0

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v152

    .line 4784
    .local v152, "mobileRxBytes":J
    const/4 v6, 0x1

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v160

    .line 4785
    .local v160, "mobileTxBytes":J
    const/4 v6, 0x2

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v278, v0

    .line 4786
    .local v278, "wifiRxBytes":J
    const/4 v6, 0x3

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v0

    move-wide/16 v294, v0

    .line 4787
    .local v294, "wifiTxBytes":J
    const/4 v6, 0x4

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v76

    .line 4788
    .local v76, "btRxBytes":J
    const/4 v6, 0x5

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityBytes(II)J

    move-result-wide v80

    .line 4790
    .local v80, "btTxBytes":J
    const/4 v6, 0x0

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v154

    .line 4791
    .local v154, "mobileRxPackets":J
    const/4 v6, 0x1

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v162

    .line 4792
    .local v162, "mobileTxPackets":J
    const/4 v6, 0x2

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v280, v0

    .line 4793
    .local v280, "wifiRxPackets":J
    const/4 v6, 0x3

    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v6, v1}, Landroid/os/BatteryStats$Uid;->getNetworkActivityPackets(II)J

    move-result-wide v0

    move-wide/16 v296, v0

    .line 4795
    .local v296, "wifiTxPackets":J
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveTime(I)J

    move-result-wide v244

    .line 4796
    .local v244, "uidMobileActiveTime":J
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioActiveCount(I)I

    move-result v242

    .line 4798
    .local v242, "uidMobileActiveCount":I
    move-object/from16 v0, v239

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v122

    .line 4799
    .local v122, "fullWifiLockOnTime":J
    move-object/from16 v0, v239

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v0

    move-wide/16 v292, v0

    .line 4800
    .local v292, "wifiScanTime":J
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanCount(I)I

    move-result v0

    move/16 v290, v0

    .line 4801
    .local v290, "wifiScanCount":I
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundCount(I)I

    move-result v0

    move/16 v291, v0

    .line 4803
    .local v291, "wifiScanCountBg":I
    move-object/from16 v0, v239

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanActualTime(J)J

    move-result-wide v0

    move-wide/16 v286, v0

    .line 4804
    .local v286, "wifiScanActualTime":J
    move-object/from16 v0, v239

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanBackgroundTime(J)J

    move-result-wide v0

    move-wide/16 v288, v0

    .line 4805
    .local v288, "wifiScanActualTimeBg":J
    move-object/from16 v0, v239

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v246

    .line 4807
    .local v246, "uidWifiRunningTime":J
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getMobileRadioApWakeupCount(I)J

    move-result-wide v168

    .line 4808
    .local v168, "mobileWakeup":J
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getWifiRadioApWakeupCount(I)J

    move-result-wide v0

    move-wide/16 v302, v0

    .line 4810
    .local v302, "wifiWakeup":J
    const-wide/16 v6, 0x0

    cmp-long v6, v152, v6

    if-gtz v6, :cond_51

    const-wide/16 v6, 0x0

    cmp-long v6, v160, v6

    if-lez v6, :cond_69

    .line 4812
    :cond_51
    :goto_1d
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Mobile network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4813
    move-object/from16 v0, p0

    move-wide/from16 v1, v152

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4814
    move-object/from16 v0, p0

    move-wide/from16 v1, v160

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4815
    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v154

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4816
    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v162

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4818
    :cond_52
    const-wide/16 v6, 0x0

    cmp-long v6, v244, v6

    if-gtz v6, :cond_53

    if-lez v242, :cond_55

    .line 4819
    :cond_53
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4820
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Mobile radio active: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4821
    const-wide/16 v6, 0x3e8

    div-long v6, v244, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4822
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4823
    move-object/from16 v0, p0

    move-wide/from16 v1, v244

    move-wide/from16 v3, v150

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4824
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v242

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4825
    add-long v178, v154, v162

    .line 4826
    .local v178, "packets":J
    const-wide/16 v6, 0x0

    cmp-long v6, v178, v6

    if-nez v6, :cond_54

    .line 4827
    const-wide/16 v178, 0x1

    .line 4829
    :cond_54
    const-string/jumbo v6, " @ "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4830
    const-wide/16 v6, 0x3e8

    div-long v6, v244, v6

    long-to-double v6, v6

    move-wide/from16 v0, v178

    long-to-double v12, v0

    div-double/2addr v6, v12

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4831
    const-string/jumbo v6, " mspp"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4832
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4835
    .end local v178    # "packets":J
    :cond_55
    const-wide/16 v6, 0x0

    cmp-long v6, v168, v6

    if-lez v6, :cond_56

    .line 4836
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4837
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4838
    const-string/jumbo v6, "    Mobile radio AP wakeups: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4839
    move-wide/from16 v0, v168

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4840
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4843
    :cond_56
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "Modem"

    .line 4844
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    .line 4843
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4846
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v278

    cmp-long v6, v0, v6

    if-gtz v6, :cond_57

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v294

    cmp-long v6, v0, v6

    if-lez v6, :cond_6a

    .line 4847
    :cond_57
    :goto_1e
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Wi-Fi network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4848
    move-object/from16 v0, p0

    move-wide/from16 v1, v278

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4849
    move-object/from16 v0, p0

    move-wide/from16 v1, v294

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4850
    const-string/jumbo v6, " sent (packets "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v280

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4851
    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, p2

    move-wide/from16 v1, v296

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    const-string/jumbo v6, " sent)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4854
    :cond_58
    const-wide/16 v6, 0x0

    cmp-long v6, v122, v6

    if-nez v6, :cond_59

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v292

    cmp-long v6, v0, v6

    if-eqz v6, :cond_6b

    .line 4857
    :cond_59
    :goto_1f
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4858
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4859
    const-wide/16 v6, 0x3e8

    div-long v6, v246, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4860
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v246

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4861
    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4862
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Full Wifi Lock: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4863
    const-wide/16 v6, 0x3e8

    div-long v6, v122, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4864
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v122

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4865
    const-string/jumbo v6, ")\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4866
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Scan (blamed): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4867
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v292

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4868
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    move-wide/from16 v1, v292

    move-wide/from16 v3, v266

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4869
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4870
    move/from16 v0, v290

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4871
    const-string/jumbo v6, "x\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4873
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Wifi Scan (actual): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4874
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v286

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4875
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4876
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v6

    .line 4875
    move-object/from16 v0, p0

    move-wide/from16 v1, v286

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4877
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4878
    move/from16 v0, v290

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4879
    const-string/jumbo v6, "x\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4880
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Background Wifi Scan: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4881
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v288

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4882
    const-string/jumbo v6, "("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4883
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2, v6}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v6

    .line 4882
    move-object/from16 v0, p0

    move-wide/from16 v1, v288

    invoke-virtual {v0, v1, v2, v6, v7}, Landroid/os/BatteryStats;->formatRatioLocked(JJ)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4884
    const-string/jumbo v6, ") "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4885
    move/from16 v0, v291

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4886
    const-string/jumbo v6, "x"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4887
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4890
    :cond_5a
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v302

    cmp-long v6, v0, v6

    if-lez v6, :cond_5b

    .line 4891
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4892
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4893
    const-string/jumbo v6, "    WiFi AP wakeups: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4894
    move-wide/from16 v0, v302

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 4895
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4898
    :cond_5b
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "WiFi"

    .line 4899
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;

    move-result-object v17

    move-object/from16 v12, p0

    move-object/from16 v13, p2

    move/from16 v18, p4

    .line 4898
    invoke-direct/range {v12 .. v18}, Landroid/os/BatteryStats;->printControllerActivityIfInteresting(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Landroid/os/BatteryStats$ControllerActivityCounter;I)V

    .line 4901
    const-wide/16 v6, 0x0

    cmp-long v6, v76, v6

    if-gtz v6, :cond_5c

    const-wide/16 v6, 0x0

    cmp-long v6, v80, v6

    if-lez v6, :cond_5d

    .line 4902
    :cond_5c
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Bluetooth network: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4903
    move-object/from16 v0, p0

    move-wide/from16 v1, v76

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, " received, "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4904
    move-object/from16 v0, p0

    move-wide/from16 v1, v80

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats;->formatBytesLocked(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4905
    const-string/jumbo v6, " sent"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4908
    :cond_5d
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v71

    .line 4909
    .local v71, "bleTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v71, :cond_67

    .line 4911
    move-object/from16 v0, v71

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    .line 4912
    const-wide/16 v12, 0x3e8

    .line 4911
    div-long v232, v6, v12

    .line 4913
    .local v232, "totalTimeMs":J
    const-wide/16 v6, 0x0

    cmp-long v6, v232, v6

    if-eqz v6, :cond_67

    .line 4914
    move-object/from16 v0, v71

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    .line 4915
    .local v89, "count":I
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v72

    .line 4916
    .local v72, "bleTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v72, :cond_6c

    move-object/from16 v0, v72

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v90

    .line 4918
    .local v90, "countBg":I
    :goto_20
    move-object/from16 v0, v71

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v52

    .line 4919
    .local v52, "actualTimeMs":J
    if-eqz v72, :cond_6d

    .line 4920
    move-object/from16 v0, v72

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v54

    .line 4922
    .local v54, "actualTimeMsBg":J
    :goto_21
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    if-eqz v6, :cond_6e

    .line 4923
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v193

    .line 4924
    .local v193, "resultCount":I
    :goto_22
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    if-eqz v6, :cond_6f

    .line 4925
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothScanResultBgCounter()Landroid/os/BatteryStats$Counter;

    move-result-object v6

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v194

    .line 4927
    .local v194, "resultCountBg":I
    :goto_23
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v252

    .line 4928
    .local v252, "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v252, :cond_70

    .line 4929
    move-object/from16 v0, v252

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v254

    .line 4930
    .local v254, "unoptimizedScanTotalTime":J
    :goto_24
    if-eqz v252, :cond_71

    .line 4931
    move-object/from16 v0, v252

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v248

    .line 4934
    .local v248, "unoptimizedScanMaxTime":J
    :goto_25
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getBluetoothUnoptimizedScanBackgroundTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v253

    .line 4935
    .local v253, "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    if-eqz v253, :cond_72

    .line 4936
    move-object/from16 v0, v253

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v0

    move-wide/16 v256, v0

    .line 4937
    .local v256, "unoptimizedScanTotalTimeBg":J
    :goto_26
    if-eqz v253, :cond_73

    .line 4938
    move-object/from16 v0, v253

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getMaxDurationMsLocked(J)J

    move-result-wide v250

    .line 4940
    .local v250, "unoptimizedScanMaxTimeBg":J
    :goto_27
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 4941
    cmp-long v6, v52, v232

    if-eqz v6, :cond_5f

    .line 4942
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4943
    const-string/jumbo v6, "    Bluetooth Scan (total blamed realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4944
    move-wide/from16 v0, v232

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4945
    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4946
    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4947
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4948
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_5e

    .line 4949
    const-string/jumbo v6, " (currently running)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4951
    :cond_5e
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4954
    :cond_5f
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4955
    const-string/jumbo v6, "    Bluetooth Scan (total actual realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4956
    move-wide/from16 v0, v52

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4957
    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4958
    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4959
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4960
    invoke-virtual/range {v71 .. v71}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_60

    .line 4961
    const-string/jumbo v6, " (currently running)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4963
    :cond_60
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4964
    const-wide/16 v6, 0x0

    cmp-long v6, v54, v6

    if-gtz v6, :cond_61

    if-lez v90, :cond_63

    .line 4965
    :cond_61
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4966
    const-string/jumbo v6, "    Bluetooth Scan (background realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4967
    move-wide/from16 v0, v54

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4968
    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4969
    move/from16 v0, v90

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4970
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4971
    if-eqz v72, :cond_62

    invoke-virtual/range {v72 .. v72}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_62

    .line 4972
    const-string/jumbo v6, " (currently running in background)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4974
    :cond_62
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4977
    :cond_63
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4978
    const-string/jumbo v6, "    Bluetooth Scan Results: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4979
    move/from16 v0, v193

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4980
    const-string/jumbo v6, " ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4981
    move/from16 v0, v194

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4982
    const-string/jumbo v6, " in background)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4984
    const-wide/16 v6, 0x0

    cmp-long v6, v254, v6

    if-gtz v6, :cond_64

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v256

    cmp-long v6, v0, v6

    if-lez v6, :cond_66

    .line 4985
    :cond_64
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4986
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4987
    const-string/jumbo v6, "    Unoptimized Bluetooth Scan (realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4988
    move-wide/from16 v0, v254

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4989
    const-string/jumbo v6, " (max "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4990
    move-wide/from16 v0, v248

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 4991
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4992
    if-eqz v252, :cond_65

    .line 4993
    invoke-virtual/range {v252 .. v252}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    .line 4992
    if-eqz v6, :cond_65

    .line 4994
    const-string/jumbo v6, " (currently running unoptimized)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4996
    :cond_65
    if-eqz v253, :cond_66

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v256

    cmp-long v6, v0, v6

    if-lez v6, :cond_66

    .line 4997
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4998
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4999
    const-string/jumbo v6, "    Unoptimized Bluetooth Scan (background realtime): "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5000
    move-wide/from16 v0, v256

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5001
    const-string/jumbo v6, " (max "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5002
    move-wide/from16 v0, v250

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5003
    const-string/jumbo v6, ")"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5004
    invoke-virtual/range {v253 .. v253}, Landroid/os/BatteryStats$Timer;->isRunningLocked()Z

    move-result v6

    if-eqz v6, :cond_66

    .line 5005
    const-string/jumbo v6, " (currently running unoptimized in background)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5009
    :cond_66
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5010
    const/16 v241, 0x1

    .line 5016
    .end local v52    # "actualTimeMs":J
    .end local v54    # "actualTimeMsBg":J
    .end local v72    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v89    # "count":I
    .end local v90    # "countBg":I
    .end local v193    # "resultCount":I
    .end local v194    # "resultCountBg":I
    .end local v232    # "totalTimeMs":J
    .end local v248    # "unoptimizedScanMaxTime":J
    .end local v250    # "unoptimizedScanMaxTimeBg":J
    .end local v252    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v253    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v254    # "unoptimizedScanTotalTime":J
    .end local v256    # "unoptimizedScanTotalTimeBg":J
    :cond_67
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->hasUserActivity()Z

    move-result v6

    if-eqz v6, :cond_76

    .line 5017
    const/16 v124, 0x0

    .line 5018
    .local v124, "hasData":Z
    const/16 v127, 0x0

    :goto_28
    const/4 v6, 0x4

    move/from16 v0, v127

    if-ge v0, v6, :cond_75

    .line 5019
    move-object/from16 v0, v239

    move/from16 v1, v127

    move/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getUserActivityCount(II)I

    move-result v0

    move/16 v262, v0

    .line 5020
    .local v262, "val":I
    move/from16 v0, v262

    if-eqz v0, :cond_68

    .line 5021
    if-nez v124, :cond_74

    .line 5022
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5023
    const-string/jumbo v6, "    User activity: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5024
    const/16 v124, 0x1

    .line 5028
    :goto_29
    move/from16 v0, v262

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5029
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5030
    sget-object v6, Landroid/os/BatteryStats$Uid;->USER_ACTIVITY_TYPES:[Ljava/lang/String;

    aget-object v6, v6, v127

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5018
    :cond_68
    add-int/lit8 v127, v127, 0x1

    goto :goto_28

    .line 4811
    .end local v71    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v124    # "hasData":Z
    .end local v262    # "val":I
    :cond_69
    const-wide/16 v6, 0x0

    cmp-long v6, v154, v6

    if-gtz v6, :cond_51

    const-wide/16 v6, 0x0

    cmp-long v6, v162, v6

    if-lez v6, :cond_52

    goto/16 :goto_1d

    .line 4846
    :cond_6a
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v280

    cmp-long v6, v0, v6

    if-gtz v6, :cond_57

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v296

    cmp-long v6, v0, v6

    if-lez v6, :cond_58

    goto/16 :goto_1e

    .line 4854
    :cond_6b
    move/from16 v0, v290

    if-nez v0, :cond_59

    .line 4855
    move/from16 v0, v291

    if-nez v0, :cond_59

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v286

    cmp-long v6, v0, v6

    if-nez v6, :cond_59

    const-wide/16 v6, 0x0

    move-wide/from16 v0, v288

    cmp-long v6, v0, v6

    if-nez v6, :cond_59

    .line 4856
    const-wide/16 v6, 0x0

    cmp-long v6, v246, v6

    if-eqz v6, :cond_5a

    goto/16 :goto_1f

    .line 4916
    .restart local v71    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .restart local v72    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .restart local v89    # "count":I
    .restart local v232    # "totalTimeMs":J
    :cond_6c
    const/16 v90, 0x0

    .restart local v90    # "countBg":I
    goto/16 :goto_20

    .line 4920
    .restart local v52    # "actualTimeMs":J
    :cond_6d
    const-wide/16 v54, 0x0

    .restart local v54    # "actualTimeMsBg":J
    goto/16 :goto_21

    .line 4923
    :cond_6e
    const/16 v193, 0x0

    .restart local v193    # "resultCount":I
    goto/16 :goto_22

    .line 4925
    :cond_6f
    const/16 v194, 0x0

    .restart local v194    # "resultCountBg":I
    goto/16 :goto_23

    .line 4929
    .restart local v252    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    :cond_70
    const-wide/16 v254, 0x0

    .restart local v254    # "unoptimizedScanTotalTime":J
    goto/16 :goto_24

    .line 4931
    :cond_71
    const-wide/16 v248, 0x0

    .restart local v248    # "unoptimizedScanMaxTime":J
    goto/16 :goto_25

    .line 4936
    .restart local v253    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    :cond_72
    const-wide/16 v0, 0x0

    move-wide/16 v256, v0

    .restart local v256    # "unoptimizedScanTotalTimeBg":J
    goto/16 :goto_26

    .line 4938
    :cond_73
    const-wide/16 v250, 0x0

    .restart local v250    # "unoptimizedScanMaxTimeBg":J
    goto/16 :goto_27

    .line 5026
    .end local v52    # "actualTimeMs":J
    .end local v54    # "actualTimeMsBg":J
    .end local v72    # "bleTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v89    # "count":I
    .end local v90    # "countBg":I
    .end local v193    # "resultCount":I
    .end local v194    # "resultCountBg":I
    .end local v232    # "totalTimeMs":J
    .end local v248    # "unoptimizedScanMaxTime":J
    .end local v250    # "unoptimizedScanMaxTimeBg":J
    .end local v252    # "unoptimizedScanTimer":Landroid/os/BatteryStats$Timer;
    .end local v253    # "unoptimizedScanTimerBg":Landroid/os/BatteryStats$Timer;
    .end local v254    # "unoptimizedScanTotalTime":J
    .end local v256    # "unoptimizedScanTotalTimeBg":J
    .restart local v124    # "hasData":Z
    .restart local v262    # "val":I
    :cond_74
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_29

    .line 5033
    .end local v262    # "val":I
    :cond_75
    if-eqz v124, :cond_76

    .line 5034
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5039
    .end local v124    # "hasData":Z
    :cond_76
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v0

    move-object/16 v263, v0

    .line 5040
    .restart local v263    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    const-wide/16 v222, 0x0

    .local v222, "totalFullWakelock":J
    const-wide/16 v224, 0x0

    .local v224, "totalPartialWakelock":J
    const-wide/16 v236, 0x0

    .line 5041
    .local v236, "totalWindowWakelock":J
    const-wide/16 v220, 0x0

    .line 5042
    .local v220, "totalDrawWakelock":J
    const/16 v91, 0x0

    .line 5043
    .local v91, "countWakelock":I
    invoke-virtual/range {v263 .. v263}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v141, v6, -0x1

    .restart local v141    # "iw":I
    :goto_2a
    if-ltz v141, :cond_78

    .line 5044
    move-object/from16 v0, v263

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    move-object/16 v304, v0

    move-object/from16 v0, v304

    check-cast v0, Landroid/os/BatteryStats$Uid$Wakelock;

    move-object/16 v304, v0

    .line 5045
    .restart local v304    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const-string/jumbo v28, ": "

    .line 5046
    .restart local v28    # "linePrefix":Ljava/lang/String;
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5047
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5048
    const-string/jumbo v6, "    Wake lock "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5049
    move-object/from16 v0, v263

    move/from16 v1, v141

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5050
    const/4 v6, 0x1

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    .line 5051
    const-string/jumbo v26, "full"

    move-object/from16 v22, v14

    move/from16 v27, p4

    .line 5050
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 5052
    const/4 v6, 0x0

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v23

    .line 5054
    .local v23, "pTimer":Landroid/os/BatteryStats$Timer;
    const-string/jumbo v26, "partial"

    move-object/from16 v22, v14

    move/from16 v27, p4

    .line 5053
    invoke-static/range {v22 .. v28}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 5055
    if-eqz v23, :cond_77

    invoke-virtual/range {v23 .. v23}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5056
    :goto_2b
    const-string/jumbo v42, "background partial"

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v43, p4

    move-object/from16 v44, v28

    .line 5055
    invoke-static/range {v38 .. v44}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 5057
    const/4 v6, 0x2

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5058
    const-string/jumbo v42, "window"

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v43, p4

    move-object/from16 v44, v28

    .line 5057
    invoke-static/range {v38 .. v44}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 5059
    const/16 v6, 0x12

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5060
    const-string/jumbo v42, "draw"

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v43, p4

    move-object/from16 v44, v28

    .line 5059
    invoke-static/range {v38 .. v44}, Landroid/os/BatteryStats;->printWakeLock(Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JLjava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 5061
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5062
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5063
    const/16 v241, 0x1

    .line 5064
    add-int/lit8 v91, v91, 0x1

    .line 5066
    const/4 v6, 0x1

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v222, v222, v6

    .line 5068
    const/4 v6, 0x0

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v224, v224, v6

    .line 5070
    const/4 v6, 0x2

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v236, v236, v6

    .line 5072
    const/16 v6, 0x12

    move-object/from16 v0, v304

    invoke-virtual {v0, v6}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v6

    move-wide/from16 v0, v24

    move/from16 v2, p4

    invoke-static {v6, v0, v1, v2}, Landroid/os/BatteryStats;->computeWakeLock(Landroid/os/BatteryStats$Timer;JI)J

    move-result-wide v6

    add-long v220, v220, v6

    .line 5043
    add-int/lit8 v141, v141, -0x1

    goto/16 :goto_2a

    .line 5055
    :cond_77
    const/16 v39, 0x0

    goto/16 :goto_2b

    .line 5075
    .end local v23    # "pTimer":Landroid/os/BatteryStats$Timer;
    .end local v28    # "linePrefix":Ljava/lang/String;
    .end local v304    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    :cond_78
    const/4 v6, 0x1

    move/from16 v0, v91

    if-le v0, v6, :cond_86

    .line 5078
    const-wide/16 v56, 0x0

    .line 5079
    .local v56, "actualTotalPartialWakelock":J
    const-wide/16 v48, 0x0

    .line 5080
    .local v48, "actualBgPartialWakelock":J
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v6

    if-eqz v6, :cond_79

    .line 5081
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getAggregatedPartialWakelockTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v47

    .line 5084
    .local v47, "aggTimer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v47

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v56

    .line 5085
    invoke-virtual/range {v47 .. v47}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v66

    .line 5086
    .local v66, "bgAggTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v66, :cond_88

    .line 5087
    move-object/from16 v0, v66

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v48

    .line 5090
    .end local v47    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v66    # "bgAggTimer":Landroid/os/BatteryStats$Timer;
    :cond_79
    :goto_2c
    const-wide/16 v6, 0x0

    cmp-long v6, v56, v6

    if-nez v6, :cond_7a

    const-wide/16 v6, 0x0

    cmp-long v6, v48, v6

    if-eqz v6, :cond_89

    .line 5093
    :cond_7a
    :goto_2d
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5094
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5095
    const-string/jumbo v6, "    TOTAL wake: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5096
    const/16 v170, 0x0

    .line 5097
    .local v170, "needComma":Z
    const-wide/16 v6, 0x0

    cmp-long v6, v222, v6

    if-eqz v6, :cond_7b

    .line 5098
    const/16 v170, 0x1

    .line 5099
    move-wide/from16 v0, v222

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5100
    const-string/jumbo v6, "full"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5102
    :cond_7b
    const-wide/16 v6, 0x0

    cmp-long v6, v224, v6

    if-eqz v6, :cond_7d

    .line 5103
    if-eqz v170, :cond_7c

    .line 5104
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5106
    :cond_7c
    const/16 v170, 0x1

    .line 5107
    move-wide/from16 v0, v224

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5108
    const-string/jumbo v6, "blamed partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5110
    :cond_7d
    const-wide/16 v6, 0x0

    cmp-long v6, v56, v6

    if-eqz v6, :cond_7f

    .line 5111
    if-eqz v170, :cond_7e

    .line 5112
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5114
    :cond_7e
    const/16 v170, 0x1

    .line 5115
    move-wide/from16 v0, v56

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5116
    const-string/jumbo v6, "actual partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5118
    :cond_7f
    const-wide/16 v6, 0x0

    cmp-long v6, v48, v6

    if-eqz v6, :cond_81

    .line 5119
    if-eqz v170, :cond_80

    .line 5120
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5122
    :cond_80
    const/16 v170, 0x1

    .line 5123
    move-wide/from16 v0, v48

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5124
    const-string/jumbo v6, "actual background partial"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5126
    :cond_81
    const-wide/16 v6, 0x0

    cmp-long v6, v236, v6

    if-eqz v6, :cond_83

    .line 5127
    if-eqz v170, :cond_82

    .line 5128
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5130
    :cond_82
    const/16 v170, 0x1

    .line 5131
    move-wide/from16 v0, v236

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5132
    const-string/jumbo v6, "window"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5134
    :cond_83
    const-wide/16 v6, 0x0

    cmp-long v6, v220, v6

    if-eqz v6, :cond_85

    .line 5135
    if-eqz v170, :cond_84

    .line 5136
    const-string/jumbo v6, ","

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5138
    :cond_84
    const/16 v170, 0x1

    .line 5139
    move-wide/from16 v0, v220

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5140
    const-string/jumbo v6, "draw"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5142
    :cond_85
    const-string/jumbo v6, " realtime"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5143
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5147
    .end local v48    # "actualBgPartialWakelock":J
    .end local v56    # "actualTotalPartialWakelock":J
    .end local v170    # "needComma":Z
    :cond_86
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getSyncStats()Landroid/util/ArrayMap;

    move-result-object v210

    .line 5148
    .local v210, "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v210 .. v210}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v138, v6, -0x1

    .local v138, "isy":I
    :goto_2e
    if-ltz v138, :cond_8d

    .line 5149
    move-object/from16 v0, v210

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 5151
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v230, v6, v12

    .line 5152
    .restart local v230    # "totalTime":J
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    .line 5153
    .restart local v89    # "count":I
    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    .line 5154
    .local v70, "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v70, :cond_8a

    .line 5155
    move-object/from16 v0, v70

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v68

    .line 5156
    .local v68, "bgTime":J
    :goto_2f
    if-eqz v70, :cond_8b

    move-object/from16 v0, v70

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v67

    .line 5157
    .local v67, "bgCount":I
    :goto_30
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5158
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5159
    const-string/jumbo v6, "    Sync "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5160
    move-object/from16 v0, v210

    move/from16 v1, v138

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5161
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5162
    const-wide/16 v6, 0x0

    cmp-long v6, v230, v6

    if-eqz v6, :cond_8c

    .line 5163
    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5164
    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5165
    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5166
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5167
    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-lez v6, :cond_87

    .line 5168
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5169
    move-wide/from16 v0, v68

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5170
    const-string/jumbo v6, "background ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5171
    move/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5172
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5177
    :cond_87
    :goto_31
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5178
    const/16 v241, 0x1

    .line 5148
    add-int/lit8 v138, v138, -0x1

    goto/16 :goto_2e

    .line 5087
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v67    # "bgCount":I
    .end local v68    # "bgTime":J
    .end local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v89    # "count":I
    .end local v138    # "isy":I
    .end local v210    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v230    # "totalTime":J
    .restart local v47    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .restart local v48    # "actualBgPartialWakelock":J
    .restart local v56    # "actualTotalPartialWakelock":J
    .restart local v66    # "bgAggTimer":Landroid/os/BatteryStats$Timer;
    :cond_88
    const-wide/16 v48, 0x0

    goto/16 :goto_2c

    .line 5091
    .end local v47    # "aggTimer":Landroid/os/BatteryStats$Timer;
    .end local v66    # "bgAggTimer":Landroid/os/BatteryStats$Timer;
    :cond_89
    const-wide/16 v6, 0x0

    cmp-long v6, v222, v6

    if-nez v6, :cond_7a

    const-wide/16 v6, 0x0

    cmp-long v6, v224, v6

    if-nez v6, :cond_7a

    .line 5092
    const-wide/16 v6, 0x0

    cmp-long v6, v236, v6

    if-eqz v6, :cond_86

    goto/16 :goto_2d

    .line 5155
    .end local v48    # "actualBgPartialWakelock":J
    .end local v56    # "actualTotalPartialWakelock":J
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v89    # "count":I
    .restart local v138    # "isy":I
    .restart local v210    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .restart local v230    # "totalTime":J
    :cond_8a
    const-wide/16 v68, -0x1

    .restart local v68    # "bgTime":J
    goto/16 :goto_2f

    .line 5156
    :cond_8b
    const/16 v67, -0x1

    .restart local v67    # "bgCount":I
    goto/16 :goto_30

    .line 5175
    :cond_8c
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    .line 5181
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v67    # "bgCount":I
    .end local v68    # "bgTime":J
    .end local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v89    # "count":I
    .end local v230    # "totalTime":J
    :cond_8d
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getJobStats()Landroid/util/ArrayMap;

    move-result-object v143

    .line 5182
    .local v143, "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    invoke-virtual/range {v143 .. v143}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v130, v6, -0x1

    .local v130, "ij":I
    :goto_32
    if-ltz v130, :cond_92

    .line 5183
    move-object/from16 v0, v143

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/BatteryStats$Timer;

    .line 5185
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    const-wide/16 v12, 0x3e8

    div-long v230, v6, v12

    .line 5186
    .restart local v230    # "totalTime":J
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    .line 5187
    .restart local v89    # "count":I
    invoke-virtual/range {v19 .. v19}, Landroid/os/BatteryStats$Timer;->getSubTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    .line 5188
    .restart local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v70, :cond_8f

    .line 5189
    move-object/from16 v0, v70

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v68

    .line 5190
    .restart local v68    # "bgTime":J
    :goto_33
    if-eqz v70, :cond_90

    move-object/from16 v0, v70

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v67

    .line 5191
    .restart local v67    # "bgCount":I
    :goto_34
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5192
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5193
    const-string/jumbo v6, "    Job "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5194
    move-object/from16 v0, v143

    move/from16 v1, v130

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5195
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5196
    const-wide/16 v6, 0x0

    cmp-long v6, v230, v6

    if-eqz v6, :cond_91

    .line 5197
    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5198
    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5199
    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5200
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5201
    const-wide/16 v6, 0x0

    cmp-long v6, v68, v6

    if-lez v6, :cond_8e

    .line 5202
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5203
    move-wide/from16 v0, v68

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5204
    const-string/jumbo v6, "background ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5205
    move/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5206
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5211
    :cond_8e
    :goto_35
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5212
    const/16 v241, 0x1

    .line 5182
    add-int/lit8 v130, v130, -0x1

    goto/16 :goto_32

    .line 5189
    .end local v67    # "bgCount":I
    .end local v68    # "bgTime":J
    :cond_8f
    const-wide/16 v68, -0x1

    .restart local v68    # "bgTime":J
    goto :goto_33

    .line 5190
    :cond_90
    const/16 v67, -0x1

    .restart local v67    # "bgCount":I
    goto :goto_34

    .line 5209
    :cond_91
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_35

    .line 5215
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v67    # "bgCount":I
    .end local v68    # "bgTime":J
    .end local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v89    # "count":I
    .end local v230    # "totalTime":J
    :cond_92
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getJobCompletionStats()Landroid/util/ArrayMap;

    move-result-object v85

    .line 5216
    .local v85, "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    invoke-virtual/range {v85 .. v85}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v129, v6, -0x1

    .local v129, "ic":I
    :goto_36
    if-ltz v129, :cond_95

    .line 5217
    move-object/from16 v0, v85

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v238

    check-cast v238, Landroid/util/SparseIntArray;

    .line 5218
    .local v238, "types":Landroid/util/SparseIntArray;
    if-eqz v238, :cond_94

    .line 5219
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5220
    const-string/jumbo v6, "    Job Completions "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5221
    move-object/from16 v0, v85

    move/from16 v1, v129

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5222
    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5223
    const/16 v139, 0x0

    .local v139, "it":I
    :goto_37
    invoke-virtual/range {v238 .. v238}, Landroid/util/SparseIntArray;->size()I

    move-result v6

    move/from16 v0, v139

    if-ge v0, v6, :cond_93

    .line 5224
    const-string/jumbo v6, " "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5225
    move-object/from16 v0, v238

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-static {v6}, Landroid/app/job/JobParameters;->getReasonName(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5226
    const-string/jumbo v6, "("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5227
    move-object/from16 v0, v238

    move/from16 v1, v139

    invoke-virtual {v0, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 5228
    const-string/jumbo v6, "x)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5223
    add-int/lit8 v139, v139, 0x1

    goto :goto_37

    .line 5230
    :cond_93
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 5216
    .end local v139    # "it":I
    :cond_94
    add-int/lit8 v129, v129, -0x1

    goto :goto_36

    .line 5234
    .end local v238    # "types":Landroid/util/SparseIntArray;
    :cond_95
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getFlashlightTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5235
    const-string/jumbo v44, "Flashlight"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    .line 5234
    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v241, v241, v6

    .line 5236
    .local v241, "uidActivity":Z
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getCameraTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5237
    const-string/jumbo v44, "Camera"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    .line 5236
    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v241, v241, v6

    .line 5238
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getVideoTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5239
    const-string/jumbo v44, "Video"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    .line 5238
    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v241, v241, v6

    .line 5240
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getAudioTurnedOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5241
    const-string/jumbo v44, "Audio"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    .line 5240
    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v241, v241, v6

    .line 5243
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getSensorStats()Landroid/util/SparseArray;

    move-result-object v203

    .line 5244
    .local v203, "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    invoke-virtual/range {v203 .. v203}, Landroid/util/SparseArray;->size()I

    move-result v45

    .line 5245
    .local v45, "NSE":I
    const/16 v136, 0x0

    .end local v241    # "uidActivity":Z
    .local v136, "ise":I
    :goto_38
    move/from16 v0, v136

    move/from16 v1, v45

    if-ge v0, v1, :cond_9e

    .line 5246
    move-object/from16 v0, v203

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v199

    check-cast v199, Landroid/os/BatteryStats$Uid$Sensor;

    .line 5247
    .local v199, "se":Landroid/os/BatteryStats$Uid$Sensor;
    move-object/from16 v0, v203

    move/from16 v1, v136

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v202

    .line 5248
    .local v202, "sensorNumber":I
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5249
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5250
    const-string/jumbo v6, "    Sensor "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5251
    invoke-virtual/range {v199 .. v199}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v121

    .line 5252
    .local v121, "handle":I
    const/16 v6, -0x2710

    move/from16 v0, v121

    if-ne v0, v6, :cond_99

    .line 5253
    const-string/jumbo v6, "GPS"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5257
    :goto_39
    const-string/jumbo v6, ": "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5259
    invoke-virtual/range {v199 .. v199}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v19

    .line 5260
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    if-eqz v19, :cond_9d

    .line 5262
    move-object/from16 v0, v19

    move-wide/from16 v1, v24

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v6

    const-wide/16 v12, 0x1f4

    add-long/2addr v6, v12

    .line 5263
    const-wide/16 v12, 0x3e8

    .line 5262
    div-long v230, v6, v12

    .line 5264
    .restart local v230    # "totalTime":J
    move-object/from16 v0, v19

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v89

    .line 5265
    .restart local v89    # "count":I
    invoke-virtual/range {v199 .. v199}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorBackgroundTime()Landroid/os/BatteryStats$Timer;

    move-result-object v70

    .line 5266
    .restart local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v70, :cond_9a

    move-object/from16 v0, v70

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v67

    .line 5268
    .restart local v67    # "bgCount":I
    :goto_3a
    move-object/from16 v0, v19

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v50

    .line 5269
    .local v50, "actualTime":J
    if-eqz v70, :cond_9b

    .line 5270
    move-object/from16 v0, v70

    move-wide/from16 v1, v188

    invoke-virtual {v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalDurationMsLocked(J)J

    move-result-wide v64

    .line 5273
    .local v64, "bgActualTime":J
    :goto_3b
    const-wide/16 v6, 0x0

    cmp-long v6, v230, v6

    if-eqz v6, :cond_9c

    .line 5274
    cmp-long v6, v50, v230

    if-eqz v6, :cond_96

    .line 5275
    move-wide/from16 v0, v230

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5276
    const-string/jumbo v6, "blamed realtime, "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5279
    :cond_96
    move-wide/from16 v0, v50

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5280
    const-string/jumbo v6, "realtime ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5281
    move/from16 v0, v89

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5282
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5284
    const-wide/16 v6, 0x0

    cmp-long v6, v64, v6

    if-nez v6, :cond_97

    if-lez v67, :cond_98

    .line 5285
    :cond_97
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5286
    move-wide/from16 v0, v64

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5287
    const-string/jumbo v6, "background ("

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5288
    move/from16 v0, v67

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5289
    const-string/jumbo v6, " times)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5298
    .end local v50    # "actualTime":J
    .end local v64    # "bgActualTime":J
    .end local v67    # "bgCount":I
    .end local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v89    # "count":I
    .end local v230    # "totalTime":J
    :cond_98
    :goto_3c
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5299
    const/16 v241, 0x1

    .line 5245
    .local v241, "uidActivity":Z
    add-int/lit8 v136, v136, 0x1

    goto/16 :goto_38

    .line 5255
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v241    # "uidActivity":Z
    :cond_99
    move/from16 v0, v121

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/16 :goto_39

    .line 5266
    .restart local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .restart local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .restart local v89    # "count":I
    .restart local v230    # "totalTime":J
    :cond_9a
    const/16 v67, 0x0

    .restart local v67    # "bgCount":I
    goto :goto_3a

    .line 5270
    .restart local v50    # "actualTime":J
    :cond_9b
    const-wide/16 v64, 0x0

    .restart local v64    # "bgActualTime":J
    goto :goto_3b

    .line 5292
    :cond_9c
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 5295
    .end local v50    # "actualTime":J
    .end local v64    # "bgActualTime":J
    .end local v67    # "bgCount":I
    .end local v70    # "bgTimer":Landroid/os/BatteryStats$Timer;
    .end local v89    # "count":I
    .end local v230    # "totalTime":J
    :cond_9d
    const-string/jumbo v6, "(not used)"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3c

    .line 5302
    .end local v19    # "timer":Landroid/os/BatteryStats$Timer;
    .end local v121    # "handle":I
    .end local v199    # "se":Landroid/os/BatteryStats$Uid$Sensor;
    .end local v202    # "sensorNumber":I
    :cond_9e
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getVibratorOnTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5303
    const-string/jumbo v44, "Vibrator"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    .line 5302
    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v241, v241, v6

    .line 5304
    .local v241, "uidActivity":Z
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getForegroundActivityTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5305
    const-string/jumbo v44, "Foreground activities"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    .line 5304
    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v241, v241, v6

    .line 5306
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getForegroundServiceTimer()Landroid/os/BatteryStats$Timer;

    move-result-object v39

    .line 5307
    const-string/jumbo v44, "Foreground services"

    move-object/from16 v37, p2

    move-object/from16 v38, v14

    move-wide/from16 v40, v24

    move/from16 v42, p4

    move-object/from16 v43, p3

    .line 5306
    invoke-static/range {v37 .. v44}, Landroid/os/BatteryStats;->printTimer(Ljava/io/PrintWriter;Ljava/lang/StringBuilder;Landroid/os/BatteryStats$Timer;JILjava/lang/String;Ljava/lang/String;)Z

    move-result v6

    or-int v241, v241, v6

    .line 5309
    const-wide/16 v228, 0x0

    .line 5310
    .local v228, "totalStateTime":J
    const/16 v135, 0x0

    .end local v241    # "uidActivity":Z
    .local v135, "ips":I
    :goto_3d
    const/4 v6, 0x6

    move/from16 v0, v135

    if-ge v0, v6, :cond_a0

    .line 5311
    move-object/from16 v0, v239

    move/from16 v1, v135

    move-wide/from16 v2, v24

    move/from16 v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/os/BatteryStats$Uid;->getProcessStateTime(IJI)J

    move-result-wide v216

    .line 5312
    .restart local v216    # "time":J
    const-wide/16 v6, 0x0

    cmp-long v6, v216, v6

    if-lez v6, :cond_9f

    .line 5313
    add-long v228, v228, v216

    .line 5314
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5315
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5316
    const-string/jumbo v6, "    "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5317
    sget-object v6, Landroid/os/BatteryStats$Uid;->PROCESS_STATE_NAMES:[Ljava/lang/String;

    aget-object v6, v6, v135

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5318
    const-string/jumbo v6, " for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5319
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v216

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5320
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5321
    const/16 v241, 0x1

    .line 5310
    :cond_9f
    add-int/lit8 v135, v135, 0x1

    goto :goto_3d

    .line 5324
    .end local v216    # "time":J
    :cond_a0
    const-wide/16 v6, 0x0

    cmp-long v6, v228, v6

    if-lez v6, :cond_a1

    .line 5325
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5326
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5327
    const-string/jumbo v6, "    Total running: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5328
    const-wide/16 v6, 0x1f4

    add-long v6, v6, v228

    const-wide/16 v12, 0x3e8

    div-long/2addr v6, v12

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5329
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5332
    :cond_a1
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getUserCpuTimeUs(I)J

    move-result-wide v0

    move-wide/16 v258, v0

    .line 5333
    .local v258, "userCpuTimeUs":J
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getSystemCpuTimeUs(I)J

    move-result-wide v212

    .line 5334
    .local v212, "systemCpuTimeUs":J
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v258

    cmp-long v6, v0, v6

    if-gtz v6, :cond_a2

    const-wide/16 v6, 0x0

    cmp-long v6, v212, v6

    if-lez v6, :cond_a3

    .line 5335
    :cond_a2
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5336
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5337
    const-string/jumbo v6, "    Total cpu time: u="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5338
    const-wide/16 v6, 0x3e8

    move-wide/from16 v0, v258

    div-long/2addr v0, v6

    move-wide v6, v0

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5339
    const-string/jumbo v6, "s="

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5340
    const-wide/16 v6, 0x3e8

    div-long v6, v212, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5341
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5344
    :cond_a3
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getCpuFreqTimes(I)[J

    move-result-object v92

    .line 5345
    .local v92, "cpuFreqTimes":[J
    if-eqz v92, :cond_a5

    .line 5346
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5347
    const-string/jumbo v6, "    Total cpu time per freq:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5348
    const/16 v127, 0x0

    :goto_3e
    move-object/from16 v0, v92

    array-length v6, v0

    move/from16 v0, v127

    if-ge v0, v6, :cond_a4

    .line 5349
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v12, v92, v127

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5348
    add-int/lit8 v127, v127, 0x1

    goto :goto_3e

    .line 5351
    :cond_a4
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5353
    :cond_a5
    move-object/from16 v0, v239

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid;->getScreenOffCpuFreqTimes(I)[J

    move-result-object v198

    .line 5354
    .local v198, "screenOffCpuFreqTimes":[J
    if-eqz v198, :cond_a7

    .line 5355
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5356
    const-string/jumbo v6, "    Total screen-off cpu time per freq:"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5357
    const/16 v127, 0x0

    :goto_3f
    move-object/from16 v0, v198

    array-length v6, v0

    move/from16 v0, v127

    if-ge v0, v6, :cond_a6

    .line 5358
    const-string/jumbo v6, " "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-wide v12, v198, v127

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 5357
    add-int/lit8 v127, v127, 0x1

    goto :goto_3f

    .line 5360
    :cond_a6
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5364
    :cond_a7
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getProcessStats()Landroid/util/ArrayMap;

    move-result-object v177

    .line 5365
    .local v177, "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    invoke-virtual/range {v177 .. v177}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v134, v6, -0x1

    .local v134, "ipr":I
    :goto_40
    if-ltz v134, :cond_b5

    .line 5366
    move-object/from16 v0, v177

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v187

    check-cast v187, Landroid/os/BatteryStats$Uid$Proc;

    .line 5373
    .local v187, "ps":Landroid/os/BatteryStats$Uid$Proc;
    move-object/from16 v0, v187

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v0

    move-wide/16 v260, v0

    .line 5374
    .local v260, "userTime":J
    move-object/from16 v0, v187

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v214

    .line 5375
    .local v214, "systemTime":J
    move-object/from16 v0, v187

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v116

    .line 5376
    .local v116, "foregroundTime":J
    move-object/from16 v0, v187

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getStarts(I)I

    move-result v207

    .line 5377
    .local v207, "starts":I
    move-object/from16 v0, v187

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumCrashes(I)I

    move-result v173

    .line 5378
    .local v173, "numCrashes":I
    move-object/from16 v0, v187

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getNumAnrs(I)I

    move-result v171

    .line 5379
    .local v171, "numAnrs":I
    move/from16 v0, p4

    if-nez v0, :cond_b0

    .line 5380
    invoke-virtual/range {v187 .. v187}, Landroid/os/BatteryStats$Uid$Proc;->countExcessivePowers()I

    move-result v174

    .line 5382
    .local v174, "numExcessive":I
    :goto_41
    const-wide/16 v6, 0x0

    move-wide/from16 v0, v260

    cmp-long v6, v0, v6

    if-nez v6, :cond_a8

    const-wide/16 v6, 0x0

    cmp-long v6, v214, v6

    if-eqz v6, :cond_b1

    .line 5384
    :cond_a8
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5385
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "    Proc "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5386
    move-object/from16 v0, v177

    move/from16 v1, v134

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5387
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      CPU: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5388
    move-wide/from16 v0, v260

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "usr + "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5389
    move-wide/from16 v0, v214

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "krn ; "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5390
    move-wide/from16 v0, v116

    invoke-static {v14, v0, v1}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    const-string/jumbo v6, "fg"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5391
    if-nez v207, :cond_a9

    if-eqz v173, :cond_b2

    .line 5392
    :cond_a9
    :goto_42
    const-string/jumbo v6, "\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5393
    const/16 v125, 0x0

    .line 5394
    .local v125, "hasOne":Z
    if-eqz v207, :cond_aa

    .line 5395
    const/16 v125, 0x1

    .line 5396
    move/from16 v0, v207

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " starts"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5398
    :cond_aa
    if-eqz v173, :cond_ac

    .line 5399
    if-eqz v125, :cond_ab

    .line 5400
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5402
    :cond_ab
    const/16 v125, 0x1

    .line 5403
    move/from16 v0, v173

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " crashes"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5405
    :cond_ac
    if-eqz v171, :cond_ae

    .line 5406
    if-eqz v125, :cond_ad

    .line 5407
    const-string/jumbo v6, ", "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5409
    :cond_ad
    move/from16 v0, v171

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v6, " anrs"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5412
    .end local v125    # "hasOne":Z
    :cond_ae
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5413
    const/16 v103, 0x0

    .local v103, "e":I
    :goto_43
    move/from16 v0, v103

    move/from16 v1, v174

    if-ge v0, v1, :cond_b4

    .line 5414
    move-object/from16 v0, v187

    move/from16 v1, v103

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Proc;->getExcessivePower(I)Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;

    move-result-object v115

    .line 5415
    .local v115, "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    if-eqz v115, :cond_af

    .line 5416
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      * Killed for "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5417
    move-object/from16 v0, v115

    iget v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->type:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_b3

    .line 5418
    const-string/jumbo v6, "cpu"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5422
    :goto_44
    const-string/jumbo v6, " use: "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5423
    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5424
    const-string/jumbo v6, " over "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5425
    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 5426
    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    const-wide/16 v12, 0x0

    cmp-long v6, v6, v12

    if-eqz v6, :cond_af

    .line 5427
    const-string/jumbo v6, " ("

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5428
    move-object/from16 v0, v115

    iget-wide v6, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->usedTime:J

    const-wide/16 v12, 0x64

    mul-long/2addr v6, v12

    move-object/from16 v0, v115

    iget-wide v12, v0, Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;->overTime:J

    div-long/2addr v6, v12

    move-object/from16 v0, p2

    invoke-virtual {v0, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 5429
    const-string/jumbo v6, "%)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5413
    :cond_af
    add-int/lit8 v103, v103, 0x1

    goto :goto_43

    .line 5380
    .end local v103    # "e":I
    .end local v115    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    .end local v174    # "numExcessive":I
    :cond_b0
    const/16 v174, 0x0

    .restart local v174    # "numExcessive":I
    goto/16 :goto_41

    .line 5382
    :cond_b1
    const-wide/16 v6, 0x0

    cmp-long v6, v116, v6

    if-nez v6, :cond_a8

    if-nez v207, :cond_a8

    .line 5383
    if-nez v174, :cond_a8

    if-nez v173, :cond_a8

    if-nez v171, :cond_a8

    .line 5365
    :goto_45
    add-int/lit8 v134, v134, -0x1

    goto/16 :goto_40

    .line 5391
    :cond_b2
    if-eqz v171, :cond_ae

    goto/16 :goto_42

    .line 5420
    .restart local v103    # "e":I
    .restart local v115    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_b3
    const-string/jumbo v6, "unknown"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_44

    .line 5433
    .end local v115    # "ew":Landroid/os/BatteryStats$Uid$Proc$ExcessivePower;
    :cond_b4
    const/16 v241, 0x1

    .local v241, "uidActivity":Z
    goto :goto_45

    .line 5438
    .end local v103    # "e":I
    .end local v116    # "foregroundTime":J
    .end local v171    # "numAnrs":I
    .end local v173    # "numCrashes":I
    .end local v174    # "numExcessive":I
    .end local v187    # "ps":Landroid/os/BatteryStats$Uid$Proc;
    .end local v207    # "starts":I
    .end local v214    # "systemTime":J
    .end local v241    # "uidActivity":Z
    .end local v260    # "userTime":J
    :cond_b5
    invoke-virtual/range {v239 .. v239}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v176

    .line 5439
    .local v176, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual/range {v176 .. v176}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v131, v6, -0x1

    .local v131, "ipkg":I
    :goto_46
    if-ltz v131, :cond_bc

    .line 5440
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    Apk "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object/from16 v0, v176

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5441
    const-string/jumbo v6, ":"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5442
    const/16 v59, 0x0

    .line 5443
    .local v59, "apkActivity":Z
    move-object/from16 v0, v176

    move/from16 v1, v131

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v186

    check-cast v186, Landroid/os/BatteryStats$Uid$Pkg;

    .line 5444
    .local v186, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual/range {v186 .. v186}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v58

    .line 5445
    .local v58, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual/range {v58 .. v58}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v142, v6, -0x1

    .local v142, "iwa":I
    :goto_47
    if-ltz v142, :cond_b6

    .line 5446
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      Wakeup alarm "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5447
    move-object/from16 v0, v58

    move/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, ": "

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5448
    move-object/from16 v0, v58

    move/from16 v1, v142

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Counter;

    move/from16 v0, p4

    invoke-virtual {v6, v0}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 5449
    const-string/jumbo v6, " times"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5450
    const/16 v59, 0x1

    .line 5445
    add-int/lit8 v142, v142, -0x1

    goto :goto_47

    .line 5452
    :cond_b6
    invoke-virtual/range {v186 .. v186}, Landroid/os/BatteryStats$Uid$Pkg;->getServiceStats()Landroid/util/ArrayMap;

    move-result-object v204

    .line 5453
    .local v204, "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    invoke-virtual/range {v204 .. v204}, Landroid/util/ArrayMap;->size()I

    move-result v6

    add-int/lit8 v137, v6, -0x1

    .local v137, "isvc":I
    :goto_48
    if-ltz v137, :cond_ba

    .line 5454
    move-object/from16 v0, v204

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v206

    check-cast v206, Landroid/os/BatteryStats$Uid$Pkg$Serv;

    .line 5455
    .local v206, "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    move-object/from16 v0, v206

    move-wide/from16 v1, v62

    move/from16 v3, p4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStartTime(JI)J

    move-result-wide v208

    .line 5456
    .local v208, "startTime":J
    move-object/from16 v0, v206

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getStarts(I)I

    move-result v207

    .line 5457
    .restart local v207    # "starts":I
    move-object/from16 v0, v206

    move/from16 v1, p4

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Pkg$Serv;->getLaunches(I)I

    move-result v146

    .line 5458
    .local v146, "launches":I
    const-wide/16 v6, 0x0

    cmp-long v6, v208, v6

    if-nez v6, :cond_b7

    if-eqz v207, :cond_b9

    .line 5459
    :cond_b7
    :goto_49
    const/4 v6, 0x0

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 5460
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "      Service "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5461
    move-object/from16 v0, v204

    move/from16 v1, v137

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, ":\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5462
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Created for: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5463
    const-wide/16 v6, 0x3e8

    div-long v6, v208, v6

    invoke-static {v14, v6, v7}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 5464
    const-string/jumbo v6, "uptime\n"

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5465
    move-object/from16 v0, p3

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "        Starts: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5466
    move/from16 v0, v207

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5467
    const-string/jumbo v6, ", launches: "

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v0, v146

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 5468
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5469
    const/16 v59, 0x1

    .line 5453
    :cond_b8
    add-int/lit8 v137, v137, -0x1

    goto/16 :goto_48

    .line 5458
    :cond_b9
    if-eqz v146, :cond_b8

    goto :goto_49

    .line 5472
    .end local v146    # "launches":I
    .end local v206    # "ss":Landroid/os/BatteryStats$Uid$Pkg$Serv;
    .end local v207    # "starts":I
    .end local v208    # "startTime":J
    :cond_ba
    if-nez v59, :cond_bb

    .line 5473
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "      (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5475
    :cond_bb
    const/16 v241, 0x1

    .line 5439
    .restart local v241    # "uidActivity":Z
    add-int/lit8 v131, v131, -0x1

    goto/16 :goto_46

    .line 5477
    .end local v58    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v59    # "apkActivity":Z
    .end local v137    # "isvc":I
    .end local v142    # "iwa":I
    .end local v186    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    .end local v204    # "serviceStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg$Serv;>;"
    .end local v241    # "uidActivity":Z
    :cond_bc
    if-nez v241, :cond_4f

    .line 5478
    invoke-virtual/range {p2 .. p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "    (nothing executed)"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1c

    .line 5485
    .end local v45    # "NSE":I
    .end local v71    # "bleTimer":Landroid/os/BatteryStats$Timer;
    .end local v76    # "btRxBytes":J
    .end local v80    # "btTxBytes":J
    .end local v85    # "completions":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseIntArray;>;"
    .end local v91    # "countWakelock":I
    .end local v92    # "cpuFreqTimes":[J
    .end local v122    # "fullWifiLockOnTime":J
    .end local v129    # "ic":I
    .end local v130    # "ij":I
    .end local v131    # "ipkg":I
    .end local v134    # "ipr":I
    .end local v135    # "ips":I
    .end local v136    # "ise":I
    .end local v138    # "isy":I
    .end local v141    # "iw":I
    .end local v143    # "jobs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v152    # "mobileRxBytes":J
    .end local v154    # "mobileRxPackets":J
    .end local v160    # "mobileTxBytes":J
    .end local v162    # "mobileTxPackets":J
    .end local v168    # "mobileWakeup":J
    .end local v176    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v177    # "processStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Proc;>;"
    .end local v198    # "screenOffCpuFreqTimes":[J
    .end local v203    # "sensors":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid$Sensor;>;"
    .end local v210    # "syncs":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Timer;>;"
    .end local v212    # "systemCpuTimeUs":J
    .end local v220    # "totalDrawWakelock":J
    .end local v222    # "totalFullWakelock":J
    .end local v224    # "totalPartialWakelock":J
    .end local v228    # "totalStateTime":J
    .end local v236    # "totalWindowWakelock":J
    .end local v239    # "u":Landroid/os/BatteryStats$Uid;
    .end local v240    # "uid":I
    .end local v242    # "uidMobileActiveCount":I
    .end local v244    # "uidMobileActiveTime":J
    .end local v246    # "uidWifiRunningTime":J
    .end local v258    # "userCpuTimeUs":J
    .end local v263    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v278    # "wifiRxBytes":J
    .end local v280    # "wifiRxPackets":J
    .end local v286    # "wifiScanActualTime":J
    .end local v288    # "wifiScanActualTimeBg":J
    .end local v290    # "wifiScanCount":I
    .end local v291    # "wifiScanCountBg":I
    .end local v292    # "wifiScanTime":J
    .end local v294    # "wifiTxBytes":J
    .end local v296    # "wifiTxPackets":J
    .end local v302    # "wifiWakeup":J
    :cond_bd
    const/16 v128, 0x0

    .line 5486
    .local v128, "iSSDM845":Z
    const-string/jumbo v6, "sdm845"

    const-string/jumbo v7, "ro.board.platform"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    .line 5487
    const/16 v128, 0x1

    .line 5489
    :cond_be
    const-string/jumbo v6, "\n**** RPM_STATS ****\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5490
    if-eqz v128, :cond_bf

    const-string/jumbo v6, "/sys/power/system_sleep/stats"

    :goto_4a
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5491
    const-string/jumbo v6, "**** RPM_STATS ****"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5493
    const-string/jumbo v6, "\n**** RPM_MASTER_STATS ****\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5494
    if-eqz v128, :cond_c0

    const-string/jumbo v6, "/sys/power/rpmh_stats/master_stats"

    :goto_4b
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5495
    const-string/jumbo v6, "**** RPM_MASTER_STATS ****"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5500
    const-string/jumbo v6, "\n**** CLK_ENABLED_LIST ****\n"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5501
    const-string/jumbo v6, "/d/clk/clk_enabled_list"

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v6}, Landroid/os/BatteryStats;->dumpRPMStatsLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 5502
    const-string/jumbo v6, "**** CLK_ENABLED_LIST ****"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5503
    return-void

    .line 5490
    :cond_bf
    const-string/jumbo v6, "/d/rpm_stats"

    goto :goto_4a

    .line 5494
    :cond_c0
    const-string/jumbo v6, "/d/rpm_master_stats"

    goto :goto_4b

    .line 4479
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_b
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_a
        :pswitch_2
        :pswitch_5
        :pswitch_9
        :pswitch_8
        :pswitch_3
    .end packed-switch
.end method

.method public abstract finishIteratingHistoryLocked()V
.end method

.method public abstract finishIteratingOldHistoryLocked()V
.end method

.method final formatBytesLocked(J)Ljava/lang/String;
    .locals 9
    .param p1, "bytes"    # J

    .prologue
    const/4 v2, 0x1

    const/4 v8, 0x0

    .line 2769
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2771
    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 2772
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "B"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2773
    :cond_0
    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    .line 2774
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fKB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2775
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2776
    :cond_1
    const-wide/32 v0, 0x40000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    .line 2777
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fMB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x4130000000000000L    # 1048576.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2778
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2780
    :cond_2
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v1, "%.2fGB"

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double v4, p1

    const-wide/high16 v6, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v2, v8

    invoke-virtual {v0, v1, v2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2781
    iget-object v0, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final formatRatioLocked(JJ)Ljava/lang/String;
    .locals 7
    .param p1, "num"    # J
    .param p3, "den"    # J

    .prologue
    const/4 v5, 0x0

    .line 2759
    const-wide/16 v2, 0x0

    cmp-long v1, p3, v2

    if-nez v1, :cond_0

    .line 2760
    const-string/jumbo v1, "--%"

    return-object v1

    .line 2762
    :cond_0
    long-to-float v1, p1

    long-to-float v2, p3

    div-float/2addr v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v0, v1, v2

    .line 2763
    .local v0, "perc":F
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2764
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatter:Ljava/util/Formatter;

    const-string/jumbo v2, "%.1f%%"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 2765
    iget-object v1, p0, Landroid/os/BatteryStats;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public abstract getBatteryRealtime(J)J
.end method

.method public abstract getBatteryUptime(J)J
.end method

.method public abstract getBluetoothControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getBluetoothScanTime(JI)J
.end method

.method public abstract getCameraOnTime(JI)J
.end method

.method public abstract getChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getCpuFreqs()[J
.end method

.method public abstract getCurrentDailyStartTime()J
.end method

.method public abstract getDailyChargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDailyItemLocked(I)Landroid/os/BatteryStats$DailyItem;
.end method

.method public abstract getDailyPackageChanges()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/BatteryStats$PackageChange;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getDeviceIdleModeCount(II)I
.end method

.method public abstract getDeviceIdleModeTime(IJI)J
.end method

.method public abstract getDeviceIdlingCount(II)I
.end method

.method public abstract getDeviceIdlingTime(IJI)J
.end method

.method public abstract getDischargeAmount(I)I
.end method

.method public abstract getDischargeAmountScreenDoze()I
.end method

.method public abstract getDischargeAmountScreenDozeSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOff()I
.end method

.method public abstract getDischargeAmountScreenOffSinceCharge()I
.end method

.method public abstract getDischargeAmountScreenOn()I
.end method

.method public abstract getDischargeAmountScreenOnSinceCharge()I
.end method

.method public abstract getDischargeCurrentLevel()I
.end method

.method public abstract getDischargeLevelStepTracker()Landroid/os/BatteryStats$LevelStepTracker;
.end method

.method public abstract getDischargeStartLevel()I
.end method

.method public abstract getEndPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getEstimatedBatteryCapacity()I
.end method

.method public abstract getFlashlightOnCount(I)J
.end method

.method public abstract getFlashlightOnTime(JI)J
.end method

.method public abstract getGlobalWifiRunningTime(JI)J
.end method

.method public abstract getHighDischargeAmountSinceCharge()I
.end method

.method public abstract getHistoryBaseTime()J
.end method

.method public abstract getHistoryStringPoolBytes()I
.end method

.method public abstract getHistoryStringPoolSize()I
.end method

.method public abstract getHistoryTagPoolString(I)Ljava/lang/String;
.end method

.method public abstract getHistoryTagPoolUid(I)I
.end method

.method public abstract getHistoryTotalSize()I
.end method

.method public abstract getHistoryUsedSize()I
.end method

.method public abstract getInteractiveTime(JI)J
.end method

.method public abstract getIsOnBattery()Z
.end method

.method public abstract getKernelMemoryStats()Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/LongSparseArray",
            "<+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getKernelWakelockStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLongestDeviceIdleModeTime(I)J
.end method

.method public abstract getLowDischargeAmountSinceCharge()I
.end method

.method public abstract getMahDischarge(I)J
.end method

.method public abstract getMahDischargeScreenDoze(I)J
.end method

.method public abstract getMahDischargeScreenOff(I)J
.end method

.method public abstract getMaxLearnedBatteryCapacity()I
.end method

.method public abstract getMinLearnedBatteryCapacity()I
.end method

.method public abstract getMobileRadioActiveAdjustedTime(I)J
.end method

.method public abstract getMobileRadioActiveCount(I)I
.end method

.method public abstract getMobileRadioActiveTime(JI)J
.end method

.method public abstract getMobileRadioActiveUnknownCount(I)I
.end method

.method public abstract getMobileRadioActiveUnknownTime(I)J
.end method

.method public abstract getModemControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getNetworkActivityBytes(II)J
.end method

.method public abstract getNetworkActivityPackets(II)J
.end method

.method public abstract getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNextMaxDailyDeadline()J
.end method

.method public abstract getNextMinDailyDeadline()J
.end method

.method public abstract getNextOldHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z
.end method

.method public abstract getNumConnectivityChange(I)I
.end method

.method public abstract getParcelVersion()I
.end method

.method public abstract getPhoneDataConnectionCount(II)I
.end method

.method public abstract getPhoneDataConnectionTime(IJI)J
.end method

.method public abstract getPhoneOnCount(I)I
.end method

.method public abstract getPhoneOnTime(JI)J
.end method

.method public abstract getPhoneSignalScanningTime(JI)J
.end method

.method public abstract getPhoneSignalStrengthCount(II)I
.end method

.method public abstract getPhoneSignalStrengthTime(IJI)J
.end method

.method public abstract getPowerSaveModeEnabledCount(I)I
.end method

.method public abstract getPowerSaveModeEnabledTime(JI)J
.end method

.method public abstract getRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenBrightnessTime(IJI)J
.end method

.method public abstract getScreenDozeCount(I)I
.end method

.method public abstract getScreenDozeTime(JI)J
.end method

.method public abstract getScreenOffRpmStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getScreenOnCount(I)I
.end method

.method public abstract getScreenOnTime(JI)J
.end method

.method public abstract getStartClockTime()J
.end method

.method public abstract getStartCount()I
.end method

.method public abstract getStartPlatformVersion()Ljava/lang/String;
.end method

.method public abstract getUidStats()Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray",
            "<+",
            "Landroid/os/BatteryStats$Uid;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWakeupReasonStats()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getWifiControllerActivity()Landroid/os/BatteryStats$ControllerActivityCounter;
.end method

.method public abstract getWifiOnTime(JI)J
.end method

.method public abstract getWifiSignalStrengthCount(II)I
.end method

.method public abstract getWifiSignalStrengthTime(IJI)J
.end method

.method public abstract getWifiStateCount(II)I
.end method

.method public abstract getWifiStateTime(IJI)J
.end method

.method public abstract getWifiSupplStateCount(II)I
.end method

.method public abstract getWifiSupplStateTime(IJI)J
.end method

.method public abstract hasBluetoothActivityReporting()Z
.end method

.method public abstract hasModemActivityReporting()Z
.end method

.method public abstract hasWifiActivityReporting()Z
.end method

.method public prepareForDumpLocked()V
    .locals 0

    .prologue
    .line 5594
    return-void
.end method

.method public abstract startIteratingHistoryLocked()Z
.end method

.method public abstract startIteratingOldHistoryLocked()Z
.end method

.method public abstract writeToParcelWithoutUids(Landroid/os/Parcel;I)V
.end method
