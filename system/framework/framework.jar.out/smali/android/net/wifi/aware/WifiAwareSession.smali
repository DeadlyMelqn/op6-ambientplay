.class public Landroid/net/wifi/aware/WifiAwareSession;
.super Ljava/lang/Object;
.source "WifiAwareSession.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareSession"

.field private static final VDBG:Z


# instance fields
.field private final mBinder:Landroid/os/Binder;

.field private final mClientId:I

.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private final mMgr:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/net/wifi/aware/WifiAwareManager;",
            ">;"
        }
    .end annotation
.end field

.field private mTerminated:Z


# direct methods
.method public constructor <init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Binder;I)V
    .locals 2
    .param p1, "manager"    # Landroid/net/wifi/aware/WifiAwareManager;
    .param p2, "binder"    # Landroid/os/Binder;
    .param p3, "clientId"    # I

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 46
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v0

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 52
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    .line 53
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    .line 54
    iput p3, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 57
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string/jumbo v1, "close"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 58
    return-void
.end method


# virtual methods
.method public close()V
    .locals 3

    .prologue
    .line 72
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 73
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 74
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "destroy: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    return-void

    .line 77
    :cond_0
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mBinder:Landroid/os/Binder;

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/aware/WifiAwareManager;->disconnect(ILandroid/os/Binder;)V

    .line 78
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    .line 79
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 80
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v1}, Ldalvik/system/CloseGuard;->close()V

    .line 81
    return-void
.end method

.method public createNetworkSpecifierOpen(I[B)Landroid/net/NetworkSpecifier;
    .locals 6
    .param p1, "role"    # I
    .param p2, "peer"    # [B

    .prologue
    const/4 v4, 0x0

    .line 221
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 222
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 223
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierOpen: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    return-object v4

    .line 226
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 227
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierOpen: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return-object v4

    .line 230
    :cond_1
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    move v2, p1

    move-object v3, p2

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkSpecifierPassphrase(I[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 6
    .param p1, "role"    # I
    .param p2, "peer"    # [B
    .param p3, "passphrase"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 264
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 265
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 266
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPassphrase: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-object v4

    .line 269
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 270
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPassphrase: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    return-object v4

    .line 273
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePassphrase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 274
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "Passphrase must meet length requirements"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 277
    :cond_2
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    move v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method public createNetworkSpecifierPmk(I[B[B)Landroid/net/NetworkSpecifier;
    .locals 6
    .param p1, "role"    # I
    .param p2, "peer"    # [B
    .param p3, "pmk"    # [B

    .prologue
    const/4 v5, 0x0

    .line 315
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 316
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 317
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPmk: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    return-object v5

    .line 320
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 321
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "createNetworkSpecifierPmk: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    return-object v5

    .line 324
    :cond_1
    invoke-static {p3}, Landroid/net/wifi/aware/WifiAwareUtils;->validatePmk([B)Z

    move-result v1

    if-nez v1, :cond_2

    .line 325
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "PMK must 32 bytes"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 327
    :cond_2
    iget v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager;->createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;

    move-result-object v1

    return-object v1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 87
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 91
    :cond_0
    iget-boolean v0, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-nez v0, :cond_1

    .line 92
    invoke-virtual {p0}, Landroid/net/wifi/aware/WifiAwareSession;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 97
    return-void

    .line 94
    :catchall_0
    move-exception v0

    .line 95
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 94
    throw v0
.end method

.method public publish(Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p2, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 132
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 133
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 134
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    return-void

    .line 137
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 138
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-void

    .line 141
    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 143
    return-void

    .line 141
    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method

.method public subscribe(Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;Landroid/os/Handler;)V
    .locals 3
    .param p1, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p2, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 178
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mMgr:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/aware/WifiAwareManager;

    .line 179
    .local v0, "mgr":Landroid/net/wifi/aware/WifiAwareManager;
    if-nez v0, :cond_0

    .line 180
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called post GC on WifiAwareManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    return-void

    .line 183
    :cond_0
    iget-boolean v1, p0, Landroid/net/wifi/aware/WifiAwareSession;->mTerminated:Z

    if-eqz v1, :cond_1

    .line 184
    const-string/jumbo v1, "WifiAwareSession"

    const-string/jumbo v2, "publish: called after termination"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 187
    :cond_1
    iget v2, p0, Landroid/net/wifi/aware/WifiAwareSession;->mClientId:I

    if-nez p3, :cond_2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v2, v1, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V

    .line 189
    return-void

    .line 187
    :cond_2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_0
.end method
