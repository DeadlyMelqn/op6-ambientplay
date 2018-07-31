.class final synthetic Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/TunerCallback;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/TunerCallback;->lambda$-com_android_server_broadcastradio_TunerCallback_3585()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/TunerCallback;

    invoke-virtual {v0}, Lcom/android/server/broadcastradio/TunerCallback;->lambda$-com_android_server_broadcastradio_TunerCallback_3715()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;->$id:B

    iput-object p2, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI;->$m$1()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
