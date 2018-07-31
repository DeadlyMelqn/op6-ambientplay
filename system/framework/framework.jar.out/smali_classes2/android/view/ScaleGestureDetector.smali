.class public Landroid/view/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/ScaleGestureDetector$OnScaleGestureListener;,
        Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
    }
.end annotation


# static fields
.field private static final ANCHORED_SCALE_MODE_DOUBLE_TAP:I = 0x1

.field private static final ANCHORED_SCALE_MODE_NONE:I = 0x0

.field private static final ANCHORED_SCALE_MODE_STYLUS:I = 0x2

.field private static final SCALE_FACTOR:F = 0.5f

.field private static final TAG:Ljava/lang/String; = "ScaleGestureDetector"

.field private static final TOUCH_STABILIZE_TIME:J = 0x80L


# instance fields
.field private mAnchoredScaleMode:I

.field private mAnchoredScaleStartX:F

.field private mAnchoredScaleStartY:F

.field private final mContext:Landroid/content/Context;

.field private mCurrSpan:F

.field private mCurrSpanX:F

.field private mCurrSpanY:F

.field private mCurrTime:J

.field private mEventBeforeOrAboveStartingGestureEvent:Z

.field private mFocusX:F

.field private mFocusY:F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mHandler:Landroid/os/Handler;

.field private mInProgress:Z

.field private mInitialSpan:F

.field private final mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

.field private final mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private mMinSpan:I

.field private mPrevSpan:F

.field private mPrevSpanX:F

.field private mPrevSpanY:F

.field private mPrevTime:J

.field private mQuickScaleEnabled:Z

.field private mSpanSlop:I

.field private mStylusScaleEnabled:Z


# direct methods
.method static synthetic -set0(Landroid/view/ScaleGestureDetector;I)I
    .locals 0
    .param p0, "-this"    # Landroid/view/ScaleGestureDetector;
    .param p1, "-value"    # I

    .prologue
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    return p1
.end method

.method static synthetic -set1(Landroid/view/ScaleGestureDetector;F)F
    .locals 0
    .param p0, "-this"    # Landroid/view/ScaleGestureDetector;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    return p1
.end method

.method static synthetic -set2(Landroid/view/ScaleGestureDetector;F)F
    .locals 0
    .param p0, "-this"    # Landroid/view/ScaleGestureDetector;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .prologue
    .line 181
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
    .param p3, "handler"    # Landroid/os/Handler;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput v3, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 164
    invoke-static {}, Landroid/view/InputEventConsistencyVerifier;->isInstrumentationEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    new-instance v2, Landroid/view/InputEventConsistencyVerifier;

    invoke-direct {v2, p0, v3}, Landroid/view/InputEventConsistencyVerifier;-><init>(Ljava/lang/Object;I)V

    .line 163
    :goto_0
    iput-object v2, p0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    .line 197
    iput-object p1, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    .line 199
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    .line 201
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 202
    .local v0, "res":Landroid/content/res/Resources;
    const v2, 0x1050039

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    .line 203
    iput-object p3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    .line 205
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 206
    .local v1, "targetSdkVersion":I
    const/16 v2, 0x12

    if-le v1, v2, :cond_0

    .line 207
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    .line 210
    :cond_0
    const/16 v2, 0x16

    if-le v1, v2, :cond_1

    .line 211
    invoke-virtual {p0, v4}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    .line 213
    :cond_1
    return-void

    .line 165
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "targetSdkVersion":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private inAnchoredScaleMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 387
    iget v1, p0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method


# virtual methods
.method public getCurrentSpan()F
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    return v0
.end method

.method public getCurrentSpanX()F
    .locals 1

    .prologue
    .line 493
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    return v0
.end method

.method public getCurrentSpanY()F
    .locals 1

    .prologue
    .line 503
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    return v0
.end method

.method public getEventTime()J
    .locals 2

    .prologue
    .line 573
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    return-wide v0
.end method

.method public getFocusX()F
    .locals 1

    .prologue
    .line 459
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    return v0
.end method

.method public getFocusY()F
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    return v0
.end method

.method public getPreviousSpan()F
    .locals 1

    .prologue
    .line 513
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    return v0
.end method

.method public getPreviousSpanX()F
    .locals 1

    .prologue
    .line 523
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    return v0
.end method

.method public getPreviousSpanY()F
    .locals 1

    .prologue
    .line 533
    iget v0, p0, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    return v0
.end method

