.class Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;
.super Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
.source "ColorBalanceService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TwilightAutoMode"
.end annotation


# static fields
.field private static final mFourHourMillis:J = 0x1499700L

.field private static final mSixHourMillis:J = 0x1499700L

.field private static final mTwuentyHourMillis:J = 0x3dcc500L


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mIsGetLocation:Ljava/lang/Boolean;

.field private mLastActivatedTime:Ljava/util/Calendar;

.field private mLastLocation:Landroid/location/Location;

.field private mLastTwilightState:Lcom/android/server/twilight/TwilightState;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mPreIsNightStatus:Ljava/lang/Boolean;

.field private mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;Ljava/lang/Boolean;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;
    .param p1, "isCallByOnLocationChange"    # Ljava/lang/Boolean;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/oneplus/display/ColorBalanceService;

    .prologue
    .line 1470
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;)V

    .line 1466
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    .line 1472
    return-void
.end method

.method private calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .locals 32
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "timeMillis"    # J

    .prologue
    .line 1485
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v20

    .line 1486
    .local v20, "noon":Ljava/util/Calendar;
    move-object/from16 v0, v20

    move-wide/from16 v1, p2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1487
    const/16 v28, 0xb

    const/16 v29, 0xc

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1488
    const/16 v28, 0xc

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1489
    const/16 v28, 0xd

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1490
    const/16 v28, 0xe

    const/16 v29, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 1491
    const/4 v9, 0x0

    .line 1492
    .local v9, "isDefaultLocation":Z
    const/16 v17, 0x0

    .line 1493
    .local v17, "lon":I
    const/16 v16, 0x0

    .line 1494
    .local v16, "lat":I
    const-wide/16 v12, 0x0

    .line 1495
    .local v12, "dlon":D
    const-wide/16 v10, 0x0

    .line 1496
    .local v10, "dlat":D
    const/16 v28, 0x0

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1497
    .local v14, "isLastLocationUsed":Ljava/lang/Boolean;
    if-eqz p1, :cond_0

    .line 1498
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v12

    .line 1499
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v10

    .line 1500
    double-to-int v0, v12

    move/from16 v28, v0

    mul-int/lit8 v17, v28, 0x64

    .line 1501
    double-to-int v0, v10

    move/from16 v28, v0

    mul-int/lit8 v16, v28, 0x64

    .line 1502
    const/16 v28, 0x283c

    move/from16 v0, v17

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/16 v28, 0xbb8

    move/from16 v0, v16

    move/from16 v1, v28

    if-ne v0, v1, :cond_4

    const/4 v9, 0x1

    .line 1504
    :goto_0
    const-string/jumbo v28, "ColorBalanceService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isDefaultLocation:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    :cond_0
    if-eqz p1, :cond_1

    if-eqz v9, :cond_2

    .line 1507
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get3(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lon"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v17

    .line 1508
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get3(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lat"

    const/16 v30, 0x0

    const/16 v31, -0x2

    invoke-static/range {v28 .. v31}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v16

    .line 1509
    if-eqz v17, :cond_2

    if-eqz v16, :cond_2

    .line 1510
    const-string/jumbo v28, "ColorBalanceService"

    const-string/jumbo v29, "used SAVED"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1511
    move/from16 v0, v17

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    div-double v12, v28, v30

    .line 1512
    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v28, v0

    const-wide v30, 0x408f400000000000L    # 1000.0

    div-double v10, v28, v30

    .line 1513
    const/16 v28, 0x1

    invoke-static/range {v28 .. v28}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    .line 1521
    :cond_2
    if-eqz p1, :cond_3

    if-eqz v9, :cond_7

    :cond_3
    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_7

    .line 1522
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 1523
    .local v18, "moonMillis":J
    const-wide/32 v28, 0x1499700

    sub-long v22, v18, v28

    .line 1524
    .local v22, "sunriseTimeMillis":J
    const-wide/32 v28, 0x3dcc500

    add-long v24, v18, v28

    .line 1525
    .local v24, "sunriseTimeMillis2":J
    const-wide/32 v28, 0x1499700

    add-long v26, v18, v28

    .line 1526
    .local v26, "sunsetTimeMillis":J
    cmp-long v28, p2, v22

    if-gez v28, :cond_6

    .line 1527
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1532
    .local v21, "ts":Lcom/android/server/twilight/TwilightState;
    :goto_1
    const-string/jumbo v28, "ColorBalanceService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "isDefaultLocation:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string/jumbo v30, " Time-fixed:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1533
    return-object v21

    .line 1503
    .end local v18    # "moonMillis":J
    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    .end local v22    # "sunriseTimeMillis":J
    .end local v24    # "sunriseTimeMillis2":J
    .end local v26    # "sunsetTimeMillis":J
    :cond_4
    if-nez v17, :cond_5

    if-nez v16, :cond_5

    const/4 v9, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 1530
    .restart local v18    # "moonMillis":J
    .restart local v22    # "sunriseTimeMillis":J
    .restart local v24    # "sunriseTimeMillis2":J
    .restart local v26    # "sunsetTimeMillis":J
    :cond_6
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    goto :goto_1

    .line 1537
    .end local v18    # "moonMillis":J
    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    .end local v22    # "sunriseTimeMillis":J
    .end local v24    # "sunriseTimeMillis2":J
    .end local v26    # "sunsetTimeMillis":J
    :cond_7
    const/4 v15, 0x0

    .line 1538
    .local v15, "isTimeZoneError":Z
    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v12

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v17, v0

    .line 1539
    const-wide v28, 0x408f400000000000L    # 1000.0

    mul-double v28, v28, v10

    move-wide/from16 v0, v28

    double-to-int v0, v0

    move/from16 v16, v0

    .line 1540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get3(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lon"

    const/16 v30, -0x2

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v17

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    move-object/from16 v28, v0

    invoke-static/range {v28 .. v28}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get3(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v28

    const-string/jumbo v29, "twils-lat"

    const/16 v30, -0x2

    move-object/from16 v0, v28

    move-object/from16 v1, v29

    move/from16 v2, v16

    move/from16 v3, v30

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1542
    const-string/jumbo v28, "ColorBalanceService"

    const-string/jumbo v29, "Save loc!"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1543
    new-instance v6, Landroid/icu/impl/CalendarAstronomer;

    invoke-direct {v6, v12, v13, v10, v11}, Landroid/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 1544
    .local v6, "ca":Landroid/icu/impl/CalendarAstronomer;
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1545
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v22

    .line 1546
    .restart local v22    # "sunriseTimeMillis":J
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v26

    .line 1547
    .restart local v26    # "sunsetTimeMillis":J
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1548
    .local v7, "csunrise":Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v8

    .line 1549
    .local v8, "csunset":Ljava/util/Calendar;
    move-wide/from16 v0, v22

    invoke-virtual {v7, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1550
    move-wide/from16 v0, v26

    invoke-virtual {v8, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1555
    const/16 v28, 0x5

    move/from16 v0, v28

    invoke-virtual {v7, v0}, Ljava/util/Calendar;->get(I)I

    move-result v28

    const/16 v29, 0x5

    move/from16 v0, v29

    invoke-virtual {v8, v0}, Ljava/util/Calendar;->get(I)I

    move-result v29

    move/from16 v0, v28

    move/from16 v1, v29

    if-eq v0, v1, :cond_a

    .line 1556
    const/4 v15, 0x1

    .line 1557
    const-string/jumbo v28, "ColorBalanceService"

    const-string/jumbo v29, "Time zone error 0"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    :cond_8
    :goto_2
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1578
    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    const-string/jumbo v28, "ColorBalanceService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "ts:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    if-eqz v15, :cond_9

    .line 1580
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v18

    .line 1581
    .restart local v18    # "moonMillis":J
    const-wide/32 v28, 0x1499700

    sub-long v22, v18, v28

    .line 1582
    const-wide/32 v28, 0x3dcc500

    add-long v24, v18, v28

    .line 1583
    .restart local v24    # "sunriseTimeMillis2":J
    const-wide/32 v28, 0x1499700

    add-long v26, v18, v28

    .line 1584
    cmp-long v28, p2, v22

    if-gez v28, :cond_c

    .line 1585
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, v21

    move-wide/from16 v1, v22

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .line 1590
    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    :goto_3
    const-string/jumbo v28, "ColorBalanceService"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v30, "Time zone maybe error,Time-fixed:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    .end local v18    # "moonMillis":J
    .end local v24    # "sunriseTimeMillis2":J
    :cond_9
    return-object v21

    .line 1559
    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    :cond_a
    cmp-long v28, v26, p2

    if-gez v28, :cond_b

    .line 1560
    const/16 v28, 0x5

    const/16 v29, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1561
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1562
    const/16 v28, 0x1

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v22

    .line 1563
    cmp-long v28, v22, p2

    if-gez v28, :cond_8

    .line 1564
    const/4 v15, 0x1

    .line 1565
    const-string/jumbo v28, "ColorBalanceService"

    const-string/jumbo v29, "Time zone error 1"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1567
    :cond_b
    cmp-long v28, v22, p2

    if-lez v28, :cond_8

    .line 1568
    const/16 v28, 0x5

    const/16 v29, -0x1

    move-object/from16 v0, v20

    move/from16 v1, v28

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->add(II)V

    .line 1569
    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v28

    move-wide/from16 v0, v28

    invoke-virtual {v6, v0, v1}, Landroid/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 1570
    const/16 v28, 0x0

    move/from16 v0, v28

    invoke-virtual {v6, v0}, Landroid/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v26

    .line 1571
    cmp-long v28, v26, p2

    if-lez v28, :cond_8

    .line 1572
    const/4 v15, 0x1

    .line 1573
    const-string/jumbo v28, "ColorBalanceService"

    const-string/jumbo v29, "Time zone error 2"

    invoke-static/range {v28 .. v29}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1588
    .restart local v18    # "moonMillis":J
    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    .restart local v24    # "sunriseTimeMillis2":J
    :cond_c
    new-instance v21, Lcom/android/server/twilight/TwilightState;

    .end local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    .restart local v21    # "ts":Lcom/android/server/twilight/TwilightState;
    goto/16 :goto_3
.end method

.method private updateActivated()V
    .locals 9

    .prologue
    .line 1634
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get14(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6

    .line 1635
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1636
    .local v0, "currentTimeMillis":J
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    invoke-direct {p0, v5, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v4

    .line 1637
    .local v4, "state":Lcom/android/server/twilight/TwilightState;
    if-eqz v4, :cond_6

    invoke-virtual {v4}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    .line 1639
    :goto_0
    const/4 v3, 0x1

    .line 1640
    .local v3, "setActivated":Z
    if-eqz v4, :cond_0

    .line 1641
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "updateActivated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " isNight:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " setActivated:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    :cond_0
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 1666
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get9(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1667
    :cond_1
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TwilightAutoMode Reading mode is on,dont turn "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_7

    const-string/jumbo v5, "on"

    :goto_1
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " night mode automatically for time up."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    if-eqz v2, :cond_8

    .line 1669
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set11(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1677
    :cond_2
    :goto_2
    if-eqz v3, :cond_5

    .line 1678
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get9(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isReadingModeActivated()Z

    move-result v5

    if-eqz v5, :cond_a

    .line 1679
    :cond_3
    const-string/jumbo v7, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TwilightAutoMode Reading mode is on,dont turn "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v2, :cond_9

    const-string/jumbo v5, "on"

    :goto_3
    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v8, " night mode automatically for time up!"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    :cond_4
    :goto_4
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set4(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1724
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set6(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_5
    monitor-exit v6

    .line 1728
    return-void

    .line 1637
    .end local v3    # "setActivated":Z
    :cond_6
    const/4 v2, 0x0

    .local v2, "isNight":Z
    goto/16 :goto_0

    .line 1667
    .end local v2    # "isNight":Z
    .restart local v3    # "setActivated":Z
    :cond_7
    :try_start_1
    const-string/jumbo v5, "off"

    goto :goto_1

    .line 1671
    :cond_8
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, -0x1

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set11(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1672
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get16(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v7

    and-int/lit8 v7, v7, -0x2

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set10(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1673
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set12(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1674
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-static {v5, v7, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->-wrap19(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1634
    .end local v0    # "currentTimeMillis":J
    .end local v3    # "setActivated":Z
    .end local v4    # "state":Lcom/android/server/twilight/TwilightState;
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 1679
    .restart local v0    # "currentTimeMillis":J
    .restart local v3    # "setActivated":Z
    .restart local v4    # "state":Lcom/android/server/twilight/TwilightState;
    :cond_9
    :try_start_2
    const-string/jumbo v5, "off"

    goto :goto_3

    .line 1681
    :cond_a
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set11(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 1682
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1689
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    if-nez v5, :cond_e

    .line 1690
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/app/NightDisplayController;->isActivated()Z

    move-result v5

    if-eq v5, v2, :cond_c

    .line 1691
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Twilight JUST BOOT 1:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1692
    if-nez v2, :cond_b

    .line 1693
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set2(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1694
    :cond_b
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    goto/16 :goto_4

    .line 1696
    :cond_c
    if-eqz v2, :cond_d

    .line 1697
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1698
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1699
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Twilight JUST BOOT 2:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1701
    :cond_d
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v7, 0xc

    invoke-virtual {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    .line 1702
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set2(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1703
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Twilight JUST BOOT 3:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1707
    :cond_e
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get25(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 1708
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->-set17(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 1709
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 1710
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    xor-int/lit8 v7, v2, 0x1

    invoke-virtual {v5, v7}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1711
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1713
    :cond_f
    const-string/jumbo v5, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Twilight SwitchUse  JUST BOOT 4:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1715
    :cond_10
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 1716
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_4
.end method

.method private updateTwilightState(Ljava/lang/Boolean;)V
    .locals 20
    .param p1, "isCallByOnLocationChange"    # Ljava/lang/Boolean;

    .prologue
    .line 1731
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 1732
    .local v10, "currentTimeMillis":J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1733
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v3, "network"

    invoke-virtual {v2, v3}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    .line 1735
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v10, v11}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v14

    .line 1736
    .local v14, "state":Lcom/android/server/twilight/TwilightState;
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateTwilightState: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, "isNight:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v6, " PreIsNight:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1738
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    if-eqz v2, :cond_1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v14}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v3

    if-eq v2, v3, :cond_2

    .line 1739
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateActivated()V

    .line 1741
    :cond_2
    invoke-virtual {v14}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mPreIsNightStatus:Ljava/lang/Boolean;

    .line 1742
    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 1743
    if-eqz v14, :cond_3

    .line 1744
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 1745
    .local v9, "now":Ljava/util/Calendar;
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1746
    .local v12, "nowMillis":J
    invoke-virtual {v14}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v16

    .line 1747
    .local v16, "sunriseMillis":J
    invoke-virtual {v14}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v18

    .line 1749
    .local v18, "sunsetMillis":J
    cmp-long v2, v16, v18

    if-gez v2, :cond_5

    .line 1750
    cmp-long v2, v12, v16

    if-gez v2, :cond_4

    .line 1752
    move-wide/from16 v4, v16

    .line 1753
    .local v4, "triggerAtMillis":J
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "1 trigger time sunrise:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1771
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1772
    cmp-long v2, v4, v12

    if-gez v2, :cond_7

    .line 1773
    const-string/jumbo v2, "ColorBalanceService"

    const-string/jumbo v3, "time zone maybe error,triggerAtMillis < nowMillis!"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    .end local v4    # "triggerAtMillis":J
    .end local v9    # "now":Ljava/util/Calendar;
    .end local v12    # "nowMillis":J
    .end local v16    # "sunriseMillis":J
    .end local v18    # "sunsetMillis":J
    :cond_3
    :goto_1
    return-void

    .line 1756
    .restart local v9    # "now":Ljava/util/Calendar;
    .restart local v12    # "nowMillis":J
    .restart local v16    # "sunriseMillis":J
    .restart local v18    # "sunsetMillis":J
    :cond_4
    move-wide/from16 v4, v18

    .line 1757
    .restart local v4    # "triggerAtMillis":J
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "2 trigger time sunset:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1760
    .end local v4    # "triggerAtMillis":J
    :cond_5
    cmp-long v2, v12, v18

    if-gez v2, :cond_6

    .line 1762
    move-wide/from16 v4, v18

    .line 1763
    .restart local v4    # "triggerAtMillis":J
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "3 trigger time sunset:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1766
    .end local v4    # "triggerAtMillis":J
    :cond_6
    move-wide/from16 v4, v16

    .line 1767
    .restart local v4    # "triggerAtMillis":J
    const-string/jumbo v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "4 trigger time sunrise:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1775
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    const-string/jumbo v6, "ColorBalanceService"

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get7(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;

    move-result-object v8

    const/4 v3, 0x1

    move-object/from16 v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    goto :goto_1
.end method


# virtual methods
.method public onActivated(Z)V
    .locals 1
    .param p1, "activated"    # Z

    .prologue
    .line 1819
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1820
    return-void
.end method

.method public onAlarm()V
    .locals 2

    .prologue
    .line 1597
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1600
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 11
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const-wide/32 v2, 0x36ee80

    const/4 v10, 0x1

    const v4, 0x47c35000    # 100000.0f

    const/4 v9, 0x0

    .line 1604
    if-eqz p1, :cond_1

    .line 1605
    const/4 v6, 0x0

    .line 1606
    .local v6, "isDefaultLocation":Z
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v8, v0, 0x64

    .line 1607
    .local v8, "lon":I
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit8 v7, v0, 0x64

    .line 1609
    .local v7, "lat":I
    const/16 v0, 0x283c

    if-ne v8, v0, :cond_2

    const/16 v0, 0xbb8

    if-ne v7, v0, :cond_2

    const/4 v6, 0x1

    .line 1611
    :goto_0
    if-eqz v6, :cond_4

    .line 1612
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "#1 startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1613
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1614
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1615
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    .line 1624
    :cond_0
    :goto_1
    const-string/jumbo v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLocationChanged: provider="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1625
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v2

    .line 1624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1626
    const-string/jumbo v2, " accuracy="

    .line 1624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1626
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    .line 1624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1627
    const-string/jumbo v2, " time="

    .line 1624
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1627
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    .line 1624
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastLocation:Landroid/location/Location;

    .line 1629
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1631
    .end local v6    # "isDefaultLocation":Z
    .end local v7    # "lat":I
    .end local v8    # "lon":I
    :cond_1
    return-void

    .line 1610
    .restart local v6    # "isDefaultLocation":Z
    .restart local v7    # "lat":I
    .restart local v8    # "lon":I
    :cond_2
    if-nez v8, :cond_3

    if-nez v7, :cond_3

    const/4 v6, 0x1

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_0

    .line 1617
    :cond_4
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1618
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "#2 startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1619
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1620
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1621
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mIsGetLocation:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1483
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 1479
    return-void
.end method

.method public onStart()V
    .locals 7

    .prologue
    .line 1783
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get3(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    .line 1784
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get3(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    .line 1785
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 1786
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    .line 1787
    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 1795
    new-instance v6, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.TIME_SET"

    invoke-direct {v6, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1796
    .local v6, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1799
    .end local v6    # "intentFilter":Landroid/content/IntentFilter;
    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateTwilightState(Ljava/lang/Boolean;)V

    .line 1800
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->updateActivated()V

    .line 1801
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "status"    # I
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1475
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1806
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 1807
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 1808
    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mLastActivatedTime:Ljava/util/Calendar;

    .line 1809
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1810
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get8(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1811
    const-string/jumbo v0, "ColorBalanceService"

    const-string/jumbo v1, "TwilightAutoMode stop,disable night display mode!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1812
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1813
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->-get4(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/NightDisplayController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/NightDisplayController;->setActivated(Z)Z

    .line 1815
    :cond_0
    return-void
.end method
