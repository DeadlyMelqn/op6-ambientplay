.class final synthetic Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic $id:B

.field private final synthetic -$f0:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/ScrimView;->lambda$-com_android_systemui_statusbar_ScrimView_2349(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final synthetic $m$1(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->lambda$-com_android_systemui_statusbar_StatusBarIconView_4967(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private final synthetic $m$2(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->lambda$-com_android_systemui_statusbar_StatusBarIconView_4967(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(BLjava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->$id:B

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->-$f0:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .prologue
    iget-byte v0, p0, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->$id:B

    packed-switch v0, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->$m$1(Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;->$m$2(Landroid/animation/ValueAnimator;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
