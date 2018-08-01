.class final Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "CaffeineTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/CaffeineTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;


# direct methods
.method private constructor <init>(Lcom/android/systemui/qs/tiles/CaffeineTile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CaffeineTile;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/qs/tiles/CaffeineTile;Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/qs/tiles/CaffeineTile;
    .param p2, "-this1"    # Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;-><init>(Lcom/android/systemui/qs/tiles/CaffeineTile;)V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v0}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-get0(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 207
    return-void
.end method

.method public init()V
    .locals 4

    .prologue
    .line 200
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 201
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 202
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-get0(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v2}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-get1(Lcom/android/systemui/qs/tiles/CaffeineTile;)Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v0, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 203
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 211
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-wrap0(Lcom/android/systemui/qs/tiles/CaffeineTile;)V

    .line 215
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-get2(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 216
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-static {v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->-get2(Lcom/android/systemui/qs/tiles/CaffeineTile;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 217
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/CaffeineTile$Receiver;->this$0:Lcom/android/systemui/qs/tiles/CaffeineTile;

    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/CaffeineTile;->refreshState()V

    .line 219
    :cond_1
    return-void
.end method
