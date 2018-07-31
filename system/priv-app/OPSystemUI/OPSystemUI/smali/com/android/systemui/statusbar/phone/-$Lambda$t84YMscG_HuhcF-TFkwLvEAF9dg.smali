.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/ToIntFunction;


# static fields
.field public static final synthetic $INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    check-cast p1, Landroid/util/Pair;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$-com_android_systemui_statusbar_phone_NearestTouchFrame_3552(Landroid/util/Pair;)I

    move-result v0

    return v0
.end method

.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;->$INST$0:Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;

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
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg;->$m$0(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method
