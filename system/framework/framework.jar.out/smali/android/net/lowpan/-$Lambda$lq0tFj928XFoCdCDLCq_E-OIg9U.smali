.class final synthetic Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, [B

    invoke-virtual {v0, v1}, Landroid/net/lowpan/LowpanCommissioningSession$InternalCallback;->lambda$-android_net_lowpan_LowpanCommissioningSession$InternalCallback_2366([B)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkAddress;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_20493(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkAddress;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_21249(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/LinkAddress;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/IpPrefix;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_19669(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/IpPrefix;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_19868(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/IpPrefix;)V

    return-void
.end method

.method private final synthetic $m$5()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/lowpan/LowpanIdentity;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_19467(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/net/lowpan/LowpanIdentity;)V

    return-void
.end method

.method private final synthetic $m$6()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_19077(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    return-void
.end method

.method private final synthetic $m$7()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanInterface$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanInterface$1;->lambda$-android_net_lowpan_LowpanInterface$1_19263(Landroid/net/lowpan/LowpanInterface$Callback;Ljava/lang/String;)V

    return-void
.end method

.method private final synthetic $m$8()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/lowpan/LowpanScanner$Callback;

    iget-object v1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/lowpan/LowpanBeaconInfo;

    invoke-static {v0, v1}, Landroid/net/lowpan/LowpanScanner$1;->lambda$-android_net_lowpan_LowpanScanner$1_5692(Landroid/net/lowpan/LowpanScanner$Callback;Landroid/net/lowpan/LowpanBeaconInfo;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$id:B

    iput-object p2, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$4()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$5()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$6()V

    return-void

    :pswitch_7
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$7()V

    return-void

    :pswitch_8
    invoke-direct {p0}, Landroid/net/lowpan/-$Lambda$lq0tFj928XFoCdCDLCq_E-OIg9U;->$m$8()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
