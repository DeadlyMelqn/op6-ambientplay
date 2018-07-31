.class Lcom/android/keyguard/PasswordTextViewForPin$CharState;
.super Ljava/lang/Object;
.source "PasswordTextViewForPin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/PasswordTextViewForPin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CharState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$3;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$5;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$6;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$7;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$8;,
        Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;
    }
.end annotation


# instance fields
.field currentDotSizeFactor:F

.field currentEmptyCircleSizeFactor:F

.field currentTextSizeFactor:F

.field currentTextTranslationY:F

.field currentWidthFactor:F

.field dotAnimationIsGrowing:Z

.field dotAnimator:Landroid/animation/Animator;

.field dotFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private dotSwapperRunnable:Ljava/lang/Runnable;

.field isDotSwapPending:Z

.field removeEndListener:Landroid/animation/Animator$AnimatorListener;

.field textAnimationIsGrowing:Z

.field textAnimator:Landroid/animation/ValueAnimator;

.field textFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field textTranslateAnimator:Landroid/animation/ValueAnimator;

.field textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field final synthetic this$0:Lcom/android/keyguard/PasswordTextViewForPin;

.field whichChar:C

.field widthAnimationIsGrowing:Z

.field widthAnimator:Landroid/animation/ValueAnimator;

.field widthFinishListener:Landroid/animation/Animator$AnimatorListener;

