.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChargingRecord"
.end annotation


# static fields
.field static final DiffLevelThreshold:I

.field public static final TYPE_BATTERY_LOW:I = 0x6

.field public static final TYPE_CONNECTED:I = 0x1

.field public static final TYPE_DISCONNECTED:I = 0x2

.field public static final TYPE_DOZE_MODECHANGED:I = 0x5

.field public static final TYPE_SCREEN_OFF:I = 0x4

.field public static final TYPE_SCREEN_ON:I = 0x3


# instance fields
.field connectedWallTime:J

.field diffLevel:I

.field diffTime:J

.field disconnectedWallTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 874
    const-string/jumbo v0, "persist.sys.opcd.threshold"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->DiffLevelThreshold:I

    .line 861
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 876
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 869
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    .line 870
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    .line 871
    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    .line 872
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    .line 877
    return-void
.end method

.method private handlePauseTimer()V
    .locals 6

    .prologue
    .line 982
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MyTimer type:1 |TYPE_CONNECTED && ScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get17()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get16()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 983
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get17()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get16()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 984
    const-string/jumbo v0, "MyTimer type:1 |TYPE_CONNECTED && ScreenOn ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 985
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get8()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    .line 988
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MyTimer type:2 |TYPE_CONNECTED && isIdle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get14()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 989
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get14()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 990
    const-string/jumbo v0, "MyTimer type:2 |TYPE_CONNECTED && ScreenOn ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get3()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    .line 993
    :cond_1
    return-void

    .line 982
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleResetTimer()V
    .locals 6

    .prologue
    .line 966
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MyTimer type:1 |TYPE_DISCONNECTED && ScreenOn:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get17()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get16()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 967
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get8()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->resetTime()V

    .line 968
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get17()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get16()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 969
    const-string/jumbo v0, "MyTimer type:1 |TYPE_DISCONNECTED && ScreenOn ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 970
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get8()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    .line 973
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "MyTimer type:2 |TYPE_DISCONNECTED && isIdle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get14()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 974
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get3()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->resetTime()V

    .line 975
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get14()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    const-string/jumbo v0, "MyTimer type:2 |TYPE_DISCONNECTED && idle ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 977
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get3()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    .line 979
    :cond_1
    return-void

    .line 966
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleUsbConnected()V
    .locals 6

    .prologue
    .line 951
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get2()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "D"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap6(Landroid/content/Context;Ljava/lang/String;)V

    .line 953
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set1(J)J

    .line 954
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    .line 955
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get0()Lcom/android/server/am/BatteryStatsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 956
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set0(I)I

    .line 957
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRecord # connectedBatLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get10()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 959
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handlePauseTimer()V

    .line 960
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    .line 961
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->upLoadData()V

    .line 963
    :cond_0
    return-void
.end method

.method private handleUsbDisConnected()V
    .locals 4

    .prologue
    .line 941
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set3(J)J

    .line 942
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    .line 943
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get0()Lcom/android/server/am/BatteryStatsService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    .line 944
    .local v0, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getDischargeCurrentLevelLocked()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set2(I)I

    .line 945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRecord # sDisconnectedBatLevel="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get12()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", timestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 947
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleResetTimer()V

    .line 948
    return-void
.end method

