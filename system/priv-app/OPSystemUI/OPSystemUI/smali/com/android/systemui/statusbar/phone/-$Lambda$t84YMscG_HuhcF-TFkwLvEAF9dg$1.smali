.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "arg0"    # Ljava/lang/Object;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/MotionEvent;

    check-cast p1, Landroid/view/View;

    .end local p1    # "arg0":Ljava/lang/Object;
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/NearestTouchFrame;->lambda$-com_android_systemui_statusbar_phone_NearestTouchFrame_3467(Landroid/view/MotionEvent;Landroid/view/View;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$t84YMscG_HuhcF-TFkwLvEAF9dg$1;->$m$0(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
