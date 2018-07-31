.class Lcom/android/server/accessibility/AccessibilityGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "AccessibilityGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;
    }
.end annotation


# static fields
.field private static final ANGLE_THRESHOLD:F = 0.0f

.field private static final CANCEL_ON_PAUSE_THRESHOLD_NOT_STARTED_MS:J = 0x96L

.field private static final CANCEL_ON_PAUSE_THRESHOLD_STARTED_MS:J = 0x12cL

.field private static final DEBUG:Z = false

.field private static final DIRECTIONS_TO_GESTURE_ID:[[I

.field private static final DOWN:I = 0x3

.field private static final GESTURE_CONFIRM_MM:I = 0xa

.field private static final LEFT:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "AccessibilityGestureDetector"

.field private static final MIN_INCHES_BETWEEN_SAMPLES:F = 0.1f

.field private static final MIN_PREDICTION_SCORE:F = 2.0f

.field private static final RIGHT:I = 0x1

.field private static final TOUCH_TOLERANCE:I = 0x3

.field private static final UP:I = 0x2


# instance fields
.field private mBaseTime:J

.field private mBaseX:F

.field private mBaseY:F

.field private final mContext:Landroid/content/Context;

.field private mDoubleTapDetected:Z

.field private mFirstTapDetected:Z

.field private final mGestureDetectionThreshold:F

.field protected mGestureDetector:Landroid/view/GestureDetector;

.field private mGestureStarted:Z

.field private final mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

.field private final mMinPixelsBetweenSamplesX:F

.field private final mMinPixelsBetweenSamplesY:F

.field private mPolicyFlags:I

.field private mPreviousGestureX:F

.field private mPreviousGestureY:F

.field private mRecognizingGesture:Z

.field private mSecondFingerDoubleTap:Z

.field private mSecondPointerDownTime:J

.field private final mStrokeBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/gesture/GesturePoint;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 64
    new-array v0, v7, [[I

    .line 67
    const/4 v1, 0x5

    .line 68
    const/16 v2, 0x9

    .line 69
    const/16 v3, 0xa

    .line 65
    filled-new-array {v6, v1, v2, v3}, [I

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 72
    const/4 v1, 0x6

    .line 74
    const/16 v2, 0xb

    .line 75
    const/16 v3, 0xc

    .line 71
    filled-new-array {v1, v7, v2, v3}, [I

    move-result-object v1

    aput-object v1, v0, v4

    .line 78
    const/16 v1, 0xd

    .line 79
    const/16 v2, 0xe

    .line 81
    const/4 v3, 0x7

    .line 77
    filled-new-array {v1, v2, v4, v3}, [I

    move-result-object v1

    aput-object v1, v0, v5

    .line 84
    const/16 v1, 0xf

    .line 85
    const/16 v2, 0x10

    .line 86
    const/16 v3, 0x8

    .line 83
    filled-new-array {v1, v2, v3, v5}, [I

    move-result-object v1

    aput-object v1, v0, v6

    .line 64
    sput-object v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    .line 42
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    .line 219
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 192
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0x64

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    .line 220
    iput-object p2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    .line 221
    iput-object p1, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mContext:Landroid/content/Context;

    .line 223
    const/high16 v2, 0x3f800000    # 1.0f

    .line 224
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    .line 223
    const/4 v4, 0x5

    invoke-static {v4, v2, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    .line 224
    const/high16 v3, 0x41200000    # 10.0f

    .line 223
    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    .line 227
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v0, v2, Landroid/util/DisplayMetrics;->xdpi:F

    .line 228
    .local v0, "pixelsPerInchX":F
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->ydpi:F

    .line 229
    .local v1, "pixelsPerInchY":F
    mul-float v2, v5, v0

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    .line 230
    mul-float v2, v5, v1

    iput v2, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    .line 231
    return-void
.end method

.method private cancelGesture()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 448
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 449
    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 450
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 451
    return-void
.end method

.method private finishDoubleTap(Landroid/view/MotionEvent;I)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 444
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v0

    return v0
.end method

.method private mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x5

    const/4 v1, 0x2

    const/4 v8, 0x1

    .line 603
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 604
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v2, :cond_1

    .line 605
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v3, :cond_1

    .line 606
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 607
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 610
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 612
    .local v4, "action":I
    if-ne v4, v2, :cond_3

    .line 613
    const/4 v4, 0x0

    .line 619
    :cond_2
    :goto_0
    iget-wide v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    .line 620
    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v7

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->getSize(I)F

    move-result v8

    .line 621
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getMetaState()I

    move-result v9

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXPrecision()F

    move-result v10

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYPrecision()F

    move-result v11

    .line 622
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v13

    .line 619
    invoke-static/range {v0 .. v13}, Landroid/view/MotionEvent;->obtain(JJIFFFFIFFII)Landroid/view/MotionEvent;

    move-result-object v0

    return-object v0

    .line 614
    :cond_3
    if-ne v4, v3, :cond_2

    .line 615
    const/4 v4, 0x1

    goto :goto_0
.end method

.method private maybeSendLongPress(Landroid/view/MotionEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 432
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    if-nez v0, :cond_0

    .line 433
    return-void

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 438
    iget-object v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onDoubleTapAndHold(Landroid/view/MotionEvent;I)V

    .line 439
    return-void
.end method

.method private recognizeGesture(Landroid/view/MotionEvent;I)Z
    .locals 22
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_0

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v19

    return v19

    .line 473
    :cond_0
    new-instance v18, Ljava/util/ArrayList;

    invoke-direct/range {v18 .. v18}, Ljava/util/ArrayList;-><init>()V

    .line 474
    .local v18, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    new-instance v11, Landroid/graphics/PointF;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/gesture/GesturePoint;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    const/16 v21, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/gesture/GesturePoint;->y:F

    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v11, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 475
    .local v11, "lastDelimiter":Landroid/graphics/PointF;
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 477
    const/4 v7, 0x0

    .line 478
    .local v7, "dX":F
    const/4 v8, 0x0

    .line 479
    .local v8, "dY":F
    const/4 v4, 0x0

    .line 480
    .local v4, "count":I
    const/4 v12, 0x0

    .line 482
    .local v12, "length":F
    new-instance v14, Landroid/graphics/PointF;

    invoke-direct {v14}, Landroid/graphics/PointF;-><init>()V

    .line 483
    .local v14, "next":Landroid/graphics/PointF;
    const/4 v10, 0x1

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v10, v0, :cond_2

    .line 484
    new-instance v14, Landroid/graphics/PointF;

    .end local v14    # "next":Landroid/graphics/PointF;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/gesture/GesturePoint;->x:F

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v19

    iget v0, v0, Landroid/gesture/GesturePoint;->y:F

    move/from16 v19, v0

    move/from16 v0, v20

    move/from16 v1, v19

    invoke-direct {v14, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 485
    .restart local v14    # "next":Landroid/graphics/PointF;
    if-lez v4, :cond_1

    .line 487
    int-to-float v0, v4

    move/from16 v19, v0

    div-float v5, v7, v19

    .line 488
    .local v5, "currentDX":F
    int-to-float v0, v4

    move/from16 v19, v0

    div-float v6, v8, v19

    .line 497
    .local v6, "currentDY":F
    new-instance v13, Landroid/graphics/PointF;

    mul-float v19, v12, v5

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    add-float v19, v19, v20

    .line 498
    mul-float v20, v12, v6

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v21, v0

    add-float v20, v20, v21

    .line 497
    move/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v13, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    .line 501
    .local v13, "newDelimiter":Landroid/graphics/PointF;
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    sub-float v15, v19, v20

    .line 502
    .local v15, "nextDX":F
    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    sub-float v16, v19, v20

    .line 503
    .local v16, "nextDY":F
    mul-float v19, v15, v15

    mul-float v20, v16, v16

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v17, v0

    .line 504
    .local v17, "nextLength":F
    div-float v15, v15, v17

    .line 505
    div-float v16, v16, v17

    .line 509
    mul-float v19, v5, v15

    mul-float v20, v6, v16

    add-float v9, v19, v20

    .line 510
    .local v9, "dot":F
    const/16 v19, 0x0

    cmpg-float v19, v9, v19

    if-gez v19, :cond_1

    .line 511
    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    move-object v11, v13

    .line 513
    const/4 v7, 0x0

    .line 514
    const/4 v8, 0x0

    .line 515
    const/4 v4, 0x0

    .line 520
    .end local v5    # "currentDX":F
    .end local v6    # "currentDY":F
    .end local v9    # "dot":F
    .end local v13    # "newDelimiter":Landroid/graphics/PointF;
    .end local v15    # "nextDX":F
    .end local v16    # "nextDY":F
    .end local v17    # "nextLength":F
    :cond_1
    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v20, v0

    sub-float v5, v19, v20

    .line 521
    .restart local v5    # "currentDX":F
    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v19, v0

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    sub-float v6, v19, v20

    .line 522
    .restart local v6    # "currentDY":F
    mul-float v19, v5, v5

    mul-float v20, v6, v6

    add-float v19, v19, v20

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v20, v0

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v12, v0

    .line 525
    add-int/lit8 v4, v4, 0x1

    .line 526
    div-float v19, v5, v12

    add-float v7, v7, v19

    .line 527
    div-float v19, v6, v12

    add-float v8, v8, v19

    .line 483
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 530
    .end local v5    # "currentDX":F
    .end local v6    # "currentDY":F
    :cond_2
    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const-string/jumbo v19, "AccessibilityGestureDetector"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "path="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z

    move-result v19

    return v19
.end method

.method private recognizeGesturePath(Landroid/view/MotionEvent;ILjava/util/ArrayList;)Z
    .locals 17
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/MotionEvent;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 550
    .local p3, "path":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/PointF;>;"
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x2

    move/from16 v0, v16

    if-ne v15, v0, :cond_1

    .line 551
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 552
    .local v14, "start":Landroid/graphics/PointF;
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 554
    .local v9, "end":Landroid/graphics/PointF;
    iget v15, v9, Landroid/graphics/PointF;->x:F

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v2, v15, v16

    .line 555
    .local v2, "dX":F
    iget v15, v9, Landroid/graphics/PointF;->y:F

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v5, v15, v16

    .line 556
    .local v5, "dY":F
    invoke-static {v2, v5}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result v8

    .line 557
    .local v8, "direction":I
    packed-switch v8, :pswitch_data_0

    .line 587
    .end local v2    # "dX":F
    .end local v5    # "dY":F
    .end local v8    # "direction":I
    .end local v9    # "end":Landroid/graphics/PointF;
    .end local v14    # "start":Landroid/graphics/PointF;
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-interface {v15, v0, v1}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v15

    return v15

    .line 559
    .restart local v2    # "dX":F
    .restart local v5    # "dY":F
    .restart local v8    # "direction":I
    .restart local v9    # "end":Landroid/graphics/PointF;
    .restart local v14    # "start":Landroid/graphics/PointF;
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/16 v16, 0x3

    invoke-interface/range {v15 .. v16}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v15

    return v15

    .line 561
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/16 v16, 0x4

    invoke-interface/range {v15 .. v16}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v15

    return v15

    .line 563
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/16 v16, 0x1

    invoke-interface/range {v15 .. v16}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v15

    return v15

    .line 565
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    const/16 v16, 0x2

    invoke-interface/range {v15 .. v16}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v15

    return v15

    .line 570
    .end local v2    # "dX":F
    .end local v5    # "dY":F
    .end local v8    # "direction":I
    .end local v9    # "end":Landroid/graphics/PointF;
    .end local v14    # "start":Landroid/graphics/PointF;
    :cond_1
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    const/16 v16, 0x3

    move/from16 v0, v16

    if-ne v15, v0, :cond_0

    .line 571
    const/4 v15, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/graphics/PointF;

    .line 572
    .restart local v14    # "start":Landroid/graphics/PointF;
    const/4 v15, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/graphics/PointF;

    .line 573
    .local v11, "mid":Landroid/graphics/PointF;
    const/4 v15, 0x2

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/PointF;

    .line 575
    .restart local v9    # "end":Landroid/graphics/PointF;
    iget v15, v11, Landroid/graphics/PointF;->x:F

    iget v0, v14, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v3, v15, v16

    .line 576
    .local v3, "dX0":F
    iget v15, v11, Landroid/graphics/PointF;->y:F

    iget v0, v14, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v6, v15, v16

    .line 578
    .local v6, "dY0":F
    iget v15, v9, Landroid/graphics/PointF;->x:F

    iget v0, v11, Landroid/graphics/PointF;->x:F

    move/from16 v16, v0

    sub-float v4, v15, v16

    .line 579
    .local v4, "dX1":F
    iget v15, v9, Landroid/graphics/PointF;->y:F

    iget v0, v11, Landroid/graphics/PointF;->y:F

    move/from16 v16, v0

    sub-float v7, v15, v16

    .line 581
    .local v7, "dY1":F
    invoke-static {v3, v6}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result v12

    .line 582
    .local v12, "segmentDirection0":I
    invoke-static {v4, v7}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->toDirection(FF)I

    move-result v13

    .line 583
    .local v13, "segmentDirection1":I
    sget-object v15, Lcom/android/server/accessibility/AccessibilityGestureDetector;->DIRECTIONS_TO_GESTURE_ID:[[I

    aget-object v15, v15, v12

    aget v10, v15, v13

    .line 584
    .local v10, "gestureId":I
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    invoke-interface {v15, v10}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCompleted(I)Z

    move-result v15

    return v15

    .line 557
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static toDirection(FF)I
    .locals 3
    .param p0, "dX"    # F
    .param p1, "dY"    # F

    .prologue
    const/4 v2, 0x0

    .line 592
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 594
    cmpg-float v0, p0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 597
    :cond_1
    cmpg-float v0, p1, v2

    if-gez v0, :cond_2

    const/4 v0, 0x2

    :goto_1
    return v0

    :cond_2
    const/4 v0, 0x3

    goto :goto_1
.end method


# virtual methods
.method public clear()V
    .locals 9

    .prologue
    const-wide/16 v0, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 393
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 394
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 395
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 396
    iput-boolean v7, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 397
    iget-object v8, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v4, 0x3

    move-wide v2, v0

    move v6, v5

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 399
    invoke-direct {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 400
    return-void
.end method

.method public firstTapDetected()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    return v0
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 427
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 408
    iget v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    invoke-direct {p0, p1, v0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->maybeSendLongPress(Landroid/view/MotionEvent;I)V

    .line 409
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;I)Z
    .locals 24
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 253
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 254
    new-instance v20, Landroid/view/GestureDetector;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 258
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v18

    .line 259
    .local v18, "x":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v19

    .line 260
    .local v19, "y":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v14

    .line 262
    .local v14, "time":J
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPolicyFlags:I

    .line 263
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    .line 374
    :cond_1
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_b

    .line 375
    invoke-direct/range {p0 .. p1}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mapSecondPointerToFirstPointer(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v9

    .line 376
    .local v9, "newEvent":Landroid/view/MotionEvent;
    if-nez v9, :cond_a

    .line 377
    const/16 v20, 0x0

    return v20

    .line 265
    .end local v9    # "newEvent":Landroid/view/MotionEvent;
    :pswitch_1
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 266
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 267
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    .line 268
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 269
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 270
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    .line 272
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 275
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 276
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    goto :goto_0

    .line 280
    :pswitch_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 281
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    move/from16 v20, v0

    sub-float v6, v20, v18

    .line 282
    .local v6, "deltaX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    move/from16 v20, v0

    sub-float v7, v20, v19

    .line 283
    .local v7, "deltaY":F
    float-to-double v0, v6

    move-wide/from16 v20, v0

    float-to-double v0, v7

    move-wide/from16 v22, v0

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v10

    .line 284
    .local v10, "moveDelta":D
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetectionThreshold:F

    move/from16 v20, v0

    move/from16 v0, v20

    float-to-double v0, v0

    move-wide/from16 v20, v0

    cmpl-double v20, v10, v20

    if-lez v20, :cond_2

    .line 287
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseX:F

    .line 288
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseY:F

    .line 289
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    .line 293
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 294
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    .line 298
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 299
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureStarted()Z

    move-result v20

    return v20

    .line 302
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    move/from16 v20, v0

    if-nez v20, :cond_4

    .line 305
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mBaseTime:J

    move-wide/from16 v20, v0

    sub-long v16, v14, v20

    .line 306
    .local v16, "timeDelta":J
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_3

    .line 307
    const-wide/16 v12, 0x12c

    .line 312
    .local v12, "threshold":J
    :goto_1
    cmp-long v20, v16, v12

    if-lez v20, :cond_4

    .line 313
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mListener:Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/android/server/accessibility/AccessibilityGestureDetector$Listener;->onGestureCancelled(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 308
    .end local v12    # "threshold":J
    :cond_3
    const-wide/16 v12, 0x96

    .restart local v12    # "threshold":J
    goto :goto_1

    .line 318
    .end local v12    # "threshold":J
    .end local v16    # "timeDelta":J
    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 319
    .local v4, "dX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 320
    .local v5, "dY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    move/from16 v20, v0

    cmpl-float v20, v4, v20

    if-gez v20, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    move/from16 v20, v0

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_1

    .line 321
    :cond_5
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    .line 322
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 329
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    .end local v6    # "deltaX":F
    .end local v7    # "deltaY":F
    .end local v10    # "moveDelta":D
    :pswitch_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 330
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 332
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureStarted:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 333
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureX:F

    move/from16 v20, v0

    sub-float v20, v18, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 334
    .restart local v4    # "dX":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mPreviousGestureY:F

    move/from16 v20, v0

    sub-float v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Math;->abs(F)F

    move-result v5

    .line 335
    .restart local v5    # "dY":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesX:F

    move/from16 v20, v0

    cmpl-float v20, v4, v20

    if-gez v20, :cond_7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mMinPixelsBetweenSamplesY:F

    move/from16 v20, v0

    cmpl-float v20, v5, v20

    if-ltz v20, :cond_8

    .line 336
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mStrokeBuffer:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    new-instance v21, Landroid/gesture/GesturePoint;

    move-object/from16 v0, v21

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-direct {v0, v1, v2, v14, v15}, Landroid/gesture/GesturePoint;-><init>(FFJ)V

    invoke-virtual/range {v20 .. v21}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    :cond_8
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->recognizeGesture(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 345
    .end local v4    # "dX":F
    .end local v5    # "dY":F
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->cancelGesture()V

    .line 347
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v20

    const/16 v21, 0x2

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_9

    .line 350
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    .line 351
    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondPointerDownTime:J

    goto/16 :goto_0

    .line 355
    :cond_9
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    goto/16 :goto_0

    .line 362
    :pswitch_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mSecondFingerDoubleTap:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mDoubleTapDetected:Z

    move/from16 v20, v0

    if-eqz v20, :cond_1

    .line 363
    invoke-direct/range {p0 .. p2}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->finishDoubleTap(Landroid/view/MotionEvent;I)Z

    move-result v20

    return v20

    .line 368
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    goto/16 :goto_0

    .line 379
    .restart local v9    # "newEvent":Landroid/view/MotionEvent;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v9}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v8

    .line 380
    .local v8, "handled":Z
    invoke-virtual {v9}, Landroid/view/MotionEvent;->recycle()V

    .line 381
    return v8

    .line 384
    .end local v8    # "handled":Z
    .end local v9    # "newEvent":Landroid/view/MotionEvent;
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mRecognizingGesture:Z

    move/from16 v20, v0

    if-nez v20, :cond_c

    .line 385
    const/16 v20, 0x0

    return v20

    .line 389
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v20

    return v20

    .line 263
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 419
    invoke-virtual {p0}, Lcom/android/server/accessibility/AccessibilityGestureDetector;->clear()V

    .line 420
    const/4 v0, 0x0

    return v0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 413
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/accessibility/AccessibilityGestureDetector;->mFirstTapDetected:Z

    .line 414
    const/4 v0, 0x0

    return v0
.end method
