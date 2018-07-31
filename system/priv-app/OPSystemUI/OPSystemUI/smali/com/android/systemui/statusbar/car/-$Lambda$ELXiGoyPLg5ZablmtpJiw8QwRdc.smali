.class final synthetic Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/car/UserGridView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/car/UserGridView;->lambda$-com_android_systemui_statusbar_car_UserGridView_5435(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/car/-$Lambda$ELXiGoyPLg5ZablmtpJiw8QwRdc;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
