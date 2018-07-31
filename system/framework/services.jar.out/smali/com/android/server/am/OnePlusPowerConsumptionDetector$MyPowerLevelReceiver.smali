.class public Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyPowerLevelReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, -0x1

    .line 249
    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 250
    const-string/jumbo v1, "level"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 251
    .local v0, "currentlevel":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "MyPowerLevelReceiver currentlevel:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    const-string/jumbo v2, " |sDisconnectedBatLevel:"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 252
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get12()I

    move-result v2

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    const-string/jumbo v2, " |LOW_POWER_THRESHOLD:"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 253
    sget v2, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LOW_POWER_THRESHOLD:I

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    const-string/jumbo v2, " |mLowBatteryWarningLevel:"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 254
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get5(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v2

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    const-string/jumbo v2, " |mLowBatteryCloseWarningLevel:"

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 255
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get4(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v2

    .line 251
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 257
    if-eq v0, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get4(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v1

    if-le v0, v1, :cond_0

    .line 258
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get2()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "B"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap6(Landroid/content/Context;Ljava/lang/String;)V

    .line 259
    return-void

    .line 264
    :cond_0
    if-lez v0, :cond_1

    sget v1, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->LOW_POWER_THRESHOLD:I

    if-gt v0, v1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get12()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$MyPowerLevelReceiver;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get5(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)I

    move-result v2

    if-le v1, v2, :cond_1

    .line 265
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get2()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "C"

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap6(Landroid/content/Context;Ljava/lang/String;)V

    .line 266
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get13()J

    move-result-wide v2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get11()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    .line 267
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-get1()Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$ChargingRecord;->updateRecord(I)V

    .line 271
    .end local v0    # "currentlevel":I
    :cond_1
    return-void
.end method
