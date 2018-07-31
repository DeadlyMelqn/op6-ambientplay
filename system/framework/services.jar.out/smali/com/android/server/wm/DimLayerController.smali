.class Lcom/android/server/wm/DimLayerController;
.super Ljava/lang/Object;
.source "DimLayerController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/DimLayerController$DimLayerState;
    }
.end annotation


# static fields
.field private static final DEFAULT_DIM_AMOUNT_DEAD_WINDOW:F = 0.5f

.field private static final DEFAULT_DIM_DURATION:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final TAG_LOCAL:Ljava/lang/String; = "DimLayerController"


# instance fields
.field private mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

.field private mState:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Lcom/android/server/wm/DimLayer$DimLayerUser;",
            "Lcom/android/server/wm/DimLayerController$DimLayerState;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpBounds:Landroid/graphics/Rect;


# direct methods
.method constructor <init>(Lcom/android/server/wm/DisplayContent;)V
    .locals 1
    .param p1, "displayContent"    # Lcom/android/server/wm/DisplayContent;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    .line 45
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    .line 48
    iput-object p1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 49
    return-void
.end method

.method private animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 11
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v10, 0x0

    .line 249
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 250
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "animateDimLayers, dimLayerUser="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 251
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v8

    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 252
    const-string/jumbo v8, " state.animator="

    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 252
    iget-object v8, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    const-string/jumbo v8, " state.continueDimming="

    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 253
    iget-boolean v8, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 250
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_4

    .line 257
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v1

    .line 258
    .local v1, "dimLayer":I
    const/4 v0, 0x0

    .line 269
    .local v0, "dimAmount":F
    :goto_0
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getTargetAlpha()F

    move-result v5

    .line 270
    .local v5, "targetAlpha":F
    cmpl-float v6, v5, v0

    if-eqz v6, :cond_a

    .line 271
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-nez v6, :cond_7

    .line 274
    sget-boolean v6, Lcom/android/server/wm/WindowManagerService;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v6, :cond_6

    .line 275
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mResetDimmingDuration:Z

    .line 274
    if-eqz v6, :cond_6

    .line 276
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v6, v6, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v10, v6, Lcom/android/server/wm/WindowManagerService;->mResetDimmingDuration:Z

    .line 277
    sget-boolean v6, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_1

    .line 278
    sget-object v6, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "GestureButton: hide dimlayer duration with 0."

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    const-wide/16 v8, 0x0

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/DimLayer;->hide(J)V

    .line 304
    :cond_2
    :goto_1
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->isAnimating()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 305
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->okToAnimate()Z

    move-result v6

    if-nez v6, :cond_b

    .line 307
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->show()V

    .line 312
    :cond_3
    return v10

    .line 260
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    .end local v5    # "targetAlpha":F
    :cond_4
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    if-eqz v6, :cond_5

    .line 261
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v1, v6, 0x1

    .line 262
    .restart local v1    # "dimLayer":I
    const/high16 v0, 0x3f000000    # 0.5f

    .restart local v0    # "dimAmount":F
    goto :goto_0

    .line 264
    .end local v0    # "dimAmount":F
    .end local v1    # "dimLayer":I
    :cond_5
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 265
    iget-object v7, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    add-int/lit8 v7, v7, -0x1

    .line 264
    const/4 v8, 0x1

    invoke-interface {p1, v6, v8, v7}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getLayerForDim(Lcom/android/server/wm/WindowStateAnimator;II)I

    move-result v1

    .line 266
    .restart local v1    # "dimLayer":I
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v6, v6, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .restart local v0    # "dimAmount":F
    goto :goto_0

    .line 283
    .restart local v5    # "targetAlpha":F
    :cond_6
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    const-wide/16 v8, 0xc8

    invoke-virtual {v6, v8, v9}, Lcom/android/server/wm/DimLayer;->hide(J)V

    goto :goto_1

    .line 286
    :cond_7
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimating:Z

    if-eqz v6, :cond_9

    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    if-eqz v6, :cond_9

    .line 287
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v6, v6, Lcom/android/server/wm/WindowStateAnimator;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v6}, Landroid/view/animation/Animation;->computeDurationHint()J

    move-result-wide v2

    .line 289
    .local v2, "duration":J
    :goto_2
    cmpl-float v6, v5, v0

    if-lez v6, :cond_8

    .line 290
    invoke-direct {p0, v2, v3}, Lcom/android/server/wm/DimLayerController;->getDimLayerFadeDuration(J)J

    move-result-wide v2

    .line 292
    :cond_8
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1, v0, v2, v3}, Lcom/android/server/wm/DimLayer;->show(IFJ)V

    .line 296
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_2

    .line 297
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v7, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v6, Lcom/android/server/wm/DisplayContent;->pendingLayoutChanges:I

    .line 298
    iget-object v6, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v6}, Lcom/android/server/wm/DisplayContent;->setLayoutNeeded()V

    goto :goto_1

    .line 288
    .end local v2    # "duration":J
    :cond_9
    const-wide/16 v2, 0xc8

    .restart local v2    # "duration":J
    goto :goto_2

    .line 301
    .end local v2    # "duration":J
    :cond_a
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->getLayer()I

    move-result v6

    if-eq v6, v1, :cond_2

    .line 302
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6, v1}, Lcom/android/server/wm/DimLayer;->setLayer(I)V

    goto/16 :goto_1

    .line 309
    :cond_b
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v6}, Lcom/android/server/wm/DimLayer;->stepAnimation()Z

    move-result v6

    return v6
