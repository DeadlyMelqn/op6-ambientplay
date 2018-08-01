.class public Lcom/android/systemui/pip/phone/PipMotionHelper;
.super Ljava/lang/Object;
.source "PipMotionHelper.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final RECT_EVALUATOR:Landroid/animation/RectEvaluator;


# instance fields
.field private mActivityManager:Landroid/app/IActivityManager;

.field private mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mBounds:Landroid/graphics/Rect;

.field private mBoundsAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

.field private mHandler:Landroid/os/Handler;

.field private mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

.field private mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

.field private final mStableInsets:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/pip/phone/PipMotionHelper;)Landroid/animation/AnimationHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/pip/phone/PipMotionHelper;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/animation/RectEvaluator;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    invoke-direct {v0, v1}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    sput-object v0, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Lcom/android/systemui/pip/phone/PipMenuActivityController;Lcom/android/internal/policy/PipSnapAlgorithm;Lcom/android/systemui/statusbar/FlingAnimationUtils;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activityManager"    # Landroid/app/IActivityManager;
    .param p3, "menuController"    # Lcom/android/systemui/pip/phone/PipMenuActivityController;
    .param p4, "snapAlgorithm"    # Lcom/android/internal/policy/PipSnapAlgorithm;
    .param p5, "flingAnimationUtils"    # Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    .line 100
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Lcom/android/systemui/recents/misc/ForegroundThread;->get()Lcom/android/systemui/recents/misc/ForegroundThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/recents/misc/ForegroundThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    .line 101
    iput-object p2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    .line 102
    iput-object p3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    .line 103
    iput-object p4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    .line 104
    iput-object p5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    .line 105
    new-instance v0, Landroid/animation/AnimationHandler;

    invoke-direct {v0}, Landroid/animation/AnimationHandler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 106
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mAnimationHandler:Landroid/animation/AnimationHandler;

    new-instance v1, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;

    invoke-direct {v1}, Lcom/android/internal/graphics/SfVsyncFrameCallbackProvider;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimationHandler;->setProvider(Landroid/animation/AnimationHandler$AnimationFrameCallbackProvider;)V

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->onConfigurationChanged()V

    .line 108
    return-void
.end method

