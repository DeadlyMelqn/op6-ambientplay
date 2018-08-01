.class final synthetic Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment$Adapter;

    check-cast p1, Lcom/android/systemui/tuner/LockscreenFragment$Item;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/tuner/LockscreenFragment$App;->lambda$-com_android_systemui_tuner_LockscreenFragment$App_8586(Lcom/android/systemui/tuner/LockscreenFragment$Adapter;Lcom/android/systemui/tuner/LockscreenFragment$Item;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/tuner/LockscreenFragment;

    check-cast p1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/android/systemui/tuner/LockscreenFragment;->lambda$-com_android_systemui_tuner_LockscreenFragment_3763(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->-$f0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    check-cast p1, Lcom/android/systemui/tuner/SelectablePreference;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/tuner/ShortcutPicker;->lambda$-com_android_systemui_tuner_ShortcutPicker_5387(Ljava/lang/String;Lcom/android/systemui/tuner/SelectablePreference;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->$id:B

    iput-object p2, p0, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$3H5rrdjfcQbYrkcFMQaPInE7qn0;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
