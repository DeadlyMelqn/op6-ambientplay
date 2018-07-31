.class Lcom/android/server/OemSceneModeController$3;
.super Landroid/os/Handler;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/OemSceneModeController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    .line 472
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 474
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 520
    :goto_0
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap15(Lcom/android/server/OemSceneModeController;)V

    .line 521
    return-void

    .line 476
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap9(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 479
    :pswitch_1
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap8(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 482
    :pswitch_2
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap6(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 485
    :pswitch_3
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap4(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 488
    :pswitch_4
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->handleStartMonitor()V

    goto :goto_0

    .line 491
    :pswitch_5
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->handleStopMonitor()V

    goto :goto_0

    .line 494
    :pswitch_6
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->handleStopMonitorPassive()V

    goto :goto_0

    .line 497
    :pswitch_7
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v1}, Lcom/android/server/OemSceneModeController;->handleStartMonitorPassive()V

    goto :goto_0

    .line 500
    :pswitch_8
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap7(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 503
    :pswitch_9
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap10(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 506
    :pswitch_a
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap11(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 509
    :pswitch_b
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-wrap5(Lcom/android/server/OemSceneModeController;)V

    goto :goto_0

    .line 512
    :pswitch_c
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v1}, Lcom/android/server/OemSceneModeController;->-get1(Lcom/android/server/OemSceneModeController;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "GamePowerSaver"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 513
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OemSceneModeController;->-wrap13(Lcom/android/server/OemSceneModeController;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 474
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