.method private createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;
    .locals 4
    .param p1, "fromBounds"    # Landroid/graphics/Rect;
    .param p2, "toBounds"    # Landroid/graphics/Rect;
    .param p3, "duration"    # I
    .param p4, "interpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 412
    new-instance v0, Lcom/android/systemui/pip/phone/PipMotionHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$2;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    .line 418
    .local v0, "anim":Landroid/animation/ValueAnimator;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 419
    sget-object v1, Lcom/android/systemui/pip/phone/PipMotionHelper;->RECT_EVALUATOR:Landroid/animation/RectEvaluator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 420
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 421
    invoke-virtual {v0, p4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 422
    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ;

    invoke-direct {v1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$gnd6A7bpdbRyoF4aZCm-9Zo-dBQ;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 425
    return-object v0
.end method

.method private distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 3
    .param p1, "r1"    # Landroid/graphics/Rect;
    .param p2, "r2"    # Landroid/graphics/Rect;

    .prologue
    .line 507
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v0, v1}, Landroid/graphics/PointF;->length(FF)F

    move-result v0

    return v0
.end method

.method private getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;
    .locals 9
    .param p1, "pipBounds"    # Landroid/graphics/Rect;
    .param p2, "velX"    # F
    .param p3, "velY"    # F
    .param p4, "isFling"    # Z

    .prologue
    const/4 v8, 0x0

    .line 464
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 465
    .local v1, "displaySize":Landroid/graphics/Point;
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 466
    iget v5, v1, Landroid/graphics/Point;->y:I

    int-to-float v5, v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    const v7, 0x3dcccccd    # 0.1f

    mul-float/2addr v6, v7

    add-float v0, v5, v6

    .line 467
    .local v0, "bottomBound":F
    if-eqz p4, :cond_0

    cmpl-float v5, p2, v8

    if-eqz v5, :cond_0

    cmpl-float v5, p3, v8

    if-eqz v5, :cond_0

    .line 470
    div-float v2, p3, p2

    .line 472
    .local v2, "slope":F
    iget v5, p1, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    iget v6, p1, Landroid/graphics/Rect;->left:I

    int-to-float v6, v6

    mul-float/2addr v6, v2

    sub-float v4, v5, v6

    .line 474
    .local v4, "yIntercept":F
    sub-float v5, v0, v4

    div-float v3, v5, v2

    .line 475
    .local v3, "x":F
    new-instance v5, Landroid/graphics/Point;

    float-to-int v6, v3

    float-to-int v7, v0

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v5

    .line 479
    .end local v2    # "slope":F
    .end local v3    # "x":F
    .end local v4    # "yIntercept":F
    :cond_0
    new-instance v5, Landroid/graphics/Point;

    iget v6, p1, Landroid/graphics/Rect;->left:I

    float-to-int v7, v0

    invoke-direct {v5, v6, v7}, Landroid/graphics/Point;-><init>(II)V

    return-object v5
.end method

.method private resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V
    .locals 4
    .param p1, "toBounds"    # Landroid/graphics/Rect;
    .param p2, "duration"    # I

    .prologue
    .line 451
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 452
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 453
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 454
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 455
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 457
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-void
.end method

.method private resizePipUnchecked(Landroid/graphics/Rect;)V
    .locals 4
    .param p1, "toBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 436
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 437
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 438
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 439
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 441
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    return-void
.end method


# virtual methods
.method animateDismiss(Landroid/graphics/Rect;FFLandroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 8
    .param p1, "pipBounds"    # Landroid/graphics/Rect;
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "listener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 373
    invoke-static {p2, p3}, Landroid/graphics/PointF;->length(FF)F

    move-result v3

    .line 374
    .local v3, "velocity":F
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v4

    cmpl-float v4, v3, v4

    if-lez v4, :cond_2

    const/4 v0, 0x1

    .line 375
    .local v0, "isFling":Z
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;

    move-result-object v1

    .line 376
    .local v1, "p":Landroid/graphics/Point;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 377
    .local v2, "toBounds":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 378
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 379
    sget-object v5, Lcom/android/systemui/Interpolators;->FAST_OUT_LINEAR_IN:Landroid/view/animation/Interpolator;

    .line 378
    const/16 v6, 0xaf

    invoke-direct {p0, v4, v2, v6, v5}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 380
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/systemui/pip/phone/PipMotionHelper$1;

    invoke-direct {v5, p0}, Lcom/android/systemui/pip/phone/PipMotionHelper$1;-><init>(Lcom/android/systemui/pip/phone/PipMotionHelper;)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    if-eqz v0, :cond_0

    .line 387
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 v6, 0x0

    .line 388
    iget-object v7, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v7, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v7

    .line 387
    invoke-virtual {v4, v5, v6, v7, v3}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 390
    :cond_0
    if-eqz p4, :cond_1

    .line 391
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4, p4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 393
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 394
    return-object v2

    .line 374
    .end local v0    # "isFling":Z
    .end local v1    # "p":Landroid/graphics/Point;
    .end local v2    # "toBounds":Landroid/graphics/Rect;
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isFling":Z
    goto :goto_0
.end method

.method animateToClosestMinimizedState(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .prologue
    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 268
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 269
    .local v0, "toBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 270
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 271
    sget-object v2, Lcom/android/systemui/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/16 v3, 0xc8

    .line 270
    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 272
    if-eqz p2, :cond_0

    .line 273
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 275
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 277
    :cond_1
    return-object v0
.end method

.method animateToClosestSnapTarget(Landroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "movementBounds"    # Landroid/graphics/Rect;
    .param p2, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p3, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 311
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 312
    .local v0, "toBounds":Landroid/graphics/Rect;
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 313
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    .line 314
    sget-object v2, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 313
    const/16 v3, 0xe1

    invoke-direct {p0, v1, v0, v3, v2}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 315
    if-eqz p2, :cond_0

    .line 316
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 318
    :cond_0
    if-eqz p3, :cond_1

    .line 319
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 321
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    .line 323
    :cond_2
    return-object v0
.end method

.method animateToExpandedState(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)F
    .locals 4
    .param p1, "expandedBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;
    .param p3, "expandedMovementBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v2, Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v1, v2, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v0

    .line 332
    .local v0, "savedSnapFraction":F
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v1, p1, p3, v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 333
    const/16 v1, 0xfa

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    .line 334
    return v0
.end method

.method animateToIMEOffset(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "toBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 363
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 364
    const/16 v0, 0x12c

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    .line 365
    return-void
.end method

.method animateToUnexpandedState(Landroid/graphics/Rect;FLandroid/graphics/Rect;Landroid/graphics/Rect;ZZ)V
    .locals 3
    .param p1, "normalBounds"    # Landroid/graphics/Rect;
    .param p2, "savedSnapFraction"    # F
    .param p3, "normalMovementBounds"    # Landroid/graphics/Rect;
    .param p4, "currentMovementBounds"    # Landroid/graphics/Rect;
    .param p5, "minimized"    # Z
    .param p6, "immediate"    # Z

    .prologue
    .line 343
    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    invoke-virtual {v0, v1, p4}, Lcom/android/internal/policy/PipSnapAlgorithm;->getSnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result p2

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0, p1, p3, p2}, Lcom/android/internal/policy/PipSnapAlgorithm;->applySnapFraction(Landroid/graphics/Rect;Landroid/graphics/Rect;F)V

    .line 349
    if-eqz p5, :cond_1

    .line 350
    invoke-virtual {p0, p1, p3}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object p1

    .line 352
    :cond_1
    if-eqz p6, :cond_2

    .line 353
    invoke-virtual {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->movePip(Landroid/graphics/Rect;)V

    .line 357
    :goto_0
    return-void

    .line 355
    :cond_2
    const/16 v0, 0xfa

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizeAndAnimatePipUnchecked(Landroid/graphics/Rect;I)V

    goto :goto_0
.end method

.method cancelAnimations()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 401
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 403
    iput-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 405
    :cond_0
    return-void
.end method

.method dismissPip()V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 182
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 183
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;

    const/4 v2, 0x6

    invoke-direct {v1, v2, p0}, Lcom/android/systemui/pip/phone/-$Lambda$apc3PWlomUA_8Gv_LC2-DRbkZWo;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 190
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 555
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 556
    .local v0, "innerPrefix":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "PipMotionHelper"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 557
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "mStableInsets="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method expandPip()V
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->expandPip(Z)V

    .line 147
    return-void
.end method

.method expandPip(Z)V
    .locals 3
    .param p1, "skipAnimation"    # Z

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 158
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mMenuController:Lcom/android/systemui/pip/phone/PipMenuActivityController;

    invoke-virtual {v0}, Lcom/android/systemui/pip/phone/PipMenuActivityController;->hideMenuWithoutResize()V

    .line 159
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/systemui/pip/phone/-$Lambda$NAHws3nqeyxCJVceltMK08RHs0M;-><init>(BZLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method flingToSnapTarget(FFFLandroid/graphics/Rect;Landroid/animation/ValueAnimator$AnimatorUpdateListener;Landroid/animation/Animator$AnimatorListener;Landroid/graphics/Point;)Landroid/graphics/Rect;
    .locals 7
    .param p1, "velocity"    # F
    .param p2, "velocityX"    # F
    .param p3, "velocityY"    # F
    .param p4, "movementBounds"    # Landroid/graphics/Rect;
    .param p5, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p6, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .param p7, "startPosition"    # Landroid/graphics/Point;

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 287
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    move-object v1, p4

    move v3, p2

    move v4, p3

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FFLandroid/graphics/Point;)Landroid/graphics/Rect;

    move-result-object v6

    .line 289
    .local v6, "toBounds":Landroid/graphics/Rect;
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 290
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    sget-object v1, Lcom/android/systemui/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v6, v2, v1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->createAnimationToBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;ILandroid/view/animation/Interpolator;)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    .line 291
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mFlingAnimationUtils:Lcom/android/systemui/statusbar/FlingAnimationUtils;

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    const/4 v2, 0x0

    .line 292
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-direct {p0, v3, v6}, Lcom/android/systemui/pip/phone/PipMotionHelper;->distanceBetweenRectOffsets(Landroid/graphics/Rect;Landroid/graphics/Rect;)F

    move-result v3

    .line 291
    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/systemui/statusbar/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    .line 294
    if-eqz p5, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 297
    :cond_0
    if-eqz p6, :cond_1

    .line 298
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p6}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 300
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBoundsAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 302
    :cond_2
    return-object v6
.end method

.method getBounds()Landroid/graphics/Rect;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    return-object v0
.end method

.method getClosestMinimizedBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4
    .param p1, "stackBounds"    # Landroid/graphics/Rect;
    .param p2, "movementBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 203
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 204
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 205
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v2, p2, p1}, Lcom/android/internal/policy/PipSnapAlgorithm;->findClosestSnapBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    .line 206
    .local v1, "toBounds":Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, p2, v0, v3}, Lcom/android/internal/policy/PipSnapAlgorithm;->applyMinimizedOffset(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Point;Landroid/graphics/Rect;)V

    .line 207
    return-object v1
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v10, 0x1

    .line 514
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 550
    return v1

    .line 516
    :pswitch_0
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 517
    .local v7, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 519
    .local v2, "toBounds":Landroid/graphics/Rect;
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Landroid/app/IActivityManager;->resizePinnedStack(Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 520
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 524
    :goto_0
    return v10

    .line 521
    :catch_0
    move-exception v8

    .line 522
    .local v8, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipMotionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not resize pinned stack to bounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 528
    .end local v2    # "toBounds":Landroid/graphics/Rect;
    .end local v7    # "args":Lcom/android/internal/os/SomeArgs;
    .end local v8    # "e":Landroid/os/RemoteException;
    :pswitch_1
    iget-object v7, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Lcom/android/internal/os/SomeArgs;

    .line 529
    .restart local v7    # "args":Lcom/android/internal/os/SomeArgs;
    iget-object v2, v7, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Landroid/graphics/Rect;

    .line 530
    .restart local v2    # "toBounds":Landroid/graphics/Rect;
    iget v6, v7, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 532
    .local v6, "duration":I
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v9

    .line 533
    .local v9, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-nez v9, :cond_0

    .line 536
    return v10

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    .line 540
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 541
    const/4 v5, 0x1

    .line 539
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 546
    .end local v9    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :goto_1
    return v10

    .line 543
    :catch_1
    move-exception v8

    .line 544
    .restart local v8    # "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipMotionHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Could not animate resize pinned stack to bounds: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 514
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public isGestureToDismissArea(Landroid/graphics/Rect;FFZ)Z
    .locals 8
    .param p1, "pipBounds"    # Landroid/graphics/Rect;
    .param p2, "velX"    # F
    .param p3, "velY"    # F
    .param p4, "isFling"    # Z

    .prologue
    .line 489
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/pip/phone/PipMotionHelper;->getDismissEndPoint(Landroid/graphics/Rect;FFZ)Landroid/graphics/Point;

    move-result-object v1

    .line 491
    .local v1, "endpoint":Landroid/graphics/Point;
    iget v4, v1, Landroid/graphics/Point;->x:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 492
    iget v4, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 495
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 496
    .local v3, "size":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 497
    iget v4, v3, Landroid/graphics/Point;->x:I

    div-int/lit8 v2, v4, 0x3

    .line 498
    .local v2, "left":I
    new-instance v0, Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x2

    .line 499
    iget v6, v3, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v7

    add-int/2addr v6, v7

    .line 498
    invoke-direct {v0, v2, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 500
    .local v0, "dismissArea":Landroid/graphics/Rect;
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Rect;->contains(II)Z

    move-result v4

    return v4
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMotionHelper_16114(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 423
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    invoke-direct {p0, v0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMotionHelper_5923(Z)V
    .locals 8
    .param p1, "skipAnimation"    # Z

    .prologue
    .line 161
    if-eqz p1, :cond_0

    .line 162
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->moveTasksToFullscreenStack(IZ)V

    :goto_0
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    .line 165
    const/4 v3, 0x1

    const/4 v4, 0x1

    .line 166
    const/4 v5, 0x1

    const/16 v6, 0x12c

    .line 164
    invoke-interface/range {v0 .. v6}, Landroid/app/IActivityManager;->resizeStack(ILandroid/graphics/Rect;ZZZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 168
    :catch_0
    move-exception v7

    .line 169
    .local v7, "e":Landroid/os/RemoteException;
    const-string/jumbo v0, "PipMotionHelper"

    const-string/jumbo v1, "Error expanding PiP activity"

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method synthetic lambda$-com_android_systemui_pip_phone_PipMotionHelper_6815()V
    .locals 3

    .prologue
    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v2, 0x4

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->removeStack(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    .line 186
    :catch_0
    move-exception v0

    .line 187
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "PipMotionHelper"

    const-string/jumbo v2, "Failed to remove PiP"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method movePip(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "toBounds"    # Landroid/graphics/Rect;

    .prologue
    .line 137
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 138
    invoke-direct {p0, p1}, Lcom/android/systemui/pip/phone/PipMotionHelper;->resizePipUnchecked(Landroid/graphics/Rect;)V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 140
    return-void
.end method

.method onConfigurationChanged()V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mSnapAlgorithm:Lcom/android/internal/policy/PipSnapAlgorithm;

    invoke-virtual {v0}, Lcom/android/internal/policy/PipSnapAlgorithm;->onConfigurationChanged()V

    .line 115
    iget-object v0, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getInstance(Landroid/content/Context;)Lcom/android/systemui/recents/misc/SystemServicesProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mStableInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Lcom/android/systemui/recents/misc/SystemServicesProxy;->getStableInsets(Landroid/graphics/Rect;)V

    .line 116
    return-void
.end method

.method shouldDismissPip()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 232
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 233
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 234
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_1

    .line 235
    iget-object v3, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 236
    .local v1, "offscreenFraction":F
    const v3, 0x3e99999a    # 0.3f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 238
    .end local v1    # "offscreenFraction":F
    :cond_1
    return v2
.end method

.method shouldMinimizePip()Z
    .locals 7

    .prologue
    const/4 v2, 0x1

    const v6, 0x3e99999a    # 0.3f

    const/4 v3, 0x0

    .line 214
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 215
    .local v0, "displaySize":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 216
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    if-gez v4, :cond_1

    .line 217
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float v1, v4, v5

    .line 218
    .local v1, "offscreenFraction":F
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 219
    .end local v1    # "offscreenFraction":F
    :cond_1
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    if-le v4, v5, :cond_3

    .line 220
    iget-object v4, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    .line 221
    iget-object v5, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    .line 220
    div-float v1, v4, v5

    .line 222
    .restart local v1    # "offscreenFraction":F
    cmpl-float v4, v1, v6

    if-ltz v4, :cond_2

    :goto_1
    return v2

    :cond_2
    move v2, v3

    goto :goto_1

    .line 224
    .end local v1    # "offscreenFraction":F
    :cond_3
    return v3
.end method

.method synchronizePinnedStackBounds()V
    .locals 4

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/pip/phone/PipMotionHelper;->cancelAnimations()V

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mActivityManager:Landroid/app/IActivityManager;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->getStackInfo(I)Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    .line 125
    .local v1, "stackInfo":Landroid/app/ActivityManager$StackInfo;
    if-eqz v1, :cond_0

    .line 126
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMotionHelper;->mBounds:Landroid/graphics/Rect;

    iget-object v3, v1, Landroid/app/ActivityManager$StackInfo;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v1    # "stackInfo":Landroid/app/ActivityManager$StackInfo;
    :cond_0
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "PipMotionHelper"

    const-string/jumbo v3, "Failed to get pinned stack bounds"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
