.class final synthetic Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:J

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    iget-wide v2, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f0:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$1;->lambda$-com_android_server_utils_ManagedApplicationService$1_11806(J)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    iget-wide v2, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f0:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$1;->lambda$-com_android_server_utils_ManagedApplicationService$1_12741(J)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService$1;

    iget-wide v2, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f0:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/ManagedApplicationService$1;->lambda$-com_android_server_utils_ManagedApplicationService$1_14647(J)V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 4

    .prologue
    iget-object v0, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/utils/ManagedApplicationService;

    iget-wide v2, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f0:J

    invoke-virtual {v0, v2, v3}, Lcom/android/server/utils/ManagedApplicationService;->lambda$-com_android_server_utils_ManagedApplicationService_17383(J)V

    return-void
.end method

.method public synthetic constructor <init>(BJLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->$id:B

    iput-wide p2, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f0:J

    iput-object p4, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/utils/-$Lambda$luWxpSWBY1-S73qs-S0xFqWHvIs$1;->$m$3()V

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
