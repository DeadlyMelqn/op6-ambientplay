.class Lcom/android/server/accessibility/MagnificationGestureHandler;
.super Ljava/lang/Object;
.source "MagnificationGestureHandler.java"

# interfaces
.implements Lcom/android/server/accessibility/EventStreamTransformation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventHandler;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;,
        Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;
    }
.end annotation


# static fields
.field private static final DEBUG_DETECTING:Z = false

.field private static final DEBUG_PANNING:Z = false

.field private static final DEBUG_STATE_TRANSITIONS:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "MagnificationEventHandler"

.field private static final MAX_SCALE:F = 5.0f

.field private static final MIN_SCALE:F = 2.0f

.field private static final STATE_DELEGATING:I = 0x1

.field private static final STATE_DETECTING:I = 0x2

.field private static final STATE_MAGNIFIED_INTERACTION:I = 0x4

.field private static final STATE_VIEWPORT_DRAGGING:I = 0x3


# instance fields
.field private mCurrentState:I

.field private mDelegatingStateDownTime:J

.field private final mDetectTripleTap:Z

.field private final mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

.field private final mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

.field private final mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

.field private mNext:Lcom/android/server/accessibility/EventStreamTransformation;

.field private mPreviousState:I

.field private final mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

.field private mShortcutTriggered:Z

.field private final mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

.field private mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

.field private mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

.field private mTranslationEnabledBeforePan:Z

.field private final mTriggerable:Z


