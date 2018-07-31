.class Lcom/android/systemui/doze/DozeSensors$ProxSensor;
.super Ljava/lang/Object;
.source "DozeSensors.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/doze/DozeSensors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxSensor"
.end annotation


# instance fields
.field final mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

.field mCurrentlyFar:Ljava/lang/Boolean;

.field mLastNear:J

.field final mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

.field mRegistered:Z

.field mRequested:Z

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeSensors;
    .param p2, "policy"    # Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    .line 219
    new-instance v0, Lcom/android/systemui/util/AlarmTimeout;

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->-get1(Lcom/android/systemui/doze/DozeSensors;)Landroid/app/AlarmManager;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/doze/-$Lambda$2qmRVMGExkbYQ_v29x6Ef1pccz8;

    const/4 v3, 0x1

    invoke-direct {v2, v3, p0}, Lcom/android/systemui/doze/-$Lambda$2qmRVMGExkbYQ_v29x6Ef1pccz8;-><init>(BLjava/lang/Object;)V

    .line 220
    const-string/jumbo v3, "prox_cooldown"

    invoke-static {p1}, Lcom/android/systemui/doze/DozeSensors;->-get5(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v4

    .line 219
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/util/AlarmTimeout;-><init>(Landroid/app/AlarmManager;Landroid/app/AlarmManager$OnAlarmListener;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    .line 221
    return-void
.end method

.method private setRegistered(Z)V
    .locals 4
    .param p1, "register"    # Z

    .prologue
    .line 242
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    if-ne v0, p1, :cond_0

    .line 243
    return-void

    .line 245
    :cond_0
    if-eqz p1, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get8(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    .line 247
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get8(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    .line 248
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get5(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x3

    .line 246
    invoke-virtual {v0, p0, v1, v3, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 254
    :goto_0
    return-void

    .line 250
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get8(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 251
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    .line 252
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private updateRegistered()V
    .locals 1

    .prologue
    .line 238
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v0}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->setRegistered(Z)V

    .line 239
    return-void

    .line 238
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic -com_android_systemui_doze_DozeSensors$ProxSensor-mthref-0()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_doze_DozeSensors$ProxSensor_8113()V
    .locals 2

    .prologue
    .line 227
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get6(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 278
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 258
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v4, v4, v2

    iget-object v5, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v5}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v5

    cmpl-float v4, v4, v5

    if-ltz v4, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    .line 259
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v2}, Lcom/android/systemui/doze/DozeSensors;->-get6(Lcom/android/systemui/doze/DozeSensors;)Ljava/util/function/Consumer;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-interface {v2, v4}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 262
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    if-nez v2, :cond_2

    .line 274
    :cond_1
    :goto_0
    return-void

    .line 264
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_3

    .line 265
    iput-wide v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mLastNear:J

    goto :goto_0

    .line 266
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v4, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mLastNear:J

    sub-long v4, v0, v4

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v6, v2, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownTriggerMs:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mPolicy:Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    iget-wide v4, v4, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->proxCooldownPeriodMs:J

    invoke-virtual {v2, v4, v5, v3}, Lcom/android/systemui/util/AlarmTimeout;->schedule(JI)V

    .line 272
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    goto :goto_0
.end method

.method setRequested(Z)V
    .locals 3
    .param p1, "requested"    # Z

    .prologue
    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    if-ne v0, p1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v0}, Lcom/android/systemui/doze/DozeSensors;->-get5(Lcom/android/systemui/doze/DozeSensors;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/doze/-$Lambda$EDkgq9hVYnTMaUlsvmU4HsSWaRQ;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/doze/-$Lambda$EDkgq9hVYnTMaUlsvmU4HsSWaRQ;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 231
    return-void

    .line 233
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->updateRegistered()V

    .line 235
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 282
    const-string/jumbo v0, "{registered=%s, requested=%s, coolingDown=%s, currentlyFar=%s}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 283
    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRegistered:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-boolean v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mRequested:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCooldownTimer:Lcom/android/systemui/util/AlarmTimeout;

    invoke-virtual {v2}, Lcom/android/systemui/util/AlarmTimeout;->isScheduled()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$ProxSensor;->mCurrentlyFar:Ljava/lang/Boolean;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 282
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
