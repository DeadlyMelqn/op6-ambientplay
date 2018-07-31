.class public Landroid/net/ip/IpManager$InitialConfiguration;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InitialConfiguration"
.end annotation


# instance fields
.field public final directlyConnectedRoutes:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;"
        }
    .end annotation
.end field

.field public final dnsServers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field public gateway:Ljava/net/Inet4Address;

.field public final ipAddresses:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/net/LinkAddress;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-0(Landroid/net/LinkAddress;)Z
    .locals 1

    .prologue
    .line 452
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-1(Landroid/net/IpPrefix;)Z
    .locals 1

    .prologue
    .line 457
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-2(Landroid/net/LinkAddress;)Z
    .locals 1

    .prologue
    .line 458
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isIPv6GUA(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-3(Landroid/net/IpPrefix;)Z
    .locals 1

    .prologue
    .line 463
    invoke-static {p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method static synthetic -android_net_ip_IpManager$InitialConfiguration-mthref-4(Ljava/lang/Class;Landroid/net/LinkAddress;)Z
    .locals 1

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 408
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 409
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    .line 410
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    .line 411
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    .line 408
    return-void
.end method

.method public static copy(Landroid/net/ip/IpManager$InitialConfiguration;)Landroid/net/ip/IpManager$InitialConfiguration;
    .locals 3
    .param p0, "config"    # Landroid/net/ip/IpManager$InitialConfiguration;

    .prologue
    const/4 v1, 0x0

    .line 415
    if-nez p0, :cond_0

    .line 416
    return-object v1

    .line 418
    :cond_0
    new-instance v0, Landroid/net/ip/IpManager$InitialConfiguration;

    invoke-direct {v0}, Landroid/net/ip/IpManager$InitialConfiguration;-><init>()V

    .line 419
    .local v0, "configCopy":Landroid/net/ip/IpManager$InitialConfiguration;
    iget-object v1, v0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 420
    iget-object v1, v0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 421
    iget-object v1, v0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 422
    return-object v0
.end method

.method private static isCompliantIPv6PrefixLength(I)Z
    .locals 2
    .param p0, "prefixLength"    # I

    .prologue
    const/4 v0, 0x0

    .line 518
    const/16 v1, 0x30

    if-gt v1, p0, :cond_0

    .line 519
    const/16 v1, 0x40

    if-gt p0, v1, :cond_0

    const/4 v0, 0x1

    .line 518
    :cond_0
    return v0
.end method

.method private static isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z
    .locals 1
    .param p0, "route"    # Landroid/net/RouteInfo;
    .param p1, "prefix"    # Landroid/net/IpPrefix;

    .prologue
    .line 506
    invoke-virtual {p0}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/RouteInfo;->getDestination()Landroid/net/IpPrefix;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->equals(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isIPv6DefaultRoute(Landroid/net/IpPrefix;)Z
    .locals 2
    .param p0, "prefix"    # Landroid/net/IpPrefix;

    .prologue
    .line 523
    invoke-virtual {p0}, Landroid/net/IpPrefix;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    sget-object v1, Ljava/net/Inet6Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/net/InetAddress;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private static isIPv6GUA(Landroid/net/LinkAddress;)Z
    .locals 1
    .param p0, "addr"    # Landroid/net/LinkAddress;

    .prologue
    .line 527
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv6()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkAddress;->isGlobalPreferred()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/IpPrefix;)Z
    .locals 1
    .param p0, "prefix"    # Landroid/net/IpPrefix;

    .prologue
    .line 514
    invoke-virtual {p0}, Landroid/net/IpPrefix;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/IpPrefix;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpManager$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isPrefixLengthCompliant(Landroid/net/LinkAddress;)Z
    .locals 1
    .param p0, "addr"    # Landroid/net/LinkAddress;

    .prologue
    .line 510
    invoke-virtual {p0}, Landroid/net/LinkAddress;->isIPv4()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/net/LinkAddress;->getPrefixLength()I

    move-result v0

    invoke-static {v0}, Landroid/net/ip/IpManager$InitialConfiguration;->isCompliantIPv6PrefixLength(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_16901(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z
    .locals 1
    .param p0, "addr"    # Landroid/net/LinkAddress;
    .param p1, "p"    # Landroid/net/IpPrefix;

    .prologue
    .line 440
    invoke-virtual {p0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_17204(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z
    .locals 1
    .param p0, "addr"    # Ljava/net/InetAddress;
    .param p1, "p"    # Landroid/net/IpPrefix;

    .prologue
    .line 446
    invoke-virtual {p1, p0}, Landroid/net/IpPrefix;->contains(Ljava/net/InetAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_19284(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z
    .locals 1
    .param p0, "addr"    # Landroid/net/LinkAddress;
    .param p1, "addrSeen"    # Landroid/net/LinkAddress;

    .prologue
    .line 489
    invoke-virtual {p0, p1}, Landroid/net/LinkAddress;->isSameAddressAs(Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$-android_net_ip_IpManager$InitialConfiguration_19537(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z
    .locals 1
    .param p0, "prefix"    # Landroid/net/IpPrefix;
    .param p1, "routeSeen"    # Landroid/net/RouteInfo;

    .prologue
    .line 496
    invoke-static {p1, p0}, Landroid/net/ip/IpManager$InitialConfiguration;->isDirectlyConnectedRoute(Landroid/net/RouteInfo;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public isProvisionedBy(Ljava/util/List;Ljava/util/List;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/net/LinkAddress;",
            ">;",
            "Ljava/util/List",
            "<",
            "Landroid/net/RouteInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "addresses":Ljava/util/List;, "Ljava/util/List<Landroid/net/LinkAddress;>;"
    .local p2, "routes":Ljava/util/List;, "Ljava/util/List<Landroid/net/RouteInfo;>;"
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 484
    iget-object v4, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 485
    return v5

    .line 488
    :cond_0
    iget-object v4, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 489
    .local v0, "addr":Landroid/net/LinkAddress;
    new-instance v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    invoke-direct {v4, v5, v0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {p1, v4}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 490
    return v5

    .line 494
    .end local v0    # "addr":Landroid/net/LinkAddress;
    :cond_2
    if-eqz p2, :cond_4

    .line 495
    iget-object v4, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "prefix$iterator":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/IpPrefix;

    .line 496
    .local v2, "prefix":Landroid/net/IpPrefix;
    new-instance v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    invoke-direct {v4, v6, v2}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {p2, v4}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 497
    return v5

    .line 502
    .end local v2    # "prefix":Landroid/net/IpPrefix;
    .end local v3    # "prefix$iterator":Ljava/util/Iterator;
    :cond_4
    return v6
.end method

.method public isValid()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 434
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 435
    return v8

    .line 439
    :cond_0
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "addr$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 440
    .local v0, "addr":Landroid/net/LinkAddress;
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v5, 0x2

    invoke-direct {v4, v5, v0}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {v3, v4}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 441
    return v8

    .line 445
    .end local v0    # "addr":Landroid/net/LinkAddress;
    :cond_2
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    .line 446
    .local v1, "addr":Ljava/net/InetAddress;
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    new-instance v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v5, 0x3

    invoke-direct {v4, v5, v1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-static {v3, v4}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 447
    return v8

    .line 452
    .end local v1    # "addr":Ljava/net/InetAddress;
    :cond_4
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$0:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v4}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 453
    return v8

    .line 457
    :cond_5
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$1:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v3, v4}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 458
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    sget-object v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$2:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v4}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/ip/IpManager;->all(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    .line 457
    if-eqz v3, :cond_6

    .line 459
    return v8

    .line 463
    :cond_6
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    sget-object v4, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;->$INST$3:Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$1;

    invoke-static {v4}, Landroid/net/ip/IpManager;->not(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/net/ip/IpManager;->any(Ljava/lang/Iterable;Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 464
    return v8

    .line 467
    :cond_7
    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    const-class v4, Ljava/net/Inet4Address;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;

    const/4 v6, 0x4

    invoke-direct {v5, v6, v4}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;-><init>(BLjava/lang/Object;)V

    invoke-interface {v3, v5}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/stream/Stream;->count()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-lez v3, :cond_8

    .line 468
    return v8

    .line 471
    :cond_8
    const/4 v3, 0x1

    return v3
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 428
    const-string/jumbo v0, "InitialConfiguration(IPs: {%s}, prefixes: {%s}, DNS: {%s}, v4 gateway: %s)"

    .line 427
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    .line 429
    const-string/jumbo v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->ipAddresses:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->directlyConnectedRoutes:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 430
    const-string/jumbo v2, ", "

    iget-object v3, p0, Landroid/net/ip/IpManager$InitialConfiguration;->dnsServers:Ljava/util/Set;

    invoke-static {v2, v3}, Landroid/net/ip/IpManager;->join(Ljava/lang/String;Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/net/ip/IpManager$InitialConfiguration;->gateway:Ljava/net/Inet4Address;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 427
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
