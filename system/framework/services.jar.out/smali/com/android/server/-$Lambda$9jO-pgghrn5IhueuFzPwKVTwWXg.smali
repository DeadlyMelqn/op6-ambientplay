.class final synthetic Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p1, "arg0"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_18321(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p1, "arg0"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_18706(Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$2(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p1, "arg0"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/RouteInfo;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_30184(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$3(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1
    .param p1, "arg0"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/net/RouteInfo;

    invoke-static {v0, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_30264(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->$id:B

    iput-object p2, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->$m$0(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->$m$1(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->$m$2(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg;->$m$3(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
