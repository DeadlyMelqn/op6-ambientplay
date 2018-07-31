.class Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;
.super Landroid/os/Handler;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;-><init>(Landroid/net/wifi/WifiManager;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

.field final synthetic val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;Landroid/os/Looper;Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;)V
    .locals 0
    .param p1, "this$1"    # Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    iput-object p3, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    .line 2717
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2720
    const-string/jumbo v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LocalOnlyHotspotObserverProxy: handle message what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2721
    iget v4, p1, Landroid/os/Message;->what:I

    .line 2720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2721
    const-string/jumbo v4, " msg: "

    .line 2720
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2723
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->this$1:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;

    invoke-static {v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;->-get0(Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 2724
    .local v1, "manager":Landroid/net/wifi/WifiManager;
    if-nez v1, :cond_0

    .line 2725
    const-string/jumbo v2, "WifiManager"

    const-string/jumbo v3, "LocalOnlyHotspotObserverProxy: handle message post GC"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2726
    return-void

    .line 2729
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2745
    :pswitch_0
    const-string/jumbo v2, "WifiManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "LocalOnlyHotspotObserverProxy unhandled message.  type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2746
    iget v4, p1, Landroid/os/Message;->what:I

    .line 2745
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    :goto_0
    return-void

    .line 2731
    :pswitch_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    new-instance v3, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v1}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;-><init>(Landroid/net/wifi/WifiManager;)V

    invoke-virtual {v2, v3}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onRegistered(Landroid/net/wifi/WifiManager$LocalOnlyHotspotSubscription;)V

    goto :goto_0

    .line 2734
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    .line 2735
    .local v0, "config":Landroid/net/wifi/WifiConfiguration;
    if-nez v0, :cond_1

    .line 2736
    const-string/jumbo v2, "WifiManager"

    const-string/jumbo v3, "LocalOnlyHotspotObserverProxy: config cannot be null."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2737
    return-void

    .line 2739
    :cond_1
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onStarted(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 2742
    .end local v0    # "config":Landroid/net/wifi/WifiConfiguration;
    :pswitch_3
    iget-object v2, p0, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserverProxy$1;->val$observer:Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager$LocalOnlyHotspotObserver;->onStopped()V

    goto :goto_0

    .line 2729
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
