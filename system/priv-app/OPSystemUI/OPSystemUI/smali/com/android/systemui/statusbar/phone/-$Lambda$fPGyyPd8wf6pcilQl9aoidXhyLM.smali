.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(F)V
    .locals 1
    .param p1, "arg0"    # F

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->-com_android_systemui_statusbar_phone_DarkIconDispatcherImpl-mthref-0(F)V

    return-void
.end method

.method private final synthetic $m$1(F)V
    .locals 1
    .param p1, "arg0"    # F

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarTransitions;->-com_android_systemui_statusbar_phone_NavigationBarTransitions-mthref-0(F)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;->$id:B

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final applyDarkIntensity(F)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;->$m$0(F)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$fPGyyPd8wf6pcilQl9aoidXhyLM;->$m$1(F)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
