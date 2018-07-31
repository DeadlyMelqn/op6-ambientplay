.class final synthetic Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/LinkAddress;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_19284(Landroid/net/LinkAddress;Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/IpPrefix;

    check-cast p1, Landroid/net/RouteInfo;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_19537(Landroid/net/IpPrefix;Landroid/net/RouteInfo;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/LinkAddress;

    check-cast p1, Landroid/net/IpPrefix;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_16901(Landroid/net/LinkAddress;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/net/InetAddress;

    check-cast p1, Landroid/net/IpPrefix;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->lambda$-android_net_ip_IpManager$InitialConfiguration_17204(Ljava/net/InetAddress;Landroid/net/IpPrefix;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$4(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    check-cast p1, Landroid/net/LinkAddress;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Landroid/net/ip/IpManager$InitialConfiguration;->-android_net_ip_IpManager$InitialConfiguration-mthref-4(Ljava/lang/Class;Landroid/net/LinkAddress;)Z

    move-result v0

    return v0
.end method

.method private final synthetic $m$5(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Predicate;

    invoke-static {v0, p1}, Landroid/net/ip/IpManager;->lambda$-android_net_ip_IpManager_68447(Ljava/util/function/Predicate;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$id:B

    iput-object p2, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$0(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_1
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$1(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_2
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$2(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_3
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$3(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_4
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$4(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :pswitch_5
    invoke-direct {p0, p1}, Landroid/net/ip/-$Lambda$Ew7nO2XMmp8bwulVlFTiHphyunQ$3;->$m$5(Ljava/lang/Object;)Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
