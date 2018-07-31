.class Lcom/ice/box/services/LightSensorService$3;
.super Landroid/content/BroadcastReceiver;
.source "LightSensorService.java"


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

    .line 216
    iput-object p1, p0, Lcom/ice/box/services/LightSensorService$3;->this$0:Lcom/ice/box/services/LightSensorService;

    invoke-direct/range {p0 .. p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 219
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const-string p2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "ICEDEBUG"

    const-string p2, "ScreenON broadcast received, registering listeners."

    .line 220
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object p1, p0, Lcom/ice/box/services/LightSensorService$3;->this$0:Lcom/ice/box/services/LightSensorService;

    invoke-static/range {p1 .. p1}, Lcom/ice/box/services/LightSensorService;->access$300(Lcom/ice/box/services/LightSensorService;)Landroid/hardware/SensorManager;

    move-result-object p1

    iget-object p2, p0, Lcom/ice/box/services/LightSensorService$3;->this$0:Lcom/ice/box/services/LightSensorService;

    invoke-static/range {p2 .. p2}, Lcom/ice/box/services/LightSensorService;->access$400(Lcom/ice/box/services/LightSensorService;)Landroid/hardware/SensorEventListener;

    move-result-object p2

    iget-object p0, p0, Lcom/ice/box/services/LightSensorService$3;->this$0:Lcom/ice/box/services/LightSensorService;

    invoke-static/range {p0 .. p0}, Lcom/ice/box/services/LightSensorService;->access$500(Lcom/ice/box/services/LightSensorService;)Landroid/hardware/Sensor;

    move-result-object p0

    const/4 v0, 0x3

    invoke-virtual {p1, p2, p0, v0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    return-void
.end method
