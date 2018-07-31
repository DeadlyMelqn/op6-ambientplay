.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareEventCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_CONNECT_FAIL:I = 0x1

.field private static final CALLBACK_CONNECT_SUCCESS:I = 0x0

.field private static final CALLBACK_IDENTITY_CHANGED:I = 0x2

.field private static final CALLBACK_RANGING_ABORTED:I = 0x5

.field private static final CALLBACK_RANGING_FAILURE:I = 0x4

.field private static final CALLBACK_RANGING_SUCCESS:I = 0x3


# instance fields
.field private final mAwareManager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mBinder:Landroid/os/Binder;

.field private final mHandler:Landroid/os/Handler;

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;)Landroid/os/Binder;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    return-object v0
.end method

.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 1
    .param p1, "mgr"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "binder"    # Landroid/os/Binder;
    .param p4, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p5, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;

    .prologue
    .line 532
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;-><init>()V

    .line 535
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 536
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mLooper:Landroid/os/Looper;

    .line 537
    iput-object p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mBinder:Landroid/os/Binder;

    .line 540
    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;

    invoke-direct {v0, p0, p2, p4, p5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;Landroid/os/Looper;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 604
    return-void
.end method


# virtual methods
.method getAndRemoveRangingListener(I)Landroid/net/wifi/RttManager$RttListener;
    .locals 5
    .param p1, "rangingId"    # I

    .prologue
    const/4 v4, 0x0

    .line 513
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/aware/WifiAwareManager;

    .line 514
    .local v1, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v1, :cond_0

    .line 515
    const-string/jumbo v2, "WifiAwareManager"

    const-string/jumbo v3, "getAndRemoveRangingListener: called post GC"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    return-object v4

    .line 519
    :cond_0
    invoke-static {v1}, Landroid/net/wifi/aware/WifiAwareManager;->-get0(Landroid/net/wifi/aware/WifiAwareManager;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 520
    :try_start_0
    invoke-static {v1}, Landroid/net/wifi/aware/WifiAwareManager;->-get1(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/RttManager$RttListener;

    .line 521
    .local v0, "listener":Landroid/net/wifi/RttManager$RttListener;
    invoke-static {v1}, Landroid/net/wifi/aware/WifiAwareManager;->-get1(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->delete(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 522
    return-object v0

    .line 519
    .end local v0    # "listener":Landroid/net/wifi/RttManager$RttListener;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onConnectFail(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 619
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 620
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 621
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 622
    return-void
.end method

.method public onConnectSuccess(I)V
    .locals 3
    .param p1, "clientId"    # I

    .prologue
    .line 610
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 611
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 612
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 613
    return-void
.end method

.method public onIdentityChanged([B)V
    .locals 3
    .param p1, "mac"    # [B

    .prologue
    .line 628
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 629
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 630
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 631
    return-void
.end method

.method public onRangingAborted(I)V
    .locals 3
    .param p1, "rangingId"    # I

    .prologue
    .line 664
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 665
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 666
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 668
    return-void
.end method

.method public onRangingFailure(IILjava/lang/String;)V
    .locals 3
    .param p1, "rangingId"    # I
    .param p2, "reason"    # I
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 653
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 654
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 655
    iput-object p3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 656
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 658
    return-void
.end method

.method public onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V
    .locals 3
    .param p1, "rangingId"    # I
    .param p2, "results"    # Landroid/net/wifi/RttManager$ParcelableRttResults;

    .prologue
    .line 639
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 640
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 641
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 642
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 643
    return-void
.end method
