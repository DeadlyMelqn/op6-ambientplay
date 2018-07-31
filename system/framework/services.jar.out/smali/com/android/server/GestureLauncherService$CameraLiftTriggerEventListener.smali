.class final Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;
.super Landroid/hardware/TriggerEventListener;
.source "GestureLauncherService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/GestureLauncherService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CameraLiftTriggerEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/GestureLauncherService;


# direct methods
.method private constructor <init>(Lcom/android/server/GestureLauncherService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;

    .prologue
    .line 586
    iput-object p1, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-direct {p0}, Landroid/hardware/TriggerEventListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/GestureLauncherService;Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/GestureLauncherService;
    .param p2, "-this1"    # Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;-><init>(Lcom/android/server/GestureLauncherService;)V

    return-void
.end method


# virtual methods
.method public onTrigger(Landroid/hardware/TriggerEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/TriggerEvent;

    .prologue
    .line 591
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get7(Lcom/android/server/GestureLauncherService;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 594
    return-void

    .line 596
    :cond_0
    iget-object v4, p1, Landroid/hardware/TriggerEvent;->sensor:Landroid/hardware/Sensor;

    iget-object v5, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v5}, Lcom/android/server/GestureLauncherService;->-get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v5

    if-ne v4, v5, :cond_3

    .line 597
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 598
    .local v2, "resources":Landroid/content/res/Resources;
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v4

    .line 599
    const-string/jumbo v5, "sensor"

    .line 598
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorManager;

    .line 601
    .local v3, "sensorManager":Landroid/hardware/SensorManager;
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get15(Lcom/android/server/GestureLauncherService;)Landroid/view/WindowManagerInternal;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v1

    .line 602
    .local v1, "keyguardShowingAndNotOccluded":Z
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get12(Lcom/android/server/GestureLauncherService;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    .line 609
    .local v0, "interactive":Z
    if-nez v1, :cond_1

    xor-int/lit8 v4, v0, 0x1

    if-eqz v4, :cond_2

    .line 610
    :cond_1
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    const/4 v5, 0x1

    .line 611
    const/4 v6, 0x2

    .line 610
    invoke-virtual {v4, v5, v6}, Lcom/android/server/GestureLauncherService;->handleCameraGesture(ZI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 612
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->-get10(Lcom/android/server/GestureLauncherService;)Landroid/content/Context;

    move-result-object v4

    const/16 v5, 0x3dd

    invoke-static {v4, v5}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 618
    :cond_2
    iget-object v4, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    .line 619
    iget-object v5, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v5}, Lcom/android/server/GestureLauncherService;->-get8(Lcom/android/server/GestureLauncherService;)Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/GestureLauncherService$CameraLiftTriggerEventListener;->this$0:Lcom/android/server/GestureLauncherService;

    invoke-static {v6}, Lcom/android/server/GestureLauncherService;->-get9(Lcom/android/server/GestureLauncherService;)Landroid/hardware/Sensor;

    move-result-object v6

    .line 618
    invoke-virtual {v3, v5, v6}, Landroid/hardware/SensorManager;->requestTriggerSensor(Landroid/hardware/TriggerEventListener;Landroid/hardware/Sensor;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/GestureLauncherService;->-set4(Lcom/android/server/GestureLauncherService;Z)Z

    .line 623
    return-void

    .line 625
    .end local v0    # "interactive":Z
    .end local v1    # "keyguardShowingAndNotOccluded":Z
    .end local v2    # "resources":Landroid/content/res/Resources;
    .end local v3    # "sensorManager":Landroid/hardware/SensorManager;
    :cond_3
    return-void
.end method
