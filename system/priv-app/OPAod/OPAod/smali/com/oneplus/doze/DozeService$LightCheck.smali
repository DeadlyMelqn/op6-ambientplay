.class abstract Lcom/oneplus/doze/DozeService$LightCheck;
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
    name = "LightCheck"
.end annotation


# static fields
.field protected static final RESULT_DARK:I = 0x2

.field protected static final RESULT_LIGHT:I = 0x1

.field protected static final RESULT_UNKNOWN:I = 0x0

.field private static final TIMEOUT_DELAY_MS:I = 0x1f4


# instance fields
.field private mFinished:Z

.field private mRegistered:Z

.field private final mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/oneplus/doze/DozeService;


# direct methods
.method private constructor <init>(Lcom/oneplus/doze/DozeService;)V
    .locals 2
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 880
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get12(Lcom/oneplus/doze/DozeService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".LightCheck"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    .line 872
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/doze/DozeService;Lcom/oneplus/doze/DozeService$LightCheck;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/doze/DozeService;
    .param p2, "-this1"    # Lcom/oneplus/doze/DozeService$LightCheck;

    .prologue
    invoke-direct {p0, p1}, Lcom/oneplus/doze/DozeService$LightCheck;-><init>(Lcom/oneplus/doze/DozeService;)V

    return-void
.end method

.method private finishWithResult(I)V
    .locals 1
    .param p1, "result"    # I

    .prologue
    .line 929
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mFinished:Z

    if-eqz v0, :cond_0

    return-void

    .line 930
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    .line 931
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 932
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 933
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    .line 935
    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/doze/DozeService$LightCheck;->onLightResult(I)V

    .line 936
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mFinished:Z

    .line 937
    return-void
.end method


# virtual methods
.method public check()V
    .locals 7

    .prologue
    .line 888
    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mFinished:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    .line 891
    .local v2, "sensor":Landroid/hardware/Sensor;
    if-nez v2, :cond_2

    .line 892
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "No sensor found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    return-void

    .line 897
    :cond_2
    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v6

    .line 899
    .local v6, "value":F
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get11(Lcom/oneplus/doze/DozeService;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 900
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v1}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v5

    .line 899
    const/4 v3, 0x2

    const/4 v4, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;IILandroid/os/Handler;)Z

    .line 901
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->this$0:Lcom/oneplus/doze/DozeService;

    invoke-static {v0}, Lcom/oneplus/doze/DozeService;->-get4(Lcom/oneplus/doze/DozeService;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v4, 0x1f4

    invoke-virtual {v0, p0, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 902
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mRegistered:Z

    .line 903
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 920
    return-void
.end method

.method public abstract onLightResult(I)V
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    .line 907
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-nez v1, :cond_0

    .line 908
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v2, "Event has no values!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    invoke-direct {p0, v4}, Lcom/oneplus/doze/DozeService$LightCheck;->finishWithResult(I)V

    .line 915
    :goto_0
    return-void

    .line 911
    :cond_0
    iget-object v1, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Event: value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 912
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v1, v4

    const v2, 0x459c4000    # 5000.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    const/4 v0, 0x1

    .line 913
    .local v0, "showLightMode":Z
    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/oneplus/doze/DozeService$LightCheck;->finishWithResult(I)V

    goto :goto_0

    .line 912
    .end local v0    # "showLightMode":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "showLightMode":Z
    goto :goto_1

    .line 913
    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method

.method public run()V
    .locals 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/oneplus/doze/DozeService$LightCheck;->mTag:Ljava/lang/String;

    const-string/jumbo v1, "No event received before timeout"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/doze/DozeService$LightCheck;->finishWithResult(I)V

    .line 926
    return-void
.end method
