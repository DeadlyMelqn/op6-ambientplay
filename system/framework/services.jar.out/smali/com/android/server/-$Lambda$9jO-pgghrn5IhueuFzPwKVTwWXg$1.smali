.class final synthetic Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/net/INetworkManagementEventObserver;)V
    .locals 2
    .param p1, "arg0"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkAddress;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_29657(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/net/INetworkManagementEventObserver;)V
    .locals 2
    .param p1, "arg0"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/net/LinkAddress;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_29429(Ljava/lang/String;Landroid/net/LinkAddress;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method private final synthetic $m$2(Landroid/net/INetworkManagementEventObserver;)V
    .locals 2
    .param p1, "arg0"    # Landroid/net/INetworkManagementEventObserver;

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/server/NetworkManagementService;->lambda$-com_android_server_NetworkManagementService_18910(Ljava/lang/String;Ljava/lang/String;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$id:B

    iput-object p2, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$m$0(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$m$1(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/-$Lambda$9jO-pgghrn5IhueuFzPwKVTwWXg$1;->$m$2(Landroid/net/INetworkManagementEventObserver;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
