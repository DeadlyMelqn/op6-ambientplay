.class public Lcom/android/server/OverHeatingDiagnosis;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;,
        Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;,
        Lcom/android/server/OverHeatingDiagnosis$CameraStat;,
        Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;,
        Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;,
        Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;,
        Lcom/android/server/OverHeatingDiagnosis$MyHandler;,
        Lcom/android/server/OverHeatingDiagnosis$Stopwatch;,
        Lcom/android/server/OverHeatingDiagnosis$UidObserver;,
        Lcom/android/server/OverHeatingDiagnosis$UidStat;
    }
.end annotation


# static fields
.field public static final BATTERY_PLUGGED_FASTCHARGE:I = 0x8

.field static final COOLDOWN_AFTER_BOOT:J = 0x2bf20L

.field static final CRITICAL_CHARGING_DURATION:J = 0x2bf20L

.field static final CRITICAL_CHARGING_TEMPERATURE:I = 0x2c

.field static final CRITICAL_CPU_USAGE:I = 0x28

.field static final CRITICAL_FOREGROUND_DURATION:J = 0xea60L

.field static final CRITICAL_TEMPERATURE:I = 0x27

.field static final CRITICAL_TOTAL_CPU_USAGE:I = 0xc8

.field public static final DIAGNOSIS_HEATING_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_heating.txt"

.field static final DROPBOX_MAX_SIZE:I = 0x40000

.field static final DROPBOX_TAG:Ljava/lang/String; = "overheat"

.field static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final ISSUE_HEAT_CAMERA:I = 0x1c

.field public static final ISSUE_HEAT_CAMERA_WHEN_CHARGE:I = 0x1b

.field public static final ISSUE_HEAT_CPU_LOAD:I = 0x19

.field public static final ISSUE_HEAT_PLAY_WHEN_CHARGE:I = 0x18

.field public static final ISSUE_HEAT_PLAY_WHEN_DASH:I = 0x17

.field public static final ISSUE_HEAT_UNKNOWN_REASON:I = 0x1a

.field static final LOGCAT_LINE_NUM:I = 0x800

.field static final MAX_RECORD_COUNT:I = 0x28

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_CPU_LOAD:Ljava/lang/String; = "cl"

.field private static final MDM_EVENT:Ljava/lang/String; = "overheat"

.field private static final MDM_HEAT_REASON:Ljava/lang/String; = "hr"

.field private static final MDM_HEAT_TYPE:Ljava/lang/String; = "ht"

.field private static final MDM_MAX_TEMP:Ljava/lang/String; = "mt"

.field static final MONITOR_FREQUENCY:J = 0xea60L

.field static final MONITOR_PERIOD_MILLIS:J = 0x493e0L

.field static final NUM_START_TO_MONITOR:I = 0x3

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "OverHeatingDiagnosis"

.field static final RESERVED_BYTES_PER_LOGCAT_LINE:I = 0x64

.field static final RES_THERMAL_ZONE_PATH:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field static final RES_THERMAL_ZONE_PRECISION:Ljava/lang/String; = "com.oneplus:integer/config_overheat_thermal_zone_precision"

.field static final STATE_ARBITRATE:I = 0x2

.field static final STATE_MONITOR:I = 0x1

.field static final STATE_NORMAL:I = 0x0

.field static final STATE_REPORT:I = 0x3

.field static final TAG:Ljava/lang/String; = "OverHeatingDiagnosis"

.field static final THERMAL_ZONE_PATH:Ljava/lang/String; = "/sys/class/thermal/thermal_zone27/temp"

.field static final THERMAL_ZONE_PRECISION:I = 0x1

.field static final TRIGGER_MONITOR_TEMPERATURE:I = 0x23

.field static final TRIGGER_PERIOD_MILLIS:J = 0x927c0L

.field private static mPackageManager:Landroid/content/pm/PackageManager;


# instance fields
.field private mBatteryFilter:Landroid/content/IntentFilter;

.field mBatteryHistory:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

.field private mBootCompleteTime:J

.field private final mCameraStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/OverHeatingDiagnosis$CameraStat;",
            ">;"
        }
    .end annotation
.end field

.field private mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

.field private mContext:Landroid/content/Context;

.field private mCriticalCharging:J

.field private mCriticalChargingTemp:I

.field private mCriticalCpu:I

.field private mCriticalForeground:J

.field private mCriticalTemp:I

.field private mCriticalTotalCpu:I

.field private mCurrentLevel:I

.field private mCurrentPlugType:I

.field private mCurrentTemp:I

.field private mDiagState:I

.field private mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mEnabled:Z

.field private mEnabledBugreport:Z

.field private mEnabledMDM:Z

.field private mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

.field private mLastLevel:I

.field private final mLock:Ljava/lang/Object;

.field private mMaxMonitorTemp:I

.field private mMonitorForced:Z

.field private mMonitorFrequency:J

.field private mMonitorNum:I

.field private mMonitorPeriod:J

.field private mMonitorStart:J

.field private mMonitorTemp:I

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private mThermalZonePath:Ljava/lang/String;

.field private mThermalZonePrecision:I

.field private mTriggerPeriod:J

.field private final mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

