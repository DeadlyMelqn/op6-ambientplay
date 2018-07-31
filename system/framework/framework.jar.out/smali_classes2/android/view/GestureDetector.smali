.class public Landroid/view/GestureDetector;
.super Ljava/lang/Object;
.source "GestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/GestureDetector$GestureHandler;,
        Landroid/view/GestureDetector$OnContextClickListener;,
        Landroid/view/GestureDetector$OnDoubleTapListener;,
        Landroid/view/GestureDetector$OnGestureListener;,
        Landroid/view/GestureDetector$SimpleOnGestureListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TAP_MIN_TIME:I

.field private static final DOUBLE_TAP_TIMEOUT:I

.field private static final LONGPRESS_TIMEOUT:I

.field private static final LONG_PRESS:I = 0x2

.field private static final SHOW_PRESS:I = 0x1

.field private static final TAP:I = 0x3

.field private static final TAP_TIMEOUT:I


# instance fields
.field private mAlwaysInBiggerTapRegion:Z

.field private mAlwaysInTapRegion:Z

.field private mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

.field private mCurrentDownEvent:Landroid/view/MotionEvent;

.field private mDeferConfirmSingleTap:Z

.field private mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

.field private mDoubleTapSlopSquare:I

.field private mDoubleTapTouchSlopSquare:I

.field private mDownFocusX:F

.field private mDownFocusY:F

.field private final mHandler:Landroid/os/Handler;

.field private mIgnoreNextUpEvent:Z

.field private mInContextClick:Z

.field private mInLongPress:Z

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private mIsDoubleTapping:Z

.field private mIsLongpressEnabled:Z

.field private mLastFocusX:F

.field private mLastFocusY:F

.field private final mListener:Landroid/view/GestureDetector$OnGestureListener;

.field private mMaximumFlingVelocity:I

.field private mMinimumFlingVelocity:I

.field private mPreviousUpEvent:Landroid/view/MotionEvent;

.field private mStillDown:Z

.field private mTouchSlopSquare:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static synthetic -get0(Landroid/view/GestureDetector;)Landroid/view/MotionEvent;
    .locals 1
    .param p0, "-this"    # Landroid/view/GestureDetector;

    .prologue
    iget-object v0, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    return-object v0
.end method

