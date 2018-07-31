.class final synthetic Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "arg0"    # Landroid/animation/ValueAnimator;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/statusbar/phone/ScrimController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;->-$f1:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->lambda$-com_android_systemui_statusbar_phone_ScrimController_22755(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/-$Lambda$Qa_0r0Wgvb30yriIJPTwPtXGSyk;->$m$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method
