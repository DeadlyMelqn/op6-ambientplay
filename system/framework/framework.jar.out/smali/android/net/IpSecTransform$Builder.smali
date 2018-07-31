.class public Landroid/net/IpSecTransform$Builder;
.super Ljava/lang/Object;
.source "IpSecTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IpSecTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mConfig:Landroid/net/IpSecConfig;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 485
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 486
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 487
    iput-object p1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    .line 488
    new-instance v0, Landroid/net/IpSecConfig;

    invoke-direct {v0}, Landroid/net/IpSecConfig;-><init>()V

    iput-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    .line 489
    return-void
.end method


# virtual methods
.method public buildTransportModeTransform(Ljava/net/InetAddress;)Landroid/net/IpSecTransform;
    .locals 4
    .param p1, "remoteAddress"    # Ljava/net/InetAddress;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/IpSecManager$ResourceUnavailableException;,
            Landroid/net/IpSecManager$SpiUnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x1

    iput v1, v0, Landroid/net/IpSecConfig;->mode:I

    .line 453
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p1, v0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    .line 454
    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform;)V

    invoke-static {v0}, Landroid/net/IpSecTransform;->-wrap0(Landroid/net/IpSecTransform;)Landroid/net/IpSecTransform;

    move-result-object v0

    return-object v0
.end method

.method public buildTunnelModeTransform(Ljava/net/InetAddress;Ljava/net/InetAddress;)Landroid/net/IpSecTransform;
    .locals 4
    .param p1, "localAddress"    # Ljava/net/InetAddress;
    .param p2, "remoteAddress"    # Ljava/net/InetAddress;

    .prologue
    .line 474
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p1, v0, Landroid/net/IpSecConfig;->localAddress:Ljava/net/InetAddress;

    .line 475
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p2, v0, Landroid/net/IpSecConfig;->remoteAddress:Ljava/net/InetAddress;

    .line 476
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x0

    iput v1, v0, Landroid/net/IpSecConfig;->mode:I

    .line 477
    new-instance v0, Landroid/net/IpSecTransform;

    iget-object v1, p0, Landroid/net/IpSecTransform$Builder;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Landroid/net/IpSecTransform;-><init>(Landroid/content/Context;Landroid/net/IpSecConfig;Landroid/net/IpSecTransform;)V

    return-object v0
.end method

.method public setAuthentication(ILandroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1
    .param p1, "direction"    # I
    .param p2, "algo"    # Landroid/net/IpSecAlgorithm;

    .prologue
    .line 339
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iput-object p2, v0, Landroid/net/IpSecConfig$Flow;->authentication:Landroid/net/IpSecAlgorithm;

    .line 340
    return-object p0
.end method

.method public setEncryption(ILandroid/net/IpSecAlgorithm;)Landroid/net/IpSecTransform$Builder;
    .locals 1
    .param p1, "direction"    # I
    .param p2, "algo"    # Landroid/net/IpSecAlgorithm;

    .prologue
    .line 324
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    iput-object p2, v0, Landroid/net/IpSecConfig$Flow;->encryption:Landroid/net/IpSecAlgorithm;

    .line 325
    return-object p0
.end method

.method public setIpv4Encapsulation(Landroid/net/IpSecManager$UdpEncapsulationSocket;I)Landroid/net/IpSecTransform$Builder;
    .locals 2
    .param p1, "localSocket"    # Landroid/net/IpSecManager$UdpEncapsulationSocket;
    .param p2, "remotePort"    # I

    .prologue
    .line 397
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    const/4 v1, 0x2

    iput v1, v0, Landroid/net/IpSecConfig;->encapType:I

    .line 398
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    invoke-virtual {p1}, Landroid/net/IpSecManager$UdpEncapsulationSocket;->getResourceId()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig;->encapLocalPortResourceId:I

    .line 399
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput p2, v0, Landroid/net/IpSecConfig;->encapRemotePort:I

    .line 400
    return-object p0
.end method

.method public setNattKeepalive(I)Landroid/net/IpSecTransform$Builder;
    .locals 1
    .param p1, "intervalSeconds"    # I

    .prologue
    .line 417
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput p1, v0, Landroid/net/IpSecConfig;->nattKeepaliveInterval:I

    .line 418
    return-object p0
.end method

.method public setSpi(ILandroid/net/IpSecManager$SecurityParameterIndex;)Landroid/net/IpSecTransform$Builder;
    .locals 2
    .param p1, "direction"    # I
    .param p2, "spi"    # Landroid/net/IpSecManager$SecurityParameterIndex;

    .prologue
    .line 364
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iget-object v0, v0, Landroid/net/IpSecConfig;->flow:[Landroid/net/IpSecConfig$Flow;

    aget-object v0, v0, p1

    invoke-virtual {p2}, Landroid/net/IpSecManager$SecurityParameterIndex;->getResourceId()I

    move-result v1

    iput v1, v0, Landroid/net/IpSecConfig$Flow;->spiResourceId:I

    .line 365
    return-object p0
.end method

.method public setUnderlyingNetwork(Landroid/net/Network;)Landroid/net/IpSecTransform$Builder;
    .locals 1
    .param p1, "net"    # Landroid/net/Network;

    .prologue
    .line 379
    iget-object v0, p0, Landroid/net/IpSecTransform$Builder;->mConfig:Landroid/net/IpSecConfig;

    iput-object p1, v0, Landroid/net/IpSecConfig;->network:Landroid/net/Network;

    .line 380
    return-object p0
.end method
