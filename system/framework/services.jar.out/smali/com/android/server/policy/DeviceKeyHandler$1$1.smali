.class Lcom/android/server/policy/DeviceKeyHandler$1$1;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/DeviceKeyHandler$1;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/DeviceKeyHandler$1;

.field final synthetic val$sensorNear:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler$1;Z)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/DeviceKeyHandler$1;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$1$1;->this$1:Lcom/android/server/policy/DeviceKeyHandler$1;

    iput-boolean p2, p0, Lcom/android/server/policy/DeviceKeyHandler$1$1;->val$sensorNear:Z

    .line 477
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 480
    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler$1$1;->val$sensorNear:Z

    if-eqz v0, :cond_0

    .line 481
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "p-sensor near, disable gesture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string/jumbo v0, "/proc/touchpanel/gesture_switch"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    .line 487
    :goto_0
    return-void

    .line 484
    :cond_0
    const-string/jumbo v0, "DeviceKeyHandler"

    const-string/jumbo v1, "p-sensor far, enable gesture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string/jumbo v0, "/proc/touchpanel/gesture_switch"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    goto :goto_0
.end method