.method private upLoadData()V
    .locals 20

    .prologue
    .line 996
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v6

    sub-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    .line 997
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get12()I

    move-result v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get10()I

    move-result v5

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    .line 998
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRecord # diffLevel="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", diffTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 1000
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffLevel:I

    if-lez v4, :cond_4

    .line 1001
    new-instance v3, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->diffTime:J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get19()J

    move-result-wide v6

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get18()J

    move-result-wide v8

    .line 1002
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->disconnectedWallTime:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->connectedWallTime:J

    .line 1003
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get12()I

    move-result v14

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get10()I

    move-result v15

    .line 1001
    invoke-direct/range {v3 .. v15}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;-><init>(JJJJJII)V

    .line 1004
    .local v3, "ri":Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateRecord # bingo # mTotalScreenOnTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get19()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 1006
    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {v4, v5}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap3(D)Ljava/util/List;

    move-result-object v2

    .line 1008
    .local v2, "highSipperList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;>;"
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 1009
    .local v18, "mdmData":Ljava/lang/StringBuilder;
    const-string/jumbo v4, "{"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1010
    invoke-virtual {v3}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;->toMDM()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_3

    .line 1014
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x5

    if-ge v4, v5, :cond_1

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v19

    .line 1015
    .local v19, "sz":I
    :goto_0
    const/16 v17, 0x0

    .line 1016
    .local v17, "index":I
    const-string/jumbo v4, "\"pns\":["

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    move/from16 v1, v19

    if-ge v0, v1, :cond_2

    .line 1018
    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    invoke-virtual {v4}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->toMDM()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    add-int/lit8 v17, v17, 0x1

    move/from16 v0, v17

    move/from16 v1, v19

    if-ge v0, v1, :cond_0

    .line 1020
    const-string/jumbo v4, ","

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1017
    :cond_0
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 1014
    .end local v16    # "i":I
    .end local v17    # "index":I
    .end local v19    # "sz":I
    :cond_1
    const/16 v19, 0x5

    .restart local v19    # "sz":I
    goto :goto_0

    .line 1022
    .restart local v16    # "i":I
    .restart local v17    # "index":I
    :cond_2
    const-string/jumbo v4, "]"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1024
    .end local v16    # "i":I
    .end local v17    # "index":I
    .end local v19    # "sz":I
    :cond_3
    const-string/jumbo v4, "}"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1026
    const-string/jumbo v4, "OPCD"

    const-string/jumbo v5, "statistic"

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap5(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1028
    const-string/jumbo v4, "\n"

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1029
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mdmData:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 1030
    sget-boolean v4, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->DISK:Z

    if-eqz v4, :cond_4

    .line 1031
    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap0(Ljava/lang/String;)Z

    .line 1034
    .end local v2    # "highSipperList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;>;"
    .end local v3    # "ri":Lcom/android/server/am/OnePlusPowerConsumptionDetector$RecordItem;
    .end local v18    # "mdmData":Ljava/lang/StringBuilder;
    :cond_4
    return-void
.end method


# virtual methods
.method public updateRecord(I)V
    .locals 8
    .param p1, "type"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 880
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateRecord # type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 881
    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    .line 882
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbDisConnected()V

    .line 938
    :cond_0
    :goto_0
    return-void

    .line 883
    :cond_1
    if-ne p1, v0, :cond_3

    .line 884
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get15()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 885
    const-string/jumbo v0, "Broadcast conflict TYPE_CONNECTED, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 886
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set5(Z)Z

    .line 887
    return-void

    .line 890
    :cond_2
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbConnected()V

    goto :goto_0

    .line 891
    :cond_3
    const/4 v2, 0x3

    if-ne p1, v2, :cond_5

    .line 892
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MyTimer type:1 |TYPE_SCREEN_ON && Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_4

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 893
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set7(J)J

    .line 894
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 895
    const-string/jumbo v0, "MyTimer type:1 |TYPE_SCREEN_ON && notCharging ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 896
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get8()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 892
    goto :goto_1

    .line 898
    :cond_5
    const/4 v2, 0x4

    if-ne p1, v2, :cond_7

    .line 899
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MyTimer type:1 |TYPE_SCREEN_OFF Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_6

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 900
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set6(J)J

    .line 901
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 902
    const-string/jumbo v0, "MyTimer type:1 |TYPE_SCREEN_OFF && notCharging ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 903
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get8()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 899
    goto :goto_2

    .line 905
    :cond_7
    const/4 v2, 0x5

    if-ne p1, v2, :cond_b

    .line 906
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get7()Landroid/os/PowerManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 907
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MyTimer type:2 |DozeIdle Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_8

    move v1, v0

    :cond_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 908
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set4(Z)Z

    .line 909
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 910
    const-string/jumbo v0, "MyTimer type:2 |DozeIdle && notCharging ---- MyTimer startTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 911
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get3()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->startTime()V

    goto/16 :goto_0

    .line 914
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "MyTimer type:2 |DozeActive Charging:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-gtz v3, :cond_a

    :goto_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 915
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set4(Z)Z

    .line 916
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 917
    const-string/jumbo v0, "MyTimer type:2 |DozeActive && notCharging ---- MyTimer pauseTime"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 918
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get3()Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyTimer;->pauseTime()V

    goto/16 :goto_0

    :cond_a
    move v0, v1

    .line 914
    goto :goto_3

    .line 921
    :cond_b
    const/4 v2, 0x6

    if-ne p1, v2, :cond_0

    .line 922
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get15()Z

    move-result v2

    if-nez v2, :cond_d

    .line 923
    const-string/jumbo v2, "handle low power scene start"

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 924
    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set5(Z)Z

    .line 930
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbConnected()V

    .line 931
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get15()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 932
    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->handleUsbDisConnected()V

    .line 933
    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-set5(Z)Z

    .line 936
    :cond_c
    const-string/jumbo v0, "handle low power scene end"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 926
    :cond_d
    const-string/jumbo v0, "Broadcast conflict TYPE_BATTERY_LOW, return"

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 927
    return-void
.end method
