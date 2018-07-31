.class Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;
.super Ljava/lang/Object;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryRecord"
.end annotation


# instance fields
.field private mChargePlug:I

.field private mCharging:Z

.field private mLevel:I

.field private mTemp:I

.field private mTimeElapsed:J

.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;II)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "level"    # I
    .param p3, "temp"    # I

    .prologue
    .line 1417
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1418
    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mLevel:I

    .line 1419
    iput p3, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    .line 1421
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    .line 1422
    return-void
.end method

.method constructor <init>(Lcom/android/server/OverHeatingDiagnosis;IIZI)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "level"    # I
    .param p3, "temp"    # I
    .param p4, "charging"    # Z
    .param p5, "chargePlug"    # I

    .prologue
    .line 1424
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1425
    iput p2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mLevel:I

    .line 1426
    iput p3, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    .line 1427
    iput p5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mChargePlug:I

    .line 1428
    iput-boolean p4, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mCharging:Z

    .line 1430
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    .line 1431
    return-void
.end method


# virtual methods
.method convertPlugToString(I)Ljava/lang/String;
    .locals 1
    .param p1, "chargePlug"    # I

    .prologue
    .line 1451
    packed-switch p1, :pswitch_data_0

    .line 1461
    :pswitch_0
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1453
    :pswitch_1
    const-string/jumbo v0, "AC"

    return-object v0

    .line 1455
    :pswitch_2
    const-string/jumbo v0, "USB"

    return-object v0

    .line 1457
    :pswitch_3
    const-string/jumbo v0, "WIRELESS"

    return-object v0

    .line 1459
    :pswitch_4
    const-string/jumbo v0, "FAST_CHARGE"

    return-object v0

    .line 1451
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method convertToRTC(J)J
    .locals 7
    .param p1, "elapsed"    # J

    .prologue
    .line 1446
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 1447
    .local v0, "bootTime":J
    add-long v2, v0, p1

    return-wide v2
.end method

.method getChargeType()I
    .locals 1

    .prologue
    .line 1438
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mChargePlug:I

    return v0
.end method

.method getTemp()I
    .locals 1

    .prologue
    .line 1434
    iget v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    return v0
.end method

.method getTime()J
    .locals 2

    .prologue
    .line 1442
    iget-wide v0, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1467
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTimeElapsed:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 1468
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BatteryRecord {time="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/server/OverHeatingDiagnosis;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1469
    const-string/jumbo v2, ", level="

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1469
    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mLevel:I

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1469
    const-string/jumbo v2, ", temp="

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1469
    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mTemp:I

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1470
    const-string/jumbo v2, " ,charging="

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1470
    iget-boolean v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mCharging:Z

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1471
    const-string/jumbo v2, ", plug="

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1471
    iget v2, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->mChargePlug:I

    invoke-virtual {p0, v2}, Lcom/android/server/OverHeatingDiagnosis$BatteryRecord;->convertPlugToString(I)Ljava/lang/String;

    move-result-object v2

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1471
    const-string/jumbo v2, "}"

    .line 1468
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