.field private final mUidStateStats:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/server/OverHeatingDiagnosis$UidStat;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/IntentFilter;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryFilter:Landroid/content/IntentFilter;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    return-object v0
.end method

.method static synthetic -get10(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    return v0
.end method

.method static synthetic -get11(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    return v0
.end method

.method static synthetic -get12(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    return v0
.end method

.method static synthetic -get13(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    return v0
.end method

.method static synthetic -get14(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    return v0
.end method

.method static synthetic -get15(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    return-object v0
.end method

.method static synthetic -get16(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I

    return v0
.end method

.method static synthetic -get17(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get18(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    return v0
.end method

.method static synthetic -get19(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    return-wide v0
.end method

.method static synthetic -get2(Lcom/android/server/OverHeatingDiagnosis;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic -get20(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    return v0
.end method

.method static synthetic -get21(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    return-wide v0
.end method

.method static synthetic -get22(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    return v0
.end method

.method static synthetic -get23(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method static synthetic -get24(Lcom/android/server/OverHeatingDiagnosis;)Ljava/lang/String;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get25(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    return v0
.end method

.method static synthetic -get26(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    return-wide v0
.end method

.method static synthetic -get3(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/OverHeatingDiagnosis;)Landroid/content/Context;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    return-wide v0
.end method

.method static synthetic -get6(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    return v0
.end method

.method static synthetic -get7(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    return v0
.end method

.method static synthetic -get8(Lcom/android/server/OverHeatingDiagnosis;)J
    .locals 2
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    return-wide v0
.end method

.method static synthetic -get9(Lcom/android/server/OverHeatingDiagnosis;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    return-wide p1
.end method

.method static synthetic -set1(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    return p1
.end method

.method static synthetic -set10(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    return p1
.end method

.method static synthetic -set11(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    return p1
.end method

.method static synthetic -set12(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mLastLevel:I

    return p1
.end method

.method static synthetic -set13(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    return p1
.end method

.method static synthetic -set14(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    return-wide p1
.end method

.method static synthetic -set15(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    return p1
.end method

.method static synthetic -set16(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    return-wide p1
.end method

.method static synthetic -set17(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    return p1
.end method

.method static synthetic -set18(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # Ljava/lang/String;

    .prologue
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic -set19(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    return p1
.end method

.method static synthetic -set20(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    return-wide p1
.end method

.method static synthetic -set3(Lcom/android/server/OverHeatingDiagnosis;J)J
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # J

    .prologue
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    return-wide p1
.end method

.method static synthetic -set4(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    return p1
.end method

.method static synthetic -set6(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentLevel:I

    return p1
.end method

.method static synthetic -set7(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    return p1
.end method

.method static synthetic -set8(Lcom/android/server/OverHeatingDiagnosis;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentTemp:I

    return p1
.end method

.method static synthetic -set9(Lcom/android/server/OverHeatingDiagnosis;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/OverHeatingDiagnosis;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OverHeatingDiagnosis;->triggerMonitor()Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 102
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 1475
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 91
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/32 v8, 0xea60

    const/16 v6, 0x28

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mLock:Ljava/lang/Object;

    .line 177
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    invoke-direct {v2, p0}, Lcom/android/server/OverHeatingDiagnosis$UidObserver;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    .line 194
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    .line 195
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    .line 196
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-direct {v2, p0, v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    .line 199
    if-nez p1, :cond_0

    .line 200
    const-string/jumbo v2, "OverHeatingDiagnosis"

    const-string/jumbo v3, "context cannot be null"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    return-void

    .line 203
    :cond_0
    iput-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    .line 204
    iput-boolean v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    .line 205
    iput-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    .line 206
    iput-boolean v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    .line 207
    const-wide/32 v2, 0x493e0

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    .line 208
    const-wide/32 v2, 0x927c0

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    .line 209
    iput-wide v8, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    .line 210
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    .line 211
    const/16 v2, 0x23

    iput v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    .line 213
    const-string/jumbo v2, "/sys/class/thermal/thermal_zone27/temp"

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 214
    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    .line 215
    iput v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    .line 216
    const/16 v2, 0xc8

    iput v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    .line 217
    const/16 v2, 0x27

    iput v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    .line 218
    const/16 v2, 0x2c

    iput v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    .line 219
    iput-wide v8, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    .line 220
    const-wide/32 v2, 0x2bf20

    iput-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    .line 222
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    .line 223
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    invoke-direct {v2, p0, v5}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    .line 224
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    invoke-direct {v2, p0, v5}, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;-><init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryReceiver:Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    .line 225
    new-instance v2, Landroid/content/IntentFilter;

    const-string/jumbo v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryFilter:Landroid/content/IntentFilter;

    .line 226
    new-instance v2, Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;-><init>(Lcom/android/server/OverHeatingDiagnosis;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    .line 228
    new-instance v2, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string/jumbo v3, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v2, v3, v6}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    .line 230
    new-instance v2, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "NYNCG4I0TI"

    invoke-direct {v2, v3, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 234
    const/4 v1, -0x1

    .line 235
    .local v1, "resId":I
    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 236
    .local v0, "res":Landroid/content/res/Resources;
    const-string/jumbo v2, "com.oneplus:string/config_overheat_thermal_zone_path"

    invoke-virtual {v0, v2, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 237
    if-eqz v1, :cond_1

    .line 238
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 239
    const-string/jumbo v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res com.oneplus:string/config_overheat_thermal_zone_path : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_0
    const/4 v1, -0x1

    .line 244
    const-string/jumbo v2, "com.oneplus:integer/config_overheat_thermal_zone_precision"

    invoke-virtual {v0, v2, v5, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 245
    if-eqz v1, :cond_2

    .line 246
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    .line 247
    const-string/jumbo v2, "OverHeatingDiagnosis"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "res com.oneplus:integer/config_overheat_thermal_zone_precision : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :goto_1
    return-void

    .line 241
    :cond_1
    const-string/jumbo v2, "OverHeatingDiagnosis"

    const-string/jumbo v3, "res com.oneplus:string/config_overheat_thermal_zone_path not found"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 249
    :cond_2
    const-string/jumbo v2, "OverHeatingDiagnosis"

    const-string/jumbo v3, "res com.oneplus:integer/config_overheat_thermal_zone_precision not found"

    invoke-static {v2, v3}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 7
    .param p1, "uid"    # I

    .prologue
    .line 1477
    sget-object v4, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v4, :cond_0

    .line 1478
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sput-object v4, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1480
    :cond_0
    sget-object v4, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v4, :cond_2

    .line 1481
    sget-object v4, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v3

    .line 1482
    .local v3, "packages":[Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1483
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1485
    :try_start_0
    sget-object v4, Lcom/android/server/OverHeatingDiagnosis;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v5, v3, v2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 1486
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_1

    .line 1487
    aget-object v4, v3, v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    .line 1489
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v1

    .line 1490
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string/jumbo v4, ""

    return-object v4

    .line 1483
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1495
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v2    # "i":I
    .end local v3    # "packages":[Ljava/lang/String;
    :cond_2
    const-string/jumbo v4, ""

    return-object v4
.end method

.method private isIncrease([II)Z
    .locals 4
    .param p1, "data"    # [I
    .param p2, "size"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 291
    if-ne p2, v0, :cond_0

    .line 292
    return v0

    .line 294
    :cond_0
    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    .line 295
    add-int/lit8 v2, p2, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, -0x2

    aget v3, p1, v3

    if-lt v2, v3, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 297
    :cond_2
    add-int/lit8 v2, p2, -0x1

    invoke-direct {p0, p1, v2}, Lcom/android/server/OverHeatingDiagnosis;->isIncrease([II)Z

    move-result v2

    if-eqz v2, :cond_3

    add-int/lit8 v2, p2, -0x1

    aget v2, p1, v2

    add-int/lit8 v3, p2, -0x2

    aget v3, p1, v3

    if-lt v2, v3, :cond_3

    move v1, v0

    :cond_3
    return v1
.end method

.method private triggerMonitor()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 306
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    if-lt v4, v5, :cond_4

    .line 307
    iget v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    new-array v3, v4, [I

    .line 310
    .local v3, "tempData":[I
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTime()J

    move-result-wide v6

    .line 311
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTime()J

    move-result-wide v4

    .line 310
    sub-long v0, v6, v4

    .line 313
    .local v0, "deltaTime":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 314
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    invoke-virtual {v4}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->getTemp()I

    move-result v4

    aput v4, v3, v2

    .line 313
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 316
    :cond_0
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 318
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v4, :cond_1

    .line 319
    const/4 v4, 0x1

    return v4

    .line 325
    :cond_1
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    cmp-long v4, v0, v4

    if-lez v4, :cond_2

    .line 326
    return v8

    .line 329
    :cond_2
    const-string/jumbo v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "last temp: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v3

    add-int/lit8 v6, v6, -0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget v4, v3, v4

    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    if-ge v4, v5, :cond_3

    .line 333
    return v8

    .line 336
    :cond_3
    const/4 v4, 0x3

    invoke-direct {p0, v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->isIncrease([II)Z

    move-result v4

    return v4

    .line 338
    .end local v0    # "deltaTime":J
    .end local v2    # "i":I
    .end local v3    # "tempData":[I
    :cond_4
    return v8
.end method


# virtual methods
.method addRecord(IIIZ)V
    .locals 8
    .param p1, "level"    # I
    .param p2, "temp"    # I
    .param p3, "chargePlug"    # I
    .param p4, "charging"    # Z

    .prologue
    .line 664
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;-><init>(Lcom/android/server/OverHeatingDiagnosis;IIZI)V

    .line 665
    .local v0, "record":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 667
    const-string/jumbo v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Add new record, and total size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "br$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 669
    .local v6, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    const-string/jumbo v1, "OverHeatingDiagnosis"

    invoke-virtual {v6}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 671
    .end local v6    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    :cond_0
    return-void
.end method

.method arbitrate(ILjava/lang/String;IIJ)V
    .locals 17
    .param p1, "uid"    # I
    .param p2, "procName"    # Ljava/lang/String;
    .param p3, "cpuUsage"    # I
    .param p4, "totalCpuUsage"    # I
    .param p5, "foreground"    # J

    .prologue
    .line 351
    const-string/jumbo v2, "OverHeatingDiagnosis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "arbitrate: uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 352
    const-string/jumbo v5, " procName="

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 353
    const-string/jumbo v5, " cpuUsage="

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 354
    const-string/jumbo v5, " totalCpuUsage="

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 355
    const-string/jumbo v5, " foreground="

    .line 351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, p5

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    const/4 v7, 0x1

    .line 358
    .local v7, "needReport":Z
    const/4 v10, 0x0

    .line 359
    .local v10, "overheat":Z
    const/16 v3, 0x1a

    .line 360
    .local v3, "type":I
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 362
    .local v11, "reason":Ljava/lang/StringBuilder;
    const-wide/16 v12, 0x0

    .line 363
    .local v12, "totalCameraTime":J
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v9, v2, :cond_0

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v2, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 365
    .local v8, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v8}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getUseTime()J

    move-result-wide v4

    add-long/2addr v12, v4

    .line 366
    const-string/jumbo v2, "OverHeatingDiagnosis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Camera "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " use="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getUseTime()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 367
    const-string/jumbo v5, " idle="

    .line 366
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 367
    invoke-virtual {v8}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getIdleTime()J

    move-result-wide v14

    .line 366
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 371
    .end local v8    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    :cond_0
    const-string/jumbo v2, "OverHeatingDiagnosis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Charging time: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->getTime()J

    move-result-wide v14

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v2}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->getTime()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCharging:J

    cmp-long v2, v4, v14

    if-ltz v2, :cond_4

    .line 373
    const-string/jumbo v2, "OverHeatingDiagnosis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Critical temp is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    if-lt v2, v4, :cond_1

    .line 375
    const/4 v10, 0x1

    .line 384
    :cond_1
    :goto_1
    if-nez v10, :cond_2

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v2, :cond_3

    .line 385
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    move/from16 v0, p3

    if-lt v0, v2, :cond_7

    .line 386
    const/16 v2, 0x3e8

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 388
    const-string/jumbo v2, "system:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :goto_2
    const/16 v3, 0x19

    .line 402
    move-object/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    :goto_3
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    move-object/from16 v2, p0

    move/from16 v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/OverHeatingDiagnosis;->reportAbnormalHeating(ILjava/lang/String;IIZ)V

    .line 423
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 424
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 425
    return-void

    .line 378
    :cond_4
    const-string/jumbo v2, "OverHeatingDiagnosis"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Critical temp is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    if-lt v2, v4, :cond_1

    .line 380
    const/4 v10, 0x1

    goto :goto_1

    .line 390
    :cond_5
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    cmp-long v2, p5, v4

    if-gez v2, :cond_6

    .line 393
    const-string/jumbo v2, "bg:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 397
    :cond_6
    const-string/jumbo v2, "fg:"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    const/4 v7, 0x0

    goto :goto_2

    .line 403
    :cond_7
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    cmp-long v2, v12, v4

    if-lez v2, :cond_9

    .line 404
    const-string/jumbo v2, "camera hardware"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v2, v2, 0xf

    if-eqz v2, :cond_8

    .line 406
    const/16 v3, 0x1b

    .line 410
    :goto_4
    const/4 v7, 0x0

    goto :goto_3

    .line 408
    :cond_8
    const/16 v3, 0x1c

    goto :goto_4

    .line 411
    :cond_9
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    move/from16 v0, p4

    if-lt v0, v2, :cond_a

    .line 412
    const/16 v3, 0x19

    .line 413
    move/from16 p3, p4

    .line 414
    const-string/jumbo v2, "fg:total_cpu_load"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3

    .line 417
    :cond_a
    const/4 v7, 0x0

    .line 418
    const-string/jumbo v2, "unknown"

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_3
.end method

.method convertIssueTypeToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 1500
    packed-switch p1, :pswitch_data_0

    .line 1514
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1502
    :pswitch_0
    const-string/jumbo v0, "ISSUE_HEAT_CAMERA"

    return-object v0

    .line 1504
    :pswitch_1
    const-string/jumbo v0, "ISSUE_HEAT_CPU_LOAD"

    return-object v0

    .line 1506
    :pswitch_2
    const-string/jumbo v0, "ISSUE_HEAT_PLAY_WHEN_DASH"

    return-object v0

    .line 1508
    :pswitch_3
    const-string/jumbo v0, "ISSUE_HEAT_PLAY_WHEN_CHARGE"

    return-object v0

    .line 1510
    :pswitch_4
    const-string/jumbo v0, "ISSUE_HEAT_CAMERA_WHEN_CHARGE"

    return-object v0

    .line 1512
    :pswitch_5
    const-string/jumbo v0, "ISSUE_HEAT_UNKNOWN_REASON"

    return-object v0

    .line 1500
    nop

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_0
    .end packed-switch
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 6
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 1520
    const-string/jumbo v2, "**** OverHeatingDiagnosis ****"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1521
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEnabledBugreport="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mEnabledMDM="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1524
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mThermalZonePath="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1525
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mThermalZonePrecision="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1526
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMonitorForced="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1527
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMonitorNum="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1528
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMonitorPeriod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mTriggerPeriod="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mTriggerPeriod:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1530
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMonitorFrequency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mMonitorTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1532
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCriticalCpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalCpu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1533
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCriticalTotalCpu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTotalCpu:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCriticalTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1535
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCriticalChargingTemp="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalChargingTemp:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1536
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCriticalForeground="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mCriticalForeground:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1538
    const-string/jumbo v2, "BatteryRecords:"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1540
    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mBatteryHistory:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;

    .line 1541
    .local v0, "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1539
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1543
    .end local v0    # "br":Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
    :cond_0
    return-void
.end method

.method public endMonitor()V
    .locals 2

    .prologue
    .line 627
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->removeMessages(I)V

    .line 628
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 629
    return-void
.end method

.method generateRatio(JJ)Ljava/lang/String;
    .locals 13
    .param p1, "numerator"    # J
    .param p3, "denominator"    # J

    .prologue
    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    .local v2, "ratio":Ljava/lang/StringBuilder;
    const-wide/16 v10, 0x0

    cmp-long v3, p3, v10

    if-nez v3, :cond_1

    const-wide/16 v8, 0x1

    .line 812
    .local v8, "totalTime":J
    :goto_0
    const-wide/16 v10, 0x3e8

    mul-long/2addr v10, p1

    div-long v6, v10, v8

    .line 813
    .local v6, "thousands":J
    const-wide/16 v10, 0xa

    div-long v0, v6, v10

    .line 815
    .local v0, "hundreds":J
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 817
    const-wide/16 v10, 0xa

    cmp-long v3, v0, v10

    if-gez v3, :cond_0

    .line 818
    const-wide/16 v10, 0xa

    mul-long/2addr v10, v0

    sub-long v4, v6, v10

    .line 819
    .local v4, "remainder":J
    const-wide/16 v10, 0x0

    cmp-long v3, v4, v10

    if-eqz v3, :cond_0

    .line 820
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 821
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 825
    .end local v4    # "remainder":J
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 811
    .end local v0    # "hundreds":J
    .end local v6    # "thousands":J
    .end local v8    # "totalTime":J
    :cond_1
    move-wide/from16 v8, p3

    .restart local v8    # "totalTime":J
    goto :goto_0
.end method

.method getDeviceTemp()I
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 638
    const/16 v5, 0xa

    :try_start_0
    new-array v0, v5, [C

    .line 639
    .local v0, "buffer":[C
    new-instance v3, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-direct {v3, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 641
    .local v3, "file":Ljava/io/FileReader;
    const/4 v5, 0x0

    const/16 v6, 0xa

    :try_start_1
    invoke-virtual {v3, v0, v5, v6}, Ljava/io/FileReader;->read([CII)I

    move-result v4

    .line 642
    .local v4, "len":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 643
    .local v1, "deviceTemp":I
    iget v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePrecision:I

    div-int/2addr v1, v5

    .line 645
    const-string/jumbo v5, "OverHeatingDiagnosis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getDeviceTemp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 648
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 646
    return v1

    .line 647
    .end local v1    # "deviceTemp":I
    .end local v4    # "len":I
    :catchall_0
    move-exception v5

    .line 648
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 647
    throw v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 650
    .end local v0    # "buffer":[C
    .end local v3    # "file":Ljava/io/FileReader;
    :catch_0
    move-exception v2

    .line 651
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "OverHeatingDiagnosis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Can\'t get device temp w "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    return v8
.end method

.method grabOnlineConfig()V
    .locals 3

    .prologue
    .line 963
    const-string/jumbo v1, "OverHeatingDiagnosis"

    const-string/jumbo v2, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "OverHeatingDiagnosis"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 965
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    .line 966
    return-void
.end method

.method handleOnUidStateChanged(II)V
    .locals 4
    .param p1, "uid"    # I
    .param p2, "procState"    # I

    .prologue
    .line 1171
    const-string/jumbo v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onUidStateChanged: uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1173
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    .line 1175
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;-><init>(Lcom/android/server/OverHeatingDiagnosis;II)V

    .line 1176
    .local v0, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1182
    :goto_0
    return-void

    .line 1178
    .end local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    :cond_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 1179
    .restart local v0    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual {v0, p2}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->update(I)V

    .line 1180
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method initializeUidStats()V
    .locals 8

    .prologue
    .line 1118
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 1123
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v5

    invoke-interface {v5}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 1124
    .local v3, "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1125
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1126
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1127
    .local v2, "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p0, v5}, Lcom/android/server/OverHeatingDiagnosis;->isProcessStateForeground(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1128
    const-string/jumbo v5, "OverHeatingDiagnosis"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " is foreground"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1129
    iget v5, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget v6, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    invoke-virtual {p0, v5, v6}, Lcom/android/server/OverHeatingDiagnosis;->handleOnUidStateChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1125
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1132
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "proc":Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v3    # "procs":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    :catch_0
    move-exception v4

    .line 1134
    :cond_1
    return-void
.end method

.method injectRegisterUidObserver(Landroid/app/IUidObserver;I)V
    .locals 4
    .param p1, "observer"    # Landroid/app/IUidObserver;
    .param p2, "which"    # I

    .prologue
    .line 1141
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 1142
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 1141
    invoke-interface {v1, p1, p2, v2, v3}, Landroid/app/IActivityManager;->registerUidObserver(Landroid/app/IUidObserver;IILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1145
    :goto_0
    return-void

    .line 1143
    :catch_0
    move-exception v0

    .local v0, "shouldntHappen":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method injectUnregisterUidObserver(Landroid/app/IUidObserver;)V
    .locals 4
    .param p1, "observer"    # Landroid/app/IUidObserver;

    .prologue
    .line 1152
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/app/IActivityManager;->unregisterUidObserver(Landroid/app/IUidObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1156
    :goto_0
    return-void

    .line 1153
    :catch_0
    move-exception v0

    .line 1154
    .local v0, "shouldntHappen":Landroid/os/RemoteException;
    const-string/jumbo v1, "OverHeatingDiagnosis"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "injectUnregisterUidObserver: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isProcessStateForeground(I)Z
    .locals 1
    .param p1, "procState"    # I

    .prologue
    .line 1164
    const/4 v0, 0x2

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method monitorEndLocked()V
    .locals 30

    .prologue
    .line 734
    const-string/jumbo v7, "OverHeatingDiagnosis"

    const-string/jumbo v25, "monitorEndLocked()"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    const/16 v25, 0x1

    move/from16 v0, v25

    if-eq v7, v0, :cond_0

    return-void

    .line 736
    :cond_0
    const/4 v7, 0x2

    move-object/from16 v0, p0

    iput v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 738
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v7}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->stop()V

    .line 740
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    .line 741
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 742
    .local v16, "current":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/server/OverHeatingDiagnosis;->injectUnregisterUidObserver(Landroid/app/IUidObserver;)V

    .line 745
    const-string/jumbo v7, "OverHeatingDiagnosis"

    const-string/jumbo v25, "Dump of UID state stats:"

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 746
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v15, v7, :cond_1

    .line 747
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 748
    .local v23, "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getState()I

    move-result v7

    move-object/from16 v0, v23

    invoke-virtual {v0, v7}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->update(I)V

    .line 749
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->dump()V

    .line 746
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 752
    .end local v23    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    :cond_1
    const/4 v15, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v15, v7, :cond_2

    .line 753
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 754
    .local v14, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v14}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->getState()Z

    move-result v6

    .line 755
    .local v6, "available":Z
    invoke-virtual {v14, v6}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->update(Z)V

    .line 756
    invoke-virtual {v14}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->stop()V

    .line 752
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 760
    .end local v6    # "available":Z
    .end local v14    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 761
    .local v18, "info":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move-wide/from16 v0, v16

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 762
    const-string/jumbo v7, "OverHeatingDiagnosis"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 763
    const-string/jumbo v7, "OverHeatingDiagnosis"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "\n\nprintCurrentLoad:"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    const-string/jumbo v7, "OverHeatingDiagnosis"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "countStats: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const-string/jumbo v7, "OverHeatingDiagnosis"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "countWorkingStats: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v24

    .line 769
    .local v24, "working_num":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v7}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v7

    float-to-int v11, v7

    .line 771
    .local v11, "totalCpuUsage":I
    if-lez v24, :cond_6

    .line 772
    const/16 v20, 0x0

    .line 774
    .local v20, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/16 v25, 0x0

    move/from16 v0, v25

    invoke-virtual {v7, v0}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v20

    .line 776
    .local v20, "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    if-eqz v20, :cond_6

    .line 777
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v21, v0

    .line 778
    .local v21, "totalTime":I
    move-object/from16 v0, v20

    iget v7, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    move/from16 v25, v0

    add-int v22, v7, v25

    .line 780
    .local v22, "useTime":I
    const-string/jumbo v7, "OverHeatingDiagnosis"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "name = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ", uid = "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 781
    const-string/jumbo v26, ", pid = "

    .line 780
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 781
    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move/from16 v26, v0

    .line 780
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 782
    const-string/jumbo v26, ", CPU usage = "

    .line 780
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 782
    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v26, v0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v26

    move-wide/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/OverHeatingDiagnosis;->generateRatio(JJ)Ljava/lang/String;

    move-result-object v26

    .line 780
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    .line 782
    const-string/jumbo v26, "%"

    .line 780
    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-static {v7, v0}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    move-object/from16 v0, v20

    iget v8, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    .line 785
    .local v8, "uid":I
    const-wide/16 v12, 0x0

    .line 786
    .local v12, "foreground":J
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    if-ltz v7, :cond_3

    .line 787
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/OverHeatingDiagnosis;->mUidStateStats:Landroid/util/SparseArray;

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/android/server/OverHeatingDiagnosis$UidStat;

    .line 788
    .restart local v23    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/OverHeatingDiagnosis$UidStat;->getTotalTimeInForeground()J

    move-result-wide v12

    .line 790
    .end local v23    # "ustats":Lcom/android/server/OverHeatingDiagnosis$UidStat;
    :cond_3
    if-nez v21, :cond_4

    const/16 v21, 0x1

    .line 791
    :cond_4
    move/from16 v0, v22

    mul-int/lit16 v7, v0, 0x3e8

    div-int v7, v7, v21

    div-int/lit8 v10, v7, 0xa

    .line 792
    .local v10, "cpuUsage":I
    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    .line 793
    .local v9, "procName":Ljava/lang/String;
    invoke-static {v8}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 794
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/server/OverHeatingDiagnosis;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v19

    .line 795
    .local v19, "packageName":Ljava/lang/String;
    const-string/jumbo v7, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 796
    move-object/from16 v9, v19

    .end local v19    # "packageName":Ljava/lang/String;
    :cond_5
    move-object/from16 v7, p0

    .line 800
    invoke-virtual/range {v7 .. v13}, Lcom/android/server/OverHeatingDiagnosis;->arbitrate(ILjava/lang/String;IIJ)V

    .line 803
    .end local v8    # "uid":I
    .end local v9    # "procName":Ljava/lang/String;
    .end local v10    # "cpuUsage":I
    .end local v12    # "foreground":J
    .end local v20    # "stats":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    .end local v21    # "totalTime":I
    .end local v22    # "useTime":I
    :cond_6
    return-void
.end method

.method monitorStartLocked()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x0

    .line 677
    const-string/jumbo v3, "OverHeatingDiagnosis"

    const-string/jumbo v4, "monitorStartLocked()"

    invoke-static {v3, v4}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 679
    iput v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    .line 681
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorStart:J

    .line 682
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    if-nez v3, :cond_0

    .line 683
    new-instance v3, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v3, v6}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    .line 686
    :cond_0
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v3}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    .line 687
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->initializeUidStats()V

    .line 689
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mUidObserver:Lcom/android/server/OverHeatingDiagnosis$UidObserver;

    invoke-virtual {p0, v3, v7}, Lcom/android/server/OverHeatingDiagnosis;->injectRegisterUidObserver(Landroid/app/IUidObserver;I)V

    .line 692
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 693
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    .line 694
    .local v0, "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    invoke-virtual {v0}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;->init()V

    .line 692
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 698
    .end local v0    # "cameraStat":Lcom/android/server/OverHeatingDiagnosis$CameraStat;
    :cond_1
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->reset()V

    .line 699
    iget v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mCurrentPlugType:I

    and-int/lit8 v3, v3, 0xf

    if-eqz v3, :cond_2

    .line 700
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mChargingTimer:Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    invoke-virtual {v3}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->start()V

    .line 703
    :cond_2
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v3, v7}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 704
    .local v2, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v3, v2, v4, v5}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 705
    return-void
.end method

.method monitorUpdateLocked()V
    .locals 8

    .prologue
    .line 711
    const-string/jumbo v4, "OverHeatingDiagnosis"

    const-string/jumbo v5, "monitorUpdateLocked()"

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    return-void

    .line 714
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->getDeviceTemp()I

    move-result v2

    .line 715
    .local v2, "deviceTemp":I
    iget v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    if-le v2, v4, :cond_1

    .line 716
    iput v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mMaxMonitorTemp:I

    .line 719
    :cond_1
    const-string/jumbo v4, "OverHeatingDiagnosis"

    const-string/jumbo v5, "start to update process cpu info."

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 721
    .local v0, "current":J
    iget-wide v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorStart:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    cmp-long v4, v4, v6

    if-ltz v4, :cond_2

    .line 722
    invoke-virtual {p0}, Lcom/android/server/OverHeatingDiagnosis;->monitorEndLocked()V

    .line 727
    :goto_0
    return-void

    .line 724
    :cond_2
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 725
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    iget-wide v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorFrequency:J

    invoke-virtual {v4, v3, v6, v7}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method registerOnlineConfig()V
    .locals 5

    .prologue
    .line 953
    const-string/jumbo v0, "OverHeatingDiagnosis"

    const-string/jumbo v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    .line 955
    iget-object v3, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigUpdater:Lcom/android/server/OverHeatingDiagnosis$MyConfigUpdater;

    const-string/jumbo v4, "OverHeatingDiagnosis"

    .line 954
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 956
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 957
    return-void
.end method

.method reportAbnormalHeating(ILjava/lang/String;IIZ)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "cpuUsage"    # I
    .param p4, "maxTemp"    # I
    .param p5, "needReport"    # Z

    .prologue
    .line 434
    const/4 v4, 0x3

    iput v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagState:I

    .line 437
    const-string/jumbo v4, "OverHeatingDiagnosis"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "reportAbnormalHeating: type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 438
    const-string/jumbo v6, " reason="

    .line 437
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "cpu="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",temp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 440
    .local v2, "moreInfo":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v4, p1, p2, v2}, Lcom/android/server/OnePlusDiagnosisUtil;->log(ILjava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v4}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    .line 443
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledMDM:Z

    if-eqz v4, :cond_0

    if-nez p5, :cond_1

    :cond_0
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v4, :cond_2

    .line 445
    :cond_1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 446
    .local v0, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v4, "ht"

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const-string/jumbo v4, "cl"

    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    const-string/jumbo v4, "mt"

    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    const/4 v3, 0x0

    .line 450
    .local v3, "packageName":Ljava/lang/String;
    if-eqz p2, :cond_6

    .line 451
    const-string/jumbo v4, ":"

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 452
    .local v1, "index":I
    const-string/jumbo v4, "hr"

    add-int/lit8 v5, v1, 0x1

    invoke-virtual {p2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    .end local v1    # "index":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v5, "overheat"

    invoke-virtual {v4, v5, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 460
    .end local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "packageName":Ljava/lang/String;
    :cond_2
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabledBugreport:Z

    if-eqz v4, :cond_3

    if-nez p5, :cond_4

    :cond_3
    iget-boolean v4, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v4, :cond_5

    .line 462
    :cond_4
    invoke-virtual {p0, p1, p2}, Lcom/android/server/OverHeatingDiagnosis;->writeLogToDropbox(ILjava/lang/String;)V

    .line 464
    :cond_5
    return-void

    .line 454
    .restart local v0    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v3    # "packageName":Ljava/lang/String;
    :cond_6
    const-string/jumbo v4, "hr"

    const-string/jumbo v5, "NA"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public setMonitorEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 564
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mEnabled:Z

    .line 565
    return-void
.end method

.method public setMonitorForced(Z)V
    .locals 0
    .param p1, "forced"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    .line 576
    return-void
.end method

.method public setMonitorNum(I)V
    .locals 0
    .param p1, "num"    # I

    .prologue
    .line 585
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorNum:I

    .line 586
    return-void
.end method

.method public setMonitorPeriod(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 604
    iput-wide p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorPeriod:J

    .line 605
    return-void
.end method

.method public setMonitorTemp(I)V
    .locals 0
    .param p1, "temp"    # I

    .prologue
    .line 595
    iput p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorTemp:I

    .line 596
    return-void
.end method

.method public setThermalZonePath(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 555
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis;->mThermalZonePath:Ljava/lang/String;

    .line 556
    return-void
.end method

.method public start()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 261
    :try_start_0
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string/jumbo v8, "camera"

    invoke-virtual {v6, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/camera2/CameraManager;

    .line 262
    .local v4, "cameraManager":Landroid/hardware/camera2/CameraManager;
    invoke-virtual {v4}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v3

    .line 264
    .local v3, "cameraList":[Ljava/lang/String;
    array-length v8, v3

    move v6, v7

    :goto_0
    if-ge v6, v8, :cond_0

    aget-object v1, v3, v6

    .line 265
    .local v1, "camera":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 266
    .local v2, "cameraId":I
    iget-object v9, p0, Lcom/android/server/OverHeatingDiagnosis;->mCameraStats:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/server/OverHeatingDiagnosis$CameraStat;

    invoke-direct {v10, p0, v2}, Lcom/android/server/OverHeatingDiagnosis$CameraStat;-><init>(Lcom/android/server/OverHeatingDiagnosis;I)V

    invoke-virtual {v9, v2, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 264
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 269
    .end local v1    # "camera":Ljava/lang/String;
    .end local v2    # "cameraId":I
    :cond_0
    new-instance v6, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;

    invoke-direct {v6, p0}, Lcom/android/server/OverHeatingDiagnosis$CamereAvailabilityCallback;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    iget-object v8, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v4, v6, v8}, Landroid/hardware/camera2/CameraManager;->registerAvailabilityCallback(Landroid/hardware/camera2/CameraManager$AvailabilityCallback;Landroid/os/Handler;)V
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v3    # "cameraList":[Ljava/lang/String;
    .end local v4    # "cameraManager":Landroid/hardware/camera2/CameraManager;
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mMonitorForced:Z

    if-eqz v6, :cond_1

    .line 275
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v6, v7}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 280
    :goto_2
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "cae":Landroid/hardware/camera2/CameraAccessException;
    const-string/jumbo v6, "OverHeatingDiagnosis"

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraAccessException;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/android/server/OPLogger$Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 277
    .end local v0    # "cae":Landroid/hardware/camera2/CameraAccessException;
    :cond_1
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    invoke-virtual {v6, v7}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    .line 278
    .local v5, "msg":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const-wide/32 v8, 0x2bf20

    invoke-virtual {v6, v5, v8, v9}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_2
.end method

.method public startMonitor()V
    .locals 2

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 612
    return-void
.end method

.method public updateMonitor()V
    .locals 2

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/server/OverHeatingDiagnosis;->mHandler:Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 619
    return-void
.end method

.method writeLogToDropbox(ILjava/lang/String;)V
    .locals 9
    .param p1, "type"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 474
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "dropbox"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    .line 473
    check-cast v8, Landroid/os/DropBoxManager;

    .line 475
    .local v8, "dbox":Landroid/os/DropBoxManager;
    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 477
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 481
    .local v6, "current":J
    new-instance v0, Lcom/android/server/OverHeatingDiagnosis$1;

    const-string/jumbo v2, "Overheat dump: overheat"

    move-object v1, p0

    move v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/OverHeatingDiagnosis$1;-><init>(Lcom/android/server/OverHeatingDiagnosis;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JLandroid/os/DropBoxManager;)V

    .line 545
    .local v0, "worker":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 546
    return-void
.end method
