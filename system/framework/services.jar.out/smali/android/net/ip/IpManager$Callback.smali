.class public Landroid/net/ip/IpManager$Callback;
.super Ljava/lang/Object;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Callback"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public installPacketFilter([B)V
    .locals 0
    .param p1, "filter"    # [B

    .prologue
    .line 140
    return-void
.end method

.method public onLinkPropertiesChange(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 130
    return-void
.end method

.method public onNewDhcpResults(Landroid/net/DhcpResults;)V
    .locals 0
    .param p1, "dhcpResults"    # Landroid/net/DhcpResults;

    .prologue
    .line 124
    return-void
.end method

.method public onPostDhcpAction()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public onPreDhcpAction()V
    .locals 0

    .prologue
    .line 115
    return-void
.end method

.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 127
    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 0
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 126
    return-void
.end method

.method public onQuit()V
    .locals 0

    .prologue
    .line 137
    return-void
.end method

.method public onReachabilityLost(Ljava/lang/String;)V
    .locals 0
    .param p1, "logMsg"    # Ljava/lang/String;

    .prologue
    .line 134
    return-void
.end method

.method public setFallbackMulticastFilter(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 144
    return-void
.end method

.method public setNeighborDiscoveryOffload(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 148
    return-void
.end method
