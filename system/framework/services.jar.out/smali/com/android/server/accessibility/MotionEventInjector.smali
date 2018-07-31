.class public Lcom/android/server/accessibility/MotionEventInjector;
.super Ljava/lang/Object;
.source "MotionEventInjector.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final EVENT_BUTTON_STATE:I = 0x0

.field private static final EVENT_DEVICE_ID:I = 0x0

.field private static final EVENT_EDGE_FLAGS:I = 0x0

.field private static final EVENT_FLAGS:I = 0x0

.field private static final EVENT_META_STATE:I = 0x0

.field private static final EVENT_SOURCE:I = 0x1002

.field private static final EVENT_X_PRECISION:F = 1.0f

.field private static final EVENT_Y_PRECISION:F = 1.0f

.field private static final LOG_TAG:Ljava/lang/String; = "MotionEventInjector"

.field private static final MESSAGE_INJECT_EVENTS:I = 0x2

.field private static final MESSAGE_SEND_MOTION_EVENT:I = 0x1

.field private static sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private static sPointerProps:[Landroid/view/MotionEvent$PointerProperties;


# instance fields
.field private mDownTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsDestroyed:Z

.field private mLastScheduledEventTime:J

.field private mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mNumLastTouchPoints:I

.field private final mOpenGesturesInProgress:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSequencesInProgress:Landroid/util/IntArray;

.field private mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

.field private mStrokeIdToPointerId:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Handler;)V
    .locals 2
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x5

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 79
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 92
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v1, 0x5

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    .line 73
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0, v1}, Landroid/util/IntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 79
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 86
    return-void
.end method

.method private appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 10
    .param p2, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p3, "currentTouchPointsSize"    # I
    .param p4, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 432
    .local p1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    .line 433
    .local v7, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 434
    aget-object v1, p2, v0

    iget-boolean v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-eqz v1, :cond_1

    .line 436
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    aget-object v1, v7, v1

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 437
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v6, 0x0

    .line 439
    .local v6, "action":I
    :goto_1
    if-nez v6, :cond_0

    .line 440
    iput-wide p4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 442
    :cond_0
    shl-int/lit8 v1, v0, 0x8

    or-int/2addr v6, v1

    .line 443
    iget-wide v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 444
    iget v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v1, p0

    move-wide v4, p4

    .line 443
    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 433
    .end local v6    # "action":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 438
    :cond_2
    const/4 v6, 0x5

    .restart local v6    # "action":I
    goto :goto_1

    .line 447
    .end local v6    # "action":I
    :cond_3
    return-void
.end method

