.class final synthetic Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/server/broadcastradio/TunerCallback$RunnableThrowingRemoteException;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/TunerCallback;

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->lambda$-com_android_server_broadcastradio_TunerCallback_3268(Z)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/TunerCallback;

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->lambda$-com_android_server_broadcastradio_TunerCallback_3430(Z)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/TunerCallback;

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->lambda$-com_android_server_broadcastradio_TunerCallback_3122(Z)V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f1:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/broadcastradio/TunerCallback;

    iget-boolean v1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f0:Z

    invoke-virtual {v0, v1}, Lcom/android/server/broadcastradio/TunerCallback;->lambda$-com_android_server_broadcastradio_TunerCallback_2972(Z)V

    return-void
.end method

.method public synthetic constructor <init>(BZLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->$id:B

    iput-boolean p2, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f0:Z

    iput-object p3, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/broadcastradio/-$Lambda$UibxWVH8zVvcNBN03iM01Oc7JJI$3;->$m$3()V

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
