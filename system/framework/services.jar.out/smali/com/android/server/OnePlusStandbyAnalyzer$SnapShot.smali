.class public final Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnapShot"
.end annotation


# static fields
.field private static final synthetic -com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$com$android$server$OnePlusStandbyAnalyzer$SNAPSHOT_TYPE:[I

.field private mBatteryDrop:I

.field private mIsEnterDeepIdle:Z

.field private mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

.field private mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

.field private mmA:F

.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method private static synthetic -getcom-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->-com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->-com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I

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

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_2

    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->END:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->START:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v1}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_0

    :goto_2
    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->-com-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues:[I

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

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p2, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p3, "statistic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .prologue
    .line 352
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 353
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 354
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 355
    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;IF)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OnePlusStandbyAnalyzer;
    .param p2, "snapshot"    # Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;
    .param p3, "statistic"    # Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;
    .param p4, "batteryDrop"    # I
    .param p5, "mA"    # F

    .prologue
    .line 356
    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    .line 358
    iput-object p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    .line 359
    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mBatteryDrop:I

    .line 360
    iput p5, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmA:F

    .line 361
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .prologue
    .line 364
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->-get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v12

    if-eqz v12, :cond_d

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mStatisticType:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    sget-object v13, Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;->KWL_WR:Lcom/android/server/OnePlusStandbyAnalyzer$STATISTIC_TYPE;

    if-ne v12, v13, :cond_1

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 371
    .local v6, "startTime":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->-get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v5

    .line 374
    .local v5, "stats":Lcom/android/internal/os/BatteryStatsImpl;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v12, v5}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v13, 0x0

    const/4 v14, -0x1

    invoke-virtual {v12, v13, v14}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    .line 376
    const-wide/16 v10, 0x0

    .line 377
    .local v10, "upTimeMs":J
    if-eqz v5, :cond_0

    .line 378
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v12, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v10, v12, v14

    .line 379
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 380
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-static {v3, v10, v11}, Landroid/os/BatteryStats;->formatTimeMs(Ljava/lang/StringBuilder;J)V

    .line 381
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Time on battery of uptime : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->-get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/am/BatteryStatsService;->UpdateKernelWakelocks()V

    .line 386
    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->-getcom-android-server-OnePlusStandbyAnalyzer$SNAPSHOT_TYPESwitchesValues()[I

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    invoke-virtual {v13}, Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 504
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v6    # "startTime":J
    .end local v10    # "upTimeMs":J
    :cond_1
    :goto_0
    return-void

    .line 389
    .restart local v3    # "sb":Ljava/lang/StringBuilder;
    .restart local v5    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .restart local v6    # "startTime":J
    .restart local v10    # "upTimeMs":J
    :pswitch_0
    const-string/jumbo v12, "======START======"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 391
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v13, 0x0

    invoke-static {v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->-set0(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    .line 392
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    .line 393
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iput-wide v10, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfStart:J

    .line 397
    if-eqz v5, :cond_4

    .line 398
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    .line 399
    .local v4, "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    .line 400
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "Start"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfStartDeepIdle:Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap1(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    .line 403
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v5, v14, v15, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    .line 404
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_3

    .line 405
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "Start-WL"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_Start_Map:Ljava/util/Map;

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap4(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 406
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "Start"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_Start_Map:Ljava/util/Map;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 413
    .end local v4    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_3
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->-get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    invoke-virtual {v13, v14, v15}, Lcom/android/server/am/BatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_Start_Map:Ljava/util/Map;

    .line 415
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->-get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/BatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_Start_Map:Ljava/util/Map;

    .line 418
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    .line 419
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    const/4 v12, 0x5

    if-ge v2, v12, :cond_5

    .line 420
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfStart:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v2, v12, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v8, v12, v14

    .line 421
    .local v8, "timeMs":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 419
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 409
    .end local v2    # "i":I
    .end local v8    # "timeMs":J
    :cond_4
    const-string/jumbo v12, "stats == null"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 423
    .restart local v2    # "i":I
    :cond_5
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_6

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "Start-Signal"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_Start_List:Ljava/util/List;

    invoke-static {v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap3(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    .line 426
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v14, "Start"

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getVlowVminCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_Start_Map:Ljava/util/Map;

    .line 429
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "Start"

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap2(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v14, "Start"

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_Start_Map:Ljava/util/Map;

    .line 435
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v14, "Start"

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    .line 436
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_7

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "Start"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_Start_Map:Ljava/util/Map;

    invoke-static {v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap5(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    .line 438
    :cond_7
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "@@@@[START] SnapShot in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 442
    .end local v2    # "i":I
    :pswitch_1
    const-string/jumbo v12, "======END======"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 443
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    iput-wide v14, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    .line 444
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iput-wide v10, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawUptimeOfEnd:J

    .line 446
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mBatteryDrop:I

    invoke-static {v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->-set1(Lcom/android/server/OnePlusStandbyAnalyzer;I)I

    .line 447
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mmA:F

    invoke-static {v12, v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->-set2(Lcom/android/server/OnePlusStandbyAnalyzer;F)F

    .line 451
    if-eqz v5, :cond_9

    .line 452
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    .line 453
    .restart local v4    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    .line 454
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_8

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "End"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mSippersOfEndDeepidle:Ljava/util/List;

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap1(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;Z)V

    .line 457
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    const-wide/16 v16, 0x3e8

    mul-long v14, v14, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->mSnapShotType:Lcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v13, v5, v14, v15, v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->genUidWakeupAlarmMap(Lcom/android/internal/os/BatteryStatsImpl;JLcom/android/server/OnePlusStandbyAnalyzer$SNAPSHOT_TYPE;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    .line 458
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_9

    .line 459
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "End-WL"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mWL_End_Map:Ljava/util/Map;

    const/4 v15, 0x0

    invoke-static {v12, v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap4(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 460
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "End"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mUidWUA_End_Map:Ljava/util/Map;

    const/4 v15, 0x0

    invoke-virtual {v12, v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->dumpUidWakeupAlarmsMap(Ljava/lang/String;Ljava/util/Map;Z)V

    .line 465
    .end local v4    # "sippers":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/os/BatterySipper;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->-get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    invoke-virtual {v13, v14, v15}, Lcom/android/server/am/BatteryStatsService;->snapShotKernelWakelockStats(J)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mKWL_End_Map:Ljava/util/Map;

    .line 467
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v13}, Lcom/android/server/OnePlusStandbyAnalyzer;->-get0(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/am/BatteryStatsService;->snapShotWakeupReasonStats()Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWR_End_Map:Ljava/util/Map;

    .line 470
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    .line 471
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_3
    const/4 v12, 0x5

    if-ge v2, v12, :cond_a

    .line 472
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-wide v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRawRealtimeOfEnd:J

    const-wide/16 v14, 0x3e8

    mul-long/2addr v12, v14

    const/4 v14, 0x0

    invoke-virtual {v5, v2, v12, v13, v14}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v8, v12, v14

    .line 473
    .restart local v8    # "timeMs":J
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v12, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 471
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 475
    .end local v8    # "timeMs":J
    :cond_a
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_b

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "End-Signal"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mSignal_End_List:Ljava/util/List;

    invoke-static {v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap3(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/List;)V

    .line 478
    :cond_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v14, "End"

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_FILE:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getVlowVminCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMInfo_End_Map:Ljava/util/Map;

    .line 481
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "End"

    sget-object v14, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-static {v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap2(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v14, "End"

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer;->RPM_MASTER_FILE:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getRPMMasterDurationMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mRPMMasterInfo_End_Map:Ljava/util/Map;

    .line 487
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v14, "End"

    sget-object v15, Lcom/android/server/OnePlusStandbyAnalyzer;->WIFI_WAKEUP_FILE:Ljava/lang/String;

    invoke-virtual {v13, v14, v15}, Lcom/android/server/OnePlusStandbyAnalyzer;->getWiFiWakeUpCountMap(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Map;

    move-result-object v13

    iput-object v13, v12, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    .line 488
    sget-boolean v12, Lcom/android/server/OnePlusStandbyAnalyzer;->DEBUG_STANDBY:Z

    if-eqz v12, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const-string/jumbo v13, "End"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v14, v14, Lcom/android/server/OnePlusStandbyAnalyzer;->mWiFiWakeUp_End_Map:Ljava/util/Map;

    invoke-static {v12, v13, v14}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap5(Lcom/android/server/OnePlusStandbyAnalyzer;Ljava/lang/String;Ljava/util/Map;)V

    .line 490
    :cond_c
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "@@@@[End] SnapShot in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 494
    .end local v2    # "i":I
    :pswitch_2
    const-string/jumbo v12, "======CALCULATE======"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    .line 495
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap0(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/server/OnePlusStandbyAnalyzer$SnapShot;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->-wrap6(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    .line 497
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "@@@@[End] Calculate & Judge in "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    sub-long/2addr v14, v6

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " ms"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 502
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    .end local v5    # "stats":Lcom/android/internal/os/BatteryStatsImpl;
    .end local v6    # "startTime":J
    .end local v10    # "upTimeMs":J
    :cond_d
    const-string/jumbo v12, "mBatteryStatsService == null"

    invoke-static {v12}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 386
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
