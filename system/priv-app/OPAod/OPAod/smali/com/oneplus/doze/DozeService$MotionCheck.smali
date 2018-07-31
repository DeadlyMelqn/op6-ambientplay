.class Lcom/oneplus/doze/DozeService$MotionCheck;
.super Ljava/lang/Object;
.source "DozeService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/doze/DozeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotionCheck"
.end annotation


# static fields
.field protected static final RESULT_PICK_UP:I = 0x1

.field protected static final RESULT_STATIC:I = 0x2

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mCurrentState:I

.field private mFinished:Z

.field private mMaxRange:F

.field private mProximityChecking:Z

.field private mRegistered:Z

.field private mSensorType:I

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method public constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;

    .prologue
    .line 698
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 685
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v2}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ".MotionCheck"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    .line 689
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mFinished:Z

    .line 700
    const v1, 0x1fa2652

    iput v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mSensorType:I

    .line 701
    const-string/jumbo v0, "TYPE_PICK_UP"

    .line 702
    .local v0, "sensor":Ljava/lang/String;
    const-string/jumbo v1, "DozeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "choose sensor: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    .line 754
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 758
    :cond_0
    invoke-static {}, Lcom/oneplus/aod/Utils;->isAlwaysOnEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 759
    iget v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mCurrentState:I

    if-eqz v0, :cond_2

    if-ne p1, v1, :cond_2

    .line 760
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get8(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 761
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getDisplayViewManager()Lcom/oneplus/aod/DisplayViewManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DisplayViewManager;->setState(I)V

    .line 762
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0, v2}, Lcom/oneplus/doze/DozeService;->-wrap7(Lcom/oneplus/doze/DozeService;I)V

    .line 770
    :cond_1
    :goto_0
    iput p1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mCurrentState:I

    .line 771
    return-void

    .line 764
    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get8(Lcom/oneplus/doze/DozeService;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get9(Lcom/oneplus/doze/DozeService;)I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 765
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->abortPulsingWithAnim()V

    goto :goto_0

    .line 767
    :cond_3
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get1(Lcom/oneplus/doze/DozeService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->isAlwaysOnFired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 768
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-wrap1(Lcom/oneplus/doze/DozeService;)V

    goto :goto_0
.end method

.method private release()V
    .locals 2

    .prologue
    .line 782
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    if-nez v0, :cond_0

    return-void

    .line 784
    :cond_0
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 785
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "Unregister P Sensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 787
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    .line 789
    :cond_1
    return-void
.end method


# virtual methods
.method public check()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 706
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 707
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mSensorType:I

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 708
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_2

    .line 709
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    invoke-direct {p0, v4}, Lcom/oneplus/doze/DozeService$MotionCheck;->finishWithResult(I)V

    .line 711
    return-void

    .line 713
    :cond_2
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "sensor registered"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mMaxRange:F

    .line 716
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 717
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v5

    .line 716
    const/4 v3, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 718
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 719
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mRegistered:Z

    .line 720
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 747
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 725
    iget-boolean v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mProximityChecking:Z

    if-eqz v1, :cond_0

    .line 726
    return-void

    .line 729
    :cond_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-nez v1, :cond_1

    .line 730
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 731
    invoke-direct {p0, v4}, Lcom/oneplus/doze/DozeService$MotionCheck;->finishWithResult(I)V

    .line 737
    :goto_0
    return-void

    .line 733
    :cond_1
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    const/4 v0, 0x1

    .line 735
    .local v0, "isPickup":Z
    :goto_1
    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$MotionCheck;->finishWithResult(I)V

    goto :goto_0

    .line 734
    .end local v0    # "isPickup":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isPickup":Z
    goto :goto_1

    .line 735
    :cond_3
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public run()V
    .locals 0

    .prologue
    .line 751
    return-void
.end method

.method public setListening(Z)V
    .locals 0
    .param p1, "listen"    # Z

    .prologue
    .line 774
    if-eqz p1, :cond_0

    .line 775
    invoke-virtual {p0}, Lcom/oneplus/doze/DozeService$MotionCheck;->check()V

    .line 779
    :goto_0
    return-void

    .line 777
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/doze/DozeService$MotionCheck;->release()V

    goto :goto_0
.end method

.method public setProximityChecking(Z)V
    .locals 1
    .param p1, "proximityChecking"    # Z

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mProximityChecking:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 741
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/doze/DozeService$MotionCheck;->mProximityChecking:Z

    .line 742
    return-void
.end method
