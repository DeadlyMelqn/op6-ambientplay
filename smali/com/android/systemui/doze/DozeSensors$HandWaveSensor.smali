.class Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;
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
    name = "HandWaveSensor"
.end annotation


# instance fields
.field mConfigured:Z

.field mListening:Z

.field mPocketTime:J

.field mRegistered:Z

.field mSawNear:Z

.field mSensor:Landroid/hardware/Sensor;

.field final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;Landroid/hardware/Sensor;Ljava/lang/String;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/systemui/doze/DozeSensors;
    .param p2, "sensor"    # Landroid/hardware/Sensor;
    .param p3, "setting"    # Ljava/lang/String;
    .param p4, "configured"    # Z

    .prologue
    .line 229
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mSawNear:Z

    .line 227
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mPocketTime:J

    .line 230
    iput-boolean p4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mConfigured:Z

    .line 231
    iput-object p2, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mSensor:Landroid/hardware/Sensor;

    .line 233
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mConfigured:Z

    if-eqz v0, :cond_0

    .line 234
    const-string/jumbo v0, "DozeSensors"

    const-string/jumbo v1, "Utilizing TYPE_PROXIMITY sensor for hand wave gesture"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    :cond_0
    return-void
.end method

.method private whenToPulse(J)Z
    .locals 9
    .param p1, "timestamp"    # J

    .prologue
    const-wide/32 v6, 0x3b9aca00

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 275
    iget-wide v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mPocketTime:J

    sub-long v0, p1, v4

    .line 277
    .local v0, "delta":J
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/doze/DozeUtils;->pulseOnHandWaveEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 278
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/doze/DozeUtils;->pocketLockEnabled(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 277
    if-eqz v4, :cond_0

    .line 279
    return v2

    .line 280
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/doze/DozeUtils;->pulseOnHandWaveEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 281
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/doze/DozeUtils;->pocketLockEnabled(Landroid/content/Context;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 280
    if-eqz v4, :cond_2

    .line 282
    cmp-long v4, v0, v6

    if-gez v4, :cond_1

    :goto_0
    return v2

    :cond_1
    move v2, v3

    goto :goto_0

    .line 283
    :cond_2
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/doze/DozeUtils;->pulseOnHandWaveEnabled(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 284
    iget-object v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v4}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/systemui/doze/DozeUtils;->pocketLockEnabled(Landroid/content/Context;)Z

    move-result v4

    .line 283
    if-eqz v4, :cond_4

    .line 285
    cmp-long v4, v0, v6

    if-ltz v4, :cond_3

    :goto_1
    return v2

    :cond_3
    move v2, v3

    goto :goto_1

    .line 287
    :cond_4
    return v3
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 259
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 263
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v1, v1, v2

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mSensor:Landroid/hardware/Sensor;

    invoke-virtual {v2}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    const/4 v0, 0x1

    .line 264
    .local v0, "mCurrentlyNear":Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mSawNear:Z

    if-eqz v1, :cond_2

    xor-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_2

    .line 265
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-direct {p0, v2, v3}, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->whenToPulse(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/doze/DozeUtils;->startUserPulse(Landroid/content/Context;)V

    .line 271
    :cond_0
    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mSawNear:Z

    .line 272
    return-void

    .line 263
    .end local v0    # "mCurrentlyNear":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "mCurrentlyNear":Z
    goto :goto_0

    .line 269
    :cond_2
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v2, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mPocketTime:J

    goto :goto_1
.end method

.method setListening(Z)V
    .locals 1
    .param p1, "listen"    # Z

    .prologue
    .line 239
    iget-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mListening:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 240
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mListening:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->updateListener()V

    .line 242
    return-void
.end method

.method updateListener()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 245
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get3(Lcom/android/systemui/doze/DozeSensors;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 246
    const-string/jumbo v2, "doze_pulse_on_hand_wave"

    const/4 v3, -0x2

    .line 245
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 247
    .local v0, "handWaveSetting":I
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mConfigured:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mSensor:Landroid/hardware/Sensor;

    if-nez v1, :cond_1

    :cond_0
    return-void

    .line 248
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mListening:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mRegistered:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 249
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get9(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mSensor:Landroid/hardware/Sensor;

    .line 250
    const/4 v3, 0x3

    .line 249
    invoke-virtual {v1, p0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;II)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mRegistered:Z

    .line 255
    :cond_2
    :goto_0
    return-void

    .line 251
    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mRegistered:Z

    if-eqz v1, :cond_2

    .line 252
    iget-object v1, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->this$0:Lcom/android/systemui/doze/DozeSensors;

    invoke-static {v1}, Lcom/android/systemui/doze/DozeSensors;->-get9(Lcom/android/systemui/doze/DozeSensors;)Landroid/hardware/SensorManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 253
    iput-boolean v4, p0, Lcom/android/systemui/doze/DozeSensors$HandWaveSensor;->mRegistered:Z

    goto :goto_0
.end method
