.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ExtensionController$PluginConverter;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;

.field public static final synthetic $INST$1:Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;


# instance fields
.field private final synthetic $id:B


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$-com_android_systemui_statusbar_phone_KeyguardBottomAreaView_13142(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method

.method private final synthetic $m$1(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/plugins/IntentButtonProvider;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->lambda$-com_android_systemui_statusbar_phone_KeyguardBottomAreaView_13611(Lcom/android/systemui/plugins/IntentButtonProvider;)Lcom/android/systemui/plugins/IntentButtonProvider$IntentButton;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;->$INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;-><init>(B)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;->$INST$1:Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;

    return-void
.end method

.method private synthetic constructor <init>(B)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;->$id:B

    return-void
.end method


# virtual methods
.method public final getInterfaceFromPlugin(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$mZI4GVd3kBIAS3zT_YEUG9_4rzk;->$m$1(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