.field private widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method static synthetic -wrap0(Lcom/android/keyguard/PasswordTextViewForPin$CharState;Landroid/animation/Animator;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->performSwap()V

    return-void
.end method

.method static synthetic -wrap2(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    return-void
.end method

.method private constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextViewForPin;

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 459
    iput-object p1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 473
    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentEmptyCircleSizeFactor:F

    .line 475
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$1;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    .line 499
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$2;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 506
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$3;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 513
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$4;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 520
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$5;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$5;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    .line 528
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$6;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$6;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 527
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 537
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$7;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$7;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 536
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 546
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$8;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$8;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 545
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 555
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$9;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    .line 554
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 563
    new-instance v0, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;

    invoke-direct {v0, p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState$10;-><init>(Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    .line 459
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/keyguard/PasswordTextViewForPin;Lcom/android/keyguard/PasswordTextViewForPin$CharState;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/keyguard/PasswordTextViewForPin;
    .param p2, "-this1"    # Lcom/android/keyguard/PasswordTextViewForPin$CharState;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;-><init>(Lcom/android/keyguard/PasswordTextViewForPin;)V

    return-void
.end method

.method private cancelAnimator(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animator"    # Landroid/animation/Animator;

    .prologue
    .line 759
    if-eqz p1, :cond_0

    .line 760
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    .line 762
    :cond_0
    return-void
.end method

.method private performSwap()V
    .locals 2

    .prologue
    .line 651
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 652
    const-wide/16 v0, 0x1e

    invoke-direct {p0, v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 654
    return-void
.end method

.method private postDotSwap(J)V
    .locals 3
    .param p1, "delay"    # J

    .prologue
    .line 629
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 630
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 631
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 632
    return-void
.end method

.method private removeDotSwapCallbacks()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSwapperRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/PasswordTextViewForPin;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 636
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->isDotSwapPending:Z

    .line 637
    return-void
.end method

.method private startDotAppearAnimation(J)V
    .locals 13
    .param p1, "delay"    # J

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x2

    const/4 v8, 0x1

    .line 726
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v6}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 727
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextViewForPin;->-get6(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 729
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    .line 730
    const/high16 v7, 0x3fc00000    # 1.5f

    aput v7, v6, v8

    .line 729
    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 731
    .local v2, "overShootAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 732
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextViewForPin;->-get0(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 733
    const-wide/16 v4, 0xa0

    .line 735
    .local v4, "overShootDuration":J
    invoke-virtual {v2, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 736
    new-array v6, v9, [F

    fill-array-data v6, :array_0

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 738
    .local v3, "settleBackAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 739
    const-wide/16 v6, 0xa0

    invoke-virtual {v3, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 740
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 741
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 742
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    new-array v6, v9, [Landroid/animation/Animator;

    aput-object v2, v6, v10

    aput-object v3, v6, v8

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    .line 743
    invoke-virtual {v0, p1, p2}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 744
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 745
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 755
    .end local v0    # "animatorSet":Landroid/animation/AnimatorSet;
    .end local v2    # "overShootAnimator":Landroid/animation/ValueAnimator;
    .end local v3    # "settleBackAnimator":Landroid/animation/ValueAnimator;
    .end local v4    # "overShootDuration":J
    :goto_0
    iput-boolean v8, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 756
    return-void

    .line 747
    :cond_0
    new-array v6, v9, [F

    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v7, v6, v10

    aput v11, v6, v8

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 748
    .local v1, "growAnimator":Landroid/animation/ValueAnimator;
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 749
    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    sub-float v6, v11, v6

    const/high16 v7, 0x43200000    # 160.0f

    mul-float/2addr v6, v7

    float-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 750
    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 751
    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 752
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 753
    iput-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    goto :goto_0

    .line 736
    :array_0
    .array-data 4
        0x3fc00000    # 1.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private startDotDisappearAnimation(J)V
    .locals 7
    .param p1, "startDelay"    # J

    .prologue
    const/4 v6, 0x0

    .line 681
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v1}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 682
    const/4 v1, 0x2

    new-array v1, v1, [F

    iget v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    aput v4, v1, v6

    const/4 v4, 0x0

    const/4 v5, 0x1

    aput v4, v1, v5

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 683
    .local v0, "animator":Landroid/animation/ValueAnimator;
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 684
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 685
    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->-get3(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 686
    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v1, v4

    float-to-long v2, v1

    .line 687
    .local v2, "duration":J
    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 688
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 689
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 690
    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 691
    iput-boolean v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .line 692
    return-void
.end method

.method private startTextAppearAnimation()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 705
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 706
    new-array v0, v5, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 707
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 708
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 709
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->-get0(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 710
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 711
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 712
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 715
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    .line 716
    new-array v0, v5, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    .line 717
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslationUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 718
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 719
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->-get0(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 720
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v2, 0xa0

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 721
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textTranslateAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 723
    :cond_0
    return-void

    .line 716
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private startTextDisappearAnimation(J)V
    .locals 5
    .param p1, "startDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 669
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 670
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 671
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textSizeUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 672
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 673
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v1}, Lcom/android/keyguard/PasswordTextViewForPin;->-get3(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 674
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 675
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 676
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 677
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .line 678
    return-void
.end method

.method private startWidthAppearAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 695
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 696
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/4 v2, 0x0

    aput v1, v0, v2

    aput v3, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 697
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 698
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 699
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    sub-float v1, v3, v1

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 700
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 701
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 702
    return-void
.end method

.method private startWidthDisappearAnimation(J)V
    .locals 5
    .param p1, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 657
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 658
    const/4 v0, 0x2

    new-array v0, v0, [F

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    aput v1, v0, v4

    const/4 v1, 0x0

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 659
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthUpdater:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 660
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthFinishListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 661
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeEndListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 662
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    iget v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    const/high16 v2, 0x43200000    # 160.0f

    mul-float/2addr v1, v2

    float-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 663
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 664
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 665
    iput-boolean v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .line 666
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;FIFF)F
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "currentDrawPosition"    # F
    .param p3, "charHeight"    # I
    .param p4, "yPosition"    # F
    .param p5, "charLength"    # F

    .prologue
    const/high16 v9, 0x40000000    # 2.0f

    const/4 v8, 0x0

    .line 771
    iget v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_2

    const/4 v4, 0x1

    .line 772
    .local v4, "textVisible":Z
    :goto_0
    iget v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v5, v5, v8

    if-lez v5, :cond_3

    const/4 v3, 0x1

    .line 773
    .local v3, "dotVisible":Z
    :goto_1
    iget v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float v1, p5, v5

    .line 774
    .local v1, "charWidth":F
    if-eqz v4, :cond_0

    .line 775
    int-to-float v5, p3

    div-float/2addr v5, v9

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, p4

    .line 776
    int-to-float v6, p3

    iget v7, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    mul-float/2addr v6, v7

    const v7, 0x3f4ccccd    # 0.8f

    mul-float/2addr v6, v7

    .line 775
    add-float v2, v5, v6

    .line 777
    .local v2, "currYPosition":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 778
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 779
    .local v0, "centerX":F
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 780
    iget v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->scale(FF)V

    .line 781
    iget-char v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextViewForPin;->-get5(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v8, v8, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 782
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 784
    .end local v0    # "centerX":F
    .end local v2    # "currYPosition":F
    :cond_0
    if-eqz v3, :cond_1

    .line 785
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 786
    div-float v5, v1, v9

    add-float v0, p2, v5

    .line 787
    .restart local v0    # "centerX":F
    invoke-virtual {p1, v0, p4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 788
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextViewForPin;->-get4(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    mul-float/2addr v5, v6

    iget-object v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v6}, Lcom/android/keyguard/PasswordTextViewForPin;->-get5(Lcom/android/keyguard/PasswordTextViewForPin;)Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v8, v8, v5, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 789
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 791
    .end local v0    # "centerX":F
    :cond_1
    iget-object v5, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v5}, Lcom/android/keyguard/PasswordTextViewForPin;->-get1(Lcom/android/keyguard/PasswordTextViewForPin;)I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    mul-float/2addr v5, v6

    add-float/2addr v5, v1

    return v5

    .line 771
    .end local v1    # "charWidth":F
    .end local v3    # "dotVisible":Z
    .end local v4    # "textVisible":Z
    :cond_2
    const/4 v4, 0x0

    .restart local v4    # "textVisible":Z
    goto :goto_0

    .line 772
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "dotVisible":Z
    goto :goto_1
.end method

.method reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 572
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->whichChar:C

    .line 573
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    .line 574
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    .line 575
    iput v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    .line 576
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 577
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    .line 578
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 579
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    .line 580
    iget-object v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0, v0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->cancelAnimator(Landroid/animation/Animator;)V

    .line 581
    iput-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    .line 582
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextTranslationY:F

    .line 583
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 584
    return-void
.end method

.method startAppearAnimation()V
    .locals 6

    .prologue
    .line 605
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextViewForPin;->-get6(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 606
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    xor-int/lit8 v0, v3, 0x1

    .line 607
    :goto_0
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextViewForPin;->-get6(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 608
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    xor-int/lit8 v1, v3, 0x1

    .line 609
    :goto_1
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    xor-int/lit8 v2, v3, 0x1

    .line 610
    :goto_2
    if-eqz v0, :cond_0

    .line 611
    const-wide/16 v4, 0x0

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotAppearAnimation(J)V

    .line 613
    :cond_0
    if-eqz v1, :cond_1

    .line 614
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextAppearAnimation()V

    .line 616
    :cond_1
    if-eqz v2, :cond_2

    .line 617
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startWidthAppearAnimation()V

    .line 619
    :cond_2
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->this$0:Lcom/android/keyguard/PasswordTextViewForPin;

    invoke-static {v3}, Lcom/android/keyguard/PasswordTextViewForPin;->-get6(Lcom/android/keyguard/PasswordTextViewForPin;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 620
    const-wide/16 v4, 0xfa

    invoke-direct {p0, v4, v5}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 622
    :cond_3
    return-void

    .line 606
    :cond_4
    const/4 v0, 0x1

    .local v0, "dotNeedsAnimation":Z
    goto :goto_0

    .line 605
    .end local v0    # "dotNeedsAnimation":Z
    :cond_5
    const/4 v0, 0x0

    .restart local v0    # "dotNeedsAnimation":Z
    goto :goto_0

    .line 608
    .end local v0    # "dotNeedsAnimation":Z
    :cond_6
    const/4 v1, 0x1

    .local v1, "textNeedsAnimation":Z
    goto :goto_1

    .line 607
    .end local v1    # "textNeedsAnimation":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "textNeedsAnimation":Z
    goto :goto_1

    .line 609
    .end local v1    # "textNeedsAnimation":Z
    :cond_8
    const/4 v2, 0x1

    .local v2, "widthNeedsAnimation":Z
    goto :goto_2
.end method

.method startRemoveAnimation(JJ)V
    .locals 5
    .param p1, "startDelay"    # J
    .param p3, "widthDelay"    # J

    .prologue
    const/4 v4, 0x0

    .line 587
    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentDotSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_3

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-nez v3, :cond_3

    const/4 v0, 0x1

    .line 589
    :goto_0
    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentTextSizeFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_5

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_5

    const/4 v1, 0x1

    .line 591
    :goto_1
    iget v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->currentWidthFactor:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_7

    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_7

    const/4 v2, 0x1

    .line 593
    :goto_2
    if-eqz v0, :cond_0

    .line 594
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startDotDisappearAnimation(J)V

    .line 596
    :cond_0
    if-eqz v1, :cond_1

    .line 597
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startTextDisappearAnimation(J)V

    .line 599
    :cond_1
    if-eqz v2, :cond_2

    .line 600
    invoke-direct {p0, p3, p4}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->startWidthDisappearAnimation(J)V

    .line 602
    :cond_2
    return-void

    .line 588
    :cond_3
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimator:Landroid/animation/Animator;

    if-eqz v3, :cond_4

    iget-boolean v0, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->dotAnimationIsGrowing:Z

    .local v0, "dotNeedsAnimation":Z
    goto :goto_0

    .end local v0    # "dotNeedsAnimation":Z
    :cond_4
    const/4 v0, 0x0

    .local v0, "dotNeedsAnimation":Z
    goto :goto_0

    .line 590
    .end local v0    # "dotNeedsAnimation":Z
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_6

    iget-boolean v1, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimationIsGrowing:Z

    .local v1, "textNeedsAnimation":Z
    goto :goto_1

    .end local v1    # "textNeedsAnimation":Z
    :cond_6
    const/4 v1, 0x0

    .local v1, "textNeedsAnimation":Z
    goto :goto_1

    .line 592
    .end local v1    # "textNeedsAnimation":Z
    :cond_7
    iget-object v3, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_8

    iget-boolean v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->widthAnimationIsGrowing:Z

    .local v2, "widthNeedsAnimation":Z
    goto :goto_2

    .end local v2    # "widthNeedsAnimation":Z
    :cond_8
    const/4 v2, 0x0

    .local v2, "widthNeedsAnimation":Z
    goto :goto_2
.end method

.method swapToDotWhenAppearFinished()V
    .locals 6

    .prologue
    .line 640
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->removeDotSwapCallbacks()V

    .line 641
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_0

    .line 642
    iget-object v2, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->getDuration()J

    move-result-wide v2

    .line 643
    iget-object v4, p0, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->textAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    move-result-wide v4

    .line 642
    sub-long v0, v2, v4

    .line 644
    .local v0, "remainingDuration":J
    const-wide/16 v2, 0x64

    add-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->postDotSwap(J)V

    .line 648
    .end local v0    # "remainingDuration":J
    :goto_0
    return-void

    .line 646
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/PasswordTextViewForPin$CharState;->performSwap()V

    goto :goto_0
.end method
