.class final Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;
.super Landroid/os/Handler;
.source "OPThreekeyDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    .line 366
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 367
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 371
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 381
    :goto_0
    return-void

    .line 372
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->-wrap1(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    goto :goto_0

    .line 374
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->-wrap0(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    goto :goto_0

    .line 376
    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    goto :goto_0

    .line 378
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->-wrap2(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    goto :goto_0

    .line 371
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