# direct methods
.method static synthetic -get0(Lcom/android/server/accessibility/MagnificationGestureHandler;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    return v0
.end method

.method static synthetic -get1(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    return v0
.end method

.method static synthetic -get2(Lcom/android/server/accessibility/MagnificationGestureHandler;)Lcom/android/server/accessibility/MagnificationController;
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/accessibility/MagnificationGestureHandler;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:I

    return v0
.end method

.method static synthetic -get4(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mShortcutTriggered:Z

    return v0
.end method

.method static synthetic -get5(Lcom/android/server/accessibility/MagnificationGestureHandler;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;

    .prologue
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTranslationEnabledBeforePan:Z

    return v0
.end method

.method static synthetic -set0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTranslationEnabledBeforePan:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/accessibility/MagnificationGestureHandler;Z)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "state"    # Z

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->setMagnificationShortcutTriggered(Z)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/accessibility/MagnificationGestureHandler;I)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/accessibility/MagnificationGestureHandler;
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/accessibility/AccessibilityManagerService;ZZ)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ams"    # Lcom/android/server/accessibility/AccessibilityManagerService;
    .param p3, "detectTripleTap"    # Z
    .param p4, "triggerable"    # Z

    .prologue
    const/4 v1, 0x0

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    invoke-virtual {p2}, Lcom/android/server/accessibility/AccessibilityManagerService;->getMagnificationController()Lcom/android/server/accessibility/MagnificationController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    .line 140
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    .line 141
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    .line 143
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    invoke-direct {v0, p0, p1}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;-><init>(Lcom/android/server/accessibility/MagnificationGestureHandler;Landroid/content/Context;)V

    .line 142
    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    .line 144
    iput-boolean p3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    .line 145
    iput-boolean p4, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTriggerable:Z

    .line 147
    if-eqz p4, :cond_0

    .line 148
    new-instance v0, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-direct {v0, p1, p0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;-><init>(Landroid/content/Context;Lcom/android/server/accessibility/MagnificationGestureHandler;)V

    iput-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    .line 149
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->register()V

    .line 154
    :goto_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    .line 155
    return-void

    .line 151
    :cond_0
    iput-object v1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    goto :goto_0
.end method

.method private clear()V
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    .line 256
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->setMagnificationShortcutTriggered(Z)V

    .line 257
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->clear()V

    .line 258
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->clear()V

    .line 259
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->clear()V

    .line 260
    return-void
.end method

.method private dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 26
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 293
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v20

    .line 294
    .local v20, "eventX":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v21

    .line 295
    .local v21, "eventY":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->isMagnifying()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v4, v0, v1}, Lcom/android/server/accessibility/MagnificationController;->magnificationRegionContains(FF)Z

    move-result v4

    .line 295
    if-eqz v4, :cond_1

    .line 297
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getScale()F

    move-result v23

    .line 298
    .local v23, "scale":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetX()F

    move-result v24

    .line 299
    .local v24, "scaledOffsetX":F
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v4}, Lcom/android/server/accessibility/MagnificationController;->getOffsetY()F

    move-result v25

    .line 300
    .local v25, "scaledOffsetY":F
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v9

    .line 301
    .local v9, "pointerCount":I
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;

    move-result-object v11

    .line 302
    .local v11, "coords":[Landroid/view/MotionEvent$PointerCoords;
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/server/accessibility/MagnificationGestureHandler;->getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;

    move-result-object v10

    .line 304
    .local v10, "properties":[Landroid/view/MotionEvent$PointerProperties;
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    move/from16 v0, v22

    if-ge v0, v9, :cond_0

    .line 305
    aget-object v4, v11, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V

    .line 306
    aget-object v4, v11, v22

    aget-object v5, v11, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->x:F

    sub-float v5, v5, v24

    div-float v5, v5, v23

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->x:F

    .line 307
    aget-object v4, v11, v22

    aget-object v5, v11, v22

    iget v5, v5, Landroid/view/MotionEvent$PointerCoords;->y:F

    sub-float v5, v5, v25

    div-float v5, v5, v23

    iput v5, v4, Landroid/view/MotionEvent$PointerCoords;->y:F

    .line 308
    aget-object v4, v10, v22

    move-object/from16 v0, p1

    move/from16 v1, v22

    invoke-virtual {v0, v1, v4}, Landroid/view/MotionEvent;->getPointerProperties(ILandroid/view/MotionEvent$PointerProperties;)V

    .line 304
    add-int/lit8 v22, v22, 0x1

    goto :goto_0

    .line 310
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    .line 311
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    .line 312
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getDeviceId()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getSource()I

    move-result v18

    .line 313
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getFlags()I

    move-result v19

    .line 312
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const/high16 v15, 0x3f800000    # 1.0f

    const/16 v17, 0x0

    .line 310
    invoke-static/range {v4 .. v19}, Landroid/view/MotionEvent;->obtain(JJII[Landroid/view/MotionEvent$PointerProperties;[Landroid/view/MotionEvent$PointerCoords;IIFFIIII)Landroid/view/MotionEvent;

    move-result-object p1

    .line 315
    .end local v9    # "pointerCount":I
    .end local v10    # "properties":[Landroid/view/MotionEvent$PointerProperties;
    .end local v11    # "coords":[Landroid/view/MotionEvent$PointerCoords;
    .end local v22    # "i":I
    .end local v23    # "scale":F
    .end local v24    # "scaledOffsetX":F
    .end local v25    # "scaledOffsetY":F
    :cond_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-interface {v4, v0, v1, v2}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 316
    return-void
.end method

.method private getTempPointerCoordsWithMinSize(I)[Landroid/view/MotionEvent$PointerCoords;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 319
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    array-length v1, v3

    .line 320
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 321
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 322
    .local v2, "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerCoords;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    .line 323
    if-eqz v2, :cond_0

    .line 324
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 327
    .end local v2    # "oldTempPointerCoords":[Landroid/view/MotionEvent$PointerCoords;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 328
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    new-instance v4, Landroid/view/MotionEvent$PointerCoords;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerCoords;-><init>()V

    aput-object v4, v3, v0

    .line 327
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 319
    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "oldSize":I
    goto :goto_0

    .line 330
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerCoords:[Landroid/view/MotionEvent$PointerCoords;

    return-object v3
.end method

.method private getTempPointerPropertiesWithMinSize(I)[Landroid/view/MotionEvent$PointerProperties;
    .locals 5
    .param p1, "size"    # I

    .prologue
    const/4 v4, 0x0

    .line 334
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    array-length v1, v3

    .line 336
    .local v1, "oldSize":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 337
    iget-object v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 338
    .local v2, "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    new-array v3, p1, [Landroid/view/MotionEvent$PointerProperties;

    iput-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    .line 339
    if-eqz v2, :cond_0

    .line 340
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    invoke-static {v2, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    .end local v2    # "oldTempPointerProperties":[Landroid/view/MotionEvent$PointerProperties;
    :cond_0
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-ge v0, p1, :cond_2

    .line 345
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    new-instance v4, Landroid/view/MotionEvent$PointerProperties;

    invoke-direct {v4}, Landroid/view/MotionEvent$PointerProperties;-><init>()V

    aput-object v4, v3, v0

    .line 344
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 335
    .end local v0    # "i":I
    .end local v1    # "oldSize":I
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "oldSize":I
    goto :goto_0

    .line 347
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTempPointerProperties:[Landroid/view/MotionEvent$PointerProperties;

    return-object v3
.end method

.method private handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 264
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 276
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    .line 283
    iget-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingStateDownTime:J

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setDownTime(J)V

    .line 284
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 286
    :cond_1
    return-void

    .line 266
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDelegatingStateDownTime:J

    goto :goto_0

    .line 270
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-static {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->-get0(Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;)Lcom/android/server/accessibility/MagnificationGestureHandler$MotionEventInfo;

    move-result-object v0

    if-nez v0, :cond_0

    .line 271
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->transitionToState(I)V

    goto :goto_0

    .line 264
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setMagnificationShortcutTriggered(Z)V
    .locals 1
    .param p1, "state"    # Z

    .prologue
    .line 246
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mShortcutTriggered:Z

    if-ne v0, p1, :cond_0

    .line 247
    return-void

    .line 250
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mShortcutTriggered:Z

    .line 251
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/MagnificationController;->setForceShowMagnifiableBounds(Z)V

    .line 252
    return-void
.end method

.method private transitionToState(I)V
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 374
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    iput v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mPreviousState:I

    .line 375
    iput p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    .line 376
    return-void
.end method


# virtual methods
.method public clearEvents(I)V
    .locals 1
    .param p1, "inputSource"    # I

    .prologue
    .line 218
    const/16 v0, 0x1002

    if-ne p1, v0, :cond_0

    .line 219
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clear()V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->clearEvents(I)V

    .line 225
    :cond_1
    return-void
.end method

.method notifyShortcutTriggered()V
    .locals 2

    .prologue
    .line 236
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTriggerable:Z

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnificationController:Lcom/android/server/accessibility/MagnificationController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/accessibility/MagnificationController;->resetIfNeeded(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clear()V

    .line 243
    :cond_0
    :goto_0
    return-void

    .line 240
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mShortcutTriggered:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->setMagnificationShortcutTriggered(Z)V

    goto :goto_0
.end method

.method public onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1}, Lcom/android/server/accessibility/EventStreamTransformation;->onAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 209
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    if-eqz v0, :cond_0

    .line 230
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mScreenStateReceiver:Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;

    invoke-virtual {v0}, Lcom/android/server/accessibility/MagnificationGestureHandler$ScreenStateReceiver;->unregister()V

    .line 232
    :cond_0
    invoke-direct {p0}, Lcom/android/server/accessibility/MagnificationGestureHandler;->clear()V

    .line 233
    return-void
.end method

.method public onKeyEvent(Landroid/view/KeyEvent;I)V
    .locals 1
    .param p1, "event"    # Landroid/view/KeyEvent;
    .param p2, "policyFlags"    # I

    .prologue
    .line 199
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2}, Lcom/android/server/accessibility/EventStreamTransformation;->onKeyEvent(Landroid/view/KeyEvent;I)V

    .line 202
    :cond_0
    return-void
.end method

.method public onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V
    .locals 3
    .param p1, "event"    # Landroid/view/MotionEvent;
    .param p2, "rawEvent"    # Landroid/view/MotionEvent;
    .param p3, "policyFlags"    # I

    .prologue
    .line 159
    const/16 v0, 0x1002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 160
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/server/accessibility/EventStreamTransformation;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 163
    :cond_0
    return-void

    .line 165
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectTripleTap:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mTriggerable:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    if-eqz v0, :cond_2

    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->dispatchTransformedEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 169
    :cond_2
    return-void

    .line 171
    :cond_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mMagnifiedContentInteractionStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$MagnifiedContentInteractionStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 172
    iget v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    packed-switch v0, :pswitch_data_0

    .line 192
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unknown state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mCurrentState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :pswitch_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler;->handleMotionEventStateDelegating(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    .line 195
    :goto_0
    :pswitch_1
    return-void

    .line 178
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mDetectingStateHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$DetectingStateHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 182
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mStateViewportDraggingHandler:Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/accessibility/MagnificationGestureHandler$StateViewportDraggingHandler;->onMotionEvent(Landroid/view/MotionEvent;Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 172
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method public setNext(Lcom/android/server/accessibility/EventStreamTransformation;)V
    .locals 0
    .param p1, "next"    # Lcom/android/server/accessibility/EventStreamTransformation;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/server/accessibility/MagnificationGestureHandler;->mNext:Lcom/android/server/accessibility/EventStreamTransformation;

    .line 214
    return-void
.end method
