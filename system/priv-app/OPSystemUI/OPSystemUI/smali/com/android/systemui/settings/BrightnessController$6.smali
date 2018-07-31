.class Lcom/android/systemui/settings/BrightnessController$6;
.super Landroid/os/Handler;
.source "BrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/BrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/settings/BrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/settings/BrightnessController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/settings/BrightnessController;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    .line 316
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 319
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3, v1}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 321
    :try_start_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 356
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 359
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1, v2}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 361
    return-void

    .line 323
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_0

    :goto_1
    invoke-static {v3, v1}, Lcom/android/systemui/settings/BrightnessController;->-wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v1

    .line 359
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3, v2}, Lcom/android/systemui/settings/BrightnessController;->-set1(Lcom/android/systemui/settings/BrightnessController;Z)Z

    .line 358
    throw v1

    :cond_0
    move v1, v2

    .line 323
    goto :goto_1

    .line 327
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v1, v3}, Lcom/android/systemui/settings/BrightnessController;->brightnessToValue(I)I

    move-result v0

    .line 329
    .local v0, "value":I
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v1, v3}, Lcom/android/systemui/settings/ToggleSlider;->setMax(I)V

    .line 332
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/systemui/settings/ToggleSlider;->setValue(I)V

    .line 335
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1, v3}, Lcom/android/systemui/settings/BrightnessController;->-set2(Lcom/android/systemui/settings/BrightnessController;I)I

    .line 338
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1, v0}, Lcom/android/systemui/settings/BrightnessController;->-set4(Lcom/android/systemui/settings/BrightnessController;I)I

    .line 340
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get0(Lcom/android/systemui/settings/BrightnessController;)Z

    move-result v3

    invoke-static {v1, v3}, Lcom/android/systemui/settings/BrightnessController;->-wrap0(Lcom/android/systemui/settings/BrightnessController;Z)V

    goto :goto_0

    .line 344
    .end local v0    # "value":I
    :pswitch_2
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v3}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_1

    :goto_2
    invoke-interface {v3, v1}, Lcom/android/systemui/settings/ToggleSlider;->setChecked(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_2

    .line 347
    :pswitch_3
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-interface {v1, v3}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_0

    .line 350
    :pswitch_4
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    invoke-static {v1}, Lcom/android/systemui/settings/BrightnessController;->-get6(Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/ToggleSlider;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Lcom/android/systemui/settings/ToggleSlider;->setOnChangedListener(Lcom/android/systemui/settings/ToggleSlider$Listener;)V

    goto :goto_0

    .line 353
    :pswitch_5
    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessController$6;->this$0:Lcom/android/systemui/settings/BrightnessController;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-eqz v4, :cond_2

    :goto_3
    invoke-static {v3, v1}, Lcom/android/systemui/settings/BrightnessController;->-wrap1(Lcom/android/systemui/settings/BrightnessController;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_3

    .line 321
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