.end method

.method private getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 134
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 135
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getDimLayerFadeDuration(J)J
    .locals 5
    .param p1, "duration"    # J

    .prologue
    .line 321
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 322
    .local v0, "tv":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, v1, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 323
    const v2, 0x1130001

    const/4 v3, 0x1

    .line 322
    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 324
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/4 v2, 0x6

    if-ne v1, v2, :cond_1

    .line 325
    long-to-float v1, p1

    long-to-float v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/util/TypedValue;->getFraction(FF)F

    move-result v1

    float-to-long p1, v1

    .line 329
    :cond_0
    :goto_0
    return-wide p1

    .line 326
    :cond_1
    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget v1, v0, Landroid/util/TypedValue;->type:I

    const/16 v2, 0x1f

    if-gt v1, v2, :cond_0

    .line 327
    iget v1, v0, Landroid/util/TypedValue;->data:I

    int-to-long p1, v1

    goto :goto_0
.end method

.method private static getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;
    .locals 2
    .param p0, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "DimLayerController/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p0}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;
    .locals 5
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v4, 0x0

    .line 97
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getOrCreateDimLayerState, dimLayerUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 98
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 97
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 100
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_1

    .line 101
    new-instance v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .end local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-direct {v0, v4}, Lcom/android/server/wm/DimLayerController$DimLayerState;-><init>(Lcom/android/server/wm/DimLayerController$DimLayerState;)V

    .line 102
    .restart local v0    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    :cond_1
    return-object v0
.end method

.method private setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 108
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 109
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-nez v0, :cond_1

    .line 110
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setContinueDimming, no state for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 111
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 110
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_0
    return-void

    .line 114
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 115
    return-void
.end method

.method private stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 5
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v4, 0x0

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 173
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopDimmingIfNeeded, dimLayerUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 174
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    const-string/jumbo v3, " state.continueDimming="

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 175
    iget-boolean v3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    const-string/jumbo v3, " state.dimLayer.isDimming="

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 176
    iget-object v3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v3}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v3

    .line 173
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowState;->mWillReplaceWindow:Z

    if-eqz v1, :cond_1

    .line 178
    return-void

    .line 181
    :cond_1
    iget-boolean v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-nez v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 182
    iput-object v4, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 183
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 184
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 186
    :cond_2
    return-void
.end method


