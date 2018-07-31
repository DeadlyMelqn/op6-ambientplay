.class public Landroid/net/wifi/aware/DiscoverySession;
.super Ljava/lang/Object;
.source "DiscoverySession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final MAX_SEND_RETRY_COUNT:I = 0x5

.field private static final TAG:Ljava/lang/String; = "DiscoverySession"

.field private static final VDBG:Z


# instance fields
.field protected final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field protected mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field protected final mSessionId:I

.field protected mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;II)V
    .locals 2
    .param p1, "manager"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "clientId"    # I
    .param p3, "sessionId"    # I

    .prologue
    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 60
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 81
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 82
    iput p2, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    .line 83
    iput p3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    .line 85
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static getMaxSendRetryCount()I
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x5

    return v0
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 101
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 102
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 103
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v2, "destroy: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 106
    :cond_0
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->terminateSession(II)V

    .line 107
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 108
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 109
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 110
    return-void
.end method

.method public createNetworkSpecifierOpen(Landroid/net/wifi/aware/PeerHandle;)Landroid/net/NetworkSpecifier;
    .locals 7
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;

    .prologue
    const/4 v5, 0x0

    .line 291
    iget-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v1, :cond_0

    .line 292
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v3, "createNetworkSpecifierOpen: called on terminated session"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    return-object v5

    .line 296
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 297
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_1

    .line 298
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v3, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    return-object v5

    .line 302
    :cond_1
    instance-of v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v1, :cond_2

    .line 303
    const/4 v2, 0x0

    .line 306
    .local v2, "role":I
    :goto_0
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v4, p1

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1

    .line 304
    .end local v2    # "role":I
    :cond_2
    const/4 v2, 0x1

    .restart local v2    # "role":I
    goto :goto_0
.end method

.method public createNetworkSpecifierPassphrase(Landroid/net/wifi/aware/PeerHandle;Ljava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 7
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "passphrase"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 345
    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 346
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Passphrase must meet length requirements"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 349
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 350
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v3, "createNetworkSpecifierPassphrase: called on terminated session"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-object v5

    .line 354
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 355
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_2

    .line 356
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v3, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    return-object v5

    .line 360
    :cond_2
    instance-of v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v1, :cond_3

    .line 361
    const/4 v2, 0x0

    .line 364
    .local v2, "role":I
    :goto_0
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v4, p1

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1

    .line 362
    .end local v2    # "role":I
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "role":I
    goto :goto_0
.end method

.method public createNetworkSpecifierPmk(Landroid/net/wifi/aware/PeerHandle;[B)Landroid/net/NetworkSpecifier;
    .locals 7
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "pmk"    # [B

    .prologue
    const/4 v6, 0x0

    .line 408
    invoke-static {p2}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v1

    if-nez v1, :cond_0

    .line 409
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "PMK must 32 bytes"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 412
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 413
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v3, "createNetworkSpecifierPmk: called on terminated session"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    return-object v6

    .line 417
    :cond_1
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 418
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_2

    .line 419
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v3, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    invoke-static {v1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return-object v6

    .line 423
    :cond_2
    instance-of v1, p0, Landroid/net/wifi/aware/SubscribeDiscoverySession;

    if-eqz v1, :cond_3

    .line 424
    const/4 v2, 0x0

    .line 427
    .local v2, "role":I
    :goto_0
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v3, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1

    .line 425
    .end local v2    # "role":I
    :cond_3
    const/4 v2, 0x1

    .restart local v2    # "role":I
    goto :goto_0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 137
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-nez v0, :cond_1

    .line 138
    invoke-virtual {p0}, Landroid/net/wifi/aware/DiscoverySession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 143
    return-void

    .line 140
    :catchall_0
    move-exception v0

    .line 141
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 140
    throw v0
.end method

.method public sendMessage(Landroid/net/wifi/aware/PeerHandle;I[B)V
    .locals 1
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "messageId"    # I
    .param p3, "message"    # [B

    .prologue
    .line 223
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/wifi/aware/DiscoverySession;->sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V

    .line 224
    return-void
.end method

.method public sendMessage(Landroid/net/wifi/aware/PeerHandle;I[BI)V
    .locals 7
    .param p1, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p2, "messageId"    # I
    .param p3, "message"    # [B
    .param p4, "retryCount"    # I

    .prologue
    .line 180
    iget-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v1, :cond_0

    .line 181
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v2, "sendMessage: called on terminated session"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void

    .line 185
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 186
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_1

    .line 187
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v2, "sendMessage: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    return-void

    .line 191
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    move-object v3, p1

    move-object v4, p3

    move v5, p2

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroid/net/wifi/aware/WifiAwareManager;->sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V

    .line 192
    return-void
.end method

.method public setTerminated()V
    .locals 2

    .prologue
    .line 119
    iget-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v0, :cond_0

    .line 120
    const-string/jumbo v0, "DiscoverySession"

    const-string/jumbo v1, "terminate: already terminated."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    return-void

    .line 124
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    .line 125
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 126
    iget-object v0, p0, Landroid/net/wifi/aware/DiscoverySession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 127
    return-void
.end method

.method public startRanging([Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 3
    .param p1, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p2, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .prologue
    .line 243
    iget-boolean v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mTerminated:Z

    if-eqz v1, :cond_0

    .line 244
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v2, "startRanging: called on terminated session"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    return-void

    .line 248
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 249
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_1

    .line 250
    const-string/jumbo v1, "DiscoverySession"

    const-string/jumbo v2, "startRanging: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    return-void

    .line 254
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/DiscoverySession;->mClientId:I

    iget v2, p0, Landroid/net/wifi/aware/DiscoverySession;->mSessionId:I

    invoke-virtual {v0, v1, v2, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->startRanging(II[Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V

    .line 255
    return-void
.end method
