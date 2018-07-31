.class final Lcom/android/server/policy/ScreenDecor$ScreenHandler;
.super Landroid/os/Handler;
.source "ScreenDecor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/ScreenDecor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ScreenHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/ScreenDecor;


# direct methods
.method constructor <init>(Lcom/android/server/policy/ScreenDecor;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/ScreenDecor;

    .prologue
    .line 360
    iput-object p1, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 364
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 372
    :goto_0
    return-void

    .line 366
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-static {v0}, Lcom/android/server/policy/ScreenDecor;->-wrap0(Lcom/android/server/policy/ScreenDecor;)V

    goto :goto_0

    .line 369
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/policy/ScreenDecor$ScreenHandler;->this$0:Lcom/android/server/policy/ScreenDecor;

    invoke-virtual {v0}, Lcom/android/server/policy/ScreenDecor;->doExpandScreenDecor()V

    goto :goto_0

    .line 364
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
