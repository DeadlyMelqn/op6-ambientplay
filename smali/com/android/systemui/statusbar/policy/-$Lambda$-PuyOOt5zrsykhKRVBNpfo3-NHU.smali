.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

.field public static final synthetic $INST$1:Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

.field public static final synthetic $INST$2:Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->-com_android_systemui_statusbar_policy_KeyguardMonitorImpl-mthref-0(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_6128(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method private final synthetic $m$2(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/ZenModeControllerImpl;->lambda$-com_android_systemui_statusbar_policy_ZenModeControllerImpl_6003(Lcom/android/systemui/statusbar/policy/ZenModeController$Callback;)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$INST$0:Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$INST$1:Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$INST$2:Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$m$1(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$-PuyOOt5zrsykhKRVBNpfo3-NHU;->$m$2(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
