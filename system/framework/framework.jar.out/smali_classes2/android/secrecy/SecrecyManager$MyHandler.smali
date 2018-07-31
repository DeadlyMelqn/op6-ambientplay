.class Landroid/secrecy/SecrecyManager$MyHandler;
.super Landroid/os/Handler;
.source "SecrecyManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/secrecy/SecrecyManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/secrecy/SecrecyManager;


# direct methods
.method private constructor <init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Landroid/secrecy/SecrecyManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 293
    iput-object p1, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    .line 294
    invoke-virtual {p2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 295
    return-void
.end method

.method synthetic constructor <init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;Landroid/secrecy/SecrecyManager$MyHandler;)V
    .locals 0
    .param p1, "this$0"    # Landroid/secrecy/SecrecyManager;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "-this2"    # Landroid/secrecy/SecrecyManager$MyHandler;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/secrecy/SecrecyManager$MyHandler;-><init>(Landroid/secrecy/SecrecyManager;Landroid/content/Context;)V

    return-void
.end method

.method private constructor <init>(Landroid/secrecy/SecrecyManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/secrecy/SecrecyManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 297
    iput-object p1, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    .line 298
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 299
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 303
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 310
    :goto_0
    return-void

    .line 305
    :pswitch_0
    iget-object v1, p0, Landroid/secrecy/SecrecyManager$MyHandler;->this$0:Landroid/secrecy/SecrecyManager;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Landroid/secrecy/SecrecyManager;->-wrap0(Landroid/secrecy/SecrecyManager;Ljava/util/Map;)V

    goto :goto_0

    .line 303
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
