.class final synthetic Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;
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
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_21192(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_21964(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_22246(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$3()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_22572(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$4()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_22911(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$5()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_23564(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$6()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/FontsContract$FontRequestCallback;

    invoke-static {v0}, Landroid/provider/FontsContract;->lambda$-android_provider_FontsContract_24251(Landroid/provider/FontsContract$FontRequestCallback;)V

    return-void
.end method

.method private final synthetic $m$7()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/provider/Settings$NameValueCache;

    invoke-virtual {v0}, Landroid/provider/Settings$NameValueCache;->lambda$-android_provider_Settings$NameValueCache_73827()V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$id:B

    iput-object p2, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$2()V

    return-void

    :pswitch_3
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$3()V

    return-void

    :pswitch_4
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$4()V

    return-void

    :pswitch_5
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$5()V

    return-void

    :pswitch_6
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$6()V

    return-void

    :pswitch_7
    invoke-direct {p0}, Landroid/provider/-$Lambda$asz6VwQ86PPY-v8JLMb7rx-pSqg;->$m$7()V

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
    .end packed-switch
.end method