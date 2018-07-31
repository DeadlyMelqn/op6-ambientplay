.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerConsumptionDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;->registerBatteryReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionDetector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    .line 165
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 167
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 168
    .local v0, "trackTimeStart":J
    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$1;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionDetector;

    invoke-static {v2, p2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->-wrap4(Lcom/android/server/am/OnePlusPowerConsumptionDetector;Landroid/content/Intent;)V

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "# total elapsed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    .line 169
    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 170
    const-string/jumbo v3, " ms"

    .line 169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    .line 171
    return-void
.end method
