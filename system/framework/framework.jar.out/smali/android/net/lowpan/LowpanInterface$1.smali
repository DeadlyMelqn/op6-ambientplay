.class Landroid/net/lowpan/LowpanInterface$1;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Landroid/net/lowpan/LowpanInterface;

.field final synthetic val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 2
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanInterface;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    .line 557
    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    .line 561
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->val$handler:Landroid/os/Handler;

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    .line 1
    :goto_0
    return-void

    .line 563
    :cond_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    invoke-static {v0}, Landroid/net/lowpan/LowpanInterface;->-get1(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 564
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface$1;->this$0:Landroid/net/lowpan/LowpanInterface;

    invoke-static {v1}, Landroid/net/lowpan/LowpanInterface;->-get1(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_0

    .line 566
    :cond_1
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_18511(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Z

    .prologue
    .line 572
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onEnabledChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_18705(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Z

    .prologue
    .line 577
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onConnectedChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_18894(Landroid/net/lowpan/LowpanInterface$Callback;Z)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Z

    .prologue
    .line 582
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onUpChanged(Z)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19077(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 587
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onRoleChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19263(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onStateChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19467(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .prologue
    .line 597
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19669(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Landroid/net/IpPrefix;

    .prologue
    .line 602
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkAdded(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_19868(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "value"    # Landroid/net/IpPrefix;

    .prologue
    .line 607
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkNetworkRemoved(Landroid/net/IpPrefix;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_20493(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "la"    # Landroid/net/LinkAddress;

    .prologue
    .line 621
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressAdded(Landroid/net/LinkAddress;)V

    return-void
.end method

.method static synthetic lambda$-android_net_lowpan_LowpanInterface$1_21249(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V
    .locals 0
    .param p0, "cb"    # Landroid/net/lowpan/LowpanInterface$Callback;
    .param p1, "la"    # Landroid/net/LinkAddress;

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Landroid/net/lowpan/LowpanInterface$Callback;->onLinkAddressRemoved(Landroid/net/LinkAddress;)V

    return-void
.end method


# virtual methods
.method public onConnectedChanged(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 577
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x0

    invoke-direct {v1, v3, p1, v2}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 578
    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 572
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x1

    invoke-direct {v1, v3, p1, v2}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 573
    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 614
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    .local v0, "la":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4, v0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 622
    return-void

    .line 615
    .end local v0    # "la":Landroid/net/LinkAddress;
    :catch_0
    move-exception v1

    .line 617
    .local v1, "x":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-get0()Ljava/lang/String;

    move-result-object v2

    .line 618
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLinkAddressAdded: Bad LinkAddress \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 616
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 628
    :try_start_0
    new-instance v0, Landroid/net/LinkAddress;

    invoke-direct {v0, p1}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 638
    .local v0, "la":Landroid/net/LinkAddress;
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v3, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v4, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v5, 0x2

    invoke-direct {v3, v5, v4, v0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 639
    return-void

    .line 629
    .end local v0    # "la":Landroid/net/LinkAddress;
    :catch_0
    move-exception v1

    .line 631
    .local v1, "x":Ljava/lang/IllegalArgumentException;
    invoke-static {}, Landroid/net/lowpan/LowpanInterface;->-get0()Ljava/lang/String;

    move-result-object v2

    .line 632
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onLinkAddressRemoved: Bad LinkAddress \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 634
    const-string/jumbo v4, "\", "

    .line 632
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 630
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 4
    .param p1, "value"    # Landroid/net/IpPrefix;

    .prologue
    .line 602
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 603
    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 4
    .param p1, "value"    # Landroid/net/IpPrefix;

    .prologue
    .line 607
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x4

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 608
    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 4
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .prologue
    .line 597
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x5

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 598
    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .locals 0
    .param p1, "packet"    # [B

    .prologue
    .line 644
    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 588
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 592
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x7

    invoke-direct {v1, v3, v2, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 593
    return-void
.end method

.method public onUpChanged(Z)V
    .locals 4
    .param p1, "value"    # Z

    .prologue
    .line 582
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface$1;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface$1;->val$cb:Landroid/net/lowpan/LowpanInterface$Callback;

    const/4 v3, 0x2

    invoke-direct {v1, v3, p1, v2}, Landroid/net/lowpan/-$Lambda$kGwbyTn61Si3sH7muskKIr7PCeU;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 583
    return-void
.end method
