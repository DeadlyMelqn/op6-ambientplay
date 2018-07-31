.class Lcom/android/server/secrecy/SecrecyConfig$MyHandler;
.super Landroid/os/Handler;
.source "SecrecyConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/secrecy/SecrecyConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/secrecy/SecrecyConfig;


# direct methods
.method private constructor <init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/secrecy/SecrecyConfig;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    .line 72
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 73
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;Lcom/android/server/secrecy/SecrecyConfig$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/secrecy/SecrecyConfig;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "-this2"    # Lcom/android/server/secrecy/SecrecyConfig$MyHandler;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;-><init>(Lcom/android/server/secrecy/SecrecyConfig;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 77
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 92
    :goto_0
    return-void

    .line 79
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->-wrap0(Lcom/android/server/secrecy/SecrecyConfig;)V

    .line 80
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->-get0(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/secrecy/policy/PolicyManager;->onConfigLoadFinished()V

    goto :goto_0

    .line 84
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->-wrap1(Lcom/android/server/secrecy/SecrecyConfig;)V

    .line 85
    iget-object v0, p0, Lcom/android/server/secrecy/SecrecyConfig$MyHandler;->this$0:Lcom/android/server/secrecy/SecrecyConfig;

    invoke-static {v0}, Lcom/android/server/secrecy/SecrecyConfig;->-get0(Lcom/android/server/secrecy/SecrecyConfig;)Lcom/android/server/secrecy/policy/PolicyManager;

    move-result-object v1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-virtual {v1, v0}, Lcom/android/server/secrecy/policy/PolicyManager;->onConfigSaveFinished(Ljava/util/Map;)V

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
