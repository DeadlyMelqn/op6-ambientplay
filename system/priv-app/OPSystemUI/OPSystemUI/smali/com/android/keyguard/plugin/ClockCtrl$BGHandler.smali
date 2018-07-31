.class Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;
.super Landroid/os/Handler;
.source "ClockCtrl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/plugin/ClockCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BGHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/plugin/ClockCtrl;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/plugin/ClockCtrl;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/plugin/ClockCtrl;
    .param p2, "nonUILooper"    # Landroid/os/Looper;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->this$0:Lcom/android/keyguard/plugin/ClockCtrl;

    .line 67
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 68
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    .line 71
    if-nez p1, :cond_0

    .line 72
    const-string/jumbo v1, "ClockCtrl"

    const-string/jumbo v2, "BGHandler: msg null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 76
    .local v0, "what":I
    packed-switch v0, :pswitch_data_0

    .line 81
    :goto_0
    return-void

    .line 78
    :pswitch_0
    iget-object v2, p0, Lcom/android/keyguard/plugin/ClockCtrl$BGHandler;->this$0:Lcom/android/keyguard/plugin/ClockCtrl;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-ne v3, v1, :cond_1

    :goto_1
    invoke-static {v2, v1}, Lcom/android/keyguard/plugin/ClockCtrl;->-wrap0(Lcom/android/keyguard/plugin/ClockCtrl;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 76
    nop

    :pswitch_data_0
    .packed-switch 0x20000
        :pswitch_0
    .end packed-switch
.end method
