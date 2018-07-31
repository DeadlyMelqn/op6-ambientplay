.class public final Lcom/android/server/connectivity/IpConnectivityEventBuilder;
.super Ljava/lang/Object;
.source "IpConnectivityEventBuilder.java"


# static fields
.field private static final IFNAME_LINKLAYERS:[I

.field private static final IFNAME_PREFIXES:[Ljava/lang/String;

.field private static final KNOWN_PREFIX:I = 0x7

.field private static final TRANSPORT_LINKLAYER_MAP:[I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 376
    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    .line 378
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aput v4, v0, v7

    .line 379
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aput v6, v0, v3

    .line 380
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aput v3, v0, v4

    .line 381
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aput v5, v0, v5

    .line 382
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aput v7, v0, v6

    .line 383
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/16 v1, 0x8

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 384
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    const/16 v1, 0x9

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 400
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    .line 401
    const/4 v0, 0x7

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    .line 404
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "rmnet"

    aput-object v1, v0, v7

    .line 405
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v4, v0, v7

    .line 407
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "wlan"

    aput-object v1, v0, v3

    .line 408
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v6, v0, v3

    .line 410
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "bt-pan"

    aput-object v1, v0, v4

    .line 411
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aput v3, v0, v4

    .line 413
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "p2p"

    aput-object v1, v0, v5

    .line 414
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    const/4 v1, 0x7

    aput v1, v0, v5

    .line 416
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "aware"

    aput-object v1, v0, v6

    .line 417
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    const/16 v1, 0x8

    aput v1, v0, v6

    .line 419
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "eth"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 420
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    const/4 v1, 0x5

    aput v5, v0, v1

    .line 422
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    const-string/jumbo v1, "wpan"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 423
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    const/16 v1, 0x9

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 56
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    return-void
.end method

.method private static buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 1
    .param p0, "netId"    # I
    .param p1, "transports"    # J
    .param p3, "ifname"    # Ljava/lang/String;

    .prologue
    .line 136
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;-><init>()V

    .line 137
    .local v0, "ev":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->networkId:I

    .line 138
    iput-wide p1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    .line 139
    if-eqz p3, :cond_0

    .line 140
    iput-object p3, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 142
    :cond_0
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V

    .line 143
    return-object v0
.end method

.method private static bytesToInts([B)[I
    .locals 3
    .param p0, "in"    # [B

    .prologue
    .line 301
    array-length v2, p0

    new-array v1, v2, [I

    .line 302
    .local v1, "out":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    .line 303
    aget-byte v2, p0, v0

    and-int/lit16 v2, v2, 0xff

    aput v2, v1, v0

    .line 302
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 305
    :cond_0
    return-object v1
.end method

.method private static ifnameToLinkLayer(Ljava/lang/String;)I
    .locals 3
    .param p0, "ifname"    # Ljava/lang/String;

    .prologue
    .line 390
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v2, 0x7

    if-ge v0, v2, :cond_1

    .line 391
    sget-object v2, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_PREFIXES:[Ljava/lang/String;

    aget-object v1, v2, v0

    .line 392
    .local v1, "pattern":Ljava/lang/String;
    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 393
    sget-object v2, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->IFNAME_LINKLAYERS:[I

    aget v2, v2, v0

    return v2

    .line 390
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 396
    .end local v1    # "pattern":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method private static inferLinkLayer(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;)V
    .locals 6
    .param p0, "ev"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .prologue
    .line 344
    const/4 v0, 0x0

    .line 345
    .local v0, "linkLayer":I
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 346
    iget-wide v2, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->transports:J

    invoke-static {v2, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportsToLinkLayer(J)I

    move-result v0

    .line 350
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    .line 351
    return-void

    .line 347
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 348
    iget-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ifnameToLinkLayer(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 353
    :cond_2
    iput v0, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->linkLayer:I

    .line 354
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->ifName:Ljava/lang/String;

    .line 355
    return-void
.end method

.method private static ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I
    .locals 1
    .param p0, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    .prologue
    .line 327
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_0

    .line 328
    const/4 v0, 0x3

    return v0

    .line 330
    :cond_0
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv6:Z

    if-eqz v0, :cond_1

    .line 331
    const/4 v0, 0x2

    return v0

    .line 333
    :cond_1
    iget-boolean v0, p0, Landroid/net/metrics/DefaultNetworkEvent;->prevIPv4:Z

    if-eqz v0, :cond_2

    .line 334
    const/4 v0, 0x1

    return v0

    .line 336
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private static isBitSet(II)Z
    .locals 3
    .param p0, "flags"    # I
    .param p1, "bit"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 340
    shl-int v2, v0, p1

    and-int/2addr v2, p0

    if-eqz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private static netIdOf(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;
    .locals 1
    .param p0, "netid"    # I

    .prologue
    .line 321
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;-><init>()V

    .line 322
    .local v0, "ni":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;->networkId:I

    .line 323
    return-object v0
.end method

.method public static serialize(ILjava/util/List;)[B
    .locals 2
    .param p0, "dropped"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "events":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;-><init>()V

    .line 63
    .local v0, "log":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    invoke-interface {p1, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 64
    iput p0, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->droppedEvents:I

    .line 65
    iget-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->events:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    array-length v1, v1

    if-gtz v1, :cond_0

    if-lez p0, :cond_1

    .line 67
    :cond_0
    const/4 v1, 0x2

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->version:I

    .line 69
    :cond_1
    invoke-static {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityLog;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    return-object v1
.end method

.method private static setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V
    .locals 5
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfProgramEvent;

    .prologue
    const/4 v4, 0x1

    .line 258
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;-><init>()V

    .line 259
    .local v0, "apfProgramEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;
    iget-wide v2, p1, Landroid/net/metrics/ApfProgramEvent;->lifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->lifetime:J

    .line 260
    iget-wide v2, p1, Landroid/net/metrics/ApfProgramEvent;->actualLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->effectiveLifetime:J

    .line 261
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->filteredRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->filteredRas:I

    .line 262
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->currentRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->currentRas:I

    .line 263
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->programLength:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->programLength:I

    .line 264
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->dropMulticast:Z

    .line 267
    :cond_0
    iget v1, p1, Landroid/net/metrics/ApfProgramEvent;->flags:I

    invoke-static {v1, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->isBitSet(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 268
    iput-boolean v4, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;->hasIpv4Addr:Z

    .line 270
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfProgramEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 271
    return-void
.end method

.method private static setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ApfStats;

    .prologue
    .line 275
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;-><init>()V

    .line 276
    .local v0, "apfStatistics":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;
    iget-wide v2, p1, Landroid/net/metrics/ApfStats;->durationMs:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->durationMs:J

    .line 277
    iget v1, p1, Landroid/net/metrics/ApfStats;->receivedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->receivedRas:I

    .line 278
    iget v1, p1, Landroid/net/metrics/ApfStats;->matchingRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->matchingRas:I

    .line 279
    iget v1, p1, Landroid/net/metrics/ApfStats;->droppedRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->droppedRas:I

    .line 280
    iget v1, p1, Landroid/net/metrics/ApfStats;->zeroLifetimeRas:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->zeroLifetimeRas:I

    .line 281
    iget v1, p1, Landroid/net/metrics/ApfStats;->parseErrors:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->parseErrors:I

    .line 282
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdates:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdates:I

    .line 283
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAll:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAll:I

    .line 284
    iget v1, p1, Landroid/net/metrics/ApfStats;->programUpdatesAllowingMulticast:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->programUpdatesAllowingMulticast:I

    .line 285
    iget v1, p1, Landroid/net/metrics/ApfStats;->maxProgramSize:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;->maxProgramSize:I

    .line 286
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setApfStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ApfStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 287
    return-void
.end method

.method private static setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DefaultNetworkEvent;

    .prologue
    .line 230
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;-><init>()V

    .line 231
    .local v0, "defaultNetworkEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;
    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 232
    iget v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->prevNetId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 233
    iget-object v1, p1, Landroid/net/metrics/DefaultNetworkEvent;->transportTypes:[I

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->transportTypes:[I

    .line 234
    invoke-static {p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->ipSupportOf(Landroid/net/metrics/DefaultNetworkEvent;)I

    move-result v1

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;->previousNetworkIpSupport:I

    .line 235
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DefaultNetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 236
    return-void
.end method

.method private static setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpClientEvent;

    .prologue
    .line 207
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 208
    .local v0, "dhcpEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    iget-object v1, p1, Landroid/net/metrics/DhcpClientEvent;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setStateTransition(Ljava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 209
    iget v1, p1, Landroid/net/metrics/DhcpClientEvent;->durationMs:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->durationMs:I

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 211
    return-void
.end method

.method private static setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/DhcpErrorEvent;

    .prologue
    .line 201
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;-><init>()V

    .line 202
    .local v0, "dhcpEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;
    iget v1, p1, Landroid/net/metrics/DhcpErrorEvent;->errorCode:I

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;->setErrorCode(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;

    .line 203
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDhcpEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DHCPEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 204
    return-void
.end method

.method private static setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/os/Parcelable;

    .prologue
    const/4 v1, 0x1

    .line 147
    instance-of v0, p1, Landroid/net/metrics/DhcpErrorEvent;

    if-eqz v0, :cond_0

    .line 148
    check-cast p1, Landroid/net/metrics/DhcpErrorEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpErrorEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpErrorEvent;)V

    .line 149
    return v1

    .line 152
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_0
    instance-of v0, p1, Landroid/net/metrics/DhcpClientEvent;

    if-eqz v0, :cond_1

    .line 153
    check-cast p1, Landroid/net/metrics/DhcpClientEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDhcpClientEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DhcpClientEvent;)V

    .line 154
    return v1

    .line 157
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_1
    instance-of v0, p1, Landroid/net/metrics/IpManagerEvent;

    if-eqz v0, :cond_2

    .line 158
    check-cast p1, Landroid/net/metrics/IpManagerEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V

    .line 159
    return v1

    .line 162
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_2
    instance-of v0, p1, Landroid/net/metrics/IpReachabilityEvent;

    if-eqz v0, :cond_3

    .line 163
    check-cast p1, Landroid/net/metrics/IpReachabilityEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V

    .line 164
    return v1

    .line 167
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_3
    instance-of v0, p1, Landroid/net/metrics/DefaultNetworkEvent;

    if-eqz v0, :cond_4

    .line 168
    check-cast p1, Landroid/net/metrics/DefaultNetworkEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setDefaultNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/DefaultNetworkEvent;)V

    .line 169
    return v1

    .line 172
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_4
    instance-of v0, p1, Landroid/net/metrics/NetworkEvent;

    if-eqz v0, :cond_5

    .line 173
    check-cast p1, Landroid/net/metrics/NetworkEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V

    .line 174
    return v1

    .line 177
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_5
    instance-of v0, p1, Landroid/net/metrics/ValidationProbeEvent;

    if-eqz v0, :cond_6

    .line 178
    check-cast p1, Landroid/net/metrics/ValidationProbeEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V

    .line 179
    return v1

    .line 182
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_6
    instance-of v0, p1, Landroid/net/metrics/ApfProgramEvent;

    if-eqz v0, :cond_7

    .line 183
    check-cast p1, Landroid/net/metrics/ApfProgramEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfProgramEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfProgramEvent;)V

    .line 184
    return v1

    .line 187
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_7
    instance-of v0, p1, Landroid/net/metrics/ApfStats;

    if-eqz v0, :cond_8

    .line 188
    check-cast p1, Landroid/net/metrics/ApfStats;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setApfStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ApfStats;)V

    .line 189
    return v1

    .line 192
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_8
    instance-of v0, p1, Landroid/net/metrics/RaEvent;

    if-eqz v0, :cond_9

    .line 193
    check-cast p1, Landroid/net/metrics/RaEvent;

    .end local p1    # "in":Landroid/os/Parcelable;
    invoke-static {p0, p1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V

    .line 194
    return v1

    .line 197
    .restart local p1    # "in":Landroid/os/Parcelable;
    :cond_9
    const/4 v0, 0x0

    return v0
.end method

.method private static setIpManagerEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpManagerEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpManagerEvent;

    .prologue
    .line 215
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;-><init>()V

    .line 216
    .local v0, "ipProvisioningEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;
    iget v1, p1, Landroid/net/metrics/IpManagerEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->eventType:I

    .line 217
    iget-wide v2, p1, Landroid/net/metrics/IpManagerEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;->latencyMs:I

    .line 218
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpProvisioningEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpProvisioningEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 219
    return-void
.end method

.method private static setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/IpReachabilityEvent;)V
    .locals 2
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/IpReachabilityEvent;

    .prologue
    .line 223
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;-><init>()V

    .line 224
    .local v0, "ipReachabilityEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;
    iget v1, p1, Landroid/net/metrics/IpReachabilityEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;->eventType:I

    .line 225
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setIpReachabilityEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpReachabilityEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 226
    return-void
.end method

.method private static setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/NetworkEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/NetworkEvent;

    .prologue
    .line 240
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;-><init>()V

    .line 241
    .local v0, "networkEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;
    iget v1, p1, Landroid/net/metrics/NetworkEvent;->netId:I

    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->netIdOf(I)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->networkId:Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkId;

    .line 242
    iget v1, p1, Landroid/net/metrics/NetworkEvent;->eventType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->eventType:I

    .line 243
    iget-wide v2, p1, Landroid/net/metrics/NetworkEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;->latencyMs:I

    .line 244
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setNetworkEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$NetworkEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 245
    return-void
.end method

.method private static setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/RaEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/RaEvent;

    .prologue
    .line 290
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;-><init>()V

    .line 291
    .local v0, "raEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routerLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routerLifetime:J

    .line 292
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixValidLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixValidLifetime:J

    .line 293
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->prefixPreferredLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->prefixPreferredLifetime:J

    .line 294
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->routeInfoLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->routeInfoLifetime:J

    .line 295
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->rdnssLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->rdnssLifetime:J

    .line 296
    iget-wide v2, p1, Landroid/net/metrics/RaEvent;->dnsslLifetime:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;->dnsslLifetime:J

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setRaEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$RaEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 298
    return-void
.end method

.method private static setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/net/metrics/ValidationProbeEvent;)V
    .locals 4
    .param p0, "out"    # Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .param p1, "in"    # Landroid/net/metrics/ValidationProbeEvent;

    .prologue
    .line 249
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;-><init>()V

    .line 250
    .local v0, "validationProbeEvent":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;
    iget-wide v2, p1, Landroid/net/metrics/ValidationProbeEvent;->durationMs:J

    long-to-int v1, v2

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->latencyMs:I

    .line 251
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->probeType:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeType:I

    .line 252
    iget v1, p1, Landroid/net/metrics/ValidationProbeEvent;->returnCode:I

    iput v1, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;->probeResult:I

    .line 253
    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setValidationProbeEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ValidationProbeEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 254
    return-void
.end method

.method private static toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    .locals 5
    .param p0, "counts"    # Landroid/util/SparseIntArray;

    .prologue
    .line 309
    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    .line 310
    .local v3, "s":I
    new-array v2, v3, [Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 311
    .local v2, "pairs":[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v3, :cond_0

    .line 312
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;-><init>()V

    .line 313
    .local v1, "p":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->key:I

    .line 314
    invoke-virtual {p0, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    iput v4, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;->value:I

    .line 315
    aput-object v1, v2, v0

    .line 311
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 317
    .end local v1    # "p":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;
    :cond_0
    return-object v2
.end method

.method public static toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 5
    .param p0, "ev"    # Landroid/net/ConnectivityMetricsEvent;

    .prologue
    .line 85
    iget v1, p0, Landroid/net/ConnectivityMetricsEvent;->netId:I

    iget-wide v2, p0, Landroid/net/ConnectivityMetricsEvent;->transports:J

    iget-object v4, p0, Landroid/net/ConnectivityMetricsEvent;->ifname:Ljava/lang/String;

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    .line 86
    .local v0, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    iget-wide v2, p0, Landroid/net/ConnectivityMetricsEvent;->timestamp:J

    iput-wide v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->timeMs:J

    .line 87
    iget-object v1, p0, Landroid/net/ConnectivityMetricsEvent;->data:Landroid/os/Parcelable;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->setEvent(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;Landroid/os/Parcelable;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_0
    return-object v0
.end method

.method public static toProto(Landroid/net/metrics/ConnectStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 6
    .param p0, "in"    # Landroid/net/metrics/ConnectStats;

    .prologue
    .line 95
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;-><init>()V

    .line 96
    .local v1, "stats":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;
    iget v2, p0, Landroid/net/metrics/ConnectStats;->connectCount:I

    iput v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectCount:I

    .line 97
    iget v2, p0, Landroid/net/metrics/ConnectStats;->connectBlockingCount:I

    iput v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->connectBlockingCount:I

    .line 98
    iget v2, p0, Landroid/net/metrics/ConnectStats;->ipv6ConnectCount:I

    iput v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->ipv6AddrCount:I

    .line 99
    iget-object v2, p0, Landroid/net/metrics/ConnectStats;->latencies:Landroid/util/IntArray;

    invoke-virtual {v2}, Landroid/util/IntArray;->toArray()[I

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->latenciesMs:[I

    .line 100
    iget-object v2, p0, Landroid/net/metrics/ConnectStats;->errnos:Landroid/util/SparseIntArray;

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toPairArray(Landroid/util/SparseIntArray;)[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;->errnosCounters:[Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$Pair;

    .line 101
    iget v2, p0, Landroid/net/metrics/ConnectStats;->netId:I

    iget-wide v4, p0, Landroid/net/metrics/ConnectStats;->transports:J

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    .line 102
    .local v0, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setConnectStatistics(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$ConnectStatistics;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 103
    return-object v0
.end method

.method public static toProto(Landroid/net/metrics/DnsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 6
    .param p0, "in"    # Landroid/net/metrics/DnsEvent;

    .prologue
    .line 109
    new-instance v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;

    invoke-direct {v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;-><init>()V

    .line 110
    .local v0, "dnsLookupBatch":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;
    iget v2, p0, Landroid/net/metrics/DnsEvent;->eventCount:I

    invoke-virtual {p0, v2}, Landroid/net/metrics/DnsEvent;->resize(I)V

    .line 111
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->eventTypes:[B

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->eventTypes:[I

    .line 112
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->returnCodes:[B

    invoke-static {v2}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->bytesToInts([B)[I

    move-result-object v2

    iput-object v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->returnCodes:[I

    .line 113
    iget-object v2, p0, Landroid/net/metrics/DnsEvent;->latenciesMs:[I

    iput-object v2, v0, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;->latenciesMs:[I

    .line 114
    iget v2, p0, Landroid/net/metrics/DnsEvent;->netId:I

    iget-wide v4, p0, Landroid/net/metrics/DnsEvent;->transports:J

    const/4 v3, 0x0

    invoke-static {v2, v4, v5, v3}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v1

    .line 115
    .local v1, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setDnsLookupBatch(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$DNSLookupBatch;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 116
    return-object v1
.end method

.method public static toProto(Landroid/net/metrics/WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    .locals 6
    .param p0, "in"    # Landroid/net/metrics/WakeupStats;

    .prologue
    .line 121
    new-instance v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;

    invoke-direct {v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;-><init>()V

    .line 122
    .local v1, "wakeupStats":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;
    invoke-virtual {p0}, Landroid/net/metrics/WakeupStats;->updateDuration()V

    .line 123
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->durationSec:J

    iput-wide v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->durationSec:J

    .line 124
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->totalWakeups:J

    iput-wide v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->totalWakeups:J

    .line 125
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->rootWakeups:J

    iput-wide v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->rootWakeups:J

    .line 126
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->systemWakeups:J

    iput-wide v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->systemWakeups:J

    .line 127
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->nonApplicationWakeups:J

    iput-wide v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->nonApplicationWakeups:J

    .line 128
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->applicationWakeups:J

    iput-wide v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->applicationWakeups:J

    .line 129
    iget-wide v2, p0, Landroid/net/metrics/WakeupStats;->noUidWakeups:J

    iput-wide v2, v1, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;->noUidWakeups:J

    .line 130
    const-wide/16 v2, 0x0

    iget-object v4, p0, Landroid/net/metrics/WakeupStats;->iface:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5, v2, v3, v4}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->buildEvent(IJLjava/lang/String;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v0

    .line 131
    .local v0, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;->setWakeupStats(Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$WakeupStats;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    .line 132
    return-object v0
.end method

.method public static toProto(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/ConnectivityMetricsEvent;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "eventsIn":Ljava/util/List;, "Ljava/util/List<Landroid/net/ConnectivityMetricsEvent;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 74
    .local v0, "eventsOut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "in$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityMetricsEvent;

    .line 75
    .local v1, "in":Landroid/net/ConnectivityMetricsEvent;
    invoke-static {v1}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->toProto(Landroid/net/ConnectivityMetricsEvent;)Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;

    move-result-object v3

    .line 76
    .local v3, "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    if-eqz v3, :cond_0

    .line 79
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    .end local v1    # "in":Landroid/net/ConnectivityMetricsEvent;
    .end local v3    # "out":Lcom/android/server/connectivity/metrics/nano/IpConnectivityLogClass$IpConnectivityEvent;
    :cond_1
    return-object v0
.end method

.method private static transportToLinkLayer(I)I
    .locals 2
    .param p0, "transport"    # I

    .prologue
    const/4 v1, 0x0

    .line 370
    if-ltz p0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    array-length v0, v0

    if-ge p0, v0, :cond_0

    .line 371
    sget-object v0, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->TRANSPORT_LINKLAYER_MAP:[I

    aget v0, v0, p0

    return v0

    .line 373
    :cond_0
    return v1
.end method

.method private static transportsToLinkLayer(J)I
    .locals 2
    .param p0, "transports"    # J

    .prologue
    .line 358
    invoke-static {p0, p1}, Ljava/lang/Long;->bitCount(J)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 365
    const/4 v1, 0x6

    return v1

    .line 360
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 362
    :pswitch_1
    invoke-static {p0, p1}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v0

    .line 363
    .local v0, "t":I
    invoke-static {v0}, Lcom/android/server/connectivity/IpConnectivityEventBuilder;->transportToLinkLayer(I)I

    move-result v1

    return v1

    .line 358
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
