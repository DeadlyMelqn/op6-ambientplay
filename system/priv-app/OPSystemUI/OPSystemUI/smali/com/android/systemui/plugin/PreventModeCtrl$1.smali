.class Lcom/android/systemui/plugin/PreventModeCtrl$1;
.super Ljava/lang/Object;
.source "PreventModeCtrl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/plugin/PreventModeCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/plugin/PreventModeCtrl;


# direct methods
.method constructor <init>(Lcom/android/systemui/plugin/PreventModeCtrl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/plugin/PreventModeCtrl;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method

.method private finishWithResult(I)V
    .locals 3
    .param p1, "result"    # I

    .prologue
    .line 171
    const-string/jumbo v0, "PreventModeCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "finishWithResult: result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->-wrap2(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    .line 180
    :cond_0
    :goto_0
    return-void

    .line 174
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-static {}, Lcom/android/systemui/plugin/PreventModeCtrl;->-get1()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    iget-object v0, v0, Lcom/android/systemui/plugin/PreventModeCtrl;->mPMView:Lcom/android/systemui/plugin/PreventModeView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/plugin/PreventModeView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->-wrap0(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    goto :goto_0

    .line 177
    :cond_2
    if-nez p1, :cond_0

    .line 178
    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v0}, Lcom/android/systemui/plugin/PreventModeCtrl;->-wrap0(Lcom/android/systemui/plugin/PreventModeCtrl;)V

    goto :goto_0
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 168
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v1}, Lcom/android/systemui/plugin/PreventModeCtrl;->-get0(Lcom/android/systemui/plugin/PreventModeCtrl;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 153
    :try_start_0
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    array-length v1, v1

    if-nez v1, :cond_0

    .line 154
    const-string/jumbo v1, "PreventModeCtrl"

    const-string/jumbo v3, "Event has no values!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/systemui/plugin/PreventModeCtrl$1;->finishWithResult(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v2

    .line 163
    return-void

    .line 158
    :cond_0
    :try_start_1
    const-string/jumbo v1, "PreventModeCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Event: value="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " max="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/plugin/PreventModeCtrl$1;->this$0:Lcom/android/systemui/plugin/PreventModeCtrl;

    invoke-static {v4}, Lcom/android/systemui/plugin/PreventModeCtrl;->-get2(Lcom/android/systemui/plugin/PreventModeCtrl;)Landroid/hardware/Sensor;

    move-result-object v4

    invoke-virtual {v4}, Landroid/hardware/Sensor;->getMaximumRange()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v1, v1, v3

    const/4 v3, 0x0

    cmpl-float v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 160
    .local v0, "isNear":Z
    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/plugin/PreventModeCtrl$1;->finishWithResult(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 151
    .end local v0    # "isNear":Z
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 159
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isNear":Z
    goto :goto_1

    .line 160
    :cond_2
    const/4 v1, 0x2

    goto :goto_2
.end method
