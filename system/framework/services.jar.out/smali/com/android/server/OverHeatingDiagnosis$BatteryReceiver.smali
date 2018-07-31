.class Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;

    .prologue
    .line 902
    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OverHeatingDiagnosis;
    .param p2, "-this1"    # Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v12, 0x64

    const/4 v11, 0x1

    const/4 v10, -0x1

    const/4 v9, 0x0

    .line 906
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 907
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 908
    return-void

    .line 911
    :cond_0
    const-string/jumbo v7, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 912
    const/4 v1, 0x0

    .line 914
    .local v1, "chargePlug":I
    const-string/jumbo v7, "level"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 913
    mul-int/lit8 v7, v7, 0x64

    .line 915
    const-string/jumbo v8, "scale"

    invoke-virtual {p2, v8, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 913
    div-int v4, v7, v8

    .line 917
    .local v4, "level":I
    const-string/jumbo v7, "status"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 918
    .local v6, "status":I
    const-string/jumbo v7, "fastcharge_status"

    invoke-virtual {p2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 919
    .local v2, "fastCharge":Z
    if-eqz v2, :cond_3

    .line 920
    const/16 v1, 0x8

    .line 924
    :goto_0
    const/4 v7, 0x2

    if-eq v6, v7, :cond_4

    .line 925
    const/4 v7, 0x5

    if-ne v6, v7, :cond_5

    const/4 v3, 0x1

    .line 928
    .local v3, "isCharging":Z
    :goto_1
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v7}, Lcom/android/server/OverHeatingDiagnosis;->-get12(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v7

    if-ne v7, v11, :cond_1

    .line 929
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v7}, Lcom/android/server/OverHeatingDiagnosis;->-get11(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v7

    and-int/lit8 v7, v7, 0xf

    if-eqz v7, :cond_6

    .line 930
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v7}, Lcom/android/server/OverHeatingDiagnosis;->-get3(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->start()V

    .line 936
    :cond_1
    :goto_2
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v7}, Lcom/android/server/OverHeatingDiagnosis;->-get16(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v7

    if-eq v4, v7, :cond_2

    .line 937
    const-string/jumbo v7, "OverHeatingDiagnosis"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " level="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 938
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v7, v4}, Lcom/android/server/OverHeatingDiagnosis;->-set12(Lcom/android/server/OverHeatingDiagnosis;I)I

    .line 941
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v7}, Lcom/android/server/OverHeatingDiagnosis;->-get15(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    move-result-object v7

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    invoke-virtual {v7, v11, v4, v1, v8}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 942
    .local v5, "msg":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    .line 945
    .end local v1    # "chargePlug":I
    .end local v2    # "fastCharge":Z
    .end local v3    # "isCharging":Z
    .end local v4    # "level":I
    .end local v5    # "msg":Landroid/os/Message;
    .end local v6    # "status":I
    :cond_2
    return-void

    .line 922
    .restart local v1    # "chargePlug":I
    .restart local v2    # "fastCharge":Z
    .restart local v4    # "level":I
    .restart local v6    # "status":I
    :cond_3
    const-string/jumbo v7, "plugged"

    invoke-virtual {p2, v7, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0

    .line 924
    :cond_4
    const/4 v3, 0x1

    .restart local v3    # "isCharging":Z
    goto :goto_1

    .line 925
    .end local v3    # "isCharging":Z
    :cond_5
    const/4 v3, 0x0

    .restart local v3    # "isCharging":Z
    goto :goto_1

    .line 932
    :cond_6
    iget-object v7, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v7}, Lcom/android/server/OverHeatingDiagnosis;->-get3(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->stop()V

    goto :goto_2
.end method
