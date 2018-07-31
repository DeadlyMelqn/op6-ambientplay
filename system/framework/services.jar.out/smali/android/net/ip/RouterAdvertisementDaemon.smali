.class public Landroid/net/ip/RouterAdvertisementDaemon;
.super Ljava/lang/Object;
.source "RouterAdvertisementDaemon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;,
        Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;,
        Landroid/net/ip/RouterAdvertisementDaemon$RaParams;,
        Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;
    }
.end annotation


# static fields
.field private static final ALL_NODES:[B

.field private static final DAY_IN_SECONDS:I = 0x15180

.field private static final DEFAULT_LIFETIME:I = 0xe10

.field private static final ICMPV6_ND_ROUTER_ADVERT:B

.field private static final ICMPV6_ND_ROUTER_SOLICIT:B

.field private static final MAX_RTR_ADV_INTERVAL_SEC:I = 0x258

.field private static final MAX_URGENT_RTR_ADVERTISEMENTS:I = 0x5

.field private static final MIN_DELAY_BETWEEN_RAS_SEC:I = 0x3

.field private static final MIN_RA_HEADER_SIZE:I = 0x10

.field private static final MIN_RTR_ADV_INTERVAL_SEC:I = 0x12c

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAllNodes:Ljava/net/InetSocketAddress;

.field private final mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mHwAddr:[B

.field private final mIfIndex:I

.field private final mIfName:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private volatile mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

.field private final mRA:[B
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaLength:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private volatile mSocket:Ljava/io/FileDescriptor;

.field private volatile mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;


# direct methods
.method static synthetic -get0()B
    .locals 1

    sget-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/net/InetSocketAddress;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    return-object v0
.end method

.method static synthetic -get3(Landroid/net/ip/RouterAdvertisementDaemon;)Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    return-object v0
.end method

.method static synthetic -get4(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/lang/Object;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get5(Landroid/net/ip/RouterAdvertisementDaemon;)I
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    return v0
.end method

.method static synthetic -get6(Landroid/net/ip/RouterAdvertisementDaemon;)Ljava/io/FileDescriptor;
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/net/ip/RouterAdvertisementDaemon;)Z
    .locals 1
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Landroid/net/ip/RouterAdvertisementDaemon;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;

    .prologue
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V

    return-void
.end method

.method static synthetic -wrap2(Landroid/net/ip/RouterAdvertisementDaemon;Ljava/net/InetSocketAddress;)V
    .locals 0
    .param p0, "-this"    # Landroid/net/ip/RouterAdvertisementDaemon;
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeSendRA(Ljava/net/InetSocketAddress;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    const-class v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    .line 72
    const/16 v0, 0x85

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_SOLICIT:B

    .line 73
    const/16 v0, 0x86

    invoke-static {v0}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v0

    sput-byte v0, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    .line 95
    const/16 v0, 0x10

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    .line 70
    return-void

    .line 95
    :array_0
    .array-data 1
        -0x1t
        0x2t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Ljava/lang/String;I[B)V
    .locals 3
    .param p1, "ifname"    # Ljava/lang/String;
    .param p2, "ifindex"    # I
    .param p3, "hwaddr"    # [B

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    .line 110
    const/16 v0, 0x500

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    .line 227
    iput-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfName:Ljava/lang/String;

    .line 228
    iput p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    .line 229
    iput-object p3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mHwAddr:[B

    .line 230
    new-instance v0, Ljava/net/InetSocketAddress;

    iget v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->getAllNodesForScopeId(I)Ljava/net/Inet6Address;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 231
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;-><init>(Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    .line 232
    return-void
.end method

.method private static asByte(I)B
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 350
    int-to-byte v0, p0

    return v0
.end method

.method private static asShort(I)S
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 351
    int-to-short v0, p0

    return v0
.end method

.method private assembleRaLocked()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 275
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    invoke-static {v6}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 276
    .local v4, "ra":Ljava/nio/ByteBuffer;
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 278
    const/4 v5, 0x0

    .line 281
    .local v5, "shouldSendRA":Z
    :try_start_0
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_0

    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-boolean v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->hasDefaultRoute:Z

    :goto_0
    invoke-static {v4, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putHeader(Ljava/nio/ByteBuffer;Z)V

    .line 282
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mHwAddr:[B

    invoke-static {v4, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putSlla(Ljava/nio/ByteBuffer;[B)V

    .line 283
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 292
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    if-eqz v6, :cond_2

    .line 293
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->mtu:I

    invoke-static {v4, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putMtu(Ljava/nio/ByteBuffer;I)V

    .line 294
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 296
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ipp$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 297
    .local v2, "ipp":Landroid/net/IpPrefix;
    const/16 v6, 0xe10

    const/16 v8, 0xe10

    invoke-static {v4, v2, v6, v8}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 298
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 299
    const/4 v5, 0x1

    goto :goto_1

    .end local v2    # "ipp":Landroid/net/IpPrefix;
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_0
    move v6, v7

    .line 281
    goto :goto_0

    .line 302
    .restart local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_1
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    if-lez v6, :cond_2

    .line 303
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    iget-object v6, v6, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    const/16 v8, 0xe10

    invoke-static {v4, v6, v8}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 304
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 305
    const/4 v5, 0x1

    .line 309
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_2
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v6}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getPrefixes()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "ipp$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 310
    .restart local v2    # "ipp":Landroid/net/IpPrefix;
    const/4 v6, 0x0

    const/4 v8, 0x0

    invoke-static {v4, v2, v6, v8}, Landroid/net/ip/RouterAdvertisementDaemon;->putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V

    .line 311
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 312
    const/4 v5, 0x1

    goto :goto_2

    .line 315
    .end local v2    # "ipp":Landroid/net/IpPrefix;
    :cond_3
    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    invoke-virtual {v6}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->getDnses()Ljava/util/Set;

    move-result-object v0

    .line 316
    .local v0, "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 317
    const/4 v6, 0x0

    invoke-static {v4, v0, v6}, Landroid/net/ip/RouterAdvertisementDaemon;->putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V

    .line 318
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    iput v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_0
    .catch Ljava/nio/BufferOverflowException; {:try_start_0 .. :try_end_0} :catch_0

    .line 319
    const/4 v5, 0x1

    .line 329
    .end local v0    # "deprecatedDnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    .end local v3    # "ipp$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    if-nez v5, :cond_5

    .line 330
    iput v7, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    .line 332
    :cond_5
    return-void

    .line 321
    :catch_0
    move-exception v1

    .line 325
    .local v1, "e":Ljava/nio/BufferOverflowException;
    sget-object v6, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not construct new RA: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method private closeSocket()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 596
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    if-eqz v1, :cond_0

    .line 598
    :try_start_0
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v1}, Llibcore/io/IoBridge;->closeAndSignalBlockedThreads(Ljava/io/FileDescriptor;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 601
    :cond_0
    :goto_0
    iput-object v2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 602
    return-void

    .line 599
    :catch_0
    move-exception v0

    .local v0, "ignored":Ljava/io/IOException;
    goto :goto_0
.end method

.method private createSocket()Z
    .locals 8

    .prologue
    .line 574
    const/16 v0, 0x12c

    .line 576
    .local v0, "SEND_TIMEOUT_MS":I
    const/16 v3, -0xbd

    invoke-static {v3}, Landroid/net/TrafficStats;->getAndSetThreadStatsTag(I)I

    move-result v2

    .line 578
    .local v2, "oldTag":I
    :try_start_0
    sget v3, Landroid/system/OsConstants;->AF_INET6:I

    sget v4, Landroid/system/OsConstants;->SOCK_RAW:I

    sget v5, Landroid/system/OsConstants;->IPPROTO_ICMPV6:I

    invoke-static {v3, v4, v5}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v3

    iput-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 581
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_SNDTIMEO:I

    const-wide/16 v6, 0x12c

    invoke-static {v6, v7}, Landroid/system/StructTimeval;->fromMillis(J)Landroid/system/StructTimeval;

    move-result-object v6

    .line 580
    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->setsockoptTimeval(Ljava/io/FileDescriptor;IILandroid/system/StructTimeval;)V

    .line 582
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    sget v4, Landroid/system/OsConstants;->SOL_SOCKET:I

    sget v5, Landroid/system/OsConstants;->SO_BINDTODEVICE:I

    iget-object v6, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfName:Ljava/lang/String;

    invoke-static {v3, v4, v5, v6}, Landroid/system/Os;->setsockoptIfreq(Ljava/io/FileDescriptor;IILjava/lang/String;)V

    .line 583
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    invoke-static {v3}, Landroid/net/NetworkUtils;->protectFromVpn(Ljava/io/FileDescriptor;)Z

    .line 584
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    invoke-static {v3, v4}, Landroid/net/NetworkUtils;->setupRaSocket(Ljava/io/FileDescriptor;I)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 589
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 592
    const/4 v3, 0x1

    return v3

    .line 585
    :catch_0
    move-exception v1

    .line 586
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v3, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Failed to create RA daemon socket: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 587
    const/4 v3, 0x0

    .line 589
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 587
    return v3

    .line 588
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 589
    invoke-static {v2}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 588
    throw v3
.end method

.method private static getAllNodesForScopeId(I)Ljava/net/Inet6Address;
    .locals 4
    .param p0, "scopeId"    # I

    .prologue
    .line 343
    :try_start_0
    const-string/jumbo v1, "ff02::1"

    sget-object v2, Landroid/net/ip/RouterAdvertisementDaemon;->ALL_NODES:[B

    invoke-static {v1, v2, p0}, Ljava/net/Inet6Address;->getByAddress(Ljava/lang/String;[BI)Ljava/net/Inet6Address;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 344
    :catch_0
    move-exception v0

    .line 345
    .local v0, "uhe":Ljava/net/UnknownHostException;
    sget-object v1, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to construct ff02::1 InetAddress: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const/4 v1, 0x0

    return-object v1
.end method

.method private isSocketValid()Z
    .locals 2

    .prologue
    .line 605
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    .line 606
    .local v0, "s":Ljava/io/FileDescriptor;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->valid()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isSuitableDestination(Ljava/net/InetSocketAddress;)Z
    .locals 5
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 610
    iget-object v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    invoke-virtual {v3, p1}, Ljava/net/InetSocketAddress;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 611
    return v1

    .line 614
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 615
    .local v0, "destip":Ljava/net/InetAddress;
    instance-of v3, v0, Ljava/net/Inet6Address;

    if-eqz v3, :cond_2

    .line 616
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v3

    .line 615
    if-eqz v3, :cond_2

    .line 617
    check-cast v0, Ljava/net/Inet6Address;

    .end local v0    # "destip":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/Inet6Address;->getScopeId()I

    move-result v3

    iget v4, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mIfIndex:I

    if-ne v3, v4, :cond_1

    .line 615
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 617
    goto :goto_0

    .restart local v0    # "destip":Ljava/net/InetAddress;
    :cond_2
    move v1, v2

    .line 615
    goto :goto_0
.end method

.method private maybeNotifyMulticastTransmitter()V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 336
    .local v0, "m":Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;
    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->hup()V

    .line 339
    :cond_0
    return-void
.end method

.method private maybeSendRA(Ljava/net/InetSocketAddress;)V
    .locals 8
    .param p1, "dest"    # Ljava/net/InetSocketAddress;

    .prologue
    .line 621
    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;->isSuitableDestination(Ljava/net/InetSocketAddress;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 622
    :cond_0
    iget-object p1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mAllNodes:Ljava/net/InetSocketAddress;

    .line 626
    :cond_1
    :try_start_0
    iget-object v7, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0

    .line 627
    :try_start_1
    iget v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v1, 0x10

    if-ge v0, v1, :cond_2

    :try_start_2
    monitor-exit v7
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/SocketException; {:try_start_2 .. :try_end_2} :catch_0

    .line 629
    return-void

    .line 631
    :cond_2
    :try_start_3
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mSocket:Ljava/io/FileDescriptor;

    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRA:[B

    iget v3, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaLength:I

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Landroid/system/Os;->sendto(Ljava/io/FileDescriptor;[BIIILjava/net/SocketAddress;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v7

    .line 633
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "RA sendto "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    :cond_3
    :goto_0
    return-void

    .line 626
    :catchall_0
    move-exception v0

    monitor-exit v7

    throw v0
    :try_end_4
    .catch Landroid/system/ErrnoException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_0

    .line 634
    :catch_0
    move-exception v6

    .line 635
    .local v6, "e":Ljava/lang/Exception;
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->isSocketValid()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    sget-object v0, Landroid/net/ip/RouterAdvertisementDaemon;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendto error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static putExpandedFlagsOption(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p0, "ra"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v4, 0x0

    .line 417
    const/16 v1, 0x1a

    .line 418
    .local v1, "ND_OPTION_EFO":B
    const/4 v0, 0x1

    .line 420
    .local v0, "EFO_NUM_8OCTETS":B
    const/16 v2, 0x1a

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 421
    const/4 v3, 0x1

    .line 420
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 422
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v3

    .line 420
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 424
    return-void
.end method

.method private static putHeader(Ljava/nio/ByteBuffer;Z)V
    .locals 4
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "hasDefaultRoute"    # Z

    .prologue
    const/4 v3, 0x0

    .line 371
    const/16 v0, 0x40

    .line 372
    .local v0, "DEFAULT_HOPLIMIT":B
    sget-byte v1, Landroid/net/ip/RouterAdvertisementDaemon;->ICMPV6_ND_ROUTER_ADVERT:B

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 373
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 374
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v2

    .line 372
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 375
    const/16 v2, 0x40

    .line 372
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 377
    if-eqz p1, :cond_0

    const/16 v1, 0x8

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v1

    .line 372
    :goto_0
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 378
    if-eqz p1, :cond_1

    const/16 v1, 0xe10

    invoke-static {v1}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v1

    .line 372
    :goto_1
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 381
    return-void

    .line 377
    :cond_0
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v1

    goto :goto_0

    .line 378
    :cond_1
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v1

    goto :goto_1
.end method

.method private static putMtu(Ljava/nio/ByteBuffer;I)V
    .locals 5
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "mtu"    # I

    .prologue
    const/16 v2, 0x500

    .line 438
    const/4 v1, 0x5

    .line 439
    .local v1, "ND_OPTION_MTU":B
    const/4 v0, 0x1

    .line 440
    .local v0, "MTU_NUM_8OCTETS":B
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 441
    const/4 v4, 0x1

    .line 440
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 442
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v4

    .line 440
    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 443
    if-ge p1, v2, :cond_0

    move p1, v2

    .line 440
    .end local p1    # "mtu":I
    :cond_0
    invoke-virtual {v3, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 444
    return-void
.end method

.method private static putPio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;II)V
    .locals 7
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;
    .param p2, "validTime"    # I
    .param p3, "preferredTime"    # I

    .prologue
    const/4 v6, 0x0

    .line 471
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    .line 472
    .local v3, "prefixLength":I
    const/16 v4, 0x40

    if-eq v3, v4, :cond_0

    .line 473
    return-void

    .line 475
    :cond_0
    const/4 v0, 0x3

    .line 476
    .local v0, "ND_OPTION_PIO":B
    const/4 v1, 0x4

    .line 478
    .local v1, "PIO_NUM_8OCTETS":B
    if-gez p2, :cond_1

    const/4 p2, 0x0

    .line 479
    :cond_1
    if-gez p3, :cond_2

    const/4 p3, 0x0

    .line 480
    :cond_2
    if-le p3, p2, :cond_3

    move p3, p2

    .line 482
    :cond_3
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 483
    .local v2, "addr":[B
    const/4 v4, 0x3

    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 484
    const/4 v5, 0x4

    .line 483
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 485
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    .line 483
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 486
    const/16 v5, 0xc0

    invoke-static {v5}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v5

    .line 483
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 491
    return-void
.end method

.method private static putRdnss(Ljava/nio/ByteBuffer;Ljava/util/Set;I)V
    .locals 7
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p2, "lifetime"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "Ljava/util/Set",
            "<",
            "Ljava/net/Inet6Address;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 547
    .local p1, "dnses":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/Inet6Address;>;"
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 548
    .local v4, "filteredDnses":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/net/Inet6Address;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "dns$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 549
    .local v2, "dns":Ljava/net/Inet6Address;
    new-instance v5, Landroid/net/LinkAddress;

    const/16 v6, 0x40

    invoke-direct {v5, v2, v6}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v5}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 550
    invoke-virtual {v4, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 553
    .end local v2    # "dns":Ljava/net/Inet6Address;
    :cond_1
    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    return-void

    .line 555
    :cond_2
    const/16 v0, 0x19

    .line 556
    .local v0, "ND_OPTION_RDNSS":B
    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v1

    .line 557
    .local v1, "RDNSS_NUM_8OCTETS":B
    const/16 v5, 0x19

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 559
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/net/ip/RouterAdvertisementDaemon;->asShort(I)S

    move-result v6

    .line 557
    invoke-virtual {v5, v6}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 562
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/Inet6Address;

    .line 569
    .restart local v2    # "dns":Ljava/net/Inet6Address;
    invoke-virtual {v2}, Ljava/net/Inet6Address;->getAddress()[B

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 571
    .end local v2    # "dns":Ljava/net/Inet6Address;
    :cond_3
    return-void
.end method

.method private static putRio(Ljava/nio/ByteBuffer;Landroid/net/IpPrefix;)V
    .locals 10
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "ipp"    # Landroid/net/IpPrefix;

    .prologue
    const/16 v9, 0x40

    const/16 v8, 0x18

    const/16 v5, 0x8

    const/4 v7, 0x0

    .line 509
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v3

    .line 510
    .local v3, "prefixLength":I
    if-le v3, v9, :cond_0

    .line 511
    return-void

    .line 513
    :cond_0
    const/16 v0, 0x18

    .line 515
    .local v0, "ND_OPTION_RIO":B
    if-nez v3, :cond_2

    const/4 v4, 0x1

    .line 514
    :goto_0
    invoke-static {v4}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v1

    .line 517
    .local v1, "RIO_NUM_8OCTETS":B
    invoke-virtual {p1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v2

    .line 518
    .local v2, "addr":[B
    invoke-virtual {p0, v8}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 520
    invoke-static {v3}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v6

    .line 518
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 521
    invoke-static {v8}, Landroid/net/ip/RouterAdvertisementDaemon;->asByte(I)B

    move-result v6

    .line 518
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 522
    const/16 v6, 0xe10

    .line 518
    invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 525
    if-lez v3, :cond_1

    .line 526
    if-gt v3, v9, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {p0, v2, v7, v4}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 528
    :cond_1
    return-void

    .line 515
    .end local v1    # "RIO_NUM_8OCTETS":B
    .end local v2    # "addr":[B
    :cond_2
    if-gt v3, v5, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    const/4 v4, 0x3

    goto :goto_0

    .line 526
    .restart local v1    # "RIO_NUM_8OCTETS":B
    .restart local v2    # "addr":[B
    :cond_4
    const/16 v4, 0x10

    goto :goto_1
.end method

.method private static putSlla(Ljava/nio/ByteBuffer;[B)V
    .locals 5
    .param p0, "ra"    # Ljava/nio/ByteBuffer;
    .param p1, "slla"    # [B

    .prologue
    const/4 v4, 0x1

    .line 393
    if-eqz p1, :cond_0

    array-length v2, p1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_1

    .line 395
    :cond_0
    return-void

    .line 397
    :cond_1
    const/4 v0, 0x1

    .line 398
    .local v0, "ND_OPTION_SLLA":B
    const/4 v1, 0x1

    .line 399
    .local v1, "SLLA_NUM_8OCTETS":B
    invoke-virtual {p0, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 402
    return-void
.end method


# virtual methods
.method public buildNewRa(Landroid/net/ip/RouterAdvertisementDaemon$RaParams;Landroid/net/ip/RouterAdvertisementDaemon$RaParams;)V
    .locals 3
    .param p1, "deprecatedParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;
    .param p2, "newParams"    # Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .prologue
    .line 235
    iget-object v1, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 236
    if-eqz p1, :cond_0

    .line 237
    :try_start_0
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putPrefixes(Ljava/util/Set;)V

    .line 238
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p1, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->putDnses(Ljava/util/Set;)V

    .line 241
    :cond_0
    if-eqz p2, :cond_1

    .line 243
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->prefixes:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removePrefixes(Ljava/util/Set;)V

    .line 244
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mDeprecatedInfoTracker:Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;

    iget-object v2, p2, Landroid/net/ip/RouterAdvertisementDaemon$RaParams;->dnses:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Landroid/net/ip/RouterAdvertisementDaemon$DeprecatedInfoTracker;->removeDnses(Ljava/util/Set;)V

    .line 247
    :cond_1
    iput-object p2, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mRaParams:Landroid/net/ip/RouterAdvertisementDaemon$RaParams;

    .line 248
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->assembleRaLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 251
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->maybeNotifyMulticastTransmitter()V

    .line 252
    return-void

    .line 235
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public start()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 255
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->createSocket()Z

    move-result v0

    if-nez v0, :cond_0

    .line 256
    const/4 v0, 0x0

    return v0

    .line 259
    :cond_0
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 260
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;->start()V

    .line 262
    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-direct {v0, p0, v1}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;-><init>(Landroid/net/ip/RouterAdvertisementDaemon;Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;)V

    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 263
    iget-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    invoke-virtual {v0}, Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;->start()V

    .line 265
    const/4 v0, 0x1

    return v0
.end method

.method public stop()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 269
    invoke-direct {p0}, Landroid/net/ip/RouterAdvertisementDaemon;->closeSocket()V

    .line 270
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mMulticastTransmitter:Landroid/net/ip/RouterAdvertisementDaemon$MulticastTransmitter;

    .line 271
    iput-object v0, p0, Landroid/net/ip/RouterAdvertisementDaemon;->mUnicastResponder:Landroid/net/ip/RouterAdvertisementDaemon$UnicastResponder;

    .line 272
    return-void
.end method
