.class Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;
.super Ljava/lang/Object;
.source "SwipeDismissLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SwipeDismissLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DismissAnimator"
.end annotation


# instance fields
.field private final DISMISS_DURATION:J

.field private final DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private final mDismissAnimator:Landroid/animation/ValueAnimator;

.field private mDismissOnComplete:Z

.field private mWasCanceled:Z

.field final synthetic this$0:Lcom/android/internal/widget/SwipeDismissLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 3
    .param p1, "this$0"    # Lcom/android/internal/widget/SwipeDismissLayout;

    .prologue
    const/4 v2, 0x0

    .line 448
    iput-object p1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v1, 0x3fc00000    # 1.5f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 442
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_DURATION:J

    .line 444
    new-instance v0, Landroid/animation/ValueAnimator;

    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    .line 445
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    .line 446
    iput-boolean v2, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissOnComplete:Z

    .line 449
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 451
    return-void
.end method

.method private animate(FFJLandroid/animation/TimeInterpolator;Z)V
    .locals 3
    .param p1, "from"    # F
    .param p2, "to"    # F
    .param p3, "duration"    # J
    .param p5, "interpolator"    # Landroid/animation/TimeInterpolator;
    .param p6, "dismissOnComplete"    # Z

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 478
    iput-boolean p6, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissOnComplete:Z

    .line 479
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 480
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 481
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 482
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 483
    return-void
.end method


# virtual methods
.method animateDismissal(F)V
    .locals 8
    .param p1, "currentTranslation"    # F

    .prologue
    .line 455
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v2, p1, v0

    .line 456
    const/high16 v3, 0x3f800000    # 1.0f

    .line 458
    iget-object v6, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 457
    const-wide/16 v4, 0xfa

    .line 459
    const/4 v7, 0x1

    move-object v1, p0

    .line 454
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animate(FFJLandroid/animation/TimeInterpolator;Z)V

    .line 460
    return-void
.end method

.method animateRecovery(F)V
    .locals 8
    .param p1, "currentTranslation"    # F

    .prologue
    .line 464
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v2, p1, v0

    .line 465
    const/4 v3, 0x0

    .line 467
    iget-object v6, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->DISMISS_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 466
    const-wide/16 v4, 0xfa

    .line 468
    const/4 v7, 0x0

    move-object v1, p0

    .line 463
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->animate(FFJLandroid/animation/TimeInterpolator;Z)V

    .line 469
    return-void
.end method

.method isAnimating()Z
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    return v0
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 498
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    .line 499
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 503
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    if-nez v0, :cond_0

    .line 504
    iget-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mDismissOnComplete:Z

    if-eqz v0, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-static {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap0(Lcom/android/internal/widget/SwipeDismissLayout;)V

    .line 510
    :cond_0
    :goto_0
    return-void

    .line 507
    :cond_1
    iget-object v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/SwipeDismissLayout;->cancel()V

    goto :goto_0
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 514
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->mWasCanceled:Z

    .line 494
    return-void
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 487
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 488
    .local v0, "value":F
    iget-object v1, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    iget-object v2, p0, Lcom/android/internal/widget/SwipeDismissLayout$DismissAnimator;->this$0:Lcom/android/internal/widget/SwipeDismissLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/SwipeDismissLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v0

    invoke-static {v1, v2}, Lcom/android/internal/widget/SwipeDismissLayout;->-wrap2(Lcom/android/internal/widget/SwipeDismissLayout;F)V

    .line 489
    return-void
.end method
