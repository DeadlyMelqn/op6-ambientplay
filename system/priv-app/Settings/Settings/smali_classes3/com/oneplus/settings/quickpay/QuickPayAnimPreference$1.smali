.class Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;
.super Landroid/os/Handler;
.source "QuickPayAnimPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    .line 39
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 41
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 48
    :goto_0
    return-void

    .line 43
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference$1;->this$0:Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;->-wrap0(Lcom/oneplus/settings/quickpay/QuickPayAnimPreference;)V

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
