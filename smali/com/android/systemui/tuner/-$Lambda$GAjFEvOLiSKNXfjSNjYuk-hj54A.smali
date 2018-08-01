.class final synthetic Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;

.field public static final synthetic $INST$1:Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/tuner/TunerService$Tunable;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/tuner/NavBarTuner;->lambda$-com_android_systemui_tuner_NavBarTuner_4724(Lcom/android/systemui/tuner/TunerService$Tunable;)V

    return-void
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/fragments/FragmentService;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/tuner/TunerActivity;->lambda$-com_android_systemui_tuner_TunerActivity_2214(Lcom/android/systemui/fragments/FragmentService;)V

    return-void
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;-><init>(B)V

    sput-object v0, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;->$INST$0:Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;

    new-instance v0, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;-><init>(B)V

    sput-object v0, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;->$INST$1:Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;->$id:B

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;->$m$0(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/tuner/-$Lambda$GAjFEvOLiSKNXfjSNjYuk-hj54A;->$m$1(Ljava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
