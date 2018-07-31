.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;
.super Ljava/lang/Object;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OffloadWrapper"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .prologue
    .line 1814
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public excludeDownstreamInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "ifname"    # Ljava/lang/String;

    .prologue
    .line 1839
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1840
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->removeDownstreamInterface(Ljava/lang/String;)V

    .line 1841
    return-void
.end method

.method public sendOffloadExemptPrefixes()V
    .locals 1

    .prologue
    .line 1844
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get11(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->getLocalPrefixes()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes(Ljava/util/Set;)V

    .line 1845
    return-void
.end method

.method public sendOffloadExemptPrefixes(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Landroid/net/IpPrefix;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1849
    .local p1, "localPrefixes":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/IpPrefix;>;"
    invoke-static {p1}, Landroid/net/util/PrefixUtils;->addNonForwardablePrefixes(Ljava/util/Set;)V

    .line 1851
    sget-object v6, Landroid/net/util/PrefixUtils;->DEFAULT_WIFI_P2P_PREFIX:Landroid/net/IpPrefix;

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1855
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->-get1(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "tism$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    :pswitch_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    .line 1856
    .local v4, "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    invoke-virtual {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->linkProperties()Landroid/net/LinkProperties;

    move-result-object v3

    .line 1858
    .local v3, "lp":Landroid/net/LinkProperties;
    invoke-virtual {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->servingMode()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    goto :goto_0

    .line 1867
    :pswitch_1
    invoke-virtual {v3}, Landroid/net/LinkProperties;->getAllLinkAddresses()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "addr$iterator":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/LinkAddress;

    .line 1868
    .local v0, "addr":Landroid/net/LinkAddress;
    invoke-virtual {v0}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    .line 1869
    .local v2, "ip":Ljava/net/InetAddress;
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLinkLocalAddress()Z

    move-result v6

    if-nez v6, :cond_1

    .line 1870
    invoke-static {v2}, Landroid/net/util/PrefixUtils;->ipAddressAsPrefix(Ljava/net/InetAddress;)Landroid/net/IpPrefix;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1875
    .end local v0    # "addr":Landroid/net/LinkAddress;
    .end local v1    # "addr$iterator":Ljava/util/Iterator;
    .end local v2    # "ip":Ljava/net/InetAddress;
    :pswitch_2
    invoke-static {v3}, Landroid/net/util/PrefixUtils;->localPrefixesFrom(Landroid/net/LinkProperties;)Ljava/util/Set;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1880
    .end local v3    # "lp":Landroid/net/LinkProperties;
    .end local v4    # "tism":Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v6, v6, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v6}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->setLocalPrefixes(Ljava/util/Set;)V

    .line 1881
    return-void

    .line 1858
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start()V
    .locals 1

    .prologue
    .line 1816
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->start()Z

    .line 1817
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1818
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/OffloadController;->stop()V

    .line 1822
    return-void
.end method

.method public updateDownstreamLinkProperties(Landroid/net/LinkProperties;)V
    .locals 1
    .param p1, "newLp"    # Landroid/net/LinkProperties;

    .prologue
    .line 1832
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->sendOffloadExemptPrefixes()V

    .line 1833
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v0, v0, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/OffloadController;->notifyDownstreamLinkProperties(Landroid/net/LinkProperties;)V

    .line 1834
    return-void
.end method

.method public updateUpstreamNetworkState(Landroid/net/NetworkState;)V
    .locals 2
    .param p1, "ns"    # Landroid/net/NetworkState;

    .prologue
    const/4 v0, 0x0

    .line 1825
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$OffloadWrapper;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    invoke-static {v1}, Lcom/android/server/connectivity/Tethering;->-get6(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;

    move-result-object v1

    .line 1826
    if-eqz p1, :cond_0

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    .line 1825
    :cond_0
    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->setUpstreamLinkProperties(Landroid/net/LinkProperties;)V

    .line 1827
    return-void
.end method
