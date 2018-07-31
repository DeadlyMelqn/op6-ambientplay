.class Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;
.super Landroid/net/lowpan/ILowpanInterfaceListener$Stub;
.source "LowpanCommissioningSession.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/LowpanCommissioningSession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalCallback"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/lowpan/LowpanCommissioningSession;


# direct methods
.method private constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanCommissioningSession;

    .prologue
    .line 58
    iput-object p1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-direct {p0}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/lowpan/LowpanCommissioningSession;Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/lowpan/LowpanCommissioningSession;
    .param p2, "-this1"    # Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;

    .prologue
    invoke-direct {p0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;-><init>(Landroid/net/lowpan/LowpanCommissioningSession;)V

    return-void
.end method


# virtual methods
.method synthetic lambda$-android_net_lowpan_LowpanCommissioningSession$InternalCallback_2366([B)V
    .locals 2
    .param p1, "packet"    # [B

    .prologue
    .line 76
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v1

    .line 77
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get2(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get0(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get0(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/net/lowpan/LowpanCommissioningSession$Callback;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/lowpan/LowpanCommissioningSession$Callback;->onReceiveFromCommissioner([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onConnectedChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 89
    return-void
.end method

.method public onEnabledChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 86
    return-void
.end method

.method public onLinkAddressAdded(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 107
    return-void
.end method

.method public onLinkAddressRemoved(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 110
    return-void
.end method

.method public onLinkNetworkAdded(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "value"    # Landroid/net/IpPrefix;

    .prologue
    .line 101
    return-void
.end method

.method public onLinkNetworkRemoved(Landroid/net/IpPrefix;)V
    .locals 0
    .param p1, "value"    # Landroid/net/IpPrefix;

    .prologue
    .line 104
    return-void
.end method

.method public onLowpanIdentityChanged(Landroid/net/lowpan/LowpanIdentity;)V
    .locals 0
    .param p1, "value"    # Landroid/net/lowpan/LowpanIdentity;

    .prologue
    .line 98
    return-void
.end method

.method public onReceiveFromCommissioner([B)V
    .locals 3
    .param p1, "packet"    # [B

    .prologue
    .line 74
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get1(Landroid/net/lowpan/LowpanCommissioningSession;)Landroid/os/Handler;

    move-result-object v0

    .line 75
    new-instance v1, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p0, p1}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    return-void
.end method

.method public onRoleChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 95
    return-void
.end method

.method public onStateChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-get2(Landroid/net/lowpan/LowpanCommissioningSession;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string/jumbo v0, "offline"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    :goto_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    monitor-enter v1

    .line 66
    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->this$0:Landroid/net/lowpan/LowpanCommissioningSession;

    invoke-static {v0}, Landroid/net/lowpan/LowpanCommissioningSession;->-wrap0(Landroid/net/lowpan/LowpanCommissioningSession;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 70
    :cond_0
    return-void

    .line 62
    :cond_1
    const-string/jumbo v0, "fault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onUpChanged(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 92
    return-void
.end method
