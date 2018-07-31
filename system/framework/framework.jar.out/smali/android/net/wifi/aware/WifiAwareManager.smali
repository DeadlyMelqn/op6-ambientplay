.class public Landroid/net/wifi/aware/WifiAwareManager;
.super Ljava/lang/Object;
.source "WifiAwareManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;,
        Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;
    }
.end annotation


# static fields
.field public static final ACTION_WIFI_AWARE_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.aware.action.WIFI_AWARE_STATE_CHANGED"

.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "WifiAwareManager"

.field private static final VDBG:Z = false

.field public static final WIFI_AWARE_DATA_PATH_ROLE_INITIATOR:I = 0x0

.field public static final WIFI_AWARE_DATA_PATH_ROLE_RESPONDER:I = 0x1


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLock:Ljava/lang/Object;

.field private mRangingListeners:Landroid/util/SparseArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/wifi/RttManager$RttListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/net/wifi/aware/IWifiAwareManager;


# direct methods
.method static synthetic -get0(Landroid/net/wifi/aware/WifiAwareManager;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareManager;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/wifi/aware/WifiAwareManager;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "-this"    # Landroid/net/wifi/aware/WifiAwareManager;

    .prologue
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mRangingListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/aware/IWifiAwareManager;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "service"    # Landroid/net/wifi/aware/IWifiAwareManager;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    .line 176
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mRangingListeners:Landroid/util/SparseArray;

    .line 180
    iput-object p1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    .line 181
    iput-object p2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    .line 182
    return-void
.end method


# virtual methods
.method public attach(Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p2, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    .line 267
    const/4 v0, 0x0

    invoke-virtual {p0, p3, v0, p1, p2}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    .line 268
    return-void
.end method

.method public attach(Landroid/net/wifi/aware/AttachCallback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 233
    invoke-virtual {p0, p2, v0, p1, v0}, Landroid/net/wifi/aware/WifiAwareManager;->attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    .line 234
    return-void
.end method

.method public attach(Landroid/os/Handler;Landroid/net/wifi/aware/ConfigRequest;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V
    .locals 12
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "configRequest"    # Landroid/net/wifi/aware/ConfigRequest;
    .param p3, "attachCallback"    # Landroid/net/wifi/aware/AttachCallback;
    .param p4, "identityChangedListener"    # Landroid/net/wifi/aware/IdentityChangedListener;

    .prologue
    .line 280
    iget-object v11, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v11

    .line 281
    if-nez p1, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 284
    .local v2, "looper":Landroid/os/Looper;
    :goto_0
    :try_start_1
    new-instance v3, Landroid/os/Binder;

    invoke-direct {v3}, Landroid/os/Binder;-><init>()V

    .line 285
    .local v3, "binder":Landroid/os/Binder;
    iget-object v7, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    .line 286
    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;

    move-object v1, p0

    move-object v4, p3

    move-object/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareEventCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;Landroid/os/Binder;Landroid/net/wifi/aware/AttachCallback;Landroid/net/wifi/aware/IdentityChangedListener;)V

    .line 288
    if-eqz p4, :cond_1

    const/4 v9, 0x1

    :goto_1
    move-object v4, v7

    move-object v5, v3

    move-object v7, v0

    move-object v8, p2

    .line 285
    invoke-interface/range {v4 .. v9}, Landroid/net/wifi/aware/IWifiAwareManager;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v11

    .line 293
    return-void

    .line 281
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v3    # "binder":Landroid/os/Binder;
    :cond_0
    :try_start_2
    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    .restart local v2    # "looper":Landroid/os/Looper;
    goto :goto_0

    .line 288
    .restart local v3    # "binder":Landroid/os/Binder;
    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    .line 289
    .end local v3    # "binder":Landroid/os/Binder;
    :catch_0
    move-exception v10

    .line 290
    .local v10, "e":Landroid/os/RemoteException;
    invoke-virtual {v10}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 280
    .end local v2    # "looper":Landroid/os/Looper;
    .end local v10    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v0

    monitor-exit v11

    throw v0
.end method

.method public createNetworkSpecifier(IIILandroid/net/wifi/aware/PeerHandle;[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 10
    .param p1, "clientId"    # I
    .param p2, "role"    # I
    .param p3, "sessionId"    # I
    .param p4, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p5, "pmk"    # [B
    .param p6, "passphrase"    # Ljava/lang/String;

    .prologue
    .line 434
    if-eqz p2, :cond_0

    .line 435
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 436
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 437
    const-string/jumbo v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    .line 436
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_0
    if-nez p2, :cond_1

    .line 441
    if-nez p4, :cond_1

    .line 442
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 443
    const-string/jumbo v1, "createNetworkSpecifier: Invalid peer handle (value of null) - not permitted on INITIATOR"

    .line 442
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 448
    :cond_1
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 449
    if-nez p4, :cond_2

    const/4 v1, 0x1

    .line 454
    :goto_0
    if-eqz p4, :cond_3

    iget v5, p4, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    .line 458
    :goto_1
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    .line 455
    const/4 v6, 0x0

    move v2, p2

    move v3, p1

    move v4, p3

    move-object v7, p5

    move-object/from16 v8, p6

    .line 448
    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;I)V

    return-object v0

    .line 450
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 454
    :cond_3
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public createNetworkSpecifier(II[B[BLjava/lang/String;)Landroid/net/NetworkSpecifier;
    .locals 10
    .param p1, "clientId"    # I
    .param p2, "role"    # I
    .param p3, "peer"    # [B
    .param p4, "pmk"    # [B
    .param p5, "passphrase"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 470
    if-eqz p2, :cond_0

    .line 471
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 472
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 473
    const-string/jumbo v1, "createNetworkSpecifier: Invalid \'role\' argument when creating a network specifier"

    .line 472
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 476
    :cond_0
    if-nez p2, :cond_1

    .line 477
    if-nez p3, :cond_1

    .line 478
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createNetworkSpecifier: Invalid peer MAC address - null not permitted on INITIATOR"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_1
    if-eqz p3, :cond_2

    array-length v0, p3

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    .line 483
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "createNetworkSpecifier: Invalid peer MAC address"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 486
    :cond_2
    new-instance v0, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;

    .line 487
    if-nez p3, :cond_3

    const/4 v1, 0x3

    .line 496
    :goto_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v9

    move v2, p2

    move v3, p1

    move v5, v4

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    .line 486
    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/aware/WifiAwareNetworkSpecifier;-><init>(IIIII[B[BLjava/lang/String;I)V

    return-object v0

    .line 488
    :cond_3
    const/4 v1, 0x2

    goto :goto_0
.end method

.method public disconnect(ILandroid/os/Binder;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "binder"    # Landroid/os/Binder;

    .prologue
    .line 300
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->disconnect(ILandroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 304
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    .locals 2

    .prologue
    .line 208
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1}, Landroid/net/wifi/aware/IWifiAwareManager;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAvailable()Z
    .locals 2

    .prologue
    .line 194
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1}, Landroid/net/wifi/aware/IWifiAwareManager;->isUsageEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public publish(ILandroid/os/Looper;Landroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .locals 8
    .param p1, "clientId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;

    .prologue
    .line 312
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    .line 313
    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v3, 0x1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    .line 312
    invoke-interface {v7, p1, p3, v0}, Landroid/net/wifi/aware/IWifiAwareManager;->publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    return-void

    .line 315
    :catch_0
    move-exception v6

    .line 316
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public sendMessage(IILandroid/net/wifi/aware/PeerHandle;[BII)V
    .locals 8
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "peerHandle"    # Landroid/net/wifi/aware/PeerHandle;
    .param p4, "message"    # [B
    .param p5, "messageId"    # I
    .param p6, "retryCount"    # I

    .prologue
    .line 384
    if-nez p3, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 386
    const-string/jumbo v1, "sendMessage: invalid peerHandle - must be non-null"

    .line 385
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    iget v3, p3, Landroid/net/wifi/aware/PeerHandle;->peerId:I

    move v1, p1

    move v2, p2

    move-object v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Landroid/net/wifi/aware/IWifiAwareManager;->sendMessage(III[BII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 401
    return-void

    .line 398
    :catch_0
    move-exception v7

    .line 399
    .local v7, "e":Landroid/os/RemoteException;
    invoke-virtual {v7}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public startRanging(II[Landroid/net/wifi/RttManager$RttParams;Landroid/net/wifi/RttManager$RttListener;)V
    .locals 4
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "params"    # [Landroid/net/wifi/RttManager$RttParams;
    .param p4, "listener"    # Landroid/net/wifi/RttManager$RttListener;

    .prologue
    .line 411
    const/4 v1, 0x0

    .line 413
    .local v1, "rangingKey":I
    :try_start_0
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    .line 414
    new-instance v3, Landroid/net/wifi/RttManager$ParcelableRttParams;

    invoke-direct {v3, p3}, Landroid/net/wifi/RttManager$ParcelableRttParams;-><init>([Landroid/net/wifi/RttManager$RttParams;)V

    .line 413
    invoke-interface {v2, p1, p2, v3}, Landroid/net/wifi/aware/IWifiAwareManager;->startRanging(IILandroid/net/wifi/RttManager$ParcelableRttParams;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 419
    iget-object v3, p0, Landroid/net/wifi/aware/WifiAwareManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 420
    :try_start_1
    iget-object v2, p0, Landroid/net/wifi/aware/WifiAwareManager;->mRangingListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, v1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 422
    return-void

    .line 415
    :catch_0
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 419
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public subscribe(ILandroid/os/Looper;Landroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/DiscoverySessionCallback;)V
    .locals 8
    .param p1, "clientId"    # I
    .param p2, "looper"    # Landroid/os/Looper;
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;
    .param p4, "callback"    # Landroid/net/wifi/aware/DiscoverySessionCallback;

    .prologue
    .line 345
    :try_start_0
    iget-object v7, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    .line 346
    new-instance v0, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;

    const/4 v3, 0x0

    move-object v1, p0

    move-object v2, p2

    move-object v4, p4

    move v5, p1

    invoke-direct/range {v0 .. v5}, Landroid/net/wifi/aware/WifiAwareManager$WifiAwareDiscoverySessionCallbackProxy;-><init>(Landroid/net/wifi/aware/WifiAwareManager;Landroid/os/Looper;ZLandroid/net/wifi/aware/DiscoverySessionCallback;I)V

    .line 345
    invoke-interface {v7, p1, p3, v0}, Landroid/net/wifi/aware/IWifiAwareManager;->subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    return-void

    .line 348
    :catch_0
    move-exception v6

    .line 349
    .local v6, "e":Landroid/os/RemoteException;
    invoke-virtual {v6}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public terminateSession(II)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I

    .prologue
    .line 375
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2}, Landroid/net/wifi/aware/IWifiAwareManager;->terminateSession(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    return-void

    .line 376
    :catch_0
    move-exception v0

    .line 377
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "publishConfig"    # Landroid/net/wifi/aware/PublishConfig;

    .prologue
    .line 328
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 332
    return-void

    .line 329
    :catch_0
    move-exception v0

    .line 330
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    .locals 2
    .param p1, "clientId"    # I
    .param p2, "sessionId"    # I
    .param p3, "subscribeConfig"    # Landroid/net/wifi/aware/SubscribeConfig;

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Landroid/net/wifi/aware/WifiAwareManager;->mService:Landroid/net/wifi/aware/IWifiAwareManager;

    invoke-interface {v1, p1, p2, p3}, Landroid/net/wifi/aware/IWifiAwareManager;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    return-void

    .line 362
    :catch_0
    move-exception v0

    .line 363
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
