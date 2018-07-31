.class Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;
.super Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/WifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WifiAwareDiscoverySessionCallbackProxy"
.end annotation


# static fields
.field private static final CALLBACK_MATCH:I = 0x4

.field private static final CALLBACK_MESSAGE_RECEIVED:I = 0x7

.field private static final CALLBACK_MESSAGE_SEND_FAIL:I = 0x6

.field private static final CALLBACK_MESSAGE_SEND_SUCCESS:I = 0x5

.field private static final CALLBACK_SESSION_CONFIG_FAIL:I = 0x2

.field private static final CALLBACK_SESSION_CONFIG_SUCCESS:I = 0x1

.field private static final CALLBACK_SESSION_STARTED:I = 0x0

.field private static final CALLBACK_SESSION_TERMINATED:I = 0x3

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE:Ljava/lang/String; = "message"

.field private static final MESSAGE_BUNDLE_KEY_MESSAGE2:Ljava/lang/String; = "message2"


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

.field private final mClientId:I

.field private final mHandler:Landroid/os/Handler;

.field private final mIsPublish:Z

.field private final mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

.field private mSession:Landroid/net/wifi/aware/DiscoverySession;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Ljava/lang/ref/WeakReference;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySessionCallback;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;)Landroid/net/wifi/aware/DiscoverySession;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    return-object v0
.end method

.method constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V
    .locals 1
    .param p1, "mgr"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "isPublish"    # Z
    .param p4, "originalCallback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p5, "clientId"    # I

    .prologue
    .line 693
    invoke-direct {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;-><init>()V

    .line 696
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    .line 697
    iput-boolean p3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    .line 698
    iput-object p4, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    .line 699
    iput p5, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    .line 705
    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;

    invoke-direct {v0, p0, p2}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy$1;-><init>(Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    .line 764
    return-void
.end method


# virtual methods
.method public onMatch(I[B[B)V
    .locals 4
    .param p1, "peerId"    # I
    .param p2, "serviceSpecificInfo"    # [B
    .param p3, "matchFilter"    # [B

    .prologue
    .line 805
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 806
    .local v0, "data":Landroid/os/Bundle;
    const-string/jumbo v2, "message"

    invoke-virtual {v0, v2, p2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 807
    const-string/jumbo v2, "message2"

    invoke-virtual {v0, v2, p3}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 809
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 810
    .local v1, "msg":Landroid/os/Message;
    iput p1, v1, Landroid/os/Message;->arg1:I

    .line 811
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 812
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 813
    return-void
.end method

.method public onMessageReceived(I[B)V
    .locals 3
    .param p1, "peerId"    # I
    .param p2, "message"    # [B

    .prologue
    .line 840
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 841
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 842
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 843
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 844
    return-void
.end method

.method public onMessageSendFail(II)V
    .locals 3
    .param p1, "messageId"    # I
    .param p2, "reason"    # I

    .prologue
    .line 828
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 829
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 830
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 831
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 832
    return-void
.end method

.method public onMessageSendSuccess(I)V
    .locals 3
    .param p1, "messageId"    # I

    .prologue
    .line 819
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 820
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 821
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 822
    return-void
.end method

.method public onProxySessionStarted(I)V
    .locals 6
    .param p1, "sessionId"    # I

    .prologue
    .line 851
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v3, :cond_0

    .line 852
    const-string/jumbo v3, "WifiAwareManager"

    .line 853
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionStarted: sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": session already created!?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 852
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 855
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onSessionStarted: sessionId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ": session already created!?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 854
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 858
    :cond_0
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 859
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_1

    .line 860
    const-string/jumbo v3, "WifiAwareManager"

    const-string/jumbo v4, "onProxySessionStarted: mgr GC\'d"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 861
    return-void

    .line 864
    :cond_1
    iget-boolean v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mIsPublish:Z

    if-eqz v3, :cond_2

    .line 865
    new-instance v1, Landroid/net/wifi/aware/PublishDiscoverySession;

    .line 866
    iget v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    .line 865
    invoke-direct {v1, v0, v3, p1}, Landroid/net/wifi/aware/PublishDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 867
    .local v1, "session":Landroid/net/wifi/aware/PublishDiscoverySession;
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 868
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v3, v1}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V

    .line 875
    .end local v1    # "session":Landroid/net/wifi/aware/PublishDiscoverySession;
    :goto_0
    return-void

    .line 871
    :cond_2
    new-instance v2, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    iget v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mClientId:I

    invoke-direct {v2, v0, v3, p1}, Landroid/net/wifi/aware/SubscribeDiscoverySession;-><init>(Landroid/net/wifi/aware/WifiAwareManager;II)V

    .line 872
    .local v2, "session":Landroid/net/wifi/aware/SubscribeDiscoverySession;
    iput-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 873
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v3, v2}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V

    goto :goto_0
.end method

.method public onProxySessionTerminated(I)V
    .locals 2
    .param p1, "reason"    # I

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySession;->setTerminated()V

    .line 881
    iput-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mSession:Landroid/net/wifi/aware/DiscoverySession;

    .line 885
    :goto_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mAwareManager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 886
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mOriginalCallback:Landroid/net/wifi/aware/DiscoverySessionCallback;

    invoke-virtual {v0}, Landroid/net/wifi/aware/DiscoverySessionCallback;->onSessionTerminated()V

    .line 887
    return-void

    .line 883
    :cond_0
    const-string/jumbo v0, "WifiAwareManager"

    const-string/jumbo v1, "Proxy: onSessionTerminated called but mSession is null!?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onSessionConfigFail(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 787
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 788
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 789
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 790
    return-void
.end method

.method public onSessionConfigSuccess()V
    .locals 3

    .prologue
    .line 779
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 780
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 781
    return-void
.end method

.method public onSessionStarted(I)V
    .locals 3
    .param p1, "sessionId"    # I

    .prologue
    .line 770
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 771
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 772
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 773
    return-void
.end method

.method public onSessionTerminated(I)V
    .locals 3
    .param p1, "reason"    # I

    .prologue
    .line 796
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 797
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 798
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 799
    return-void
.end method
