.class public Lcom/android/server/wm/BoundsAnimationController;
.super Ljava/lang/Object;
.source "BoundsAnimationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;,
        Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;,
        Lcom/android/server/wm/BoundsAnimationController$SchedulePipModeChangedState;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_ANIMATION_SLOW_DOWN_FACTOR:I = 0x1

.field private static final DEBUG_LOCAL:Z = false

.field private static final DEFAULT_TRANSITION_DURATION:I = 0x1a9

.field public static final NO_PIP_MODE_CHANGED_CALLBACKS:I = 0x0

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_END:I = 0x2

.field public static final SCHEDULE_PIP_MODE_CHANGED_ON_START:I = 0x1

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final WAIT_FOR_DRAW_TIMEOUT_MS:I = 0xbb8


# instance fields
.field private final mAnimationHandler:Landroid/animation/AnimationHandler;

.field private final mAppTransition:Lcom/android/server/wm/AppTransition;

.field private final mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

.field private final mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

.field private mFinishAnimationAfterTransition:Z

.field private final mHandler:Landroid/os/Handler;

.field private mRunningAnimations:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/BoundsAnimationTarget;",
            "Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wm/BoundsAnimationController;)Landroid/animation/AnimationHandler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/wm/BoundsAnimationController;)Lcom/android/server/wm/AppTransition;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/wm/BoundsAnimationController;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/wm/BoundsAnimationController;)Landroid/os/Handler;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/wm/BoundsAnimationController;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wm/BoundsAnimationController;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/BoundsAnimationController;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wm/BoundsAnimationController;)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/wm/BoundsAnimationController;

    .prologue
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->updateBooster()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    sput-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    .line 55
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wm/AppTransition;Landroid/os/Handler;Landroid/animation/AnimationHandler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "transition"    # Lcom/android/server/wm/AppTransition;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "animationHandler"    # Landroid/animation/AnimationHandler;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    .line 112
    new-instance v0, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;)V

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    .line 114
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFinishAnimationAfterTransition:Z

    .line 121
    iput-object p3, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    .line 122
    iput-object p2, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    .line 123
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransition:Lcom/android/server/wm/AppTransition;

    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mAppTransitionNotifier:Lcom/android/server/wm/BoundsAnimationController$AppTransitionNotifier;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->registerListenerLocked(Landroid/view/WindowManagerInternal$AppTransitionListener;)V

    .line 125
    const v0, 0x10c000d

    .line 124
    invoke-static {p1, v0}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 126
    iput-object p4, p0, Lcom/android/server/wm/BoundsAnimationController;->mAnimationHandler:Landroid/animation/AnimationHandler;

    .line 127
    return-void
.end method

.method private resume()V
    .locals 3

    .prologue
    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 461
    iget-object v2, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 462
    .local v0, "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    invoke-virtual {v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->resume()V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 464
    .end local v0    # "b":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    :cond_0
    return-void
.end method

.method private updateBooster()V
    .locals 2

    .prologue
    .line 467
    sget-object v0, Lcom/android/server/wm/WindowManagerService;->sThreadPriorityBooster:Lcom/android/server/wm/WindowManagerThreadPriorityBooster;

    .line 468
    iget-object v1, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 467
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerThreadPriorityBooster;->setBoundsAnimationRunning(Z)V

    .line 469
    return-void
.end method


# virtual methods
.method synthetic -com_android_server_wm_BoundsAnimationController-mthref-0()V
    .locals 0

    .prologue
    .line 456
    invoke-direct {p0}, Lcom/android/server/wm/BoundsAnimationController;->resume()V

    return-void
.end method

