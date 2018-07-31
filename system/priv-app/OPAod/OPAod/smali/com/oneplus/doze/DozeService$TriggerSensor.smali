.class Lcom/oneplus/doze/DozeService$TriggerSensor;
.super Landroid/hardware/TriggerEventListener;
.source "DozeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TriggerSensor"
.end annotation


# instance fields
.field final mConfigured:Z

.field final mDebugVibrate:Z

.field private mDisabled:Z

.field final mPulseReason:I

.field private mRegistered:Z

.field private mRequested:Z

.field final mSensor:Landroid/hardware/Sensor;

.field final mSetting:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method public constructor <init>(Lcom/oneplus/doze/DozeService;Landroid/hardware/Sensor;Ljava/lang/String;ZZI)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "configured"    # Z
    .param p5, "debugVibrate"    # Z
    .param p6, "pulseReason"    # I

    .prologue
    .line 583
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    .line 585
    iput-object p2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 586
    iput-object p3, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 587
    iput-boolean p4, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mConfigured:Z

    .line 588
    iput-boolean p5, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    .line 589
    iput p6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mPulseReason:I

    .line 590
    return-void
.end method

.method private enabledBySetting()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 617
    iget-object v2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 618
    return v0

    .line 620
    :cond_0
    iget-object v2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSetting:Ljava/lang/String;

    .line 621
    const/4 v4, -0x2

    .line 620
    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eqz v2, :cond_1

    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 11
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    const/16 v10, 0x19

    .line 636
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get13(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 638
    :try_start_0
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onTrigger: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {p1}, Lcom/oneplus/doze/DozeService;->-wrap0(Landroid/hardware/TriggerEvent;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    const/4 v0, 0x0

    .line 640
    .local v0, "sensorPerformsProxCheck":Z
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-ne v6, v10, :cond_0

    .line 641
    iget-object v6, p1, Landroid/hardware/TriggerEvent;->values:[F

    const/4 v7, 0x0

    aget v6, v6, v7

    float-to-int v1, v6

    .line 642
    .local v1, "subType":I
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v6

    const/16 v7, 0x19b

    invoke-static {v6, v7, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 643
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get2(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeParameters;

    move-result-object v6

    invoke-virtual {v6, v1}, Lcom/oneplus/doze/DozeParameters;->getPickupSubtypePerformsProxCheck(I)Z

    move-result v0

    .line 646
    .end local v0    # "sensorPerformsProxCheck":Z
    .end local v1    # "subType":I
    :cond_0
    iget-boolean v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    if-eqz v6, :cond_1

    .line 647
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v6

    .line 648
    const-string/jumbo v7, "vibrator"

    .line 647
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Vibrator;

    .line 649
    .local v4, "v":Landroid/os/Vibrator;
    if-eqz v4, :cond_1

    .line 650
    const-wide/16 v6, 0x3e8

    new-instance v8, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v8}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 651
    const/4 v9, 0x4

    .line 650
    invoke-virtual {v8, v9}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    .line 652
    const/16 v9, 0xd

    .line 650
    invoke-virtual {v8, v9}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    .line 656
    .end local v4    # "v":Landroid/os/Vibrator;
    :cond_1
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 657
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    iget v7, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mPulseReason:I

    invoke-static {v6, v7, v0}, Lcom/oneplus/doze/DozeService;->-wrap6(Lcom/oneplus/doze/DozeService;IZ)V

    .line 659
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->updateListener()V

    .line 663
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 664
    iget-object v8, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v8}, Lcom/oneplus/doze/DozeService;->-get6(Lcom/oneplus/doze/DozeService;)J

    move-result-wide v8

    .line 663
    sub-long v2, v6, v8

    .line 666
    .local v2, "timeSinceNotification":J
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get2(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeParameters;

    move-result-object v6

    invoke-virtual {v6}, Lcom/oneplus/doze/DozeParameters;->getPickupVibrationThreshold()I

    move-result v6

    int-to-long v6, v6

    cmp-long v6, v2, v6

    if-gez v6, :cond_3

    const/4 v5, 0x1

    .line 667
    .local v5, "withinVibrationThreshold":Z
    :goto_0
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    if-ne v6, v10, :cond_2

    .line 668
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/oneplus/doze/DozeLog;->tracePickupPulse(Landroid/content/Context;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 671
    :cond_2
    iget-object v6, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v6}, Lcom/oneplus/doze/DozeService;->-get13(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 673
    return-void

    .line 666
    .end local v5    # "withinVibrationThreshold":Z
    :cond_3
    const/4 v5, 0x0

    .restart local v5    # "withinVibrationThreshold":Z
    goto :goto_0

    .line 670
    .end local v2    # "timeSinceNotification":J
    .end local v5    # "withinVibrationThreshold":Z
    :catchall_0
    move-exception v6

    .line 671
    iget-object v7, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v7}, Lcom/oneplus/doze/DozeService;->-get13(Lcom/oneplus/doze/DozeService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    invoke-virtual {v7}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 670
    throw v6
.end method

.method public setDisabled(Z)V
    .locals 1
    .param p1, "disabled"    # Z

    .prologue
    .line 599
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 600
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    .line 601
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->updateListener()V

    .line 602
    return-void
.end method

.method public setListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .prologue
    .line 593
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 594
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    .line 595
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->updateListener()V

    .line 596
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{mRegistered="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    const-string/jumbo v1, ", mRequested="

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 627
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 628
    const-string/jumbo v1, ", mDisabled="

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 628
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 629
    const-string/jumbo v1, ", mConfigured="

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 629
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mConfigured:Z

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 630
    const-string/jumbo v1, ", mDebugVibrate="

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 630
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDebugVibrate:Z

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 631
    const-string/jumbo v1, ", mSensor="

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 631
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 631
    const-string/jumbo v1, "}"

    .line 626
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateListener()V
    .locals 4

    .prologue
    .line 605
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mConfigured:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 606
    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRequested:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mDisabled:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/doze/DozeService$TriggerSensor;->enabledBySetting()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 607
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    .line 608
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    :cond_2
    :goto_0
    return-void

    .line 609
    :cond_3
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v2}, Landroid/hardware/SensorManager;->cancelTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v0

    .line 611
    .local v0, "rt":Z
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cancelTriggerSensor "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$TriggerSensor;->mRegistered:Z

    goto :goto_0
.end method
