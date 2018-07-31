.class final synthetic Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v0}, Lcom/android/server/CommonTimeManagementService;->lambda$-com_android_server_CommonTimeManagementService_4910()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/CommonTimeManagementService;

    invoke-virtual {v0}, Lcom/android/server/CommonTimeManagementService;->lambda$-com_android_server_CommonTimeManagementService_4984()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/ConnectivityService;

    invoke-virtual {v0}, Lcom/android/server/ConnectivityService;->lambda$-com_android_server_ConnectivityService_36448()V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Lcom/android/server/PersistentDataBlockService;->lambda$-com_android_server_PersistentDataBlockService_5033()V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->lambda$-com_android_server_UiModeManagerService_9177()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->$id:B

    iput-object p2, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/-$Lambda$VaVGUZuNs2jqHMhhxPzwNl4zK-M;->$m$4()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
