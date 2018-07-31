.class Lcom/android/server/location/GnssLocationProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/location/GnssLocationProvider;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    .line 507
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 509
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 510
    .local v0, "action":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/location/GnssLocationProvider;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive broadcast intent, action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    :cond_0
    if-nez v0, :cond_1

    .line 512
    return-void

    .line 515
    :cond_1
    const-string/jumbo v1, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 516
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, v4}, Lcom/android/server/location/GnssLocationProvider;->-wrap41(Lcom/android/server/location/GnssLocationProvider;Z)V

    .line 535
    :cond_2
    :goto_0
    return-void

    .line 517
    :cond_3
    const-string/jumbo v1, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 518
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap32(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_0

    .line 519
    :cond_4
    const-string/jumbo v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 520
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 519
    if-nez v1, :cond_5

    .line 521
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 519
    if-nez v1, :cond_5

    .line 522
    const-string/jumbo v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 519
    if-eqz v1, :cond_7

    .line 525
    :cond_5
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iput-boolean v4, v1, Lcom/android/server/location/GnssLocationProvider;->mStopGps:Z

    .line 526
    const-string/jumbo v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 527
    iget-object v2, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const-string/jumbo v1, "stopGps"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, v2, Lcom/android/server/location/GnssLocationProvider;->mStopGps:Z

    .line 528
    const-string/jumbo v1, "GnssLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mStopGps =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    iget-boolean v3, v3, Lcom/android/server/location/GnssLocationProvider;->mStopGps:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    :cond_6
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/GnssLocationProvider;->-wrap43(Lcom/android/server/location/GnssLocationProvider;)V

    goto :goto_0

    .line 532
    :cond_7
    const-string/jumbo v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 533
    iget-object v1, p0, Lcom/android/server/location/GnssLocationProvider$4;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v1, p1}, Lcom/android/server/location/GnssLocationProvider;->-wrap42(Lcom/android/server/location/GnssLocationProvider;Landroid/content/Context;)V

    goto/16 :goto_0
.end method
