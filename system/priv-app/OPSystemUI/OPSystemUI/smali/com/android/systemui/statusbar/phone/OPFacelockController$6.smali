.class Lcom/android/systemui/statusbar/phone/OPFacelockController$6;
.super Ljava/lang/Object;
.source "OPFacelockController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/OPFacelockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/OPFacelockController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    .line 1121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "accuracy"    # I

    .prologue
    .line 1136
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 1124
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v2, 0x0

    aget v0, v1, v2

    .line 1125
    .local v0, "lux":F
    invoke-static {}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get0()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "OPFacelockController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "light sensor: lux:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", already lighting:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get15(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", threshold:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get1(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get1(Lcom/android/systemui/statusbar/phone/OPFacelockController;)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v0, v1

    if-gtz v1, :cond_1

    .line 1127
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-get15(Lcom/android/systemui/statusbar/phone/OPFacelockController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1128
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/OPFacelockController$6;->this$0:Lcom/android/systemui/statusbar/phone/OPFacelockController;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/OPFacelockController;->-wrap9(Lcom/android/systemui/statusbar/phone/OPFacelockController;Z)V

    .line 1131
    :cond_1
    return-void
.end method
