.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Z


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;->-$f0:Z

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->lambda$-com_android_systemui_statusbar_policy_LocationControllerImpl$H_10066(ZLcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;->-$f0:Z

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_9687(ZLcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(BZ)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;->$id:B

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;->-$f0:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw$1;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
