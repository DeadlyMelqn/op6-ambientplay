.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

.field final synthetic val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    .line 2574
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2577
    const-string/jumbo v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalOnlyHotspotCallbackProxy: handle message what: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2578
    iget v5, p1, Landroid/os/Message;->what:I

    .line 2577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2578
    const-string/jumbo v5, " msg: "

    .line 2577
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2580
    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;

    invoke-static {v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;->-get0(Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2581
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 2582
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "LocalOnlyHotspotCallbackProxy: handle message post GC"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2583
    return-void

    .line 2586
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 2608
    const-string/jumbo v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalOnlyHotspotCallbackProxy unhandled message.  type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2609
    iget v5, p1, Landroid/os/Message;->what:I

    .line 2608
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :goto_0
    return-void

    .line 2588
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2589
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 2590
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "LocalOnlyHotspotCallbackProxy: config cannot be null."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 2592
    return-void

    .line 2594
    :cond_1
    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    new-instance v4, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v1, v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;-><init>(Landroid/net/wifi/WifiManager;Landroid/net/wifi/WifiConfiguration;)V

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStarted(Landroid/net/wifi/WifiManager$LocalOnlyHotspotReservation;)V

    goto :goto_0

    .line 2597
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_1
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "LocalOnlyHotspotCallbackProxy: hotspot stopped"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2598
    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onStopped()V

    goto :goto_0

    .line 2601
    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 2602
    .local v2, "reasonCode":I
    const-string/jumbo v3, "WifiManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "LocalOnlyHotspotCallbackProxy: failed to start.  reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2604
    iget-object v3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallbackProxy$1;->val$callback:Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotCallback;->onFailed(I)V

    .line 2605
    const-string/jumbo v3, "WifiManager"

    const-string/jumbo v4, "done with the callback..."

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2586
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
