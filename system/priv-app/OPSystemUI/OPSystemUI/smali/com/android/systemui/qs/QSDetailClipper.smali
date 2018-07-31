.class public Lcom/android/systemui/qs/QSDetailClipper;
.super Ljava/lang/Object;
.source "QSDetailClipper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/QSDetailClipper$1;,
        Lcom/android/systemui/qs/QSDetailClipper$2;
    }
.end annotation


# instance fields
.field private mAnimator:Landroid/animation/Animator;

.field private final mBackground:Landroid/graphics/drawable/TransitionDrawable;

.field private final mDetail:Landroid/view/View;

.field private final mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

.field private final mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/graphics/drawable/TransitionDrawable;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailClipper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/systemui/qs/QSDetailClipper;)Landroid/view/View;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailClipper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/QSDetailClipper;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/QSDetailClipper;
    .param p1, "-value"    # Landroid/animation/Animator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "detail"    # Landroid/view/View;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$1;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    .line 110
    new-instance v0, Lcom/android/systemui/qs/QSDetailClipper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDetailClipper$2;-><init>(Lcom/android/systemui/qs/QSDetailClipper;)V

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    .line 35
    iput-object p1, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iput-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    .line 37
    return-void
.end method


# virtual methods
.method public animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;)V
    .locals 6
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "in"    # Z
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 41
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/qs/QSDetailClipper;->animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;I)V

    .line 42
    return-void
.end method

.method public animateCircularClip(IIZLandroid/animation/Animator$AnimatorListener;I)V
    .locals 10
    .param p1, "x"    # I
    .param p2, "y"    # I
    .param p3, "in"    # Z
    .param p4, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p5, "startDelay"    # I

    .prologue
    .line 46
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    if-eqz v4, :cond_0

    .line 47
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->cancel()V

    .line 49
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v4

    sub-int v3, v4, p1

    .line 50
    .local v3, "w":I
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int v0, v4, p2

    .line 51
    .local v0, "h":I
    const/4 v1, 0x0

    .line 52
    .local v1, "innerR":I
    if-ltz p1, :cond_1

    if-gez v3, :cond_4

    .line 53
    :cond_1
    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 54
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 55
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 56
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 58
    :cond_2
    mul-int v4, p1, p1

    mul-int v5, p2, p2

    add-int/2addr v4, v5

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v2, v4

    .line 59
    .local v2, "r":I
    int-to-double v4, v2

    mul-int v6, v3, v3

    mul-int v7, p2, p2

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 60
    int-to-double v4, v2

    mul-int v6, v3, v3

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 61
    int-to-double v4, v2

    mul-int v6, p1, p1

    mul-int v7, v0, v0

    add-int/2addr v6, v7

    int-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    double-to-int v2, v4

    .line 62
    if-eqz p3, :cond_5

    .line 63
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-static {v4, p1, p2, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    .line 67
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide/high16 v8, 0x3ff8000000000000L    # 1.5

    mul-double/2addr v6, v8

    double-to-long v6, v6

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 68
    if-eqz p4, :cond_3

    .line 69
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4, p4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    :cond_3
    if-eqz p3, :cond_6

    .line 72
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->getDuration()J

    move-result-wide v6

    long-to-double v6, v6

    const-wide v8, 0x3fe3333333333333L    # 0.6

    mul-double/2addr v6, v8

    double-to-int v5, v6

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 73
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mVisibleOnStart:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 81
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    int-to-long v6, p5

    invoke-virtual {v4, v6, v7}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 83
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    invoke-virtual {v4}, Landroid/animation/Animator;->start()V

    .line 84
    return-void

    .line 52
    .end local v2    # "r":I
    :cond_4
    if-ltz p2, :cond_1

    if-gez v0, :cond_2

    goto/16 :goto_0

    .line 65
    .restart local v2    # "r":I
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mDetail:Landroid/view/View;

    int-to-float v5, v2

    int-to-float v6, v1

    invoke-static {v4, p1, p2, v5, v6}, Landroid/view/ViewAnimationUtils;->createCircularReveal(Landroid/view/View;IIFF)Landroid/animation/Animator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    goto :goto_1

    .line 78
    :cond_6
    iget-object v4, p0, Lcom/android/systemui/qs/QSDetailClipper;->mAnimator:Landroid/animation/Animator;

    iget-object v5, p0, Lcom/android/systemui/qs/QSDetailClipper;->mGoneOnEnd:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_2
.end method

.method public showBackground()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/qs/QSDetailClipper;->mBackground:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/TransitionDrawable;->showSecondLayer()V

    .line 121
    return-void
.end method
