.class abstract Lcom/oneplus/doze/DozeService$ProximityCheck;
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
    accessFlags = 0x402
    name = "ProximityCheck"
.end annotation


# static fields
.field protected static final RESULT_FAR:I = 0x2

.field protected static final RESULT_NEAR:I = 0x1

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mFinished:Z

.field private mMaxRange:F

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method private constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;

    .prologue
    .line 794
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".ProximityCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    .line 794
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$ProximityCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;
    .param p2, "-this1"    # Lcom/oneplus/doze/DozeService$ProximityCheck;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService$ProximityCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 2
    .param p1, "result"    # I

    .prologue
    const/4 v1, 0x0

    .line 846
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 847
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 848
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 849
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 852
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get5(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/oneplus/doze/DozeService$MotionCheck;->setProximityChecking(Z)V

    .line 853
    iput-boolean v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    .line 855
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/doze/DozeService$ProximityCheck;->onProximityResult(I)V

    .line 856
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mFinished:Z

    .line 857
    return-void
.end method


# virtual methods
.method public check()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v4, 0x0

    .line 810
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 811
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 812
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_2

    .line 813
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    invoke-direct {p0, v4}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 815
    return-void

    .line 819
    :cond_2
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get5(Lcom/oneplus/doze/DozeService;)Lcom/oneplus/doze/DozeService$MotionCheck;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/oneplus/doze/DozeService$MotionCheck;->setProximityChecking(Z)V

    .line 820
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v0

    iput v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mMaxRange:F

    .line 821
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 822
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v5

    .line 821
    const/4 v3, 0x3

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 823
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 824
    iput-boolean v6, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mRegistered:Z

    .line 825
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 862
    return-void
.end method

.method public abstract onProximityResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 829
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-nez v1, :cond_0

    .line 830
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    invoke-direct {p0, v4}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 837
    :goto_0
    return-void

    .line 833
    :cond_0
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

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

    iget v3, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mMaxRange:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    iget v2, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mMaxRange:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 835
    .local v0, "isNear":Z
    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    goto :goto_0

    .line 834
    .end local v0    # "isNear":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNear":Z
    goto :goto_1

    .line 835
    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public run()V
    .locals 2

    .prologue
    .line 841
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$ProximityCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 842
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService$ProximityCheck;->finishWithResult(I)V

    .line 843
    return-void
.end method
