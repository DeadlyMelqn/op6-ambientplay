.class public Landroid/net/lowpan/LowpanScanner;
.super Ljava/lang/Object;
.source "LowpanScanner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanScanner$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

.field private mChannelMask:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mTxPower:I


# direct methods
.method static synthetic -get0(Landroid/net/lowpan/LowpanScanner;)Landroid/net/lowpan/LowpanScanner$Callback;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanScanner;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    return-object v0
.end method

.method static synthetic -get1(Landroid/net/lowpan/LowpanScanner;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Landroid/net/lowpan/LowpanScanner;

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Landroid/net/lowpan/LowpanScanner;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanScanner;->TAG:Ljava/lang/String;

    .line 38
    return-void
.end method

.method constructor <init>(Landroid/net/lowpan/ILowpanInterface;)V
    .locals 1
    .param p1, "binder"    # Landroid/net/lowpan/ILowpanInterface;

    .prologue
    const/4 v0, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    .line 61
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;

    .line 62
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 63
    const v0, 0x7fffffff

    iput v0, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    .line 68
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    .line 69
    return-void
.end method

.method private createScanOptionMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 150
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 152
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 153
    sget-object v1, Landroid/net/lowpan/LowpanProperties;->KEY_CHANNEL_MASK:Landroid/net/lowpan/LowpanProperty;

    .line 154
    iget-object v2, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;->$INST$0:Landroid/net/lowpan/-$Lambda$ahIH8UUgV8jOvhfOz4liCd3-gII;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    .line 153
    invoke-virtual {v1, v0, v2}, Landroid/net/lowpan/LowpanProperty;->putInMap(Ljava/util/Map;Ljava/lang/Object;)V

    .line 157
    :cond_0
    iget v1, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    const v2, 0x7fffffff

    if-eq v1, v2, :cond_1

    .line 158
    sget-object v1, Landroid/net/lowpan/LowpanProperties;->KEY_MAX_TX_POWER:Landroid/net/lowpan/LowpanProperty;

    iget v2, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/net/lowpan/LowpanProperty;->putInMap(Ljava/util/Map;Ljava/lang/Object;)V

    .line 161
    :cond_1
    return-object v0
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanScanner_4627(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .prologue
    .line 154
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method


# virtual methods
.method public addChannel(I)V
    .locals 2
    .param p1, "channel"    # I

    .prologue
    .line 122
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 125
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-void
.end method

.method public getChannelMask()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 108
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    return-object v0
.end method

.method public getTxPower()I
    .locals 1

    .prologue
    .line 146
    iget v0, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    return v0
.end method

.method public setCallback(Landroid/net/lowpan/LowpanScanner$Callback;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/lowpan/LowpanScanner$Callback;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanScanner;->setCallback(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/os/Handler;)V

    .line 80
    return-void
.end method

.method public declared-synchronized setCallback(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/os/Handler;)V
    .locals 1
    .param p1, "cb"    # Landroid/net/lowpan/LowpanScanner$Callback;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    monitor-enter p0

    .line 73
    :try_start_0
    iput-object p1, p0, Landroid/net/lowpan/LowpanScanner;->mCallback:Landroid/net/lowpan/LowpanScanner$Callback;

    .line 74
    iput-object p2, p0, Landroid/net/lowpan/LowpanScanner;->mHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 75
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setChannelMask(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "mask":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 90
    if-nez p1, :cond_0

    .line 91
    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 100
    :goto_0
    return-void

    .line 93
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    .line 98
    :goto_1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 96
    :cond_1
    iget-object v0, p0, Landroid/net/lowpan/LowpanScanner;->mChannelMask:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto :goto_1
.end method

.method public setTxPower(I)V
    .locals 0
    .param p1, "txPower"    # I

    .prologue
    .line 137
    iput p1, p0, Landroid/net/lowpan/LowpanScanner;->mTxPower:I

    .line 138
    return-void
.end method

.method public startEnergyScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 254
    invoke-direct {p0}, Landroid/net/lowpan/LowpanScanner;->createScanOptionMap()Ljava/util/Map;

    move-result-object v1

    .line 257
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/net/lowpan/LowpanScanner$2;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanScanner$2;-><init>(Landroid/net/lowpan/LowpanScanner;)V

    .line 303
    .local v0, "binderListener":Landroid/net/lowpan/ILowpanEnergyScanCallback;
    :try_start_0
    iget-object v4, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v4, v1, v0}, Landroid/net/lowpan/ILowpanInterface;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 311
    return-void

    .line 308
    :catch_0
    move-exception v3

    .line 309
    .local v3, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v4

    throw v4

    .line 305
    .end local v3    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v2

    .line 306
    .local v2, "x":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public startNetScan()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    .prologue
    .line 172
    invoke-direct {p0}, Landroid/net/lowpan/LowpanScanner;->createScanOptionMap()Ljava/util/Map;

    move-result-object v1

    .line 175
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    new-instance v0, Landroid/net/lowpan/LowpanScanner$1;

    invoke-direct {v0, p0}, Landroid/net/lowpan/LowpanScanner$1;-><init>(Landroid/net/lowpan/LowpanScanner;)V

    .line 222
    .local v0, "binderListener":Landroid/net/lowpan/ILowpanNetScanCallback;
    :try_start_0
    iget-object v4, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v4, v1, v0}, Landroid/net/lowpan/ILowpanInterface;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    return-void

    .line 227
    :catch_0
    move-exception v3

    .line 228
    .local v3, "x":Landroid/os/ServiceSpecificException;
    invoke-static {v3}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v4

    throw v4

    .line 224
    .end local v3    # "x":Landroid/os/ServiceSpecificException;
    :catch_1
    move-exception v2

    .line 225
    .local v2, "x":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4
.end method

.method public stopEnergyScan()V
    .locals 2

    .prologue
    .line 320
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v1}, Landroid/net/lowpan/ILowpanInterface;->stopEnergyScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    return-void

    .line 322
    :catch_0
    move-exception v0

    .line 323
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public stopNetScan()V
    .locals 2

    .prologue
    .line 239
    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanScanner;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v1}, Landroid/net/lowpan/ILowpanInterface;->stopNetScan()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "x":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
