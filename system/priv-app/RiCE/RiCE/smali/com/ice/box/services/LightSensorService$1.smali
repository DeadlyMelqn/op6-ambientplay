.class Lcom/ice/box/services/LightSensorService$1;
.super Ljava/lang/Object;
.source "LightSensorService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/services/LightSensorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ice/box/services/LightSensorService;


# direct methods
.method constructor <init>(Lcom/ice/box/services/LightSensorService;)V
    .locals 0

    .line 186
    iput-object p1, p0, Lcom/ice/box/services/LightSensorService$1;->this$0:Lcom/ice/box/services/LightSensorService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 3

    .line 195
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual/range {v0 .. v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 196
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x0

    aget p1, p1, v0

    const v0, 0x3dcccccd    # 0.1f

    add-float/2addr p1, v0

    const-string v0, "ICEDEBUG"

    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct/range {v1 .. v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "lux value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/ice/box/services/LightSensorService$1;->this$0:Lcom/ice/box/services/LightSensorService;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ice/box/services/LightSensorService;->access$000(Lcom/ice/box/services/LightSensorService;Ljava/lang/String;)V

    .line 199
    iget-object v0, p0, Lcom/ice/box/services/LightSensorService$1;->this$0:Lcom/ice/box/services/LightSensorService;

    iget-object p0, p0, Lcom/ice/box/services/LightSensorService$1;->this$0:Lcom/ice/box/services/LightSensorService;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/services/LightSensorService;->access$100(Lcom/ice/box/services/LightSensorService;)I

    move-result p0

    invoke-static {v0, p0, p1}, Lcom/ice/box/services/LightSensorService;->access$200(Lcom/ice/box/services/LightSensorService;IF)V

    :cond_0
    return-void
.end method