.method private appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 12
    .param p2, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p3, "currentTouchPointsSize"    # I
    .param p4, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 383
    .local p1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    const/4 v10, 0x0

    .line 384
    .local v10, "moveFound":Z
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    .line 385
    .local v7, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v0, 0x0

    .end local v10    # "moveFound":Z
    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_3

    .line 386
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 387
    aget-object v2, p2, v0

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 386
    invoke-static {v7, v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v9

    .line 388
    .local v9, "lastPointsIndex":I
    if-ltz v9, :cond_0

    .line 389
    aget-object v1, v7, v9

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    aget-object v2, p2, v0

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v1, v1, v2

    if-nez v1, :cond_1

    .line 390
    aget-object v1, v7, v9

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    aget-object v2, p2, v0

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    .line 389
    :goto_1
    or-int/2addr v10, v1

    .line 391
    .local v10, "moveFound":Z
    aget-object v1, v7, v9

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 385
    .end local v10    # "moveFound":Z
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 389
    :cond_1
    const/4 v1, 0x1

    goto :goto_1

    .line 390
    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 395
    .end local v9    # "lastPointsIndex":I
    :cond_3
    if-eqz v10, :cond_4

    .line 396
    iget-wide v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 397
    iget v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 396
    const/4 v6, 0x2

    move-object v1, p0

    move-wide/from16 v4, p4

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 399
    :cond_4
    return-void
.end method

.method private appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V
    .locals 12
    .param p2, "currentTouchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p3, "currentTouchPointsSize"    # I
    .param p4, "currentTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;[",
            "Landroid/accessibilityservice/GestureDescription$TouchPoint;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 404
    .local p1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    .line 405
    .local v7, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p3, :cond_4

    .line 406
    aget-object v1, p2, v0

    iget-boolean v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-eqz v1, :cond_0

    .line 407
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 408
    aget-object v2, p2, v0

    iget v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 407
    invoke-static {v7, v1, v2}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v9

    .line 409
    .local v9, "indexOfUpEvent":I
    if-gez v9, :cond_1

    .line 405
    .end local v9    # "indexOfUpEvent":I
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 412
    .restart local v9    # "indexOfUpEvent":I
    :cond_1
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v6, 0x1

    .line 414
    .local v6, "action":I
    :goto_2
    shl-int/lit8 v1, v9, 0x8

    or-int/2addr v6, v1

    .line 415
    iget-wide v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mDownTime:J

    .line 416
    iget v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    move-object v1, p0

    move-wide/from16 v4, p4

    .line 415
    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    move v10, v9

    .local v10, "j":I
    :goto_3
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v1, v1, -0x1

    if-ge v10, v1, :cond_3

    .line 419
    aget-object v1, v7, v10

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    add-int/lit8 v3, v10, 0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/accessibilityservice/GestureDescription$TouchPoint;->copyFrom(Landroid/accessibilityservice/GestureDescription$TouchPoint;)V

    .line 418
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 413
    .end local v6    # "action":I
    .end local v10    # "j":I
    :cond_2
    const/4 v6, 0x6

    .restart local v6    # "action":I
    goto :goto_2

    .line 421
    .restart local v10    # "j":I
    :cond_3
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 422
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-nez v1, :cond_0

    .line 423
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    goto :goto_1

    .line 427
    .end local v6    # "action":I
    .end local v9    # "indexOfUpEvent":I
    .end local v10    # "j":I
    :cond_4
    return-void
.end method

.method private cancelAnyGestureInProgress(I)V
    .locals 10
    .param p1, "source"    # I

    .prologue
    const/4 v9, 0x0

    .line 308
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 309
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 311
    .local v2, "now":J
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    const/4 v6, 0x3

    const/4 v8, 0x1

    move-object v1, p0

    move-wide v4, v2

    invoke-direct/range {v1 .. v8}, Lcom/android/server/accessibility/MotionEventInjector;->obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;

    move-result-object v0

    .line 313
    .local v0, "cancelEvent":Landroid/view/MotionEvent;
    const/high16 v1, 0x40000000    # 2.0f

    .line 312
    invoke-direct {p0, v0, v0, v1}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 314
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 316
    .end local v0    # "cancelEvent":Landroid/view/MotionEvent;
    .end local v2    # "now":J
    :cond_0
    return-void
.end method

.method private cancelAnyPendingInjectedEvents()V
    .locals 5

    .prologue
    const/16 v4, 0x1002

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 319
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 320
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 321
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 322
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1}, Landroid/util/IntArray;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 323
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 324
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v2, v0}, Landroid/util/IntArray;->get(I)I

    move-result v2

    .line 323
    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 325
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->remove(I)V

    .line 322
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 327
    .end local v0    # "i":I
    :cond_0
    iget v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v1, :cond_1

    .line 329
    invoke-direct {p0, v4}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 331
    :cond_1
    iput v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 332
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->clear()V

    .line 333
    return-void
.end method

