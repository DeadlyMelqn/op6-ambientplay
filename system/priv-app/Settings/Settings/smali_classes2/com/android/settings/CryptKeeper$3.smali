.class Lcom/android/settings/CryptKeeper$3;
.super Landroid/os/Handler;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/CryptKeeper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/CryptKeeper;

    .prologue
    .line 1
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    .line 356
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 359
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 375
    :goto_0
    return-void

    .line 361
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap12(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 365
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap5(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 369
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$3;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap11(Lcom/android/settings/CryptKeeper;)V

    goto :goto_0

    .line 359
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
