.class final synthetic Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;
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
    iget-object v0, p0, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/GlobalActions;

    invoke-virtual {v0}, Lcom/android/server/policy/GlobalActions;->-com_android_server_policy_GlobalActions-mthref-0()V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$-com_android_server_policy_PhoneWindowManager_60054()V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/PhoneWindowManager;->lambda$-com_android_server_policy_PhoneWindowManager_60322()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->$id:B

    iput-object p2, p0, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/policy/-$Lambda$pV_TcBBXJOcgD8CpVRVZuDc_ff8;->$m$2()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