.method public getScaleFactor()F
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 544
    invoke-direct {p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 549
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-eqz v3, :cond_0

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    const/4 v0, 0x1

    .line 551
    .local v0, "scaleUp":Z
    :goto_0
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v1, v3, v4

    .line 552
    .local v1, "spanDiff":F
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpg-float v3, v3, v5

    if-gtz v3, :cond_2

    :goto_1
    return v2

    .line 550
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_0
    iget-boolean v3, p0, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    if-nez v3, :cond_1

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v4, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    const/4 v0, 0x1

    .restart local v0    # "scaleUp":Z
    goto :goto_0

    .end local v0    # "scaleUp":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "scaleUp":Z
    goto :goto_0

    .line 552
    .restart local v1    # "spanDiff":F
    :cond_2
    if-eqz v0, :cond_3

    add-float/2addr v2, v1

    goto :goto_1

    :cond_3
    sub-float/2addr v2, v1

    goto :goto_1

    .line 554
    .end local v0    # "scaleUp":Z
    .end local v1    # "spanDiff":F
    :cond_4
    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    cmpl-float v3, v3, v5

    if-lez v3, :cond_5

    iget v2, p0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    iget v3, p0, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    div-float/2addr v2, v3

    :cond_5
    return v2
.end method

.method public getTimeDelta()J
    .locals 4

    .prologue
    .line 564
    iget-wide v0, p0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    iget-wide v2, p0, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public isInProgress()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    return v0
.end method

.method public isQuickScaleEnabled()Z
    .locals 1

    .prologue
    .line 419
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    return v0
.end method

.method public isStylusScaleEnabled()Z
    .locals 1

    .prologue
    .line 438
    iget-boolean v0, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 32
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    if-eqz v28, :cond_0

    .line 229
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mInputEventConsistencyVerifier:Landroid/view/InputEventConsistencyVerifier;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    move/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/view/InputEventConsistencyVerifier;->onTouchEvent(Landroid/view/MotionEvent;I)V

    .line 232
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v28

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    .line 234
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    .line 237
    .local v4, "action":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 238
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 241
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    .line 243
    .local v7, "count":I
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getButtonState()I

    move-result v28

    and-int/lit8 v28, v28, 0x20

    if-eqz v28, :cond_5

    const/16 v16, 0x1

    .line 246
    .local v16, "isStylusButtonDown":Z
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    move/from16 v28, v0

    const/16 v29, 0x2

    move/from16 v0, v28

    move/from16 v1, v29

    if-ne v0, v1, :cond_6

    xor-int/lit8 v5, v16, 0x1

    .line 247
    :goto_1
    const/16 v28, 0x1

    move/from16 v0, v28

    if-eq v4, v0, :cond_2

    .line 248
    const/16 v28, 0x3

    move/from16 v0, v28

    if-ne v4, v0, :cond_7

    .line 247
    :cond_2
    const/16 v23, 0x1

    .line 250
    :goto_2
    if-eqz v4, :cond_3

    if-eqz v23, :cond_9

    .line 254
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v28, v0

    if-eqz v28, :cond_8

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 256
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 257
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 258
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 265
    :cond_4
    :goto_3
    if-eqz v23, :cond_9

    .line 266
    const/16 v28, 0x1

    return v28

    .line 243
    .end local v16    # "isStylusButtonDown":Z
    :cond_5
    const/16 v16, 0x0

    .restart local v16    # "isStylusButtonDown":Z
    goto :goto_0

    .line 246
    :cond_6
    const/4 v5, 0x0

    .local v5, "anchoredScaleCancelled":Z
    goto :goto_1

    .line 248
    .end local v5    # "anchoredScaleCancelled":Z
    :cond_7
    move/from16 v23, v5

    .local v23, "streamComplete":Z
    goto :goto_2

    .line 259
    .end local v23    # "streamComplete":Z
    :cond_8
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v28

    if-eqz v28, :cond_4

    if-eqz v23, :cond_4

    .line 260
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 261
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 262
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    goto :goto_3

    .line 270
    :cond_9
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v28, v0

    if-nez v28, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    move/from16 v28, v0

    if-eqz v28, :cond_a

    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v28

    xor-int/lit8 v28, v28, 0x1

    if-eqz v28, :cond_a

    .line 271
    xor-int/lit8 v28, v23, 0x1

    .line 270
    if-eqz v28, :cond_a

    if-eqz v16, :cond_a

    .line 273
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 274
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 275
    const/16 v28, 0x2

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mAnchoredScaleMode:I

    .line 276
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 279
    :cond_a
    if-eqz v4, :cond_b

    .line 280
    const/16 v28, 0x6

    move/from16 v0, v28

    if-ne v4, v0, :cond_c

    .line 279
    :cond_b
    const/4 v6, 0x1

    .line 283
    :goto_4
    const/16 v28, 0x6

    move/from16 v0, v28

    if-ne v4, v0, :cond_d

    const/16 v18, 0x1

    .line 284
    .local v18, "pointerUp":Z
    :goto_5
    if-eqz v18, :cond_e

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v19

    .line 287
    .local v19, "skipIndex":I
    :goto_6
    const/16 v24, 0x0

    .local v24, "sumX":F
    const/16 v25, 0x0

    .line 288
    .local v25, "sumY":F
    if-eqz v18, :cond_f

    add-int/lit8 v12, v7, -0x1

    .line 291
    .local v12, "div":I
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v28

    if-eqz v28, :cond_11

    .line 294
    move-object/from16 v0, p0

    iget v13, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartX:F

    .line 295
    .local v13, "focusX":F
    move-object/from16 v0, p0

    iget v14, v0, Landroid/view/ScaleGestureDetector;->mAnchoredScaleStartY:F

    .line 296
    .local v14, "focusY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v28

    cmpg-float v28, v28, v14

    if-gez v28, :cond_10

    .line 297
    const/16 v28, 0x1

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    .line 313
    :goto_8
    const/4 v8, 0x0

    .local v8, "devSumX":F
    const/4 v9, 0x0

    .line 314
    .local v9, "devSumY":F
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_9
    if-ge v15, v7, :cond_15

    .line 315
    move/from16 v0, v19

    if-ne v0, v15, :cond_14

    .line 314
    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 281
    .end local v8    # "devSumX":F
    .end local v9    # "devSumY":F
    .end local v12    # "div":I
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    .end local v15    # "i":I
    .end local v18    # "pointerUp":Z
    .end local v19    # "skipIndex":I
    .end local v24    # "sumX":F
    .end local v25    # "sumY":F
    :cond_c
    const/16 v28, 0x5

    move/from16 v0, v28

    if-eq v4, v0, :cond_b

    move v6, v5

    .local v6, "configChanged":Z
    goto :goto_4

    .line 283
    .end local v6    # "configChanged":Z
    :cond_d
    const/16 v18, 0x0

    .restart local v18    # "pointerUp":Z
    goto :goto_5

    .line 284
    :cond_e
    const/16 v19, -0x1

    .restart local v19    # "skipIndex":I
    goto :goto_6

    .line 288
    .restart local v24    # "sumX":F
    .restart local v25    # "sumY":F
    :cond_f
    move v12, v7

    .restart local v12    # "div":I
    goto :goto_7

    .line 299
    .restart local v13    # "focusX":F
    .restart local v14    # "focusY":F
    :cond_10
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mEventBeforeOrAboveStartingGestureEvent:Z

    goto :goto_8

    .line 302
    .end local v13    # "focusX":F
    .end local v14    # "focusY":F
    :cond_11
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_b
    if-ge v15, v7, :cond_13

    .line 303
    move/from16 v0, v19

    if-ne v0, v15, :cond_12

    .line 302
    :goto_c
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 304
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    add-float v24, v24, v28

    .line 305
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    add-float v25, v25, v28

    goto :goto_c

    .line 308
    :cond_13
    int-to-float v0, v12

    move/from16 v28, v0

    div-float v13, v24, v28

    .line 309
    .restart local v13    # "focusX":F
    int-to-float v0, v12

    move/from16 v28, v0

    div-float v14, v25, v28

    .restart local v14    # "focusY":F
    goto :goto_8

    .line 318
    .restart local v8    # "devSumX":F
    .restart local v9    # "devSumY":F
    :cond_14
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getX(I)F

    move-result v28

    sub-float v28, v28, v13

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    add-float v8, v8, v28

    .line 319
    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Landroid/view/MotionEvent;->getY(I)F

    move-result v28

    sub-float v28, v28, v14

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    add-float v9, v9, v28

    goto :goto_a

    .line 321
    :cond_15
    int-to-float v0, v12

    move/from16 v28, v0

    div-float v10, v8, v28

    .line 322
    .local v10, "devX":F
    int-to-float v0, v12

    move/from16 v28, v0

    div-float v11, v9, v28

    .line 327
    .local v11, "devY":F
    const/high16 v28, 0x40000000    # 2.0f

    mul-float v21, v10, v28

    .line 328
    .local v21, "spanX":F
    const/high16 v28, 0x40000000    # 2.0f

    mul-float v22, v11, v28

    .line 330
    .local v22, "spanY":F
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v28

    if-eqz v28, :cond_1d

    .line 331
    move/from16 v20, v22

    .line 339
    .local v20, "span":F
    :goto_d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v27, v0

    .line 340
    .local v27, "wasInProgress":Z
    move-object/from16 v0, p0

    iput v13, v0, Landroid/view/ScaleGestureDetector;->mFocusX:F

    .line 341
    move-object/from16 v0, p0

    iput v14, v0, Landroid/view/ScaleGestureDetector;->mFocusY:F

    .line 342
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v28

    if-nez v28, :cond_17

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v28, v0

    if-eqz v28, :cond_17

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    cmpg-float v28, v20, v28

    if-ltz v28, :cond_16

    if-eqz v6, :cond_17

    .line 343
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Landroid/view/ScaleGestureDetector;)V

    .line 344
    const/16 v28, 0x0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 345
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 347
    :cond_17
    if-eqz v6, :cond_18

    .line 348
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 349
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 350
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    .line 353
    :cond_18
    invoke-direct/range {p0 .. p0}, Landroid/view/ScaleGestureDetector;->inAnchoredScaleMode()Z

    move-result v28

    if-eqz v28, :cond_1e

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v17, v0

    .line 354
    .local v17, "minSpan":I
    :goto_e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v28, v0

    if-nez v28, :cond_1a

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v28, v0

    cmpl-float v28, v20, v28

    if-ltz v28, :cond_1a

    .line 355
    if-nez v27, :cond_19

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mInitialSpan:F

    move/from16 v28, v0

    sub-float v28, v20, v28

    invoke-static/range {v28 .. v28}, Ljava/lang/Math;->abs(F)F

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mSpanSlop:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-float v0, v0

    move/from16 v29, v0

    cmpl-float v28, v28, v29

    if-lez v28, :cond_1a

    .line 356
    :cond_19
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 357
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 358
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 359
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Landroid/view/ScaleGestureDetector;)Z

    move-result v28

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    .line 364
    :cond_1a
    const/16 v28, 0x2

    move/from16 v0, v28

    if-ne v4, v0, :cond_1c

    .line 365
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    .line 366
    move/from16 v0, v22

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    .line 367
    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    .line 369
    const/16 v26, 0x1

    .line 371
    .local v26, "updatePrev":Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/view/ScaleGestureDetector;->mInProgress:Z

    move/from16 v28, v0

    if-eqz v28, :cond_1b

    .line 372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/view/ScaleGestureDetector;->mListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    move-object/from16 v28, v0

    move-object/from16 v0, v28

    move-object/from16 v1, p0

    invoke-interface {v0, v1}, Landroid/view/ScaleGestureDetector$OnScaleGestureListener;->onScale(Landroid/view/ScaleGestureDetector;)Z

    move-result v26

    .line 375
    .end local v26    # "updatePrev":Z
    :cond_1b
    if-eqz v26, :cond_1c

    .line 376
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanX:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanX:F

    .line 377
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpanY:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpanY:F

    .line 378
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mCurrSpan:F

    move/from16 v28, v0

    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/view/ScaleGestureDetector;->mPrevSpan:F

    .line 379
    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/view/ScaleGestureDetector;->mCurrTime:J

    move-wide/from16 v28, v0

    move-wide/from16 v0, v28

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/view/ScaleGestureDetector;->mPrevTime:J

    .line 383
    :cond_1c
    const/16 v28, 0x1

    return v28

    .line 333
    .end local v17    # "minSpan":I
    .end local v20    # "span":F
    .end local v27    # "wasInProgress":Z
    :cond_1d
    move/from16 v0, v21

    float-to-double v0, v0

    move-wide/from16 v28, v0

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v30, v0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v28

    move-wide/from16 v0, v28

    double-to-float v0, v0

    move/from16 v20, v0

    .restart local v20    # "span":F
    goto/16 :goto_d

    .line 353
    .restart local v27    # "wasInProgress":Z
    :cond_1e
    move-object/from16 v0, p0

    iget v0, v0, Landroid/view/ScaleGestureDetector;->mMinSpan:I

    move/from16 v17, v0

    .restart local v17    # "minSpan":I
    goto/16 :goto_e
.end method

.method public setQuickScaleEnabled(Z)V
    .locals 4
    .param p1, "scales"    # Z

    .prologue
    .line 397
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    .line 398
    iget-boolean v1, p0, Landroid/view/ScaleGestureDetector;->mQuickScaleEnabled:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    if-nez v1, :cond_0

    .line 400
    new-instance v0, Landroid/view/ScaleGestureDetector$1;

    invoke-direct {v0, p0}, Landroid/view/ScaleGestureDetector$1;-><init>(Landroid/view/ScaleGestureDetector;)V

    .line 410
    .local v0, "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Landroid/view/ScaleGestureDetector;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/view/ScaleGestureDetector;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, v2, v0, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/view/ScaleGestureDetector;->mGestureDetector:Landroid/view/GestureDetector;

    .line 412
    .end local v0    # "gestureListener":Landroid/view/GestureDetector$SimpleOnGestureListener;
    :cond_0
    return-void
.end method

.method public setStylusScaleEnabled(Z)V
    .locals 0
    .param p1, "scales"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Landroid/view/ScaleGestureDetector;->mStylusScaleEnabled:Z

    .line 431
    return-void
.end method
