.class public Lcom/android/server/OnePlusStandbyAnalyzer;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusStandbyAnalyzer$1;,
        Lcom/android/server/OnePlusStandbyAnalyzer$2;,
        Lcom/android/server/OnePlusStandbyAnalyzer$3;,
        Lcom/android/server/OnePlusStandbyAnalyzer$4;,
        Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;,
        Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;,
        Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;,
        Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;,
        Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-server-OnePlusStandbyAnalyzer$CRITERIA_TYPESwitchesValues:[I = null

.field private static final synthetic -com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I = null

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static DEBUG_ONEPLUS:Z = false

.field static DEBUG_STANDBY:Z = false

.field private static DIAGNOSIS_ISSUE_POWER_OTHER:I = 0x0

.field public static FAKE_LEVEL_DROP:I = 0x0

.field private static final MAX_RECORD_COUNT:I = 0x28

.field public static final MDM_DETAIL:Ljava/lang/String; = "dl"

.field public static final MDM_EVENT:Ljava/lang/String; = "standby"

.field public static final MDM_PACKAGE:Ljava/lang/String; = "pn"

.field public static final MDM_REASON_TYPE:Ljava/lang/String; = "tp"

.field private static final PROP_STANDBY_DEBUG_ON:Ljava/lang/String; = "persist.sys.standby_debug"

.field private static final READ_TIMEOUT:J = 0x1388L

.field public static RPM_FILE:Ljava/lang/String; = null

.field public static RPM_FILE_FOR_SDM845:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE:Ljava/lang/String; = null

.field public static RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String; = null

.field private static final STANDBY_DIAGNOSIS_FILE:Ljava/lang/String; = "/data/system/power/diagnosis_standby.txt"

.field private static final TAG:Ljava/lang/String; = "OPSA"

.field private static final USERSPACE_WAKELOCK:Ljava/lang/String; = "PowerManagerService.WakeLocks"

.field public static WIFI_WAKEUP_FILE:Ljava/lang/String;

.field public static WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

.field private static mKERNELSPACE_WL_CRITERIA:F

.field private static mKERNEL_WAKEUP_COUNT_CRITERIA:I

.field private static mSIGNAL_BAD_CRITERIA:F

.field private static mUNACCOUNTED_CRITERIA:F

.field private static mUSERSPACE_WL_CRITERIA:F


# instance fields
.field cptor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor2:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor3:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field cptor4:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field private mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field private mEverEnterDeepDoze:Z

.field private mIsSDM845:Z

.field mKWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWLMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mKWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mMDMEnabled:Z

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

.field private mRPMCountPattern:Ljava/util/regex/Pattern;

.field mRPMInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRPMInfo_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRPMInfo_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mRPMMasterInfo_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRPMModePattern:Ljava/util/regex/Pattern;

.field private mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

.field private mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

.field mRawRealtimeOfEnd:J

.field mRawRealtimeOfStart:J

.field mRawUptimeOfEnd:J

.field mRawUptimeOfStart:J

.field mSignal_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_End_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSignal_Start_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfEndDeepidle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field mSippersOfStartDeepIdle:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStadby_totalPowerMah:D

.field private mStandby_Battery_Drop:I

.field private mStandby_KernelSpaceWL_Ms:J

.field private mStandby_Ms:J

.field private mStandby_SignalBad_Ms:J

.field private mStandby_Sipper_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private mStandby_Uptime_Ms:J

.field private mStandby_UserSpaceWL_Ms:J

.field private mStandby_WR_Count:J

.field private mStandby_WUA_Count:I

.field private mStandby_mA:F

.field private mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

.field mUidWUADiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mUidWUA_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWLDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWL_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWL_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRDiffMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_End:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWRMap_Start:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "+",
            "Landroid/os/BatteryStats$Timer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWR_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Diff_List:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_End_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mWiFiWakeUp_Start_Map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiWakeupPattern:Ljava/util/regex/Pattern;


# direct methods
.method static synthetic -get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .prologue
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    return-object v0
.end method

.method private static synthetic -getcom-android-server-OnePlusStandbyAnalyzer$CRITERIA_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->-com-android-server-OnePlusStandbyAnalyzer$CRITERIA_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->-com-android-server-OnePlusStandbyAnalyzer$CRITERIA_TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_3

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_1

    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_0

    :goto_4
    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->-com-android-server-OnePlusStandbyAnalyzer$CRITERIA_TYPESwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_0
.end method

.method private static synthetic -getcom-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->-com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->-com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->-com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I

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

.method static synthetic -set0(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/OnePlusStandbyAnalyzer;I)I
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/OnePlusStandbyAnalyzer;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateDiff()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sippers"    # Ljava/util/List;
    .param p3, "bfilter"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "list"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "bfilter"    # Z

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "map"    # Ljava/util/Map;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic -wrap6(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusStandbyAnalyzer;

    .prologue
    invoke-direct {p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->judgeRootCause()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 53
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    .line 56
    const-string/jumbo v0, "persist.sys.standby_debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    .line 66
    const/16 v0, 0x15

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    .line 69
    const/16 v0, 0x63

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    .line 207
    const-string/jumbo v0, "/d/rpm_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    .line 208
    const-string/jumbo v0, "/sys/power/system_sleep/stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    .line 209
    const-string/jumbo v0, "/d/rpm_master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    .line 210
    const-string/jumbo v0, "/sys/power/rpmh_stats/master_stats"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    .line 226
    const-string/jumbo v0, "/sys/devices/soc/18800000.qcom,icnss/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    .line 227
    const-string/jumbo v0, "/sys/devices/platform/soc/18800000.qcom,icnss/wlan_wakeup_reason"

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    .line 264
    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    .line 265
    sput v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 266
    const/16 v0, 0x12c

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 267
    const/high16 v0, 0x42200000    # 40.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 268
    const/high16 v0, 0x40a00000    # 5.0f

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 51
    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/BatteryStatsService;Lcom/android/server/DeviceIdleController;)V
    .locals 5
    .param p1, "batteryStatsService"    # Lcom/android/server/am/BatteryStatsService;
    .param p2, "deviceIdleController"    # Lcom/android/server/DeviceIdleController;

    .prologue
    const/4 v4, 0x1

    const/16 v1, 0x20

    const/4 v3, 0x0

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    .line 205
    iput-boolean v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    .line 206
    iput-boolean v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .line 216
    const-string/jumbo v0, "RPM Mode:vlow\\n\\t\\scount:(\\d*)\\ntime in last mode.*RPM Mode:vmin\\n\\t\\scount:(\\d*)\\ntime in last mode.*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    .line 217
    const-string/jumbo v0, "RPM Mode:aosd\\n\\t\\scount:(\\d*)\\ntime in last mode.*RPM Mode:cxsd\\n\\t\\scount:(\\d*)\\ntime in last mode.*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    .line 220
    const-string/jumbo v0, "MPSS\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nADSP\\n\\tVersion.*\\tSleep Accumulated Duration:0x([0-9a-f]*)\\n\\nCDSP\\n\\tVersion.*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    .line 228
    const-string/jumbo v0, "uc (\\d*) bc (\\d*) v4_mc (\\d*) v6_mc (\\d*) ra (\\d*) ns (\\d*) na (\\d*) pno_match (\\d*) pno_complete (\\d*) gscan (\\d*) low_rssi (\\d*) rssi_breach (\\d*) icmp (\\d*) icmpv6 (\\d*) oem (\\d*) unspecified (\\d*).*"

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    .line 261
    const-string/jumbo v0, "count:(\\d)*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMCountPattern:Ljava/util/regex/Pattern;

    .line 602
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$1;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$1;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    .line 1060
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$2;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$2;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    .line 1482
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$3;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$3;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    .line 1546
    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$4;

    invoke-direct {v0, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$4;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    .line 290
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    .line 291
    new-instance v0, Lcom/android/server/OnePlusDiagnosisUtil;

    const-string/jumbo v1, "/data/system/power/diagnosis_standby.txt"

    const/16 v2, 0x28

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusDiagnosisUtil;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    .line 292
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    .line 293
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;ZZ)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 294
    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "NYNCG4I0TI"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    .line 296
    const-string/jumbo v0, "sdm845"

    const-string/jumbo v1, "ro.board.platform"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iput-boolean v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    .line 298
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    .line 299
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    .line 300
    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE_FOR_SDM845:Ljava/lang/String;

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    .line 302
    :cond_0
    return-void
.end method

.method private calculateDiff()V
    .locals 26

    .prologue
    .line 1344
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v20

    .line 1347
    .local v20, "startTime":J
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    move-wide/from16 v24, v0

    sub-long v6, v6, v24

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 1349
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfStart:J

    move-wide/from16 v24, v0

    sub-long v6, v6, v24

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    .line 1353
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    .line 1355
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    .line 1356
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    if-eqz v2, :cond_3

    .line 1357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .local v16, "ent$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/util/Map$Entry;

    .line 1358
    .local v15, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1359
    .local v3, "kwlname":Ljava/lang/String;
    const-wide/16 v4, 0x0

    .line 1360
    .local v4, "holding":J
    invoke-interface {v15}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 1361
    .local v8, "end":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    invoke-interface {v15}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Long;

    .line 1362
    .local v19, "start":Ljava/lang/Long;
    if-eqz v19, :cond_1

    .line 1363
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    sub-long v4, v8, v6

    .line 1368
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    move-object/from16 v23, v0

    new-instance v2, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-direct/range {v2 .. v9}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;-><init>(Ljava/lang/String;JJJ)V

    move-object/from16 v0, v23

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1370
    const-string/jumbo v2, "PowerManagerService.WakeLocks"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1371
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    goto :goto_0

    .line 1365
    :cond_1
    move-wide v4, v8

    .line 1366
    const-wide/16 v6, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    goto :goto_1

    .line 1375
    .end local v3    # "kwlname":Ljava/lang/String;
    .end local v4    # "holding":J
    .end local v8    # "end":J
    .end local v15    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v19    # "start":Ljava/lang/Long;
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    .line 1376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1378
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor:Ljava/util/Comparator;

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1383
    .end local v16    # "ent$iterator":Ljava/util/Iterator;
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    .line 1385
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    .line 1386
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    if-eqz v2, :cond_6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    if-eqz v2, :cond_6

    .line 1387
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v16

    .restart local v16    # "ent$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 1388
    .local v14, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    .line 1389
    .local v22, "wrname":Ljava/lang/String;
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 1390
    .local v11, "end":I
    const/4 v10, 0x0

    .line 1391
    .local v10, "count":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    invoke-interface {v14}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    .line 1392
    .local v18, "start":Ljava/lang/Integer;
    if-eqz v18, :cond_4

    .line 1393
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    sub-int v10, v2, v6

    .line 1398
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    new-instance v6, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, v22

    invoke-direct {v6, v0, v10, v7, v11}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;-><init>(Ljava/lang/String;III)V

    move-object/from16 v0, v22

    invoke-interface {v2, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1400
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    int-to-long v0, v10

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    goto :goto_2

    .line 1395
    :cond_4
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1396
    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    goto :goto_3

    .line 1404
    .end local v10    # "count":I
    .end local v11    # "end":I
    .end local v14    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local v18    # "start":Ljava/lang/Integer;
    .end local v22    # "wrname":Ljava/lang/String;
    :cond_5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    .line 1405
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffMap:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    new-instance v6, Lcom/android/server/OnePlusStandbyAnalyzer$6;

    move-object/from16 v0, p0

    invoke-direct {v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$6;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v2, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1417
    .end local v16    # "ent$iterator":Ljava/util/Iterator;
    :cond_6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    .line 1419
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 1420
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v2, :cond_8

    .line 1421
    const/16 v17, 0x0

    .local v17, "i":I
    :goto_4
    const/4 v2, 0x5

    move/from16 v0, v17

    if-ge v0, v2, :cond_8

    .line 1422
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    move/from16 v0, v17

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v24

    sub-long v12, v6, v24

    .line 1423
    .local v12, "diff":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1425
    const/4 v2, 0x1

    move/from16 v0, v17

    if-gt v0, v2, :cond_7

    .line 1426
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    add-long/2addr v6, v12

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    .line 1421
    :cond_7
    add-int/lit8 v17, v17, 0x1

    goto :goto_4

    .line 1431
    .end local v12    # "diff":J
    .end local v17    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V

    .line 1434
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 1437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 1440
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateRPMDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 1443
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Start_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_End_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateRPMMasterDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 1446
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V

    .line 1449
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    move-wide/from16 v24, v0

    sub-long v6, v6, v24

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    .line 1452
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_9

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeLockRanking(Ljava/util/List;)V

    .line 1453
    :cond_9
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_a

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpKernalWakelockRanking(Ljava/util/List;)V

    .line 1454
    :cond_a
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_b

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWakeupReasonRanking(Ljava/util/List;)V

    .line 1455
    :cond_b
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_c

    const-string/jumbo v2, "Diff-Signal"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 1456
    :cond_c
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_d

    const-string/jumbo v2, "Diff-RPM"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 1457
    :cond_d
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_e

    const-string/jumbo v2, "Diff-RPMMaster"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 1458
    :cond_e
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_f

    const-string/jumbo v2, "Diff-WiFiWakeUp"

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 1460
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "@@@@[calculateDiff] in "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long v6, v6, v20

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v6, " ms"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1461
    return-void
.end method

.method private calculateRPMDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 999
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1001
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    .line 1002
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1003
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 1004
    .local v0, "count":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    .line 1005
    .local v4, "rpmType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1006
    .local v1, "end":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1007
    .local v6, "startInfo":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 1008
    .local v5, "start":I
    if-eqz v6, :cond_0

    .line 1009
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1010
    sub-int v0, v1, v5

    .line 1016
    :goto_1
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-direct {v8, v4, v0, v5, v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1012
    :cond_0
    const/4 v5, 0x0

    .line 1013
    move v0, v1

    goto :goto_1

    .line 1019
    .end local v0    # "count":I
    .end local v1    # "end":I
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    .end local v3    # "ent$iterator":Ljava/util/Iterator;
    .end local v4    # "rpmType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;
    .end local v5    # "start":I
    .end local v6    # "startInfo":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method private calculateRPMMasterDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1021
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;>;"
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1023
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    .line 1024
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ent$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 1025
    .local v2, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 1026
    .local v0, "count":I
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    .line 1027
    .local v4, "rpmMasterType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1028
    .local v1, "endRaw":Ljava/lang/String;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1029
    .local v5, "startRaw":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 1031
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    new-instance v7, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-direct {v7, v4, v5, v1}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1035
    .end local v0    # "count":I
    .end local v1    # "endRaw":Ljava/lang/String;
    .end local v2    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;>;"
    .end local v3    # "ent$iterator":Ljava/util/Iterator;
    .end local v4    # "rpmMasterType":Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;
    .end local v5    # "startRaw":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private calculateSipperDiff(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "sippers_start":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    .local p2, "sippers_end":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v7, 0x0

    .line 1807
    invoke-direct {p0, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->cloneSipper_List(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    .line 1810
    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    .line 1813
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 1815
    if-eqz p1, :cond_3

    if-eqz p2, :cond_3

    .line 1816
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "## sippers size[start, end]=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1822
    const/4 v5, 0x0

    .line 1823
    .local v5, "matchedCount":I
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v6, :cond_6

    .line 1824
    const/4 v2, 0x0

    .line 1826
    .local v2, "getMatched":Z
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 1827
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatterySipper;

    .line 1828
    .local v0, "bs_end":Lcom/android/internal/os/BatterySipper;
    iget-object v6, v0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v6, v7, :cond_0

    .line 1829
    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    .line 1832
    :cond_0
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v4, v6, :cond_1

    .line 1833
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 1834
    .local v1, "bs_start":Lcom/android/internal/os/BatterySipper;
    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1839
    invoke-direct {p0, v1, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V

    .line 1840
    const/4 v2, 0x1

    .line 1841
    add-int/lit8 v5, v5, 0x1

    .line 1846
    .end local v1    # "bs_start":Lcom/android/internal/os/BatterySipper;
    :cond_1
    if-nez v2, :cond_2

    .line 1847
    const-string/jumbo v6, "No-Match"

    invoke-direct {p0, v6, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 1850
    :cond_2
    iget-wide v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    iget-wide v8, v0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    .line 1826
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1818
    .end local v0    # "bs_end":Lcom/android/internal/os/BatterySipper;
    .end local v2    # "getMatched":Z
    .end local v3    # "i":I
    .end local v4    # "j":I
    .end local v5    # "matchedCount":I
    :cond_3
    const-string/jumbo v6, "## one of sippers is null, can\'t calculate just return."

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1819
    return-void

    .line 1832
    .restart local v0    # "bs_end":Lcom/android/internal/os/BatterySipper;
    .restart local v1    # "bs_start":Lcom/android/internal/os/BatterySipper;
    .restart local v2    # "getMatched":Z
    .restart local v3    # "i":I
    .restart local v4    # "j":I
    .restart local v5    # "matchedCount":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1853
    .end local v0    # "bs_end":Lcom/android/internal/os/BatterySipper;
    .end local v1    # "bs_start":Lcom/android/internal/os/BatterySipper;
    .end local v4    # "j":I
    :cond_5
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v7, Lcom/android/server/OnePlusStandbyAnalyzer$7;

    invoke-direct {v7, p0}, Lcom/android/server/OnePlusStandbyAnalyzer$7;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1864
    .end local v2    # "getMatched":Z
    .end local v3    # "i":I
    :goto_2
    return-void

    .line 1862
    :cond_6
    const-string/jumbo v6, "## fetal error, mStandby_Sipper_List == null"

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_2
.end method

.method private calculateWakeLockDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1463
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1465
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    .line 1466
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 1467
    .local v8, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    const-wide/16 v2, 0x0

    .line 1468
    .local v2, "holding":J
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 1469
    .local v6, "end":J
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Long;

    .line 1470
    .local v10, "start":Ljava/lang/Long;
    if-eqz v10, :cond_0

    .line 1471
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v2, v6, v0

    .line 1476
    :goto_1
    iget-object v11, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;-><init>(Ljava/lang/String;JJJ)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1473
    :cond_0
    move-wide v2, v6

    .line 1474
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    goto :goto_1

    .line 1479
    .end local v2    # "holding":J
    .end local v6    # "end":J
    .end local v8    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Long;>;"
    .end local v10    # "start":Ljava/lang/Long;
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor3:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1481
    .end local v9    # "ent$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private calculateWakeupAlarmDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1491
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1493
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    .line 1495
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    .line 1496
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1497
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    const/4 v0, 0x0

    .line 1498
    .local v0, "count":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    .line 1499
    .local v7, "uid":Ljava/lang/Integer;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    .line 1500
    .local v2, "endInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    iget v1, v2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 1501
    .local v1, "end":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    .line 1502
    .local v6, "startInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    const/4 v5, 0x0

    .line 1503
    .local v5, "start":I
    if-eqz v6, :cond_0

    .line 1504
    iget v5, v6, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->mCount:I

    .line 1505
    sub-int v0, v1, v5

    .line 1511
    :goto_1
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    new-instance v9, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-direct {v9, v10, v0, v5, v1}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(IIII)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1513
    iget v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    goto :goto_0

    .line 1507
    :cond_0
    const/4 v5, 0x0

    .line 1508
    move v0, v1

    goto :goto_1

    .line 1516
    .end local v0    # "count":I
    .end local v1    # "end":I
    .end local v2    # "endInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .end local v5    # "start":I
    .end local v6    # "startInfo":Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;
    .end local v7    # "uid":Ljava/lang/Integer;
    :cond_1
    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    iget-object v9, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v8, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1518
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private calculateWiFiWakeUpDiff(Ljava/util/Map;Ljava/util/Map;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1037
    .local p1, "startMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    .local p2, "endMap":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 1039
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    .line 1040
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1041
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1042
    .local v1, "count":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    .line 1043
    .local v0, "WiFiWakeUpType":Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1044
    .local v2, "end":I
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 1045
    .local v6, "startInfo":Ljava/lang/Integer;
    const/4 v5, 0x0

    .line 1046
    .local v5, "start":I
    if-eqz v6, :cond_0

    .line 1047
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1048
    sub-int v1, v2, v5

    .line 1054
    :goto_1
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    new-instance v8, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-direct {v8, v0, v1, v5, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;III)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1050
    :cond_0
    const/4 v5, 0x0

    .line 1051
    move v1, v2

    goto :goto_1

    .line 1057
    .end local v0    # "WiFiWakeUpType":Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;
    .end local v1    # "count":I
    .end local v2    # "end":I
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    .end local v5    # "start":I
    .end local v6    # "startInfo":Ljava/lang/Integer;
    :cond_1
    iget-object v7, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    iget-object v8, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor4:Ljava/util/Comparator;

    invoke-static {v7, v8}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1059
    .end local v4    # "ent$iterator":Ljava/util/Iterator;
    :cond_2
    return-void
.end method

.method private checkifRPMAbnormal(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1067
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    const/4 v1, 0x0

    .line 1068
    .local v1, "result":Z
    if-eqz p1, :cond_2

    .line 1069
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1071
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVmin()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1072
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;->isVminAbnormal()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1073
    const/4 v1, 0x1

    .line 1081
    .end local v0    # "i":I
    :cond_0
    :goto_1
    return v1

    .line 1069
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1079
    .end local v0    # "i":I
    :cond_2
    const-string/jumbo v2, "list == null"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private cloneSipper_List(Ljava/util/List;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1791
    .local p1, "ori_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    const/4 v0, 0x0

    .line 1792
    .local v0, "dest_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p1, :cond_0

    .line 1793
    new-instance v0, Ljava/util/ArrayList;

    .end local v0    # "dest_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1794
    .local v0, "dest_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sipper$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/os/BatterySipper;

    .line 1796
    .local v1, "sipper":Lcom/android/internal/os/BatterySipper;
    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;

    invoke-direct {v3, v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;-><init>(Lcom/android/internal/os/BatterySipper;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1799
    .end local v1    # "sipper":Lcom/android/internal/os/BatterySipper;
    .end local v2    # "sipper$iterator":Ljava/util/Iterator;
    .local v0, "dest_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_0
    const-string/jumbo v3, "## fetal error, ori_list == null"

    invoke-static {v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1801
    .end local v0    # "dest_list":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_1
    return-object v0
.end method

.method private dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1713
    .local p2, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 1714
    const-wide/16 v0, 0x0

    .line 1715
    .local v0, "allPower":D
    const/4 v3, 0x0

    .line 1716
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1717
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 1718
    .local v2, "bs":Lcom/android/internal/os/BatterySipper;
    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v6

    .line 1719
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v5, 0xa

    if-ge v3, v5, :cond_1

    .line 1720
    :cond_0
    invoke-direct {p0, p1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 1721
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1716
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1723
    .end local v2    # "bs":Lcom/android/internal/os/BatterySipper;
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "], accumulated sum-up totalPowerMah="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1727
    .end local v0    # "allPower":D
    .end local v3    # "count":I
    .end local v4    # "i":I
    :goto_1
    return-void

    .line 1725
    :cond_3
    const-string/jumbo v5, "sippers == null or sippers.size() == 0"

    invoke-static {v5}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private dumpCriteria()V
    .locals 3

    .prologue
    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "mUSERSPACE_WL_CRITERIA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    const-string/jumbo v2, " |mKERNELSPACE_WL_CRITERIA="

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 339
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    const-string/jumbo v2, " |mKERNEL_WAKEUP_COUNT_CRITERIA="

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 340
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    const-string/jumbo v2, " |mSIGNAL_BAD_CRITERIAs="

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 341
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    const-string/jumbo v2, " |mUNACCOUNTED_CRITERIA="

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 342
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    .line 338
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method private dumpKernalWakelockRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1528
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    if-eqz p1, :cond_0

    .line 1529
    const/4 v0, 0x0

    .line 1530
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1531
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1532
    add-int/lit8 v0, v0, 0x1

    .line 1533
    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 1536
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1530
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dumpRPMMasterInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 18
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;

    .prologue
    .line 834
    const/4 v8, 0x0

    .line 835
    .local v8, "fis":Ljava/io/FileInputStream;
    const/16 v2, 0x400

    .line 836
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 837
    .local v3, "buffer":[B
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "#### ["

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v14, "]"

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 839
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 841
    .local v10, "length":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 842
    .local v12, "nowELAPSED":J
    :cond_0
    invoke-virtual {v9, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1

    .line 843
    new-instance v4, Ljava/lang/String;

    const/4 v11, 0x0

    invoke-direct {v4, v3, v11, v10}, Ljava/lang/String;-><init>([BII)V

    .line 844
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v11, "OPSA"

    invoke-static {v11, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 846
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    sub-long/2addr v14, v12

    const-wide/16 v16, 0x1388

    cmp-long v11, v14, v16

    if-ltz v11, :cond_0

    .line 847
    const-string/jumbo v11, "**** Exceed read timeout, force exit ***"

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 857
    .end local v4    # "content":Ljava/lang/String;
    :cond_1
    if-eqz v9, :cond_2

    .line 858
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_2
    :goto_0
    move-object v8, v9

    .line 862
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "length":I
    .end local v12    # "nowELAPSED":J
    :cond_3
    :goto_1
    return-void

    .line 859
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "length":I
    .restart local v12    # "nowELAPSED":J
    :catch_0
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    goto :goto_0

    .line 853
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "length":I
    .end local v12    # "nowELAPSED":J
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v6

    .line 854
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v6, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "**** Failed to read, "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 857
    if-eqz v8, :cond_3

    .line 858
    :try_start_4
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 859
    :catch_2
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 851
    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v5

    .line 852
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_3
    :try_start_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "**** File not found, "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 857
    if-eqz v8, :cond_3

    .line 858
    :try_start_6
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_1

    .line 859
    :catch_4
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 855
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v11

    .line 857
    :goto_4
    if-eqz v8, :cond_4

    .line 858
    :try_start_7
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 855
    :cond_4
    :goto_5
    throw v11

    .line 859
    :catch_5
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto :goto_5

    .line 855
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "length":I
    :catchall_1
    move-exception v11

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 851
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_3

    .line 853
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v8    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 967
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    if-eqz p2, :cond_0

    .line 968
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 968
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 972
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 974
    :cond_1
    return-void
.end method

.method private dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 958
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    if-eqz p2, :cond_0

    .line 959
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 960
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 959
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 963
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 965
    :cond_1
    return-void
.end method

.method private dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 992
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 993
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 994
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 997
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    .end local v1    # "ent$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private dumpSignal(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1538
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p2, :cond_0

    .line 1539
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/telephony/SignalStrength;->SIGNAL_STRENGTH_NAMES:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1539
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1543
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1545
    :cond_1
    return-void
.end method

.method private dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 508
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    if-eqz p2, :cond_1

    .line 510
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 511
    .local v1, "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry;>;"
    sget-object v3, Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;->$INST$0:Lcom/android/server/-$Lambda$_INsfngiCL5Wfzq5d__1uyEZq0M;

    .line 513
    .local v3, "sortByValue":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map$Entry;>;"
    invoke-static {v1, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 515
    if-eqz v1, :cond_1

    .line 516
    const/4 v0, 0x0

    .line 517
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 518
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v4, 0xa

    if-ge v0, v4, :cond_1

    .line 519
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, "],"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 522
    add-int/lit8 v0, v0, 0x1

    .line 517
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 526
    .end local v0    # "count":I
    .end local v1    # "entryList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry;>;"
    .end local v2    # "i":I
    .end local v3    # "sortByValue":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/util/Map$Entry;>;"
    :cond_1
    return-void
.end method

.method private dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 1595
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p2, :cond_1

    .line 1596
    const/4 v0, 0x0

    .line 1597
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1598
    if-eqz p3, :cond_0

    if-eqz p3, :cond_1

    const/16 v2, 0xa

    if-ge v0, v2, :cond_1

    .line 1599
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "],"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1602
    add-int/lit8 v0, v0, 0x1

    .line 1597
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1605
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private dumpWakeLockRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1555
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;>;"
    if-eqz p1, :cond_0

    .line 1556
    const/4 v0, 0x0

    .line 1557
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1558
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1559
    add-int/lit8 v0, v0, 0x1

    .line 1560
    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 1563
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1557
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dumpWakeupReasonRanking(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1565
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;>;"
    if-eqz p1, :cond_0

    .line 1566
    const/4 v0, 0x0

    .line 1567
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 1568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "After Calcu # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1569
    add-int/lit8 v0, v0, 0x1

    .line 1570
    const/16 v2, 0xa

    if-le v0, v2, :cond_1

    .line 1573
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_0
    return-void

    .line 1567
    .restart local v0    # "count":I
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 985
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    if-eqz p2, :cond_0

    .line 986
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ent$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 987
    .local v0, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "], "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", count="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 990
    .end local v0    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    .end local v1    # "ent$iterator":Ljava/util/Iterator;
    :cond_0
    return-void
.end method

.method private dumpWiFiWakeUpStatsDiff(Ljava/lang/String;Ljava/util/List;)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 976
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;>;"
    if-eqz p2, :cond_0

    .line 977
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 978
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "], "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 977
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 981
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v1, "list == null"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 983
    :cond_1
    return-void
.end method

.method private dumpkwl(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1520
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    if-eqz p1, :cond_1

    .line 1521
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1522
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v1, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    const-string/jumbo v2, "PowerManagerService"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "After Calcu # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1521
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1526
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 6
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "bs"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    const/4 v2, -0x1

    .line 1759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1760
    .local v0, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 1761
    const-string/jumbo v1, "drainType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1762
    const-string/jumbo v3, " |uid="

    .line 1761
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1762
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    .line 1761
    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1763
    const-string/jumbo v3, " |bs.sumPower()="

    .line 1761
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1763
    invoke-virtual {p2}, Lcom/android/internal/os/BatterySipper;->sumPower()D

    move-result-wide v4

    .line 1761
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1764
    const-string/jumbo v3, " |wakeLockTimeMs="

    .line 1761
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1764
    iget-wide v4, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 1761
    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1767
    const-string/jumbo v3, " |pkg="

    .line 1761
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1767
    iget-object v3, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v3}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v4, :cond_0

    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    :cond_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v2

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1768
    const-string/jumbo v2, " |packageWithHighestDrain="

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1768
    iget-object v2, p2, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1770
    const-string/jumbo v2, " |getTotalPower="

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1770
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v2

    .line 1761
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1771
    const-string/jumbo v2, " |percent="

    .line 1761
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1771
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v4

    div-double/2addr v2, v4

    .line 1761
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 1774
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1775
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_2
    move v1, v2

    .line 1762
    goto/16 :goto_0
.end method

.method private genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1748
    .local p1, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1750
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_1

    .line 1751
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1752
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;->toMDMString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1756
    .end local v0    # "i":I
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1729
    .local p2, "rpmlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMInfo;>;"
    .local p3, "rpmmasterlist":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$RPMMasterInfo;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1731
    .local v1, "sb":Ljava/lang/StringBuilder;
    if-eqz p2, :cond_1

    .line 1732
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 1733
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1734
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_0

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1732
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1738
    .end local v0    # "i":I
    :cond_1
    if-eqz p3, :cond_3

    .line 1739
    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1741
    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1742
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-eq v0, v2, :cond_2

    const-string/jumbo v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1740
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1745
    .end local v0    # "i":I
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;",
            ">;)",
            "Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;"
        }
    .end annotation

    .prologue
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;>;"
    const/4 v3, 0x0

    .line 1334
    if-eqz p1, :cond_1

    .line 1335
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1336
    const-string/jumbo v2, "PowerManagerService.WakeLocks"

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    iget-object v1, v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1337
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    return-object v1

    .line 1335
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1341
    .end local v0    # "i":I
    :cond_1
    return-object v3
.end method

.method private static getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1970
    .local p0, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 1972
    .local v16, "uidList":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/os/BatterySipper;>;"
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1973
    .local v14, "results":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/os/BatterySipper;>;"
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v11

    .line 1974
    .local v11, "numSippers":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v11, :cond_a

    .line 1975
    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/os/BatterySipper;

    .line 1977
    .local v15, "sipper":Lcom/android/internal/os/BatterySipper;
    if-eqz v15, :cond_9

    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    if-lez v17, :cond_9

    .line 1979
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v13

    .line 1983
    .local v13, "realUid":I
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSharedGid(I)Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1985
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    invoke-static/range {v17 .. v17}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v17

    .line 1984
    const/16 v18, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Landroid/os/UserHandle;->getUid(II)I

    move-result v13

    .line 1989
    :cond_0
    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->isSystemUid(I)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1990
    const-string/jumbo v17, "mediaserver"

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    xor-int/lit8 v17, v17, 0x1

    .line 1989
    if-eqz v17, :cond_1

    .line 1994
    const/16 v13, 0x3e8

    .line 1997
    :cond_1
    invoke-virtual {v15}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v17

    move/from16 v0, v17

    if-eq v13, v0, :cond_2

    .line 1999
    new-instance v10, Lcom/android/internal/os/BatterySipper;

    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    move-object/from16 v17, v0

    .line 2000
    new-instance v18, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;

    move-object/from16 v0, v18

    invoke-direct {v0, v13}, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;-><init>(I)V

    const-wide/16 v20, 0x0

    .line 1999
    move-object/from16 v0, v17

    move-object/from16 v1, v18

    move-wide/from16 v2, v20

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 2001
    .local v10, "newSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v10, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 2002
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 2003
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v10, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 2004
    move-object v15, v10

    .line 2007
    .end local v10    # "newSipper":Lcom/android/internal/os/BatterySipper;
    :cond_2
    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 2008
    .local v7, "index":I
    if-gez v7, :cond_4

    .line 2010
    move-object/from16 v0, v16

    invoke-virtual {v0, v13, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1974
    .end local v7    # "index":I
    .end local v13    # "realUid":I
    :cond_3
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 2013
    .restart local v7    # "index":I
    .restart local v13    # "realUid":I
    :cond_4
    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 2014
    .local v5, "existingSipper":Lcom/android/internal/os/BatterySipper;
    invoke-virtual {v5, v15}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 2015
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_5

    .line 2016
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_5

    .line 2017
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iput-object v0, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 2020
    :cond_5
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_7

    .line 2021
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v4, v0

    .line 2022
    .local v4, "existingPackageLen":I
    :goto_2
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_8

    .line 2023
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v8, v0

    .line 2024
    .local v8, "newPackageLen":I
    :goto_3
    if-lez v8, :cond_3

    .line 2025
    add-int v17, v4, v8

    move/from16 v0, v17

    new-array v9, v0, [Ljava/lang/String;

    .line 2026
    .local v9, "newPackages":[Ljava/lang/String;
    if-lez v4, :cond_6

    .line 2027
    iget-object v0, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v9, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2030
    :cond_6
    iget-object v0, v15, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v0, v1, v9, v4, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2032
    iput-object v9, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    goto :goto_1

    .line 2021
    .end local v4    # "existingPackageLen":I
    .end local v8    # "newPackageLen":I
    .end local v9    # "newPackages":[Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "existingPackageLen":I
    goto :goto_2

    .line 2023
    :cond_8
    const/4 v8, 0x0

    .restart local v8    # "newPackageLen":I
    goto :goto_3

    .line 2036
    .end local v4    # "existingPackageLen":I
    .end local v5    # "existingSipper":Lcom/android/internal/os/BatterySipper;
    .end local v7    # "index":I
    .end local v8    # "newPackageLen":I
    .end local v13    # "realUid":I
    :cond_9
    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2040
    .end local v15    # "sipper":Lcom/android/internal/os/BatterySipper;
    :cond_a
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->size()I

    move-result v12

    .line 2041
    .local v12, "numUidSippers":I
    const/4 v6, 0x0

    :goto_4
    if-ge v6, v12, :cond_b

    .line 2042
    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2041
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 2046
    :cond_b
    new-instance v17, Lcom/android/server/OnePlusStandbyAnalyzer$8;

    invoke-direct/range {v17 .. v17}, Lcom/android/server/OnePlusStandbyAnalyzer$8;-><init>()V

    move-object/from16 v0, v17

    invoke-static {v14, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2052
    return-object v14
.end method

.method private getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 4
    .param p1, "bs"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 1778
    const-string/jumbo v1, ""

    .line 1779
    .local v1, "pkgInfo":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1780
    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v2}, Lcom/android/server/DeviceIdleController;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v2, :cond_1

    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    :goto_0
    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    .line 1781
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 1782
    move-object v1, v0

    .line 1787
    .end local v0    # "pkg":Ljava/lang/String;
    :cond_0
    :goto_1
    return-object v1

    .line 1780
    :cond_1
    const/4 v2, -0x1

    goto :goto_0

    .line 1783
    .restart local v0    # "pkg":Ljava/lang/String;
    :cond_2
    iget-object v2, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 1784
    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    goto :goto_1
.end method

.method private ifSipperMatched(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)Z
    .locals 6
    .param p1, "bs1"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "bs2"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    const/4 v5, 0x0

    .line 1866
    const/4 v0, 0x1

    .line 1867
    .local v0, "isMatched":Z
    iget-object v3, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v1

    .line 1868
    .local v1, "uid1":I
    :goto_0
    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v3, :cond_1

    iget-object v3, p2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v3}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    .line 1869
    .local v2, "uid2":I
    :goto_1
    iget-object v3, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v4, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v3, v4, :cond_2

    .line 1870
    return v5

    .line 1867
    .end local v1    # "uid1":I
    .end local v2    # "uid2":I
    :cond_0
    const/4 v1, -0x1

    .restart local v1    # "uid1":I
    goto :goto_0

    .line 1868
    :cond_1
    const/4 v2, -0x1

    .restart local v2    # "uid2":I
    goto :goto_1

    .line 1871
    :cond_2
    if-eq v1, v2, :cond_3

    .line 1872
    return v5

    .line 1873
    :cond_3
    return v0
.end method

.method private static isSharedGid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1957
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isSystemUid(I)Z
    .locals 2
    .param p0, "uid"    # I

    .prologue
    const/4 v0, 0x0

    .line 1961
    const/16 v1, 0x3e8

    if-lt p0, v1, :cond_0

    const/16 v1, 0x2710

    if-ge p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private judgeRootCause()V
    .locals 32

    .prologue
    .line 1085
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_0

    .line 1086
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### Due to mStandby_Ms: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1087
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    .line 1086
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1087
    const-string/jumbo v3, " is less than 0, can\'t judge anything, need just return"

    .line 1086
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1088
    return-void

    .line 1090
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v26

    .line 1092
    .local v26, "startTime":J
    const-string/jumbo v17, "NA"

    .line 1093
    .local v17, "mDMPackage":Ljava/lang/String;
    const-string/jumbo v16, "NA"

    .line 1095
    .local v16, "mDMDetail":Ljava/lang/String;
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NOT_DEFINDED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1096
    .local v11, "batteryOutlierType":Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 1098
    .local v10, "batteryOutlierReason":Ljava/lang/StringBuilder;
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 1099
    .local v21, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### Time of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1102
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1103
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### Battery-Drop of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1105
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### EverEnterDeepIdle : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1107
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1108
    new-instance v9, Ljava/math/BigDecimal;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    float-to-double v2, v2

    invoke-direct {v9, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1109
    .local v9, "b":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    .line 1110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### Average Current of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " mA"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1112
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1113
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1114
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### CPU Uptime of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1117
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1118
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1119
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### UserSpace-WL(PowerManagerService.WakeLocks) of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1122
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1123
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_KernelSpaceWL_Ms:J

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1124
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### (Uptime - UserSpace-WL)KernelSpace of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1127
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### Userspace WUA Count of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WUA_Count:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1128
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_1

    const-string/jumbo v2, "Diff"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1131
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### Kernel Wake-Up Count of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpkwl(Ljava/util/List;)V

    .line 1136
    const-string/jumbo v2, "Diff-RPM"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 1139
    const-string/jumbo v2, "Diff-RPMMaster"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMMasterStatsDiff(Ljava/lang/String;Ljava/util/List;)V

    .line 1141
    const-string/jumbo v2, "Diff-RPM"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->genRPMInfo(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v20

    .line 1142
    .local v20, "rpm_all":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### RPM : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1144
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genMDM_RPMMasterInfo(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    .line 1145
    .local v19, "mdm_rpm_master_detail":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### RPM MDMDetail : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1148
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1149
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    move-object/from16 v0, v21

    invoke-static {v0, v2, v3}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 1150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### Signal Bad (None + Poor) of Standby period : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1154
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_2

    const-string/jumbo v2, "Diff - totalPowerMah"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1157
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 1158
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    new-instance v3, Lcom/android/server/OnePlusStandbyAnalyzer$5;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lcom/android/server/OnePlusStandbyAnalyzer$5;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1163
    sget-boolean v2, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v2, :cond_3

    const-string/jumbo v2, "Diff - wakeLockTimeMs"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v4, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 1166
    :cond_3
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v2, v2

    const v3, 0x4a5bba00    # 3600000.0f

    div-float v24, v2, v3

    .line 1167
    .local v24, "standby_hrs":F
    new-instance v9, Ljava/math/BigDecimal;

    .end local v9    # "b":Ljava/math/BigDecimal;
    move/from16 v0, v24

    float-to-double v2, v0

    invoke-direct {v9, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1168
    .restart local v9    # "b":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v24

    .line 1169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### standby_hrs : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v24

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " h"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1171
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_UserSpaceWL_Ms:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v30, v2, v3

    .line 1172
    .local v30, "userSpaceWL_Percentage":F
    new-instance v9, Ljava/math/BigDecimal;

    .end local v9    # "b":Ljava/math/BigDecimal;
    move/from16 v0, v30

    float-to-double v2, v0

    invoke-direct {v9, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1173
    .restart local v9    # "b":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v30

    .line 1174
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### userSpaceWL_Percentage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v30

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1176
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Uptime_Ms:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v12, v2, v3

    .line 1177
    .local v12, "cpuRuning_Percentage":F
    new-instance v9, Ljava/math/BigDecimal;

    .end local v9    # "b":Ljava/math/BigDecimal;
    float-to-double v2, v12

    invoke-direct {v9, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1178
    .restart local v9    # "b":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v12

    .line 1179
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### cpuRuning_Percentage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1181
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    int-to-float v2, v2

    mul-float v31, v24, v2

    .line 1182
    .local v31, "wrCountCriteria":F
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### wrCountCriteria : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v31

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " times"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1184
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_SignalBad_Ms:J

    long-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    mul-float/2addr v2, v3

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float v22, v2, v3

    .line 1185
    .local v22, "signalBad_Percentage":F
    new-instance v9, Ljava/math/BigDecimal;

    .end local v9    # "b":Ljava/math/BigDecimal;
    move/from16 v0, v22

    float-to-double v2, v0

    invoke-direct {v9, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1186
    .restart local v9    # "b":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v22

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### signalBad_Percentage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, v22

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "  %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1189
    const-wide/high16 v28, -0x4010000000000000L    # -1.0

    .line 1190
    .local v28, "unAccounted_Percentage":D
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    if-eqz v2, :cond_7

    .line 1191
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-eqz v2, :cond_6

    .line 1192
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    iget-wide v2, v2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStadby_totalPowerMah:D

    div-double/2addr v2, v4

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v28, v2, v4

    .line 1193
    new-instance v9, Ljava/math/BigDecimal;

    .end local v9    # "b":Ljava/math/BigDecimal;
    move-wide/from16 v0, v28

    invoke-direct {v9, v0, v1}, Ljava/math/BigDecimal;-><init>(D)V

    .line 1194
    .restart local v9    # "b":Ljava/math/BigDecimal;
    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v9, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v28

    .line 1195
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### existd unaccounted sipper, the percentage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1203
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpCriteria()V

    .line 1204
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    sget v3, Lcom/android/server/OnePlusStandbyAnalyzer;->FAKE_LEVEL_DROP:I

    if-eq v2, v3, :cond_8

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    if-nez v2, :cond_8

    .line 1205
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1206
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->NO_ENTER_DEEPIDLE:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1313
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### [RootCause] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1316
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, ","

    const-string/jumbo v4, ";"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v8

    .line 1317
    .local v8, "reason":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    sget v3, Lcom/android/server/OnePlusStandbyAnalyzer;->DIAGNOSIS_ISSUE_POWER_OTHER:I

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Ms:J

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Battery_Drop:I

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_mA:F

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/OnePlusDiagnosisUtil;->log(IJIFLjava/lang/String;)V

    .line 1318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOnePlusDiagnosisUtil:Lcom/android/server/OnePlusDiagnosisUtil;

    invoke-virtual {v2}, Lcom/android/server/OnePlusDiagnosisUtil;->flushToFile()V

    .line 1320
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### [MDM_PACKAGE] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1321
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "###### [MDM_DETAIL] :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1323
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mMDMEnabled:Z

    if-eqz v2, :cond_5

    .line 1324
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 1325
    .local v13, "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string/jumbo v2, "tp"

    invoke-virtual {v11}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->ordinal()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    const-string/jumbo v2, "pn"

    move-object/from16 v0, v17

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1327
    const-string/jumbo v2, "dl"

    move-object/from16 v0, v16

    invoke-virtual {v13, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v3, "standby"

    invoke-virtual {v2, v3, v13}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 1331
    .end local v13    # "data":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "@@@@[Judge] in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long v4, v4, v26

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1332
    return-void

    .line 1197
    .end local v8    # "reason":Ljava/lang/String;
    :cond_6
    const-string/jumbo v2, "###### existd unaccounted sipper, but mStadby_totalPowerMah is 0"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1200
    :cond_7
    const-string/jumbo v2, "###### No-unaccounted sipper existed."

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1207
    :cond_8
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    cmpl-float v2, v30, v2

    if-ltz v2, :cond_9

    .line 1208
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1209
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1211
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1212
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v23

    .line 1213
    .local v23, "sipperInfo":Ljava/lang/String;
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1214
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1216
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_Sipper_List:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->getSipperPkgInfo(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v17

    .line 1219
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1220
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "1st:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1224
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWLDiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;

    iget-object v2, v2, Lcom/android/server/OnePlusStandbyAnalyzer$PartialWakeLockInfo;->mName:Ljava/lang/String;

    const-string/jumbo v3, ":"

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v25

    .line 1225
    .local v25, "str_array":[Ljava/lang/String;
    if-eqz v25, :cond_4

    move-object/from16 v0, v25

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_4

    .line 1227
    const/4 v2, 0x1

    aget-object v16, v25, v2

    goto/16 :goto_1

    .line 1231
    .end local v23    # "sipperInfo":Ljava/lang/String;
    .end local v25    # "str_array":[Ljava/lang/String;
    :cond_9
    sub-float v2, v12, v30

    sget v3, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_a

    .line 1232
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1233
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1235
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 1236
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWLDiffList:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->get1stKWL(Ljava/util/List;)Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;

    move-result-object v14

    .line 1237
    .local v14, "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    if-eqz v14, :cond_4

    .line 1238
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1239
    invoke-virtual {v14}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1240
    invoke-virtual {v14}, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1242
    iget-object v0, v14, Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    goto/16 :goto_1

    .line 1245
    .end local v14    # "firstKWL":Lcom/android/server/OnePlusStandbyAnalyzer$KernelWakelockInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_WR_Count:J

    long-to-float v2, v2

    cmpl-float v2, v2, v31

    if-ltz v2, :cond_e

    .line 1246
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1247
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1249
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 1250
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1251
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1253
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    iget-object v0, v2, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    move-object/from16 v16, v0

    .line 1256
    const/16 v18, 0x3

    .line 1257
    .local v18, "max":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    if-eqz v2, :cond_c

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_c

    .line 1258
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v15, v2, :cond_c

    .line 1256
    const/4 v2, 0x3

    .line 1259
    if-ge v15, v2, :cond_b

    .line 1260
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1261
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Diff_List:Ljava/util/List;

    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$WiFiWakeUpInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    :cond_b
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1267
    .end local v15    # "i":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_d

    .line 1268
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1269
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUADiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1271
    :cond_d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWRDiffList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1273
    .end local v18    # "max":I
    :cond_e
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    cmpl-float v2, v22, v2

    if-ltz v2, :cond_f

    .line 1274
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1275
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1276
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1277
    move/from16 v0, v22

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 1279
    :cond_f
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Diff_List:Ljava/util/List;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->checkifRPMAbnormal(Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 1281
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1282
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1283
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1284
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1286
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    if-eqz v2, :cond_10

    .line 1287
    const-string/jumbo v17, "aosd no increase"

    .line 1291
    :goto_3
    move-object/from16 v16, v19

    goto/16 :goto_1

    .line 1289
    :cond_10
    const-string/jumbo v17, "vmin no increase"

    goto :goto_3

    .line 1293
    :cond_11
    sget v2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    float-to-double v2, v2

    cmpl-double v2, v28, v2

    if-lez v2, :cond_12

    .line 1294
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1295
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1296
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1297
    const-string/jumbo v2, "unaccounted:"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v28

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " %"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1298
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mStandby_unAccounted_Sipper:Lcom/android/internal/os/BatterySipper;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v23

    .line 1299
    .restart local v23    # "sipperInfo":Ljava/lang/String;
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1300
    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    const-string/jumbo v2, ";"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    move-object/from16 v0, v20

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    const-string/jumbo v17, "high_unaccounted"

    .line 1307
    move-object/from16 v16, v19

    goto/16 :goto_1

    .line 1309
    .end local v23    # "sipperInfo":Ljava/lang/String;
    :cond_12
    sget-object v11, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    .line 1310
    sget-object v2, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->UNKNOWN:Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$BATTERY_OUTLIER_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1
.end method

.method static synthetic lambda$-com_android_server_OnePlusStandbyAnalyzer_22615(Ljava/util/Map$Entry;Ljava/util/Map$Entry;)I
    .locals 2
    .param p0, "e1"    # Ljava/util/Map$Entry;
    .param p1, "e2"    # Ljava/util/Map$Entry;

    .prologue
    .line 511
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 285
    sget-boolean v0, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 286
    const-string/jumbo v0, "OPSA"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    return-void
.end method

.method private substractIdlePower(Lcom/android/internal/os/BatterySipper;Lcom/android/internal/os/BatterySipper;)V
    .locals 6
    .param p1, "bs_start"    # Lcom/android/internal/os/BatterySipper;
    .param p2, "bs_end"    # Lcom/android/internal/os/BatterySipper;

    .prologue
    .line 1877
    const/4 v0, 0x0

    .line 1879
    .local v0, "isAbn":Z
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1880
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][wakeLockTimeMs] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1881
    const/4 v0, 0x1

    .line 1883
    :cond_0
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    sub-long/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 1885
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_1

    .line 1886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][usagePowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1887
    const/4 v0, 0x1

    .line 1889
    :cond_1
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 1891
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_2

    .line 1892
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][cpuPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1893
    const/4 v0, 0x1

    .line 1895
    :cond_2
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 1897
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_3

    .line 1898
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][wakeLockPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1899
    const/4 v0, 0x1

    .line 1901
    :cond_3
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 1903
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_4

    .line 1904
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][mobileRadioPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1905
    const/4 v0, 0x1

    .line 1907
    :cond_4
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 1909
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_5

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][wifiPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1911
    const/4 v0, 0x1

    .line 1913
    :cond_5
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 1915
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_6

    .line 1916
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][bluetoothPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1917
    const/4 v0, 0x1

    .line 1919
    :cond_6
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 1921
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_7

    .line 1922
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][gpsPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1923
    const/4 v0, 0x1

    .line 1925
    :cond_7
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 1927
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_8

    .line 1928
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][sensorPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1929
    const/4 v0, 0x1

    .line 1931
    :cond_8
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 1933
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_9

    .line 1934
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][cameraPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1935
    const/4 v0, 0x1

    .line 1937
    :cond_9
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 1939
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_a

    .line 1940
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][flashlightPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1941
    const/4 v0, 0x1

    .line 1943
    :cond_a
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 1945
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    cmpg-double v1, v2, v4

    if-gez v1, :cond_b

    .line 1946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "##[Abn][totalPowerMah] ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 1947
    const/4 v0, 0x1

    .line 1949
    :cond_b
    iget-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v4, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    sub-double/2addr v2, v4

    iput-wide v2, p2, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 1951
    if-eqz v0, :cond_c

    .line 1952
    const-string/jumbo v1, "Abn-Start"

    invoke-direct {p0, v1, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 1953
    const-string/jumbo v1, "Abn-End"

    invoke-direct {p0, v1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer;->genBatterySipperInfo(Ljava/lang/String;Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    .line 1955
    :cond_c
    return-void
.end method


# virtual methods
.method public dumpSnapShotData(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)V
    .locals 3
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .prologue
    const/4 v2, 0x0

    .line 609
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer;->-getcom-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 651
    :cond_0
    :goto_0
    return-void

    .line 611
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 612
    const-string/jumbo v0, "Start"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 614
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 615
    const-string/jumbo v0, "Start-WL"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 617
    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_3

    .line 618
    const-string/jumbo v0, "Start"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 620
    :cond_3
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 621
    const-string/jumbo v0, "Start-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 623
    :cond_4
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_5

    .line 624
    const-string/jumbo v0, "Start-RPM"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 626
    :cond_5
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 627
    const-string/jumbo v0, "Start-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    .line 631
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    if-eqz v0, :cond_6

    .line 632
    const-string/jumbo v0, "End"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpBatterySipperListInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 634
    :cond_6
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 635
    const-string/jumbo v0, "End-WL"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeLockMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 637
    :cond_7
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_8

    .line 638
    const-string/jumbo v0, "End"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 640
    :cond_8
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    if-eqz v0, :cond_9

    .line 641
    const-string/jumbo v0, "End-Signal"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpSignal(Ljava/lang/String;Ljava/util/List;)V

    .line 643
    :cond_9
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_a

    .line 644
    const-string/jumbo v0, "End-RPM"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpRPMStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    .line 646
    :cond_a
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 647
    const-string/jumbo v0, "End-WiFi"

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpWiFiStatsMap(Ljava/lang/String;Ljava/util/Map;)V

    goto/16 :goto_0

    .line 609
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p3, "bfilter"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 592
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p2, :cond_0

    .line 594
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 595
    .local v0, "UidWakeupAlarmsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 597
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->cptor2:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 599
    invoke-direct {p0, p1, v0, p3}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmInfo(Ljava/lang/String;Ljava/util/List;Z)V

    .line 601
    .end local v0    # "UidWakeupAlarmsList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :cond_0
    return-void
.end method

.method public genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;
    .locals 30
    .param p1, "stats"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "rawRealtime"    # J
    .param p4, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/os/BatteryStatsImpl;",
            "J",
            "Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 530
    sget-object v25, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_1

    .line 531
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    .line 534
    :goto_0
    const/16 v24, 0x0

    .line 537
    .local v24, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    const/4 v12, 0x0

    .line 538
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    if-eqz p1, :cond_5

    .line 539
    new-instance v24, Ljava/util/HashMap;

    .end local v24    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    invoke-direct/range {v24 .. v24}, Ljava/util/HashMap;-><init>()V

    .line 540
    .local v24, "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    new-instance v12, Ljava/util/HashMap;

    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 543
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v21

    .line 544
    .local v21, "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    invoke-virtual/range {v21 .. v21}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 546
    .local v4, "NU":I
    const/4 v9, 0x0

    .local v9, "iu":I
    :goto_1
    if-ge v9, v4, :cond_5

    .line 548
    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/BatteryStats$Uid;

    .line 551
    .local v20, "u":Landroid/os/BatteryStats$Uid;
    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Landroid/util/ArrayMap;

    move-result-object v22

    .line 552
    .local v22, "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    invoke-virtual/range {v22 .. v22}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v10, v25, -0x1

    .local v10, "iw":I
    :goto_2
    if-ltz v10, :cond_2

    .line 553
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 554
    .local v23, "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v14

    .line 555
    .local v14, "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    if-eqz v14, :cond_0

    .line 556
    const/16 v25, 0x0

    move-wide/from16 v0, p2

    move/from16 v2, v25

    invoke-virtual {v14, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v16

    .line 557
    .local v16, "totalTimeMicros":J
    const-wide/16 v26, 0x0

    cmp-long v25, v16, v26

    if-lez v25, :cond_0

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    if-eqz v25, :cond_0

    .line 558
    const-wide/16 v26, 0x1f4

    add-long v26, v26, v16

    const-wide/16 v28, 0x3e8

    div-long v18, v26, v28

    .line 559
    .local v18, "totalTimeMillis":J
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v26

    invoke-static/range {v26 .. v26}, Landroid/os/UserHandle;->formatUid(I)Ljava/lang/String;

    move-result-object v26

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string/jumbo v26, ":"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 552
    .end local v16    # "totalTimeMicros":J
    .end local v18    # "totalTimeMillis":J
    :cond_0
    add-int/lit8 v10, v10, -0x1

    goto :goto_2

    .line 533
    .end local v4    # "NU":I
    .end local v9    # "iu":I
    .end local v10    # "iw":I
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .end local v14    # "partialWakeTimer":Landroid/os/BatteryStats$Timer;
    .end local v20    # "u":Landroid/os/BatteryStats$Uid;
    .end local v21    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v22    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .end local v23    # "wl":Landroid/os/BatteryStats$Uid$Wakelock;
    .end local v24    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_1
    const/16 v25, 0x0

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    goto/16 :goto_0

    .line 565
    .restart local v4    # "NU":I
    .restart local v9    # "iu":I
    .restart local v10    # "iw":I
    .restart local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .restart local v20    # "u":Landroid/os/BatteryStats$Uid;
    .restart local v21    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .restart local v22    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    .restart local v24    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_2
    const/4 v6, 0x0

    .line 566
    .local v6, "count":I
    :try_start_1
    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getPackageStats()Landroid/util/ArrayMap;

    move-result-object v13

    .line 567
    .local v13, "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v8, v25, -0x1

    .local v8, "ipkg":I
    :goto_3
    if-ltz v8, :cond_4

    .line 568
    invoke-virtual {v13, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/os/BatteryStats$Uid$Pkg;

    .line 569
    .local v15, "ps":Landroid/os/BatteryStats$Uid$Pkg;
    invoke-virtual {v15}, Landroid/os/BatteryStats$Uid$Pkg;->getWakeupAlarmStats()Landroid/util/ArrayMap;

    move-result-object v5

    .line 570
    .local v5, "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v25

    add-int/lit8 v11, v25, -0x1

    .local v11, "iwa":I
    :goto_4
    if-ltz v11, :cond_3

    .line 571
    invoke-virtual {v5, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Landroid/os/BatteryStats$Counter;

    const/16 v26, 0x0

    invoke-virtual/range {v25 .. v26}, Landroid/os/BatteryStats$Counter;->getCountLocked(I)I

    move-result v25

    add-int v6, v6, v25

    .line 570
    add-int/lit8 v11, v11, -0x1

    goto :goto_4

    .line 567
    :cond_3
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    .line 575
    .end local v5    # "alarms":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Counter;>;"
    .end local v11    # "iwa":I
    .end local v15    # "ps":Landroid/os/BatteryStats$Uid$Pkg;
    :cond_4
    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    new-instance v26, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v27

    move-object/from16 v0, v26

    move/from16 v1, v27

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;-><init>(II)V

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 546
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    .line 577
    .end local v4    # "NU":I
    .end local v6    # "count":I
    .end local v8    # "ipkg":I
    .end local v9    # "iu":I
    .end local v10    # "iw":I
    .end local v13    # "packageStats":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Pkg;>;"
    .end local v20    # "u":Landroid/os/BatteryStats$Uid;
    .end local v21    # "uidStats":Landroid/util/SparseArray;, "Landroid/util/SparseArray<+Landroid/os/BatteryStats$Uid;>;"
    .end local v22    # "wakelocks":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;+Landroid/os/BatteryStats$Uid$Wakelock;>;"
    :catch_0
    move-exception v7

    .line 578
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 583
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v12    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Lcom/android/server/OnePlusStandbyAnalyzer$UidWakeupAlarmsInfo;>;"
    .end local v24    # "wlMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Long;>;"
    :cond_5
    sget-object v25, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v0, p4

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_6

    .line 584
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    .line 588
    :goto_5
    return-object v12

    .line 586
    :cond_6
    move-object/from16 v0, v24

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    goto :goto_5
.end method

.method public getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 20
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 864
    const/4 v9, 0x0

    .line 865
    .local v9, "fis":Ljava/io/FileInputStream;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 866
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;Ljava/lang/String;>;"
    const/16 v2, 0x400

    .line 867
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 869
    .local v3, "buffer":[B
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 870
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 871
    .local v11, "length":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 872
    .local v14, "nowELAPSED":J
    :cond_0
    invoke-virtual {v10, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_1

    .line 873
    new-instance v4, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v4, v3, v0, v11}, Ljava/lang/String;-><init>([BII)V

    .line 875
    .local v4, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    .line 876
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 881
    .local v12, "ma":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_5

    .line 882
    const-string/jumbo v16, "Matched...."

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 883
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 884
    .local v5, "duration":Ljava/lang/String;
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->MPSS:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 885
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 886
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;->ADSP:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MASTER_TYPE;

    move-object/from16 v0, v16

    invoke-interface {v13, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 890
    .end local v5    # "duration":Ljava/lang/String;
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/16 v18, 0x1388

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    .line 891
    const-string/jumbo v16, "**** Exceed read timeout, force exit ***"

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 901
    .end local v4    # "content":Ljava/lang/String;
    .end local v12    # "ma":Ljava/util/regex/Matcher;
    :cond_1
    if-eqz v10, :cond_2

    .line 902
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    move-object v9, v10

    .line 906
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "length":I
    .end local v14    # "nowELAPSED":J
    :cond_3
    :goto_3
    return-object v13

    .line 879
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    .restart local v14    # "nowELAPSED":J
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPM_Master_SDM845_Pattern:Ljava/util/regex/Pattern;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .restart local v12    # "ma":Ljava/util/regex/Matcher;
    goto :goto_0

    .line 888
    :cond_5
    const-string/jumbo v16, "Can\'t matched...."

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    .line 895
    .end local v4    # "content":Ljava/lang/String;
    .end local v12    # "ma":Ljava/util/regex/Matcher;
    .end local v14    # "nowELAPSED":J
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .line 896
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "length":I
    :goto_4
    :try_start_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "**** File not found, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 901
    if-eqz v9, :cond_3

    .line 902
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_3

    .line 903
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/io/IOException;
    goto :goto_3

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    .restart local v14    # "nowELAPSED":J
    :catch_2
    move-exception v8

    .restart local v8    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 897
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "length":I
    .end local v14    # "nowELAPSED":J
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .line 898
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/io/IOException;
    :goto_5
    :try_start_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "**** Failed to read, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 901
    if-eqz v9, :cond_3

    .line 902
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    .line 903
    :catch_4
    move-exception v8

    .restart local v8    # "ex":Ljava/io/IOException;
    goto :goto_3

    .line 899
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 901
    :goto_6
    if-eqz v9, :cond_6

    .line 902
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 899
    :cond_6
    :goto_7
    throw v16

    .line 903
    :catch_5
    move-exception v8

    .restart local v8    # "ex":Ljava/io/IOException;
    goto :goto_7

    .line 899
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    :catchall_1
    move-exception v16

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    goto :goto_6

    .line 895
    .end local v11    # "length":I
    .local v9, "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    goto :goto_4

    .line 897
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    :catch_7
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    goto :goto_5
.end method

.method public getVlowVminCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 22
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 909
    const/4 v8, 0x0

    .line 910
    .local v8, "fis":Ljava/io/FileInputStream;
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 911
    .local v12, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;Ljava/lang/Integer;>;"
    const/16 v2, 0x400

    .line 912
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 914
    .local v3, "buffer":[B
    :try_start_0
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 915
    .end local v8    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    const/4 v10, 0x0

    .line 916
    .local v10, "length":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 917
    .local v14, "nowELAPSED":J
    :cond_0
    invoke-virtual {v9, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v10

    const/16 v17, -0x1

    move/from16 v0, v17

    if-eq v10, v0, :cond_1

    .line 918
    new-instance v4, Ljava/lang/String;

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-direct {v4, v3, v0, v10}, Ljava/lang/String;-><init>([BII)V

    .line 920
    .local v4, "content":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModeSDM845Pattern:Ljava/util/regex/Pattern;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .line 925
    .local v11, "ma":Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v17

    if-eqz v17, :cond_8

    .line 926
    const-string/jumbo v17, "Matched...."

    invoke-static/range {v17 .. v17}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 927
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v13

    .line 928
    .local v13, "vlow_Count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    move/from16 v17, v0

    if-eqz v17, :cond_5

    sget-object v17, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->aosd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_1
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v16

    .line 930
    .local v16, "vmin_Count":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    move/from16 v17, v0

    if-eqz v17, :cond_6

    sget-object v17, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->cxsd:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    :goto_2
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v12, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 931
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mIsSDM845:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 932
    const-string/jumbo v17, "OPSA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "#### ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] rpm_stats [aosd, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "], [cxsd, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    .end local v13    # "vlow_Count":Ljava/lang/String;
    .end local v16    # "vmin_Count":Ljava/lang/String;
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    sub-long v18, v18, v14

    const-wide/16 v20, 0x1388

    cmp-long v17, v18, v20

    if-ltz v17, :cond_0

    .line 940
    const-string/jumbo v17, "**** Exceed read timeout, force exit ***"

    invoke-static/range {v17 .. v17}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 950
    .end local v4    # "content":Ljava/lang/String;
    .end local v11    # "ma":Ljava/util/regex/Matcher;
    :cond_1
    if-eqz v9, :cond_2

    .line 951
    :try_start_2
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    :cond_2
    :goto_4
    move-object v8, v9

    .line 955
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "length":I
    .end local v14    # "nowELAPSED":J
    :cond_3
    :goto_5
    return-object v12

    .line 923
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "length":I
    .restart local v14    # "nowELAPSED":J
    :cond_4
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMModePattern:Ljava/util/regex/Pattern;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    .restart local v11    # "ma":Ljava/util/regex/Matcher;
    goto/16 :goto_0

    .line 928
    .restart local v13    # "vlow_Count":Ljava/lang/String;
    :cond_5
    sget-object v17, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vlow:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto/16 :goto_1

    .line 930
    .restart local v16    # "vmin_Count":Ljava/lang/String;
    :cond_6
    sget-object v17, Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;->vmin:Lcom/android/server/OnePlusStandbyAnalyzer$RPM_MODE_TYPE;

    goto/16 :goto_2

    .line 934
    :cond_7
    const-string/jumbo v17, "OPSA"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "#### ["

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "] rpm_stats [vlow, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "], [vmin, "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string/jumbo v19, "]"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 944
    .end local v4    # "content":Ljava/lang/String;
    .end local v11    # "ma":Ljava/util/regex/Matcher;
    .end local v13    # "vlow_Count":Ljava/lang/String;
    .end local v14    # "nowELAPSED":J
    .end local v16    # "vmin_Count":Ljava/lang/String;
    :catch_0
    move-exception v5

    .local v5, "e":Ljava/io/FileNotFoundException;
    move-object v8, v9

    .line 945
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "length":I
    :goto_6
    :try_start_4
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "**** File not found, "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 950
    if-eqz v8, :cond_3

    .line 951
    :try_start_5
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_5

    .line 952
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/io/IOException;
    goto :goto_5

    .line 937
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "length":I
    .restart local v11    # "ma":Ljava/util/regex/Matcher;
    .restart local v14    # "nowELAPSED":J
    :cond_8
    :try_start_6
    const-string/jumbo v17, "Can\'t matched...."

    invoke-static/range {v17 .. v17}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/16 :goto_3

    .line 946
    .end local v4    # "content":Ljava/lang/String;
    .end local v11    # "ma":Ljava/util/regex/Matcher;
    .end local v14    # "nowELAPSED":J
    :catch_2
    move-exception v6

    .local v6, "e":Ljava/io/IOException;
    move-object v8, v9

    .line 947
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "length":I
    :goto_7
    :try_start_7
    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "**** Failed to read, "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 950
    if-eqz v8, :cond_3

    .line 951
    :try_start_8
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_5

    .line 952
    :catch_3
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto/16 :goto_5

    .end local v6    # "e":Ljava/io/IOException;
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "length":I
    .restart local v14    # "nowELAPSED":J
    :catch_4
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto/16 :goto_4

    .line 948
    .end local v7    # "ex":Ljava/io/IOException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .end local v10    # "length":I
    .end local v14    # "nowELAPSED":J
    :catchall_0
    move-exception v17

    .line 950
    :goto_8
    if-eqz v8, :cond_9

    .line 951
    :try_start_9
    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 948
    :cond_9
    :goto_9
    throw v17

    .line 952
    :catch_5
    move-exception v7

    .restart local v7    # "ex":Ljava/io/IOException;
    goto :goto_9

    .line 948
    .end local v7    # "ex":Ljava/io/IOException;
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "length":I
    :catchall_1
    move-exception v17

    move-object v8, v9

    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v8, "fis":Ljava/io/FileInputStream;
    goto :goto_8

    .line 944
    .end local v10    # "length":I
    .local v8, "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v5

    .restart local v5    # "e":Ljava/io/FileNotFoundException;
    goto :goto_6

    .line 946
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_7
    move-exception v6

    .restart local v6    # "e":Ljava/io/IOException;
    goto :goto_7
.end method

.method public getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;
    .locals 20
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "sourcefile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 765
    const/4 v9, 0x0

    .line 766
    .local v9, "fis":Ljava/io/FileInputStream;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 767
    .local v13, "map":Ljava/util/Map;, "Ljava/util/Map<Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;Ljava/lang/Integer;>;"
    const/16 v2, 0x400

    .line 768
    .local v2, "buf_size":I
    new-array v3, v2, [B

    .line 770
    .local v3, "buffer":[B
    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 771
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v10, "fis":Ljava/io/FileInputStream;
    const/4 v11, 0x0

    .line 772
    .local v11, "length":I
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 773
    .local v14, "nowELAPSED":J
    :cond_0
    invoke-virtual {v10, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v11

    const/16 v16, -0x1

    move/from16 v0, v16

    if-eq v11, v0, :cond_1

    .line 774
    new-instance v4, Ljava/lang/String;

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-direct {v4, v3, v0, v11}, Ljava/lang/String;-><init>([BII)V

    .line 775
    .local v4, "content":Ljava/lang/String;
    const-string/jumbo v16, "OPSA"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v18, "WiFi WakeUp content=\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string/jumbo v18, "\""

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v16 .. v17}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mWifiWakeupPattern:Ljava/util/regex/Pattern;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v12

    .line 777
    .local v12, "ma":Ljava/util/regex/Matcher;
    invoke-virtual {v12}, Ljava/util/regex/Matcher;->matches()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 778
    const-string/jumbo v16, "Matched...."

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 779
    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 780
    .local v5, "count":Ljava/lang/String;
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->uc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    const/16 v16, 0x2

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 782
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->bc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 783
    const/16 v16, 0x3

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 784
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v4_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 785
    const/16 v16, 0x4

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 786
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->v6_mc:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    const/16 v16, 0x5

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 788
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ra:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 789
    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 790
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->ns:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 791
    const/16 v16, 0x7

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 792
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->na:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 793
    const/16 v16, 0x8

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 794
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_match:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    const/16 v16, 0x9

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 796
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->pno_complete:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 797
    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 798
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->gscan:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 799
    const/16 v16, 0xb

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 800
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->low_rssi:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 801
    const/16 v16, 0xc

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 802
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->rssi_breach:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const/16 v16, 0xd

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 804
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmp:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    const/16 v16, 0xe

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 806
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->icmpv6:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 807
    const/16 v16, 0xf

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 808
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->oem:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 809
    const/16 v16, 0x10

    move/from16 v0, v16

    invoke-virtual {v12, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    .line 810
    sget-object v16, Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;->unspecified:Lcom/android/server/OnePlusStandbyAnalyzer$WIFI_WAKEUP_TYPE;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-interface {v13, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 815
    .end local v5    # "count":Ljava/lang/String;
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    sub-long v16, v16, v14

    const-wide/16 v18, 0x1388

    cmp-long v16, v16, v18

    if-ltz v16, :cond_0

    .line 816
    const-string/jumbo v16, "**** Exceed read timeout, force exit ***"

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 826
    .end local v4    # "content":Ljava/lang/String;
    .end local v12    # "ma":Ljava/util/regex/Matcher;
    :cond_1
    if-eqz v10, :cond_2

    .line 827
    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_1
    move-object v9, v10

    .line 831
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "length":I
    .end local v14    # "nowELAPSED":J
    :cond_3
    :goto_2
    return-object v13

    .line 813
    .restart local v4    # "content":Ljava/lang/String;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    .restart local v12    # "ma":Ljava/util/regex/Matcher;
    .restart local v14    # "nowELAPSED":J
    :cond_4
    :try_start_3
    const-string/jumbo v16, "Can\'t matched...."

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 820
    .end local v4    # "content":Ljava/lang/String;
    .end local v12    # "ma":Ljava/util/regex/Matcher;
    .end local v14    # "nowELAPSED":J
    :catch_0
    move-exception v6

    .local v6, "e":Ljava/io/FileNotFoundException;
    move-object v9, v10

    .line 821
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "length":I
    :goto_3
    :try_start_4
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "**** File not found, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 826
    if-eqz v9, :cond_3

    .line 827
    :try_start_5
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_2

    .line 828
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/io/IOException;
    goto :goto_2

    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    .restart local v14    # "nowELAPSED":J
    :catch_2
    move-exception v8

    .restart local v8    # "ex":Ljava/io/IOException;
    goto :goto_1

    .line 822
    .end local v8    # "ex":Ljava/io/IOException;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "length":I
    .end local v14    # "nowELAPSED":J
    .restart local v9    # "fis":Ljava/io/FileInputStream;
    :catch_3
    move-exception v7

    .line 823
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .local v7, "e":Ljava/io/IOException;
    :goto_4
    :try_start_6
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v17, "**** Failed to read, "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 826
    if-eqz v9, :cond_3

    .line 827
    :try_start_7
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_2

    .line 828
    :catch_4
    move-exception v8

    .restart local v8    # "ex":Ljava/io/IOException;
    goto :goto_2

    .line 824
    .end local v7    # "e":Ljava/io/IOException;
    .end local v8    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v16

    .line 826
    :goto_5
    if-eqz v9, :cond_5

    .line 827
    :try_start_8
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    .line 824
    :cond_5
    :goto_6
    throw v16

    .line 828
    :catch_5
    move-exception v8

    .restart local v8    # "ex":Ljava/io/IOException;
    goto :goto_6

    .line 824
    .end local v8    # "ex":Ljava/io/IOException;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    :catchall_1
    move-exception v16

    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 820
    .end local v11    # "length":I
    .local v9, "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v6

    .restart local v6    # "e":Ljava/io/FileNotFoundException;
    goto :goto_3

    .line 822
    .end local v6    # "e":Ljava/io/FileNotFoundException;
    .end local v9    # "fis":Ljava/io/FileInputStream;
    .restart local v10    # "fis":Ljava/io/FileInputStream;
    .restart local v11    # "length":I
    :catch_7
    move-exception v7

    .restart local v7    # "e":Ljava/io/IOException;
    move-object v9, v10

    .end local v10    # "fis":Ljava/io/FileInputStream;
    .local v9, "fis":Ljava/io/FileInputStream;
    goto :goto_4
.end method

.method public notifyEnterDeepIdle()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mEverEnterDeepDoze:Z

    .line 305
    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 2
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .prologue
    .line 307
    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v1, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method public snapShot(Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IF)V
    .locals 7
    .param p1, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p2, "statitic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p3, "batteryLevelDrop"    # I
    .param p4, "mA"    # F

    .prologue
    .line 310
    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IF)V

    invoke-virtual {v6, v0}, Lcom/android/server/DeviceIdleController;->postToOPBackgroundThread(Ljava/lang/Runnable;)V

    .line 311
    return-void
.end method

.method public updateStandbyCriteria(Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;F)V
    .locals 2
    .param p1, "type"    # Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .param p2, "value"    # F

    .prologue
    .line 313
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer;->-getcom-android-server-OnePlusStandbyAnalyzer$CRITERIA_TYPESwitchesValues()[I

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 335
    :goto_0
    return-void

    .line 315
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Update mUSERSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 316
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUSERSPACE_WL_CRITERIA:F

    goto :goto_0

    .line 319
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Update mKERNELSPACE_WL_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 320
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNELSPACE_WL_CRITERIA:F

    goto :goto_0

    .line 323
    :pswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Update mKERNEL_WAKEUP_COUNT_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    float-to-int v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 324
    float-to-int v0, p2

    sput v0, Lcom/android/server/OnePlusStandbyAnalyzer;->mKERNEL_WAKEUP_COUNT_CRITERIA:I

    goto :goto_0

    .line 327
    :pswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Update mSIGNAL_BAD_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 328
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mSIGNAL_BAD_CRITERIA:F

    goto :goto_0

    .line 331
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Update mUNACCOUNTED_CRITERIA : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 332
    sput p2, Lcom/android/server/OnePlusStandbyAnalyzer;->mUNACCOUNTED_CRITERIA:F

    goto/16 :goto_0

    .line 313
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
