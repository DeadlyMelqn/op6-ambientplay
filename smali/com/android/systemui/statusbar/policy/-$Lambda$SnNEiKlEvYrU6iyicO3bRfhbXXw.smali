.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;
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
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;

    check-cast p1, Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/LocationControllerImpl$H;->lambda$-com_android_systemui_statusbar_policy_LocationControllerImpl$H_8433(Lcom/android/systemui/statusbar/policy/LocationController$LocationChangeCallback;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->-$f0:Ljava/lang/Object;

    check-cast v0, [Landroid/service/notification/Condition;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_6539([Landroid/service/notification/Condition;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/ZenModeConfig;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_6844(Landroid/service/notification/ZenModeConfig;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method private final synthetic $m$3(Ljava/lang/Object;)V
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->-$f0:Ljava/lang/Object;

    check-cast v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_6680(Landroid/service/notification/ZenModeConfig$ZenRule;Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->$id:B

    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->$m$2(Ljava/lang/Object;)V

    return-void

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$SnNEiKlEvYrU6iyicO3bRfhbXXw;->$m$3(Ljava/lang/Object;)V

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
