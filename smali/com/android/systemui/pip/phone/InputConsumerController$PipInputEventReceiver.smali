.class final Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;
.super Landroid/view/BatchedInputEventReceiver;
.source "InputConsumerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/InputConsumerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PipInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/InputConsumerController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/pip/phone/InputConsumerController;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/pip/phone/InputConsumerController;
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;->this$0:Lcom/android/systemui/pip/phone/InputConsumerController;

    .line 64
    invoke-static {}, Landroid/view/Choreographer;->getSfInstance()Landroid/view/Choreographer;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0}, Landroid/view/BatchedInputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;Landroid/view/Choreographer;)V

    .line 65
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;I)V
    .locals 4
    .param p1, "event"    # Landroid/view/InputEvent;
    .param p2, "displayId"    # I

    .prologue
    .line 69
    const/4 v2, 0x1

    .line 72
    .local v2, "handled":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;->this$0:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/InputConsumerController;->-get0(Lcom/android/systemui/pip/phone/InputConsumerController;)Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

    move-result-object v3

    if-eqz v3, :cond_0

    instance-of v3, p1, Landroid/view/MotionEvent;

    if-eqz v3, :cond_0

    .line 73
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v1, v0

    .line 74
    .local v1, "ev":Landroid/view/MotionEvent;
    iget-object v3, p0, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;->this$0:Lcom/android/systemui/pip/phone/InputConsumerController;

    invoke-static {v3}, Lcom/android/systemui/pip/phone/InputConsumerController;->-get0(Lcom/android/systemui/pip/phone/InputConsumerController;)Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/android/systemui/pip/phone/InputConsumerController$TouchListener;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 77
    .end local v1    # "ev":Landroid/view/MotionEvent;
    .end local v2    # "handled":Z
    :cond_0
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 79
    return-void

    .line 76
    .restart local v2    # "handled":Z
    :catchall_0
    move-exception v3

    .line 77
    invoke-virtual {p0, p1, v2}, Lcom/android/systemui/pip/phone/InputConsumerController$PipInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 76
    throw v3
.end method