.method private static findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I
    .locals 2
    .param p0, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p1, "touchPointsSize"    # I
    .param p2, "strokeId"    # I

    .prologue
    .line 485
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_1

    .line 486
    aget-object v1, p0, v0

    iget v1, v1, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    if-ne v1, p2, :cond_0

    .line 487
    return v0

    .line 485
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 490
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .locals 4

    .prologue
    .line 370
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v2, :cond_0

    .line 371
    invoke-static {}, Landroid/accessibilityservice/GestureDescription;->getMaxStrokeCount()I

    move-result v0

    .line 372
    .local v0, "capacity":I
    new-array v2, v0, [Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iput-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 373
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 374
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    new-instance v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;

    invoke-direct {v3}, Landroid/accessibilityservice/GestureDescription$TouchPoint;-><init>()V

    aput-object v3, v2, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v0    # "capacity":I
    .end local v1    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    return-object v2
.end method

.method private getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;
    .locals 10
    .param p2, "startTime"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;J)",
            "Ljava/util/List",
            "<",
            "Landroid/view/MotionEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 346
    .local p1, "steps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v1, "motionEvents":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->getLastTouchPoints()[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    move-result-object v7

    .line 350
    .local v7, "lastTouchPoints":[Landroid/accessibilityservice/GestureDescription$TouchPoint;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_1

    .line 351
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 352
    .local v8, "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    iget v3, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    .line 353
    .local v3, "currentTouchPointSize":I
    array-length v0, v7

    if-le v3, v0, :cond_0

    .line 354
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    .line 355
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 356
    return-object v1

    .line 359
    :cond_0
    iget-object v2, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 360
    iget-wide v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long/2addr v4, p2

    move-object v0, p0

    .line 359
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendMoveEventIfNeeded(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 361
    iget-object v2, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 362
    iget-wide v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long/2addr v4, p2

    move-object v0, p0

    .line 361
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendUpEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 363
    iget-object v2, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    .line 364
    iget-wide v4, v8, Landroid/accessibilityservice/GestureDescription$GestureStep;->timeSinceGestureStart:J

    add-long/2addr v4, p2

    move-object v0, p0

    .line 363
    invoke-direct/range {v0 .. v5}, Lcom/android/server/accessibility/MotionEventInjector;->appendDownEvents(Ljava/util/List;[Landroid/accessibilityservice/GestureDescription$TouchPoint;IJ)V

    .line 350
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 366
    .end local v3    # "currentTouchPointSize":I
    .end local v8    # "step":Landroid/accessibilityservice/GestureDescription$GestureStep;
    :cond_1
    return-object v1
.end method

.method private getUnusedPointerId()I
    .locals 3

    .prologue
    .line 493
    const/16 v0, 0xa

    .line 494
    .local v0, "MAX_POINTER_ID":I
    const/4 v1, 0x0

    .line 495
    .local v1, "pointerId":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v2

    if-ltz v2, :cond_1

    .line 496
    add-int/lit8 v1, v1, 0x1

    .line 493
    const/16 v2, 0xa

    .line 497
    if-lt v1, v2, :cond_0

    .line 498
    return v0

    .line 501
    :cond_1
    return v1
.end method

.method private injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 18
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 180
    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    if-eqz v13, :cond_0

    .line 182
    const/4 v13, 0x0

    :try_start_0
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-interface {v0, v1, v13}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :goto_0
    return-void

    .line 183
    :catch_0
    move-exception v12

    .line 184
    .local v12, "re":Landroid/os/RemoteException;
    const-string/jumbo v13, "MotionEventInjector"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Error sending status with mIsDestroyed to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v12}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 190
    .end local v12    # "re":Landroid/os/RemoteException;
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-nez v13, :cond_1

    .line 191
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 192
    return-void

    .line 195
    :cond_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/MotionEventInjector;->newGestureTriesToContinueOldOne(Ljava/util/List;)Z

    move-result v4

    .line 197
    .local v4, "continuingGesture":Z
    if-eqz v4, :cond_3

    .line 198
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    move-object/from16 v0, p2

    if-ne v0, v13, :cond_2

    .line 199
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/MotionEventInjector;->prepareToContinueOldGesture(Ljava/util/List;)Z

    move-result v13

    xor-int/lit8 v13, v13, 0x1

    .line 198
    if-eqz v13, :cond_3

    .line 200
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 201
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 202
    return-void

    .line 205
    :cond_3
    if-nez v4, :cond_4

    .line 206
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 208
    const/16 v13, 0x1002

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyGestureInProgress(I)V

    .line 210
    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 212
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 214
    .local v6, "currentTime":J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v13}, Landroid/util/IntArray;->size()I

    move-result v13

    if-nez v13, :cond_5

    move-wide v14, v6

    .line 213
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14, v15}, Lcom/android/server/accessibility/MotionEventInjector;->getMotionEventsFromGestureSteps(Ljava/util/List;J)Ljava/util/List;

    move-result-object v8

    .line 215
    .local v8, "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_6

    .line 216
    const/4 v13, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2, v13}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 217
    return-void

    .line 214
    .end local v8    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    :cond_5
    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    goto :goto_1

    .line 219
    .restart local v8    # "events":Ljava/util/List;, "Ljava/util/List<Landroid/view/MotionEvent;>;"
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    move/from16 v0, p3

    invoke-virtual {v13, v0}, Landroid/util/IntArray;->add(I)V

    .line 221
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_2
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    if-ge v9, v13, :cond_8

    .line 222
    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/MotionEvent;

    .line 223
    .local v5, "event":Landroid/view/MotionEvent;
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-ne v9, v13, :cond_7

    const/4 v10, 0x1

    .line 224
    .local v10, "isEndOfSequence":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    .line 225
    const/4 v14, 0x1

    const/4 v15, 0x0

    .line 224
    invoke-virtual {v13, v14, v10, v15, v5}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    .line 226
    .local v11, "message":Landroid/os/Message;
    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/MotionEventInjector;->mLastScheduledEventTime:J

    .line 227
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const-wide/16 v14, 0x0

    invoke-virtual {v5}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v16

    sub-long v16, v16, v6

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v14

    invoke-virtual {v13, v11, v14, v15}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 221
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 223
    .end local v10    # "isEndOfSequence":I
    .end local v11    # "message":Landroid/os/Message;
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "isEndOfSequence":I
    goto :goto_3

    .line 229
    .end local v5    # "event":Landroid/view/MotionEvent;
    .end local v10    # "isEndOfSequence":I
    :cond_8
    return-void
