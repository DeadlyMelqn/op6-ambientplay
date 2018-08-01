.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;
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
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock$1;->lambda$-com_android_systemui_statusbar_policy_Clock$1_8644(Ljava/lang/String;)V

    return-void
.end method

.method private final synthetic $m$1()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/Clock$1;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/util/Locale;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/Clock$1;->lambda$-com_android_systemui_statusbar_policy_Clock$1_9091(Ljava/util/Locale;)V

    return-void
.end method

.method private final synthetic $m$2()V
    .locals 2

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f1:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/SecurityControllerImpl$CACertLoader;->lambda$-com_android_systemui_statusbar_policy_SecurityControllerImpl$CACertLoader_14932([Ljava/lang/Integer;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->$id:B

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->$m$0()V

    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->$m$1()V

    return-void

    :pswitch_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/-$Lambda$T4tXzWV28PejkMikVSdJbCP8ENw;->$m$2()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