.method public animateBounds(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V
    .locals 0
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z

    .prologue
    .line 384
    invoke-virtual/range {p0 .. p7}, Lcom/android/server/wm/BoundsAnimationController;->animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 386
    return-void
.end method

.method animateBoundsImpl(Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .locals 13
    .param p1, "target"    # Lcom/android/server/wm/BoundsAnimationTarget;
    .param p2, "from"    # Landroid/graphics/Rect;
    .param p3, "to"    # Landroid/graphics/Rect;
    .param p4, "animationDuration"    # I
    .param p5, "schedulePipModeChangedState"    # I
    .param p6, "moveFromFullscreen"    # Z
    .param p7, "moveToFullscreen"    # Z

    .prologue
    .line 392
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    .line 393
    .local v11, "existing":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    if-eqz v11, :cond_2

    const/4 v12, 0x1

    .line 395
    .local v12, "replacing":Z
    :goto_0
    const/4 v8, 0x0

    .line 397
    .local v8, "prevSchedulePipModeChangedState":I
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_0

    sget-object v3, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animateBounds: target="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " from="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " to="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 398
    const-string/jumbo v5, " schedulePipModeChangedState="

    .line 397
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 399
    const-string/jumbo v5, " replacing="

    .line 397
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_0
    if-eqz v12, :cond_5

    .line 402
    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->isAnimatingTo(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 405
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_1

    sget-object v3, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "animateBounds: same destination as existing="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 406
    const-string/jumbo v5, " ignoring..."

    .line 405
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    :cond_1
    return-object v11

    .line 393
    .end local v8    # "prevSchedulePipModeChangedState":I
    .end local v12    # "replacing":Z
    :cond_2
    const/4 v12, 0x0

    .restart local v12    # "replacing":Z
    goto :goto_0

    .line 412
    .restart local v8    # "prevSchedulePipModeChangedState":I
    :cond_3
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->-get0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v8

    .line 415
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->-get0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 416
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_6

    .line 417
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "animateBounds: still animating to fullscreen, keep existing deferred state"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_4
    :goto_1
    invoke-virtual {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->cancel()V

    .line 438
    :cond_5
    new-instance v2, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object/from16 v6, p3

    move/from16 v7, p5

    move/from16 v9, p6

    move/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;-><init>(Lcom/android/server/wm/BoundsAnimationController;Lcom/android/server/wm/BoundsAnimationTarget;Landroid/graphics/Rect;Landroid/graphics/Rect;IIZZ)V

    .line 441
    .local v2, "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController;->mRunningAnimations:Landroid/util/ArrayMap;

    invoke-virtual {v3, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 442
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setFloatValues([F)V

    .line 443
    const/4 v3, -0x1

    move/from16 v0, p4

    if-eq v0, v3, :cond_b

    .end local p4    # "animationDuration":I
    :goto_2
    mul-int/lit8 v3, p4, 0x1

    int-to-long v4, v3

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 445
    iget-object v3, p0, Lcom/android/server/wm/BoundsAnimationController;->mFastOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 446
    invoke-virtual {v2}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->start()V

    .line 447
    return-object v2

    .line 420
    .end local v2    # "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    .restart local p4    # "animationDuration":I
    :cond_6
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_7

    sget-object v3, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "animateBounds: fullscreen animation canceled, callback on start already processed, schedule deferred update on end"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    :cond_7
    const/16 p5, 0x2

    goto :goto_1

    .line 424
    :cond_8
    invoke-static {v11}, Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;->-get0(Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 425
    const/4 v3, 0x1

    move/from16 v0, p5

    if-ne v0, v3, :cond_9

    .line 426
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_4

    sget-object v3, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "animateBounds: non-fullscreen animation canceled, callback on start will be processed"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 429
    :cond_9
    sget-boolean v3, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v3, :cond_a

    sget-object v3, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "animateBounds: still animating from fullscreen, keep existing deferred state"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    :cond_a
    const/16 p5, 0x2

    goto :goto_1

    .line 444
    .restart local v2    # "animator":Lcom/android/server/wm/BoundsAnimationController$BoundsAnimator;
    :cond_b
    const/16 p4, 0x1a9

    goto :goto_2

    .line 442
    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public onAllWindowsDrawn()V
    .locals 3

    .prologue
    .line 455
    sget-boolean v0, Lcom/android/server/wm/BoundsAnimationController;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/BoundsAnimationController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "onAllWindowsDrawn:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/BoundsAnimationController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;

    const/4 v2, 0x7

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/-$Lambda$aEpJ2RCAIjecjyIIYTv6ricEwh4;-><init>(BLjava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 457
    return-void
.end method