.end method

.method private newGestureTriesToContinueOldOne(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    const/4 v3, 0x0

    .line 232
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 233
    return v3

    .line 235
    :cond_0
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 236
    .local v0, "firstStep":Landroid/accessibilityservice/GestureDescription$GestureStep;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v1, v2, :cond_2

    .line 237
    iget-object v2, v0, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v2, :cond_1

    .line 238
    const/4 v2, 0x1

    return v2

    .line 236
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_2
    return v3
.end method

.method private notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V
    .locals 4
    .param p1, "service"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p2, "sequence"    # I
    .param p3, "success"    # Z

    .prologue
    .line 337
    :try_start_0
    invoke-interface {p1, p2, p3}, Landroid/accessibilityservice/IAccessibilityServiceClient;->onPerformGestureResult(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 342
    :goto_0
    return-void

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, "re":Landroid/os/RemoteException;
    const-string/jumbo v1, "MotionEventInjector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error sending motion event injection status to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 340
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    .line 339
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private obtainMotionEvent(JJI[Landroid/accessibilityservice/GestureDescription$TouchPoint;I)Landroid/view/MotionEvent;
    .locals 21
    .param p1, "downTime"    # J
    .param p3, "eventTime"    # J
    .param p5, "action"    # I
    .param p6, "touchPoints"    # [Landroid/accessibilityservice/GestureDescription$TouchPoint;
    .param p7, "touchPointsSize"    # I

    .prologue
    .line 451
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v2, v2

    move/from16 v0, p7

    if-ge v2, v0, :cond_1

    .line 452
    :cond_0
    move/from16 v0, p7

    new-array v2, v0, [Landroid/view/MotionEvent$PointerCoords;

    sput-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 453
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move/from16 v0, v18

    move/from16 v1, p7

    if-ge v0, v1, :cond_1

    .line 454
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v3, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v3, v2, v18

    .line 453
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 457
    .end local v18    # "i":I
    :cond_1
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    array-length v2, v2

    move/from16 v0, p7

    if-ge v2, v0, :cond_3

    .line 458
    :cond_2
    move/from16 v0, p7

    new-array v2, v0, [Landroid/view/MotionEvent$PointerProperties;

    sput-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    .line 459
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_1
    move/from16 v0, v18

    move/from16 v1, p7

    if-ge v0, v1, :cond_3

    .line 460
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v3, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v3}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v3, v2, v18

    .line 459
    add-int/lit8 v18, v18, 0x1

    goto :goto_1

    .line 463
    .end local v18    # "i":I
    :cond_3
    const/16 v18, 0x0

    .restart local v18    # "i":I
    :goto_2
    move/from16 v0, v18

    move/from16 v1, p7

    if-ge v0, v1, :cond_5

    .line 464
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v3, p6, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    const/4 v4, -0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v19

    .line 465
    .local v19, "pointerId":I
    const/4 v2, -0x1

    move/from16 v0, v19

    if-ne v0, v2, :cond_4

    .line 466
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/MotionEventInjector;->getUnusedPointerId()I

    move-result v19

    .line 467
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    aget-object v3, p6, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    move/from16 v0, v19

    invoke-virtual {v2, v3, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 469
    :cond_4
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v18

    move/from16 v0, v19

    iput v0, v2, Landroid/view/MotionEvent$PointerProperties;->id:I

    .line 470
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    aget-object v2, v2, v18

    const/4 v3, 0x0

    iput v3, v2, Landroid/view/MotionEvent$PointerProperties;->toolType:I

    .line 471
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v18

    invoke-virtual {v2}, Landroid/view/MotionEvent$PointerCoords;->clear()V

    .line 472
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v18

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->pressure:F

    .line 473
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v18

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->size:F

    .line 474
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v18

    aget-object v3, p6, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 475
    sget-object v2, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    aget-object v2, v2, v18

    aget-object v3, p6, v18

    iget v3, v3, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iput v3, v2, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 463
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 478
    .end local v19    # "pointerId":I
    :cond_5
    sget-object v8, Lcom/android/server/accessibility/MotionEventInjector;->sPointerProps:[Landroid/view/MotionEvent$PointerProperties;

    sget-object v9, Lcom/android/server/accessibility/MotionEventInjector;->sPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    const/4 v10, 0x0

    const/4 v11, 0x0

    .line 479
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 480
    const/16 v16, 0x1002

    const/16 v17, 0x0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p3

    move/from16 v6, p5

    move/from16 v7, p7

    .line 477
    invoke-static/range {v2 .. v17}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object v2

    return-object v2
.end method

.method private prepareToContinueOldGesture(Ljava/util/List;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    const/4 v10, -0x1

    const/4 v6, 0x0

    .line 253
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    if-nez v7, :cond_1

    .line 254
    :cond_0
    return v6

    .line 253
    :cond_1
    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-eqz v7, :cond_0

    .line 256
    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/GestureDescription$GestureStep;

    .line 258
    .local v1, "firstStep":Landroid/accessibilityservice/GestureDescription$GestureStep;
    const/4 v4, 0x0

    .line 259
    .local v4, "numContinuedStrokes":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget v7, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->numTouchPoints:I

    if-ge v2, v7, :cond_7

    .line 260
    iget-object v7, v1, Landroid/accessibilityservice/GestureDescription$GestureStep;->touchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v5, v7, v2

    .line 261
    .local v5, "touchPoint":Landroid/accessibilityservice/GestureDescription$TouchPoint;
    iget-boolean v7, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsStartOfPath:Z

    if-nez v7, :cond_6

    .line 262
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    .line 263
    iget v8, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 262
    invoke-virtual {v7, v8, v10}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 264
    .local v0, "continuedPointerId":I
    if-ne v0, v10, :cond_2

    .line 265
    return v6

    .line 267
    :cond_2
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mStrokeIdToPointerId:Landroid/util/SparseIntArray;

    iget v8, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    invoke-virtual {v7, v8, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 269
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    iget v8, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    iget v9, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mContinuedStrokeId:I

    .line 268
    invoke-static {v7, v8, v9}, Lcom/android/server/accessibility/MotionEventInjector;->findPointByStrokeId([Landroid/accessibilityservice/GestureDescription$TouchPoint;II)I

    move-result v3

    .line 270
    .local v3, "lastPointIndex":I
    if-gez v3, :cond_3

    .line 271
    return v6

    .line 273
    :cond_3
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v3

    iget-boolean v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v7, :cond_4

    .line 274
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    iget v8, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mX:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_5

    .line 276
    :cond_4
    return v6

    .line 275
    :cond_5
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v3

    iget v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    iget v8, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mY:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_4

    .line 280
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v3

    iget v8, v5, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    iput v8, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mStrokeId:I

    .line 282
    .end local v0    # "continuedPointerId":I
    .end local v3    # "lastPointIndex":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 259
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 285
    .end local v5    # "touchPoint":Landroid/accessibilityservice/GestureDescription$TouchPoint;
    :cond_7
    const/4 v2, 0x0

    :goto_1
    iget v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNumLastTouchPoints:I

    if-ge v2, v7, :cond_9

    .line 286
    iget-object v7, p0, Lcom/android/server/accessibility/MotionEventInjector;->mLastTouchPoints:[Landroid/accessibilityservice/GestureDescription$TouchPoint;

    aget-object v7, v7, v2

    iget-boolean v7, v7, Landroid/accessibilityservice/GestureDescription$TouchPoint;->mIsEndOfPath:Z

    if-nez v7, :cond_8

    .line 287
    add-int/lit8 v4, v4, -0x1

    .line 285
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 290
    :cond_9
    if-nez v4, :cond_a

    const/4 v6, 0x1

    :cond_a
    return v6
.end method

.method private sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 295
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_2

    .line 296
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 297
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 300
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v4, :cond_1

    .line 301
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 305
    :cond_2
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 2
    .param p1, "inputSource"    # I

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mOpenGesturesInProgress:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 147
    :cond_0
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 8
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 157
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 158
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 159
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Ljava/util/List;

    .line 160
    iget-object v4, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v4, Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget v5, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 159
    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/accessibility/MotionEventInjector;->injectEventsMainThread(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V

    .line 161
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 162
    return v7

    .line 164
    .end local v0    # "args":Lcom/android/internal/os/SomeArgs;
    :cond_0
    iget v3, p1, Landroid/os/Message;->what:I

    if-eq v3, v7, :cond_1

    .line 165
    const-string/jumbo v3, "MotionEventInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unknown message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return v6

    .line 168
    :cond_1
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/view/MotionEvent;

    .line 169
    .local v2, "motionEvent":Landroid/view/MotionEvent;
    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {p0, v2, v2, v3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 170
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_3

    const/4 v1, 0x1

    .line 171
    .local v1, "isEndOfSequence":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 172
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mServiceInterfaceForCurrentGesture:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v4, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v4, v6}, Landroid/util/IntArray;->get(I)I

    move-result v4

    invoke-direct {p0, v3, v4, v7}, Lcom/android/server/accessibility/MotionEventInjector;->notifyService(Landroid/accessibilityservice/IAccessibilityServiceClient;IZ)V

    .line 173
    iget-object v3, p0, Lcom/android/server/accessibility/MotionEventInjector;->mSequencesInProgress:Landroid/util/IntArray;

    invoke-virtual {v3, v6}, Landroid/util/IntArray;->remove(I)V

    .line 175
    :cond_2
    return v7

    .line 170
    .end local v1    # "isEndOfSequence":Z
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "isEndOfSequence":Z
    goto :goto_0
.end method

.method public injectEvents(Ljava/util/List;Landroid/accessibilityservice/IAccessibilityServiceClient;I)V
    .locals 4
    .param p2, "serviceInterface"    # Landroid/accessibilityservice/IAccessibilityServiceClient;
    .param p3, "sequence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/accessibilityservice/GestureDescription$GestureStep;",
            ">;",
            "Landroid/accessibilityservice/IAccessibilityServiceClient;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 106
    .local p1, "gestureSteps":Ljava/util/List;, "Ljava/util/List<Landroid/accessibilityservice/GestureDescription$GestureStep;>;"
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 107
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 108
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 109
    iput p3, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 110
    iget-object v1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/accessibility/MotionEventInjector;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 111
    return-void
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 131
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 151
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mIsDestroyed:Z

    .line 153
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 124
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 0
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/accessibility/MotionEventInjector;->cancelAnyPendingInjectedEvents()V

    .line 116
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MotionEventInjector;->sendMotionEventToNext(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 117
    return-void
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/accessibility/MotionEventInjector;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 136
    return-void
.end method
