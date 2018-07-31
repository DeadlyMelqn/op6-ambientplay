.class final synthetic Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Ljava/lang/String;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;->-com_android_systemui_doze_AlwaysOnDisplayPolicy-mthref-0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;

    invoke-direct {v0}, Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;-><init>()V

    sput-object v0, Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;->$INST$0:Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/doze/-$Lambda$Pm-oMEZzS1-hcTDyMO0UqLPF_kM;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
