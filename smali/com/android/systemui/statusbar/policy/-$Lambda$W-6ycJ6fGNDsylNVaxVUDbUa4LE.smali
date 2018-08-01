.class final synthetic Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$ExtensionBuilder;->-com_android_systemui_statusbar_policy_ExtensionControllerImpl$ExtensionBuilder-mthref-0(Lcom/android/systemui/statusbar/policy/ExtensionControllerImpl$Item;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;->$INST$0:Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/-$Lambda$W-6ycJ6fGNDsylNVaxVUDbUa4LE;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
