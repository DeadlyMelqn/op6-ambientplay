.class Lcom/android/server/DeviceIdleController$5;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/DeviceIdleController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    .line 568
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v4, 0x8

    .line 573
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 574
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 575
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_DEEP_MAINTENANCE_TIME:J

    .line 574
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 580
    :goto_0
    return-void

    .line 577
    :cond_0
    iget-object v0, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    .line 578
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$5;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v1}, Lcom/android/server/DeviceIdleController;->-get6(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v1

    iget-wide v2, v1, Lcom/android/server/DeviceIdleController$Constants;->MIN_LIGHT_MAINTENANCE_TIME:J

    .line 577
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/DeviceIdleController$MyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