.method static synthetic -get1(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnDoubleTapListener;
    .locals 1
    .param p0, "-this"    # Landroid/view/GestureDetector;

    .prologue
    iget-object v0, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    return-object v0
.end method

.method static synthetic -get2(Landroid/view/GestureDetector;)Landroid/view/GestureDetector$OnGestureListener;
    .locals 1
    .param p0, "-this"    # Landroid/view/GestureDetector;

    .prologue
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    return-object v0
.end method

.method static synthetic -get3(Landroid/view/GestureDetector;)Z
    .locals 1
    .param p0, "-this"    # Landroid/view/GestureDetector;

    .prologue
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mStillDown:Z

    return v0
.end method

.method static synthetic -set0(Landroid/view/GestureDetector;Z)Z
    .locals 0
    .param p0, "-this"    # Landroid/view/GestureDetector;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    return p1
.end method

.method static synthetic -wrap0(Landroid/view/GestureDetector;)V
    .locals 0
    .param p0, "-this"    # Landroid/view/GestureDetector;

    .prologue
    invoke-direct {p0}, Landroid/view/GestureDetector;->dispatchLongPress()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 225
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    .line 226
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    .line 227
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    .line 228
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapMinTime()I

    move-result v0

    sput v0, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;

    .prologue
    .line 363
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 364
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v0, 0x0

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    new-instance v0, Landroid/view/InputEventConsistencyVerifier;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    .line 272
    :cond_0
    iput-object v0, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 379
    if-eqz p3, :cond_3

    .line 380
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0, p3}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;Landroid/os/Handler;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    .line 384
    :goto_0
    iput-object p2, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    .line 385
    instance-of v0, p2, Landroid/view/GestureDetector$OnDoubleTapListener;

    if-eqz v0, :cond_1

    move-object v0, p2

    .line 386
    check-cast v0, Landroid/view/GestureDetector$OnDoubleTapListener;

    invoke-virtual {p0, v0}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 388
    :cond_1
    instance-of v0, p2, Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v0, :cond_2

    .line 389
    check-cast p2, Landroid/view/GestureDetector$OnContextClickListener;

    .end local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    invoke-virtual {p0, p2}, Landroid/view/GestureDetector;->setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V

    .line 391
    :cond_2
    invoke-direct {p0, p1}, Landroid/view/GestureDetector;->init(Landroid/content/Context;)V

    .line 392
    return-void

    .line 382
    .restart local p2    # "listener":Landroid/view/GestureDetector$OnGestureListener;
    :cond_3
    new-instance v0, Landroid/view/GestureDetector$GestureHandler;

    invoke-direct {v0, p0}, Landroid/view/GestureDetector$GestureHandler;-><init>(Landroid/view/GestureDetector;)V

    iput-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "unused"    # Z

    .prologue
    .line 409
    invoke-direct {p0, p1, p2, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 410
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 348
    invoke-direct {p0, v0, p1, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 349
    return-void
.end method

.method public constructor <init>(Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/GestureDetector$OnGestureListener;
    .param p2, "handler"    # Landroid/os/Handler;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    .line 331
    return-void
.end method

.method private cancel()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 727
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 728
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 729
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 730
    iget-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 732
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 733
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mStillDown:Z

    .line 734
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 735
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 736
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 737
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 738
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 739
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 740
    return-void
.end method

.method private cancelTaps()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 743
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 744
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 745
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 746
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 747
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 748
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 749
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 750
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 751
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 752
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 753
    return-void
.end method

.method private dispatchLongPress()V
    .locals 2

    .prologue
    .line 775
    iget-object v0, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 776
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 777
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 778
    iget-object v0, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    iget-object v1, p0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onLongPress(Landroid/view/MotionEvent;)V

    .line 779
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 413
    iget-object v4, p0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    if-nez v4, :cond_0

    .line 414
    new-instance v4, Ljava/lang/NullPointerException;

    const-string/jumbo v5, "OnGestureListener must not be null"

    invoke-direct {v4, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 416
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 420
    if-nez p1, :cond_1

    .line 422
    invoke-static {}, Landroid/view/ViewConfiguration;->getTouchSlop()I

    move-result v3

    .line 423
    .local v3, "touchSlop":I
    move v2, v3

    .line 424
    .local v2, "doubleTapTouchSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapSlop()I

    move-result v1

    .line 426
    .local v1, "doubleTapSlop":I
    invoke-static {}, Landroid/view/ViewConfiguration;->getMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 427
    invoke-static {}, Landroid/view/ViewConfiguration;->getMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    .line 436
    :goto_0
    mul-int v4, v3, v3

    iput v4, p0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    .line 437
    mul-int v4, v2, v2

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .line 438
    mul-int v4, v1, v1

    iput v4, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .line 439
    return-void

    .line 429
    .end local v1    # "doubleTapSlop":I
    .end local v2    # "doubleTapTouchSlop":I
    .end local v3    # "touchSlop":I
    :cond_1
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 430
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    .line 431
    .restart local v3    # "touchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapTouchSlop()I

    move-result v2

    .line 432
    .restart local v2    # "doubleTapTouchSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledDoubleTapSlop()I

    move-result v1

    .line 433
    .restart local v1    # "doubleTapSlop":I
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    .line 434
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v4

    iput v4, p0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    goto :goto_0
.end method

.method private isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z
    .locals 12
    .param p1, "firstDown"    # Landroid/view/MotionEvent;
    .param p2, "firstUp"    # Landroid/view/MotionEvent;
    .param p3, "secondDown"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    .line 757
    iget-boolean v7, p0, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    if-nez v7, :cond_0

    .line 758
    return v6

    .line 761
    :cond_0
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v8

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    sub-long v0, v8, v10

    .line 762
    .local v0, "deltaTime":J
    sget v7, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gtz v7, :cond_1

    sget v7, Landroid/view/GestureDetector;->DOUBLE_TAP_MIN_TIME:I

    int-to-long v8, v7

    cmp-long v7, v0, v8

    if-gez v7, :cond_2

    .line 763
    :cond_1
    return v6

    .line 766
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    float-to-int v8, v8

    sub-int v2, v7, v8

    .line 767
    .local v2, "deltaX":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    float-to-int v8, v8

    sub-int v3, v7, v8

    .line 769
    .local v3, "deltaY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v7

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4

    const/4 v4, 0x1

    .line 770
    .local v4, "isGeneratedGesture":Z
    :goto_0
    if-eqz v4, :cond_5

    const/4 v5, 0x0

    .line 771
    .local v5, "slopSquare":I
    :goto_1
    mul-int v7, v2, v2

    mul-int v8, v3, v3

    add-int/2addr v7, v8

    if-ge v7, v5, :cond_3

    const/4 v6, 0x1

    :cond_3
    return v6

    .line 769
    .end local v4    # "isGeneratedGesture":Z
    .end local v5    # "slopSquare":I
    :cond_4
    const/4 v4, 0x0

    .restart local v4    # "isGeneratedGesture":Z
    goto :goto_0

    .line 770
    :cond_5
    iget v5, p0, Landroid/view/GestureDetector;->mDoubleTapSlopSquare:I

    .restart local v5    # "slopSquare":I
    goto :goto_1
.end method


# virtual methods
.method public isLongpressEnabled()Z
    .locals 1

    .prologue
    .line 479
    iget-boolean v0, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    return v0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v5, 0x20

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 696
    iget-object v1, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    if-eqz v1, :cond_0

    .line 697
    iget-object v1, p0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    invoke-virtual {v1, p1, v2}, Landroid/view/InputEventConsistencyVerifier;->onGenericMotionEvent(Landroid/view/MotionEvent;I)V

    .line 700
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionButton()I

    move-result v0

    .line 701
    .local v0, "actionButton":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 723
    :cond_1
    :goto_0
    return v2

    .line 703
    :pswitch_0
    iget-object v1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInLongPress:Z

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 704
    if-eq v0, v5, :cond_2

    .line 705
    if-ne v0, v4, :cond_1

    .line 706
    :cond_2
    iget-object v1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    invoke-interface {v1, p1}, Landroid/view/GestureDetector$OnContextClickListener;->onContextClick(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 707
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 708
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 709
    iget-object v1, p0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 710
    return v3

    .line 716
    :pswitch_1
    iget-boolean v1, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    if-eqz v1, :cond_1

    if-eq v0, v5, :cond_3

    .line 717
    if-ne v0, v4, :cond_1

    .line 718
    :cond_3
    iput-boolean v2, p0, Landroid/view/GestureDetector;->mInContextClick:Z

    .line 719
    iput-boolean v3, p0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    goto :goto_0

    .line 701
    nop

    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 44
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    if-eqz v39, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 495
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .line 497
    .local v6, "action":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    if-nez v39, :cond_1

    .line 498
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 500
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 503
    and-int/lit16 v0, v6, 0xff

    move/from16 v39, v0

    const/16 v40, 0x6

    move/from16 v0, v39

    move/from16 v1, v40

    if-ne v0, v1, :cond_2

    const/16 v24, 0x1

    .line 504
    .local v24, "pointerUp":Z
    :goto_0
    if-eqz v24, :cond_3

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v27

    .line 506
    .local v27, "skipIndex":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v39

    and-int/lit8 v39, v39, 0x8

    if-eqz v39, :cond_4

    const/16 v22, 0x1

    .line 509
    .local v22, "isGeneratedGesture":Z
    :goto_2
    const/16 v29, 0x0

    .local v29, "sumX":F
    const/16 v30, 0x0

    .line 510
    .local v30, "sumY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 511
    .local v7, "count":I
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_3
    move/from16 v0, v19

    if-ge v0, v7, :cond_6

    .line 512
    move/from16 v0, v27

    move/from16 v1, v19

    if-ne v0, v1, :cond_5

    .line 511
    :goto_4
    add-int/lit8 v19, v19, 0x1

    goto :goto_3

    .line 503
    .end local v7    # "count":I
    .end local v19    # "i":I
    .end local v22    # "isGeneratedGesture":Z
    .end local v24    # "pointerUp":Z
    .end local v27    # "skipIndex":I
    .end local v29    # "sumX":F
    .end local v30    # "sumY":F
    :cond_2
    const/16 v24, 0x0

    .restart local v24    # "pointerUp":Z
    goto :goto_0

    .line 504
    :cond_3
    const/16 v27, -0x1

    .restart local v27    # "skipIndex":I
    goto :goto_1

    .line 506
    :cond_4
    const/16 v22, 0x0

    .restart local v22    # "isGeneratedGesture":Z
    goto :goto_2

    .line 513
    .restart local v7    # "count":I
    .restart local v19    # "i":I
    .restart local v29    # "sumX":F
    .restart local v30    # "sumY":F
    :cond_5
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v39

    add-float v29, v29, v39

    .line 514
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v39

    add-float v30, v30, v39

    goto :goto_4

    .line 516
    :cond_6
    if-eqz v24, :cond_9

    add-int/lit8 v12, v7, -0x1

    .line 517
    .local v12, "div":I
    :goto_5
    int-to-float v0, v12

    move/from16 v39, v0

    div-float v15, v29, v39

    .line 518
    .local v15, "focusX":F
    int-to-float v0, v12

    move/from16 v39, v0

    div-float v16, v30, v39

    .line 520
    .local v16, "focusY":F
    const/16 v18, 0x0

    .line 522
    .local v18, "handled":Z
    and-int/lit16 v0, v6, 0xff

    move/from16 v39, v0

    packed-switch v39, :pswitch_data_0

    .line 681
    .end local v18    # "handled":Z
    :cond_7
    :goto_6
    :pswitch_0
    if-nez v18, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    if-eqz v39, :cond_8

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onUnhandledEvent(Landroid/view/InputEvent;I)V

    .line 684
    :cond_8
    return v18

    .line 516
    .end local v12    # "div":I
    .end local v15    # "focusX":F
    .end local v16    # "focusY":F
    :cond_9
    move v12, v7

    .restart local v12    # "div":I
    goto :goto_5

    .line 524
    .restart local v15    # "focusX":F
    .restart local v16    # "focusY":F
    .restart local v18    # "handled":Z
    :pswitch_1
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 525
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 527
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancelTaps()V

    goto :goto_6

    .line 531
    :pswitch_2
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 532
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    const/16 v41, 0x3e8

    move-object/from16 v0, v39

    move/from16 v1, v41

    move/from16 v2, v40

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 537
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v31

    .line 538
    .local v31, "upIndex":I
    move-object/from16 v0, p1

    move/from16 v1, v31

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v20

    .line 539
    .local v20, "id1":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v36

    .line 540
    .local v36, "x1":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v38

    .line 541
    .local v38, "y1":F
    const/16 v19, 0x0

    :goto_7
    move/from16 v0, v19

    if-ge v0, v7, :cond_7

    .line 542
    move/from16 v0, v19

    move/from16 v1, v31

    if-ne v0, v1, :cond_b

    .line 541
    :cond_a
    add-int/lit8 v19, v19, 0x1

    goto :goto_7

    .line 544
    :cond_b
    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v21

    .line 545
    .local v21, "id2":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v39

    mul-float v35, v36, v39

    .line 546
    .local v35, "x":F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v39

    mul-float v37, v38, v39

    .line 548
    .local v37, "y":F
    add-float v13, v35, v37

    .line 549
    .local v13, "dot":F
    const/16 v39, 0x0

    cmpg-float v39, v13, v39

    if-gez v39, :cond_a

    .line 550
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/VelocityTracker;->clear()V

    goto/16 :goto_6

    .line 557
    .end local v13    # "dot":F
    .end local v20    # "id1":I
    .end local v21    # "id2":I
    .end local v31    # "upIndex":I
    .end local v35    # "x":F
    .end local v36    # "x1":F
    .end local v37    # "y":F
    .end local v38    # "y1":F
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    if-eqz v39, :cond_d

    .line 558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v17

    .line 559
    .local v17, "hadTapMessage":Z
    if-eqz v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    .line 560
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_10

    if-eqz v17, :cond_10

    .line 561
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v39

    move-object/from16 v2, v40

    move-object/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Landroid/view/GestureDetector;->isConsideredDoubleTap(Landroid/view/MotionEvent;Landroid/view/MotionEvent;Landroid/view/MotionEvent;)Z

    move-result v39

    .line 560
    if-eqz v39, :cond_10

    .line 563
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    invoke-interface/range {v39 .. v40}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTap(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 567
    .local v18, "handled":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    .line 574
    .end local v17    # "hadTapMessage":Z
    .end local v18    # "handled":Z
    :cond_d
    :goto_8
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    .line 575
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mDownFocusY:F

    .line 576
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_e

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/MotionEvent;->recycle()V

    .line 579
    :cond_e
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v39

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    .line 580
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 581
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    .line 582
    const/16 v39, 0x1

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 583
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    .line 584
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 586
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    move/from16 v39, v0

    if-eqz v39, :cond_f

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    .line 589
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v40

    sget v42, Landroid/view/GestureDetector;->LONGPRESS_TIMEOUT:I

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    .line 588
    const/16 v42, 0x2

    move-object/from16 v0, v39

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 591
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    .line 592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v40

    sget v42, Landroid/view/GestureDetector;->TAP_TIMEOUT:I

    move/from16 v0, v42

    int-to-long v0, v0

    move-wide/from16 v42, v0

    add-long v40, v40, v42

    .line 591
    const/16 v42, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageAtTime(IJ)Z

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onDown(Landroid/view/MotionEvent;)Z

    move-result v39

    or-int v18, v18, v39

    .line 594
    .restart local v18    # "handled":Z
    goto/16 :goto_6

    .line 570
    .restart local v17    # "hadTapMessage":Z
    .local v18, "handled":Z
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    sget v40, Landroid/view/GestureDetector;->DOUBLE_TAP_TIMEOUT:I

    move/from16 v0, v40

    int-to-long v0, v0

    move-wide/from16 v40, v0

    const/16 v42, 0x3

    move-object/from16 v0, v39

    move/from16 v1, v42

    move-wide/from16 v2, v40

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_8

    .line 597
    .end local v17    # "hadTapMessage":Z
    :pswitch_4
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v39, v0

    if-nez v39, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInContextClick:Z

    move/from16 v39, v0

    if-nez v39, :cond_7

    .line 600
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    move/from16 v39, v0

    sub-float v25, v39, v15

    .line 601
    .local v25, "scrollX":F
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mLastFocusY:F

    move/from16 v39, v0

    sub-float v26, v39, v16

    .line 602
    .local v26, "scrollY":F
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v39, v0

    if-eqz v39, :cond_11

    .line 604
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .local v18, "handled":Z
    goto/16 :goto_6

    .line 605
    .local v18, "handled":Z
    :cond_11
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v39, v0

    if-eqz v39, :cond_15

    .line 606
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusX:F

    move/from16 v39, v0

    sub-float v39, v15, v39

    move/from16 v0, v39

    float-to-int v9, v0

    .line 607
    .local v9, "deltaX":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mDownFocusY:F

    move/from16 v39, v0

    sub-float v39, v16, v39

    move/from16 v0, v39

    float-to-int v10, v0

    .line 608
    .local v10, "deltaY":I
    mul-int v39, v9, v9

    mul-int v40, v10, v10

    add-int v11, v39, v40

    .line 609
    .local v11, "distance":I
    if-eqz v22, :cond_13

    const/16 v28, 0x0

    .line 610
    .local v28, "slopSquare":I
    :goto_9
    move/from16 v0, v28

    if-le v11, v0, :cond_12

    .line 611
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    .line 612
    .local v18, "handled":Z
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 613
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    .line 614
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    .line 615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    .line 617
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    .line 619
    .end local v18    # "handled":Z
    :cond_12
    if-eqz v22, :cond_14

    const/4 v14, 0x0

    .line 620
    .local v14, "doubleTapSlopSquare":I
    :goto_a
    if-le v11, v14, :cond_7

    .line 621
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mAlwaysInBiggerTapRegion:Z

    goto/16 :goto_6

    .line 609
    .end local v14    # "doubleTapSlopSquare":I
    .end local v28    # "slopSquare":I
    .local v18, "handled":Z
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mTouchSlopSquare:I

    move/from16 v28, v0

    .restart local v28    # "slopSquare":I
    goto :goto_9

    .line 619
    .end local v18    # "handled":Z
    :cond_14
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/GestureDetector;->mDoubleTapTouchSlopSquare:I

    .restart local v14    # "doubleTapSlopSquare":I
    goto :goto_a

    .line 623
    .end local v9    # "deltaX":I
    .end local v10    # "deltaY":I
    .end local v11    # "distance":I
    .end local v14    # "doubleTapSlopSquare":I
    .end local v28    # "slopSquare":I
    .restart local v18    # "handled":Z
    :cond_15
    invoke-static/range {v25 .. v25}, Ljava/lang/Math;->abs(F)F

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    cmpl-float v39, v39, v40

    if-gez v39, :cond_16

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->abs(F)F

    move-result v39

    const/high16 v40, 0x3f800000    # 1.0f

    cmpl-float v39, v39, v40

    if-ltz v39, :cond_7

    .line 624
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    .line 625
    .local v18, "handled":Z
    move-object/from16 v0, p0

    iput v15, v0, Landroid/view/GestureDetector;->mLastFocusX:F

    .line 626
    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/GestureDetector;->mLastFocusY:F

    goto/16 :goto_6

    .line 631
    .end local v25    # "scrollX":F
    .end local v26    # "scrollY":F
    .local v18, "handled":Z
    :pswitch_5
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mStillDown:Z

    .line 632
    invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v8

    .line 633
    .local v8, "currentUpEvent":Landroid/view/MotionEvent;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1a

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onDoubleTapEvent(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 658
    .end local v18    # "handled":Z
    :cond_17
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    if-eqz v39, :cond_18

    .line 659
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/MotionEvent;->recycle()V

    .line 662
    :cond_18
    move-object/from16 v0, p0

    iput-object v8, v0, Landroid/view/GestureDetector;->mPreviousUpEvent:Landroid/view/MotionEvent;

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    if-eqz v39, :cond_19

    .line 666
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v39, v0

    invoke-virtual/range {v39 .. v39}, Landroid/view/VelocityTracker;->recycle()V

    .line 667
    const/16 v39, 0x0

    move-object/from16 v0, v39

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 669
    :cond_19
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIsDoubleTapping:Z

    .line 670
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    .line 671
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x1

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    .line 673
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x2

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_6

    .line 636
    .restart local v18    # "handled":Z
    :cond_1a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mInLongPress:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1b

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mHandler:Landroid/os/Handler;

    move-object/from16 v39, v0

    const/16 v40, 0x3

    invoke-virtual/range {v39 .. v40}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    const/16 v39, 0x0

    move/from16 v0, v39

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/GestureDetector;->mInLongPress:Z

    goto :goto_b

    .line 639
    :cond_1b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mAlwaysInTapRegion:Z

    move/from16 v39, v0

    if-eqz v39, :cond_1c

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v39, v0

    xor-int/lit8 v39, v39, 0x1

    if-eqz v39, :cond_1c

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnGestureListener;->onSingleTapUp(Landroid/view/MotionEvent;)Z

    move-result v18

    .line 641
    .local v18, "handled":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mDeferConfirmSingleTap:Z

    move/from16 v39, v0

    if-eqz v39, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    if-eqz v39, :cond_17

    .line 642
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/view/GestureDetector$OnDoubleTapListener;->onSingleTapConfirmed(Landroid/view/MotionEvent;)Z

    goto/16 :goto_b

    .line 644
    .local v18, "handled":Z
    :cond_1c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/GestureDetector;->mIgnoreNextUpEvent:Z

    move/from16 v39, v0

    if-nez v39, :cond_17

    .line 647
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    move-object/from16 v32, v0

    .line 648
    .local v32, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v39, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v39

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v23

    .line 649
    .local v23, "pointerId":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMaximumFlingVelocity:I

    move/from16 v39, v0

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    const/16 v40, 0x3e8

    move-object/from16 v0, v32

    move/from16 v1, v40

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 650
    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getYVelocity(I)F

    move-result v34

    .line 651
    .local v34, "velocityY":F
    move-object/from16 v0, v32

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->getXVelocity(I)F

    move-result v33

    .line 653
    .local v33, "velocityX":F
    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v39, v39, v40

    if-gtz v39, :cond_1d

    .line 654
    invoke-static/range {v33 .. v33}, Ljava/lang/Math;->abs(F)F

    move-result v39

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/GestureDetector;->mMinimumFlingVelocity:I

    move/from16 v40, v0

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    cmpl-float v39, v39, v40

    if-lez v39, :cond_17

    .line 655
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mListener:Landroid/view/GestureDetector$OnGestureListener;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/GestureDetector;->mCurrentDownEvent:Landroid/view/MotionEvent;

    move-object/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v40

    move-object/from16 v2, p1

    move/from16 v3, v33

    move/from16 v4, v34

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/GestureDetector$OnGestureListener;->onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z

    move-result v18

    .local v18, "handled":Z
    goto/16 :goto_b

    .line 677
    .end local v8    # "currentUpEvent":Landroid/view/MotionEvent;
    .end local v23    # "pointerId":I
    .end local v32    # "velocityTracker":Landroid/view/VelocityTracker;
    .end local v33    # "velocityX":F
    .end local v34    # "velocityY":F
    .local v18, "handled":Z
    :pswitch_6
    invoke-direct/range {p0 .. p0}, Landroid/view/GestureDetector;->cancel()V

    goto/16 :goto_6

    .line 522
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setContextClickListener(Landroid/view/GestureDetector$OnContextClickListener;)V
    .locals 0
    .param p1, "onContextClickListener"    # Landroid/view/GestureDetector$OnContextClickListener;

    .prologue
    .line 459
    iput-object p1, p0, Landroid/view/GestureDetector;->mContextClickListener:Landroid/view/GestureDetector$OnContextClickListener;

    .line 460
    return-void
.end method

.method public setIsLongpressEnabled(Z)V
    .locals 0
    .param p1, "isLongpressEnabled"    # Z

    .prologue
    .line 472
    iput-boolean p1, p0, Landroid/view/GestureDetector;->mIsLongpressEnabled:Z

    .line 473
    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 0
    .param p1, "onDoubleTapListener"    # Landroid/view/GestureDetector$OnDoubleTapListener;

    .prologue
    .line 449
    iput-object p1, p0, Landroid/view/GestureDetector;->mDoubleTapListener:Landroid/view/GestureDetector$OnDoubleTapListener;

    .line 450
    return-void
.end method