# virtual methods
.method animateDimLayers()Z
    .locals 11

    .prologue
    const/4 v10, -0x1

    .line 189
    const/4 v0, -0x1

    .line 190
    .local v0, "fullScreen":I
    const/4 v1, -0x1

    .line 191
    .local v1, "fullScreenAndDimming":I
    const/4 v5, 0x0

    .line 192
    .local v5, "topFullScreenUserLayer":I
    const/4 v3, 0x0

    .line 194
    .local v3, "result":Z
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .end local v3    # "result":Z
    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_4

    .line 195
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 196
    .local v6, "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 198
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    invoke-interface {v6}, Lcom/android/server/wm/DimLayer$DimLayerUser;->isAttachedToDisplay()Z

    move-result v7

    if-nez v7, :cond_1

    .line 206
    const-string/jumbo v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Leaked dim user="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v6}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " state="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    invoke-virtual {p0, v6}, Lcom/android/server/wm/DimLayerController;->removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 194
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 215
    :cond_1
    invoke-interface {v6}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v8, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v7, v8, :cond_3

    .line 216
    move v0, v2

    .line 217
    iget-boolean v7, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    if-eqz v7, :cond_0

    .line 223
    if-eqz v5, :cond_2

    .line 224
    iget-object v7, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v7, :cond_0

    iget-object v7, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v7, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-le v7, v5, :cond_0

    .line 225
    :cond_2
    move v1, v2

    .line 226
    iget-object v7, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v7, :cond_0

    .line 227
    iget-object v7, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v5, v7, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    goto :goto_1

    .line 233
    :cond_3
    invoke-direct {p0, v6}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v7

    or-int/2addr v3, v7

    .local v3, "result":Z
    goto :goto_1

    .line 238
    .end local v3    # "result":Z
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    .end local v6    # "user":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_4
    if-eq v1, v10, :cond_6

    .line 239
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v7}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v7

    or-int/2addr v3, v7

    .line 245
    :cond_5
    :goto_2
    return v3

    .line 240
    :cond_6
    if-eq v0, v10, :cond_5

    .line 243
    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v7, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-direct {p0, v7}, Lcom/android/server/wm/DimLayerController;->animateDimLayers(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v7

    or-int/2addr v3, v7

    .restart local v3    # "result":Z
    goto :goto_2
.end method

.method applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 3
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 375
    if-nez p1, :cond_0

    .line 376
    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Trying to apply dim layer for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 377
    const-string/jumbo v2, ", but no dim layer user found."

    .line 376
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    return-void

    .line 380
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 381
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->setContinueDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 382
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/DimLayerController;->isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 383
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Win "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " start dimming."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/DimLayerController;->startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 387
    :cond_2
    return-void
.end method

.method applyDimAbove(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 370
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 371
    return-void
.end method

.method applyDimBehind(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)V
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "animator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 366
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/DimLayerController;->applyDim(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V

    .line 367
    return-void
.end method

.method close()V
    .locals 3

    .prologue
    .line 333
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 334
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 335
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 333
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 337
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 338
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 339
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 8
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 400
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "DimLayerController"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 401
    const-string/jumbo v0, "  "

    .line 402
    .local v0, "doubleSpace":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 404
    .local v3, "prefixPlusDoubleSpace":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .local v2, "n":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 405
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DimLayer$DimLayerUser;

    invoke-interface {v5}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 406
    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v5, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 407
    .local v4, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "dimLayer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 408
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v7, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v5, v7, :cond_1

    const-string/jumbo v5, "shared"

    .line 407
    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 409
    const-string/jumbo v6, ", animator="

    .line 407
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 409
    iget-object v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 407
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 409
    const-string/jumbo v6, ", continueDimming="

    .line 407
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 409
    iget-boolean v6, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 407
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v5, :cond_0

    .line 411
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lcom/android/server/wm/DimLayer;->printTo(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 404
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 408
    :cond_1
    iget-object v5, v4, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    goto :goto_1

    .line 414
    .end local v4    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_2
    return-void
.end method

.method hasDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)Z
    .locals 1
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method hasSharedFullScreenDimLayer()Z
    .locals 1

    .prologue
    .line 362
    iget-object v0, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDimming()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 119
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 120
    .local v1, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v2}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    const/4 v2, 0x1

    return v2

    .line 118
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 124
    .end local v1    # "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    :cond_1
    return v3
.end method

.method isDimming(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;)Z
    .locals 2
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "winAnimator"    # Lcom/android/server/wm/WindowStateAnimator;

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 317
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-ne v1, p2, :cond_0

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->isDimming()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method removeDimLayerUser(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    const/4 v3, 0x0

    .line 342
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayerController$DimLayerState;

    .line 343
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    if-eqz v0, :cond_1

    .line 345
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eq v1, v2, :cond_0

    .line 346
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v1}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    .line 348
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 351
    iput-object v3, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 353
    :cond_2
    return-void
.end method

.method resetDimming()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 128
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/DimLayerController$DimLayerState;

    iput-boolean v2, v1, Lcom/android/server/wm/DimLayerController$DimLayerState;->continueDimming:Z

    .line 128
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 131
    :cond_0
    return-void
.end method

.method startDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;Lcom/android/server/wm/WindowStateAnimator;Z)V
    .locals 4
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;
    .param p2, "newWinAnimator"    # Lcom/android/server/wm/WindowStateAnimator;
    .param p3, "aboveApp"    # Z

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v0

    .line 143
    .local v0, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iput-boolean p3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimAbove:Z

    .line 144
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startDimmingIfNeeded, dimLayerUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 145
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->toShortString()Ljava/lang/String;

    move-result-object v3

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 146
    const-string/jumbo v3, " newWinAnimator="

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    const-string/jumbo v3, " state.animator="

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 147
    iget-object v3, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    if-eqz v1, :cond_1

    .line 149
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowStateAnimator;->getShown()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 148
    if-nez v1, :cond_1

    .line 150
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    iget v2, p2, Lcom/android/server/wm/WindowStateAnimator;->mAnimLayer:I

    if-gt v1, v2, :cond_2

    .line 151
    :cond_1
    iput-object p2, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    .line 152
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->animator:Lcom/android/server/wm/WindowStateAnimator;

    iget-object v1, v1, Lcom/android/server/wm/WindowStateAnimator;->mWin:Lcom/android/server/wm/WindowState;

    iget-object v1, v1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v1, :cond_3

    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DisplayContent;->getLogicalDisplayRect(Landroid/graphics/Rect;)V

    .line 158
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 160
    :cond_2
    return-void

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method

.method stopDimmingIfNeeded()V
    .locals 5

    .prologue
    .line 163
    sget-boolean v2, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_DIM_LAYER:Z

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/wm/DimLayerController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stopDimmingIfNeeded, mState.size()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/server/wm/DimLayerController;->mState:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/DimLayer$DimLayerUser;

    .line 166
    .local v0, "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    invoke-direct {p0, v0}, Lcom/android/server/wm/DimLayerController;->stopDimmingIfNeeded(Lcom/android/server/wm/DimLayer$DimLayerUser;)V

    .line 164
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 168
    .end local v0    # "dimLayerUser":Lcom/android/server/wm/DimLayer$DimLayerUser;
    :cond_1
    return-void
.end method

.method updateDimLayer(Lcom/android/server/wm/DimLayer$DimLayerUser;)V
    .locals 6
    .param p1, "dimLayerUser"    # Lcom/android/server/wm/DimLayer$DimLayerUser;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/wm/DimLayerController;->getOrCreateDimLayerState(Lcom/android/server/wm/DimLayer$DimLayerUser;)Lcom/android/server/wm/DimLayerController$DimLayerState;

    move-result-object v3

    .line 54
    .local v3, "state":Lcom/android/server/wm/DimLayerController$DimLayerState;
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_1

    .line 55
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    iget-object v5, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-ne v4, v5, :cond_0

    const/4 v2, 0x1

    .line 57
    .local v2, "previousFullscreen":Z
    :goto_0
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 58
    .local v0, "displayId":I
    invoke-interface {p1}, Lcom/android/server/wm/DimLayer$DimLayerUser;->dimFullscreen()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 59
    if-eqz v2, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_2

    .line 61
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->setBoundsForFullscreen()V

    .line 62
    return-void

    .line 55
    .end local v0    # "displayId":I
    .end local v2    # "previousFullscreen":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    .line 54
    .end local v2    # "previousFullscreen":Z
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "previousFullscreen":Z
    goto :goto_0

    .line 65
    .restart local v0    # "displayId":I
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 66
    .local v1, "newDimLayer":Lcom/android/server/wm/DimLayer;
    if-nez v1, :cond_5

    .line 67
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_4

    .line 69
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 75
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 76
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    .line 77
    iput-object v1, p0, Lcom/android/server/wm/DimLayerController;->mSharedFullScreenDimLayer:Lcom/android/server/wm/DimLayer;

    .line 89
    :cond_3
    :goto_2
    iput-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .line 90
    return-void

    .line 72
    :cond_4
    new-instance v1, Lcom/android/server/wm/DimLayer;

    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 73
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 72
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_1

    .line 78
    :cond_5
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_3

    .line 79
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    invoke-virtual {v4}, Lcom/android/server/wm/DimLayer;->destroySurface()V

    goto :goto_2

    .line 82
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_6
    iget-object v4, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    if-eqz v4, :cond_7

    if-eqz v2, :cond_8

    .line 83
    :cond_7
    new-instance v1, Lcom/android/server/wm/DimLayer;

    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v4, v4, Lcom/android/server/wm/DisplayContent;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 84
    invoke-static {p1}, Lcom/android/server/wm/DimLayerController;->getDimLayerTag(Lcom/android/server/wm/DimLayer$DimLayerUser;)Ljava/lang/String;

    move-result-object v5

    .line 83
    invoke-direct {v1, v4, p1, v0, v5}, Lcom/android/server/wm/DimLayer;-><init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DimLayer$DimLayerUser;ILjava/lang/String;)V

    .line 86
    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :goto_3
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-interface {p1, v4}, Lcom/android/server/wm/DimLayer$DimLayerUser;->getDimBounds(Landroid/graphics/Rect;)V

    .line 87
    iget-object v4, p0, Lcom/android/server/wm/DimLayerController;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DimLayer;->setBounds(Landroid/graphics/Rect;)V

    goto :goto_2

    .line 85
    .end local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    :cond_8
    iget-object v1, v3, Lcom/android/server/wm/DimLayerController$DimLayerState;->dimLayer:Lcom/android/server/wm/DimLayer;

    .restart local v1    # "newDimLayer":Lcom/android/server/wm/DimLayer;
    goto :goto_3
.end method
