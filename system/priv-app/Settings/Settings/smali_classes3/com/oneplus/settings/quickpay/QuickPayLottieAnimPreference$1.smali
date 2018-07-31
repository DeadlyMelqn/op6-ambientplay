.class Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;
.super Landroid/os/Handler;
.source "QuickPayLottieAnimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    .line 36
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 38
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 45
    :goto_0
    return-void

    .line 40
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;->-wrap0(Lcom/oneplus/settings/quickpay/QuickPayLottieAnimPreference;)V

    goto :goto_0

    .line 38
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
