.class public Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
.super Ljava/lang/Object;
.source "IPv6TetheringCoordinator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z

.field private static v6OnlyTetherEnabled:Z


# instance fields
.field private final mActiveDownstreams:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;",
            ">;"
        }
    .end annotation
.end field

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNextSubnetId:S

.field private final mNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;"
        }
    .end annotation
.end field

.field private final mUniqueLocalPrefix:[B

.field private mUpstreamNetworkState:Landroid/net/NetworkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 50
    const-class v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)V
    .locals 2
    .param p2, "log"    # Landroid/net/util/SharedLog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;",
            "Landroid/net/util/SharedLog;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;>;"
    const/4 v1, 0x0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    .line 83
    sget-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    .line 84
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    .line 85
    sput-boolean v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->v6OnlyTetherEnabled:Z

    .line 86
    invoke-static {}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->generateUniqueLocalPrefix()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    .line 87
    iput-short v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 88
    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;Z)V
    .locals 1
    .param p2, "log"    # Landroid/net/util/SharedLog;
    .param p3, "v6OnlyTetherEnable"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;",
            "Landroid/net/util/SharedLog;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, "notifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    .line 93
    sget-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    .line 94
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    .line 95
    sput-boolean p3, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->v6OnlyTetherEnabled:Z

    .line 96
    invoke-static {}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->generateUniqueLocalPrefix()[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    .line 97
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 98
    return-void
.end method

.method private static canTetherIPv6(Landroid/net/NetworkState;Landroid/net/util/SharedLog;)Z
    .locals 11
    .param p0, "ns"    # Landroid/net/NetworkState;
    .param p1, "sharedLog"    # Landroid/net/util/SharedLog;

    .prologue
    const/4 v10, 0x0

    .line 240
    if-eqz p0, :cond_3

    iget-object v7, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    if-eqz v7, :cond_3

    .line 241
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v7, :cond_3

    iget-object v7, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    if-eqz v7, :cond_3

    .line 243
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->isProvisioned()Z

    move-result v7

    .line 240
    if-eqz v7, :cond_3

    .line 245
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v7

    .line 240
    if-eqz v7, :cond_3

    .line 246
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v7

    .line 240
    if-eqz v7, :cond_3

    .line 248
    iget-object v7, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v7, v10}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v0

    .line 254
    :goto_0
    const/4 v5, 0x0

    .line 255
    .local v5, "v4default":Landroid/net/RouteInfo;
    const/4 v6, 0x0

    .line 256
    .local v6, "v6default":Landroid/net/RouteInfo;
    if-eqz v0, :cond_2

    .line 257
    iget-object v7, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v7}, Landroid/net/LinkProperties;->getAllRoutes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v5    # "v4default":Landroid/net/RouteInfo;
    .end local v6    # "v6default":Landroid/net/RouteInfo;
    .local v3, "r$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/RouteInfo;

    .line 258
    .local v2, "r":Landroid/net/RouteInfo;
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isIPv4Default()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 259
    move-object v5, v2

    .line 264
    :cond_1
    :goto_1
    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    .line 272
    .end local v2    # "r":Landroid/net/RouteInfo;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_2
    sget-boolean v7, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->v6OnlyTetherEnabled:Z

    if-eqz v7, :cond_7

    .line 274
    if-eqz v6, :cond_6

    .line 275
    invoke-virtual {v6}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    const/4 v4, 0x1

    .line 283
    :goto_2
    if-eqz v0, :cond_9

    move v1, v4

    .line 285
    :goto_3
    if-nez p0, :cond_a

    .line 286
    const-string/jumbo v7, "No available upstream."

    invoke-virtual {p1, v7}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 292
    :goto_4
    return v1

    .line 240
    :cond_3
    const/4 v0, 0x0

    .local v0, "canTether":Z
    goto :goto_0

    .line 260
    .end local v0    # "canTether":Z
    .restart local v2    # "r":Landroid/net/RouteInfo;
    .restart local v3    # "r$iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual {v2}, Landroid/net/RouteInfo;->isIPv6Default()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 261
    move-object v6, v2

    .local v6, "v6default":Landroid/net/RouteInfo;
    goto :goto_1

    .line 275
    .end local v2    # "r":Landroid/net/RouteInfo;
    .end local v3    # "r$iterator":Ljava/util/Iterator;
    .end local v6    # "v6default":Landroid/net/RouteInfo;
    :cond_5
    const/4 v4, 0x0

    .local v4, "supportedConfiguration":Z
    goto :goto_2

    .line 274
    .end local v4    # "supportedConfiguration":Z
    :cond_6
    const/4 v4, 0x0

    .restart local v4    # "supportedConfiguration":Z
    goto :goto_2

    .line 278
    .end local v4    # "supportedConfiguration":Z
    :cond_7
    if-eqz v5, :cond_8

    if-eqz v6, :cond_8

    .line 279
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 280
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Landroid/net/RouteInfo;->getInterface()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .local v4, "supportedConfiguration":Z
    goto :goto_2

    .line 278
    .end local v4    # "supportedConfiguration":Z
    :cond_8
    const/4 v4, 0x0

    .local v4, "supportedConfiguration":Z
    goto :goto_2

    .line 283
    .end local v4    # "supportedConfiguration":Z
    :cond_9
    const/4 v1, 0x0

    .local v1, "outcome":Z
    goto :goto_3

    .line 288
    .end local v1    # "outcome":Z
    :cond_a
    const-string/jumbo v8, "IPv6 tethering is %s for upstream: %s"

    const/4 v7, 0x2

    new-array v9, v7, [Ljava/lang/Object;

    .line 289
    if-eqz v1, :cond_b

    const-string/jumbo v7, "available"

    :goto_5
    aput-object v7, v9, v10

    invoke-static {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v7

    const/4 v10, 0x1

    aput-object v7, v9, v10

    .line 288
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    goto :goto_4

    .line 289
    :cond_b
    const-string/jumbo v7, "not available"

    goto :goto_5
.end method

.method private static generateUniqueLocalPrefix()[B
    .locals 4

    .prologue
    .line 374
    const/4 v2, 0x6

    new-array v1, v2, [B

    .line 375
    .local v1, "ulp":[B
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    invoke-virtual {v2, v1}, Ljava/util/Random;->nextBytes([B)V

    .line 377
    const/16 v2, 0x10

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 378
    .local v0, "in6addr":[B
    const/4 v2, -0x3

    const/4 v3, 0x0

    aput-byte v2, v0, v3

    .line 380
    return-object v0
.end method

.method private static getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;
    .locals 10
    .param p0, "lp"    # Landroid/net/LinkProperties;

    .prologue
    const/16 v9, 0x40

    .line 296
    new-instance v7, Landroid/net/LinkProperties;

    invoke-direct {v7}, Landroid/net/LinkProperties;-><init>()V

    .line 297
    .local v7, "v6only":Landroid/net/LinkProperties;
    if-nez p0, :cond_0

    .line 298
    return-object v7

    .line 304
    :cond_0
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setInterfaceName(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getMtu()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 308
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "linkAddr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/LinkAddress;

    .line 309
    .local v3, "linkAddr":Landroid/net/LinkAddress;
    invoke-virtual {v3}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v8

    if-ne v8, v9, :cond_1

    .line 310
    invoke-virtual {v7, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    goto :goto_0

    .line 314
    .end local v3    # "linkAddr":Landroid/net/LinkAddress;
    :cond_2
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "routeInfo$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/RouteInfo;

    .line 315
    .local v5, "routeInfo":Landroid/net/RouteInfo;
    invoke-virtual {v5}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    .line 316
    .local v0, "destination":Landroid/net/IpPrefix;
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v8

    instance-of v8, v8, Ljava/net/Inet6Address;

    if-eqz v8, :cond_3

    .line 317
    invoke-virtual {v0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v8

    if-gt v8, v9, :cond_3

    .line 318
    invoke-virtual {v7, v5}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    goto :goto_1

    .line 322
    .end local v0    # "destination":Landroid/net/IpPrefix;
    .end local v5    # "routeInfo":Landroid/net/RouteInfo;
    :cond_4
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDnsServers()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "dnsServer$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 323
    .local v1, "dnsServer":Ljava/net/InetAddress;
    invoke-static {v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->isIPv6GlobalAddress(Ljava/net/InetAddress;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 325
    invoke-virtual {v7, v1}, Landroid/net/LinkProperties;->addDnsServer(Ljava/net/InetAddress;)Z

    goto :goto_2

    .line 329
    .end local v1    # "dnsServer":Ljava/net/InetAddress;
    :cond_6
    invoke-virtual {p0}, Landroid/net/LinkProperties;->getDomains()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/net/LinkProperties;->setDomains(Ljava/lang/String;)V

    .line 331
    return-object v7
.end method

.method private getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;
    .locals 6
    .param p1, "sm"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    const/4 v5, 0x0

    .line 181
    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->interfaceType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 183
    return-object v5

    .line 186
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v1

    .line 187
    .local v1, "ds":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    if-nez v1, :cond_1

    return-object v5

    .line 189
    :cond_1
    iget v3, v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->mode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 191
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUniqueLocalPrefix:[B

    iget-short v4, v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->subnetId:S

    invoke-static {v3, v4}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getUniqueLocalConfig([BS)Landroid/net/LinkProperties;

    move-result-object v3

    return-object v3

    .line 195
    :cond_2
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v3, v3, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-nez v3, :cond_4

    .line 196
    :cond_3
    return-object v5

    .line 204
    :cond_4
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    .line 205
    .local v0, "currentActive":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    if-eqz v0, :cond_5

    iget-object v3, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->tism:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    if-ne v3, p1, :cond_5

    .line 207
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v3, v3, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 206
    invoke-static {v3}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getIPv6OnlyLinkProperties(Landroid/net/LinkProperties;)Landroid/net/LinkProperties;

    move-result-object v2

    .line 208
    .local v2, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasIPv6DefaultRoute()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v2}, Landroid/net/LinkProperties;->hasGlobalIPv6Address()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 209
    return-object v2

    .line 213
    .end local v2    # "lp":Landroid/net/LinkProperties;
    :cond_5
    return-object v5
.end method

.method private static getUniqueLocalConfig([BS)Landroid/net/LinkProperties;
    .locals 7
    .param p0, "ulp"    # [B
    .param p1, "subnetId"    # S

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x40

    .line 346
    new-instance v2, Landroid/net/LinkProperties;

    invoke-direct {v2}, Landroid/net/LinkProperties;-><init>()V

    .line 348
    .local v2, "lp":Landroid/net/LinkProperties;
    const/4 v3, 0x0

    const/16 v4, 0x30

    invoke-static {p0, v3, v4}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object v0

    .line 349
    .local v0, "local48":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/RouteInfo;

    invoke-direct {v3, v0, v6, v6}, Landroid/net/RouteInfo;-><init>(Landroid/net/IpPrefix;Ljava/net/InetAddress;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addRoute(Landroid/net/RouteInfo;)Z

    .line 351
    invoke-static {p0, p1, v5}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;

    move-result-object v1

    .line 355
    .local v1, "local64":Landroid/net/IpPrefix;
    new-instance v3, Landroid/net/LinkAddress;

    invoke-virtual {v1}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-direct {v3, v4, v5}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->addLinkAddress(Landroid/net/LinkAddress;)Z

    .line 357
    const/16 v3, 0x5dc

    invoke-virtual {v2, v3}, Landroid/net/LinkProperties;->setMtu(I)V

    .line 358
    return-object v2
.end method

.method private static isIPv6GlobalAddress(Ljava/net/InetAddress;)Z
    .locals 1
    .param p0, "ip"    # Ljava/net/InetAddress;

    .prologue
    .line 337
    instance-of v0, p0, Ljava/net/Inet6Address;

    if-eqz v0, :cond_0

    .line 338
    invoke-virtual {p0}, Ljava/net/InetAddress;->isAnyLocalAddress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 337
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 337
    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p0}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 337
    if-eqz v0, :cond_0

    .line 341
    invoke-virtual {p0}, Ljava/net/InetAddress;->isSiteLocalAddress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 337
    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 337
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static makeUniqueLocalPrefix([BSI)Landroid/net/IpPrefix;
    .locals 3
    .param p0, "in6addr"    # [B
    .param p1, "subnetId"    # S
    .param p2, "prefixlen"    # I

    .prologue
    .line 362
    array-length v1, p0

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    .line 363
    .local v0, "bytes":[B
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 364
    int-to-byte v1, p1

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 365
    new-instance v1, Landroid/net/IpPrefix;

    invoke-direct {v1, v0, p2}, Landroid/net/IpPrefix;-><init>([BI)V

    return-object v1
.end method

.method private setUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 7
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    const/4 v1, 0x0

    .line 156
    if-nez p1, :cond_0

    .line 157
    iput-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    .line 169
    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setUpstreamNetworkState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    .line 170
    return-void

    .line 160
    :cond_0
    new-instance v0, Landroid/net/NetworkState;

    .line 162
    new-instance v2, Landroid/net/LinkProperties;

    iget-object v3, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-direct {v2, v3}, Landroid/net/LinkProperties;-><init>(Landroid/net/LinkProperties;)V

    .line 163
    new-instance v3, Landroid/net/NetworkCapabilities;

    iget-object v4, p1, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-direct {v3, v4}, Landroid/net/NetworkCapabilities;-><init>(Landroid/net/NetworkCapabilities;)V

    .line 164
    new-instance v4, Landroid/net/Network;

    iget-object v5, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-direct {v4, v5}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    move-object v5, v1

    move-object v6, v1

    .line 160
    invoke-direct/range {v0 .. v6}, Landroid/net/NetworkState;-><init>(Landroid/net/NetworkInfo;Landroid/net/LinkProperties;Landroid/net/NetworkCapabilities;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    goto :goto_0
.end method

.method private static stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 3
    .param p0, "sm"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    const/4 v2, 0x0

    .line 394
    const v0, 0x50071

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 395
    return-void
.end method

.method private stopIPv6TetheringOnAllInterfaces()V
    .locals 3

    .prologue
    .line 150
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "sm$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 151
    .local v0, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-static {v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    goto :goto_0

    .line 153
    .end local v0    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_0
    return-void
.end method

.method private static toDebugString(Landroid/net/NetworkState;)Ljava/lang/String;
    .locals 4
    .param p0, "ns"    # Landroid/net/NetworkState;

    .prologue
    .line 384
    if-nez p0, :cond_0

    .line 385
    const-string/jumbo v0, "NetworkState{null}"

    return-object v0

    .line 387
    :cond_0
    const-string/jumbo v0, "NetworkState{%s, %s, %s}"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 388
    iget-object v2, p0, Landroid/net/NetworkState;->network:Landroid/net/Network;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    .line 389
    iget-object v2, p0, Landroid/net/NetworkState;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 390
    iget-object v2, p0, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    .line 387
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updateIPv6TetheringInterfaces()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 173
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "sm$iterator":Ljava/util/Iterator;
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 174
    .local v1, "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->getInterfaceIPv6LinkProperties(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 175
    .local v0, "lp":Landroid/net/LinkProperties;
    const v3, 0x50071

    invoke-virtual {v1, v3, v4, v4, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->sendMessage(IIILjava/lang/Object;)V

    .line 178
    .end local v0    # "lp":Landroid/net/LinkProperties;
    .end local v1    # "sm":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_0
    return-void
.end method


# virtual methods
.method public addActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V
    .locals 3
    .param p1, "downstream"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    .param p2, "mode"    # I

    .prologue
    .line 101
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v0

    if-nez v0, :cond_1

    .line 106
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    new-instance v1, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    iget-short v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    invoke-direct {v1, p1, p2, v2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;IS)V

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->offer(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 111
    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 113
    :cond_1
    return-void
.end method

.method findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    .locals 3
    .param p1, "tism"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    .line 217
    iget-object v2, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ds$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    .line 218
    .local v0, "ds":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    iget-object v2, v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;->tism:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    if-ne v2, p1, :cond_0

    return-object v0

    .line 220
    .end local v0    # "ds":Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method public removeActiveDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 2
    .param p1, "downstream"    # Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .prologue
    .line 116
    invoke-static {p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOn(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    .line 117
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->findDownstream(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator$Downstream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mActiveDownstreams:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    sget-object v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "Tethering notify list empty, IPv6 downstreams non-empty."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_1
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mNextSubnetId:S

    .line 128
    :cond_2
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 2
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mLog:Landroid/net/util/SharedLog;

    invoke-static {p1, v0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->canTetherIPv6(Landroid/net/NetworkState;Landroid/net/util/SharedLog;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    .line 136
    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 137
    return-void

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->mUpstreamNetworkState:Landroid/net/NetworkState;

    iget-object v1, v1, Landroid/net/NetworkState;->network:Landroid/net/Network;

    invoke-virtual {v0, v1}, Landroid/net/Network;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 140
    if-eqz v0, :cond_1

    .line 142
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->stopIPv6TetheringOnAllInterfaces()V

    .line 145
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->setUpstreamNetworkState(Landroid/net/NetworkState;)V

    .line 146
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;->updateIPv6TetheringInterfaces()V

    .line 147
    return-void
.end method
