.class public Landroid/net/wifi/aware/DiscoverySessionCallback;
.super Ljava/lang/Object;
.source "DiscoverySessionCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageReceived(Landroid/net/wifi/aware/PeerHandle;[B)V
    .locals 0
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "message"    # [B

    .prologue
    .line 155
    return-void
.end method

.method public onMessageSendFailed(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 144
    return-void
.end method

.method public onMessageSendSucceeded(I)V
    .locals 0
    .param p1, "messageId"    # I

    .prologue
    .line 129
    return-void
.end method

.method public onPublishStarted(Landroid/net/wifi/aware/PublishDiscoverySession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/wifi/aware/PublishDiscoverySession;

    .prologue
    .line 45
    return-void
.end method

.method public onServiceDiscovered(Landroid/net/wifi/aware/PeerHandle;[BLjava/util/List;)V
    .locals 0
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "serviceSpecificInfo"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/wifi/aware/PeerHandle;",
            "[B",
            "Ljava/util/List",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 113
    .local p3, "matchFilter":Ljava/util/List;, "Ljava/util/List<[B>;"
    return-void
.end method

.method public onSessionConfigFailed()V
    .locals 0

    .prologue
    .line 83
    return-void
.end method

.method public onSessionConfigUpdated()V
    .locals 0

    .prologue
    .line 67
    return-void
.end method

.method public onSessionTerminated()V
    .locals 0

    .prologue
    .line 93
    return-void
.end method

.method public onSubscribeStarted(Landroid/net/wifi/aware/SubscribeDiscoverySession;)V
    .locals 0
    .param p1, "session"    # Landroid/net/wifi/aware/SubscribeDiscoverySession;

    .prologue
    .line 57
    return-void
.end method
