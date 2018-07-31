.class public Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
.super Landroid/graphics/drawable/Drawable;
.source "KeyButtonRipple.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;,
        Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;
    }
.end annotation


# instance fields
.field private final mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mBottomProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mDark:Z

.field private mDrawingHardwareGlow:Z

.field private mGlowAlpha:F

.field private mGlowScale:F

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private mLastDark:Z

.field private mLeftProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWidth:I

.field private mPaintProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Landroid/graphics/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private mPressed:Z

.field private mRightProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRipplePaint:Landroid/graphics/Paint;

.field private final mRunningAnimations:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mRxProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mRyProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSupportHardware:Z

.field private final mTargetView:Landroid/view/View;

.field private final mTmpArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mTopProp:Landroid/graphics/CanvasProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Z
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .prologue
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    return v0
.end method

.method static synthetic -get1(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)Ljava/util/HashSet;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyButtonRipple;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;Z)Z
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/policy/KeyButtonRipple;
    .param p1, "-value"    # Z

    .prologue
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    return p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 2
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "targetView"    # Landroid/view/View;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 58
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 65
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple$LogInterpolator;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    .line 378
    new-instance v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonRipple;)V

    .line 377
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    .line 74
    iput-object p2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    .line 75
    return-void
.end method

.method private cancelAnimations()V
    .locals 5

    .prologue
    .line 222
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 223
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 224
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 225
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 226
    .local v0, "a":Landroid/animation/Animator;
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 224
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "a":Landroid/animation/Animator;
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTmpArray:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 229
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->clear()V

    .line 230
    return-void
.end method

.method private drawHardware(Landroid/view/DisplayListCanvas;)V
    .locals 8
    .param p1, "c"    # Landroid/view/DisplayListCanvas;

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 150
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    move-object v0, p1

    .line 149
    invoke-virtual/range {v0 .. v7}, Landroid/view/DisplayListCanvas;->drawRoundRect(Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;Landroid/graphics/CanvasProperty;)V

    .line 152
    :cond_0
    return-void
.end method

.method private drawSoftware(Landroid/graphics/Canvas;)V
    .locals 18
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 92
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v8

    .line 93
    .local v8, "p":Landroid/graphics/Paint;
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v8, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v0, v1

    move/from16 v17, v0

    .line 96
    .local v17, "w":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v12, v1

    .line 97
    .local v12, "h":F
    cmpl-float v1, v17, v12

    if-lez v1, :cond_1

    const/4 v13, 0x1

    .line 98
    .local v13, "horizontal":Z
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v1

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    mul-float v11, v1, v2

    .line 99
    .local v11, "diameter":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v14, v11, v1

    .line 100
    .local v14, "radius":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v9, v17, v1

    .line 101
    .local v9, "cx":F
    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v10, v12, v1

    .line 102
    .local v10, "cy":F
    if-eqz v13, :cond_2

    move v15, v14

    .line 103
    .local v15, "rx":F
    :goto_1
    if-eqz v13, :cond_3

    move/from16 v16, v10

    .line 104
    .local v16, "ry":F
    :goto_2
    if-eqz v13, :cond_4

    move v6, v10

    .line 106
    .local v6, "corner":F
    :goto_3
    sub-float v2, v9, v15

    sub-float v3, v10, v16

    .line 107
    add-float v4, v9, v15

    add-float v5, v10, v16

    move-object/from16 v1, p1

    move v7, v6

    .line 106
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 110
    .end local v6    # "corner":F
    .end local v8    # "p":Landroid/graphics/Paint;
    .end local v9    # "cx":F
    .end local v10    # "cy":F
    .end local v11    # "diameter":F
    .end local v12    # "h":F
    .end local v13    # "horizontal":Z
    .end local v14    # "radius":F
    .end local v15    # "rx":F
    .end local v16    # "ry":F
    .end local v17    # "w":F
    :cond_0
    return-void

    .line 97
    .restart local v8    # "p":Landroid/graphics/Paint;
    .restart local v12    # "h":F
    .restart local v17    # "w":F
    :cond_1
    const/4 v13, 0x0

    .restart local v13    # "horizontal":Z
    goto :goto_0

    .line 102
    .restart local v9    # "cx":F
    .restart local v10    # "cy":F
    .restart local v11    # "diameter":F
    .restart local v14    # "radius":F
    :cond_2
    move v15, v9

    .restart local v15    # "rx":F
    goto :goto_1

    .line 103
    :cond_3
    move/from16 v16, v14

    .restart local v16    # "ry":F
    goto :goto_2

    .line 104
    :cond_4
    move v6, v9

    .restart local v6    # "corner":F
    goto :goto_3
.end method

.method private enterHardware()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x15e

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    const v5, 0x3faccccd    # 1.35f

    .line 318
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 319
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDrawingHardwareGlow:Z

    .line 320
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendStart(Landroid/graphics/CanvasProperty;)V

    .line 321
    new-instance v1, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendStart()Landroid/graphics/CanvasProperty;

    move-result-object v2

    .line 322
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    sub-float/2addr v3, v4

    .line 321
    invoke-direct {v1, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 323
    .local v1, "startAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v1, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 325
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 326
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 328
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setExtendEnd(Landroid/graphics/CanvasProperty;)V

    .line 329
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendEnd()Landroid/graphics/CanvasProperty;

    move-result-object v2

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getExtendSize()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRippleSize()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v5

    div-float/2addr v4, v7

    add-float/2addr v3, v4

    .line 329
    invoke-direct {v0, v2, v3}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;F)V

    .line 331
    .local v0, "endAnim":Landroid/view/RenderNodeAnimator;
    invoke-virtual {v0, v8, v9}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 332
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 333
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 336
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 337
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    .line 338
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    .line 339
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 340
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    .line 348
    :goto_0
    iput v5, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 349
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 350
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 351
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/high16 v4, 0x437f0000    # 255.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 352
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 354
    invoke-virtual {v1}, Landroid/view/RenderNodeAnimator;->start()V

    .line 355
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 356
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 357
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 359
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 360
    return-void

    .line 342
    :cond_0
    invoke-static {v6}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 343
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 344
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRxProp:Landroid/graphics/CanvasProperty;

    .line 345
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-static {v2}, Landroid/graphics/CanvasProperty;->createFloat(F)Landroid/graphics/CanvasProperty;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRyProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private enterSoftware()V
    .locals 4

    .prologue
    .line 241
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 242
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getMaxGlowAlpha()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 243
    const-string/jumbo v1, "glowScale"

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 245
    .local v0, "scaleAnimator":Landroid/animation/ObjectAnimator;
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 246
    const-wide/16 v2, 0x15e

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 247
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 248
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 249
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    return-void

    .line 243
    :array_0
    .array-data 4
        0x0
        0x3faccccd    # 1.35f
    .end array-data
.end method

.method private exitHardware()V
    .locals 4

    .prologue
    .line 363
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getRipplePaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/CanvasProperty;->createPaint(Landroid/graphics/Paint;)Landroid/graphics/CanvasProperty;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 364
    new-instance v0, Landroid/view/RenderNodeAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPaintProp:Landroid/graphics/CanvasProperty;

    .line 365
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 364
    invoke-direct {v0, v1, v3, v2}, Landroid/view/RenderNodeAnimator;-><init>(Landroid/graphics/CanvasProperty;IF)V

    .line 366
    .local v0, "opacityAnim":Landroid/view/RenderNodeAnimator;
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/view/RenderNodeAnimator;->setDuration(J)Landroid/view/RenderNodeAnimator;

    .line 367
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 368
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 369
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTargetView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 371
    invoke-virtual {v0}, Landroid/view/RenderNodeAnimator;->start()V

    .line 372
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 374
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 375
    return-void
.end method

.method private exitSoftware()V
    .locals 5

    .prologue
    .line 253
    const-string/jumbo v1, "glowAlpha"

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    const/4 v4, 0x0

    aput v3, v2, v4

    const/4 v3, 0x0

    const/4 v4, 0x1

    aput v3, v2, v4

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 254
    .local v0, "alphaAnimator":Landroid/animation/ObjectAnimator;
    sget-object v1, Lcom/android/systemui/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 255
    const-wide/16 v2, 0x1c2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 256
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 258
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRunningAnimations:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 259
    return-void
.end method

.method private getExtendEnd()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 305
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private getExtendSize()I
    .locals 1

    .prologue
    .line 309
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    goto :goto_0
.end method

.method private getExtendStart()Landroid/graphics/CanvasProperty;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private getMaxGlowAlpha()F
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    if-eqz v0, :cond_0

    const v0, 0x3dcccccd    # 0.1f

    :goto_0
    return v0

    :cond_0
    const v0, 0x3e4ccccd    # 0.2f

    goto :goto_0
.end method

.method private getRipplePaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 84
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 85
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    if-eqz v0, :cond_1

    const/high16 v0, -0x1000000

    :goto_0
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    return-object v0

    .line 85
    :cond_1
    const/4 v0, -0x1

    goto :goto_0
.end method

.method private getRippleSize()I
    .locals 2

    .prologue
    .line 313
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 314
    .local v0, "size":I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mMaxWidth:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1

    .line 313
    .end local v0    # "size":I
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .restart local v0    # "size":I
    goto :goto_0
.end method

.method private isHorizontal()Z
    .locals 2

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setExtendEnd(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 297
    .local p1, "prop":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRightProp:Landroid/graphics/CanvasProperty;

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mBottomProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private setExtendStart(Landroid/graphics/CanvasProperty;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/CanvasProperty",
            "<",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 281
    .local p1, "prop":Landroid/graphics/CanvasProperty;, "Landroid/graphics/CanvasProperty<Ljava/lang/Float;>;"
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->isHorizontal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLeftProp:Landroid/graphics/CanvasProperty;

    .line 286
    :goto_0
    return-void

    .line 284
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mTopProp:Landroid/graphics/CanvasProperty;

    goto :goto_0
.end method

.method private setPressedHardware(Z)V
    .locals 4
    .param p1, "pressed"    # Z

    .prologue
    .line 262
    if-eqz p1, :cond_0

    .line 266
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterHardware()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    :goto_0
    return-void

    .line 267
    :catch_0
    move-exception v0

    .line 268
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "KeyButtonRipple"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "enterHardware exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitHardware()V

    goto :goto_0
.end method

.method private setPressedSoftware(Z)V
    .locals 0
    .param p1, "pressed"    # Z

    .prologue
    .line 233
    if-eqz p1, :cond_0

    .line 234
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->enterSoftware()V

    .line 238
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->exitSoftware()V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 114
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    .line 115
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_0

    .line 116
    check-cast p1, Landroid/view/DisplayListCanvas;

    .end local p1    # "canvas":Landroid/graphics/Canvas;
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawHardware(Landroid/view/DisplayListCanvas;)V

    .line 120
    :goto_0
    return-void

    .line 118
    .restart local p1    # "canvas":Landroid/graphics/Canvas;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->drawSoftware(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    return v0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 140
    const/4 v0, -0x3

    return v0
.end method

.method public hasFocusStateSpecified()Z
    .locals 1

    .prologue
    .line 206
    const/4 v0, 0x1

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 201
    const/4 v0, 0x1

    return v0
.end method

.method public jumpToCurrentState()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->cancelAnimations()V

    .line 197
    return-void
.end method

.method protected onStateChange([I)Z
    .locals 4
    .param p1, "state"    # [I

    .prologue
    .line 178
    const/4 v1, 0x0

    .line 179
    .local v1, "pressed":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_0

    .line 180
    aget v2, p1, v0

    const v3, 0x10100a7

    if-ne v2, v3, :cond_1

    .line 181
    const/4 v1, 0x1

    .line 185
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    if-eq v1, v2, :cond_2

    .line 186
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressed(Z)V

    .line 187
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mPressed:Z

    .line 188
    const/4 v2, 0x1

    return v2

    .line 179
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 190
    :cond_2
    const/4 v2, 0x0

    return v2
.end method

.method public setAlpha(I)V
    .locals 0
    .param p1, "alpha"    # I

    .prologue
    .line 125
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 134
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 130
    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1
    .param p1, "darkIntensity"    # F

    .prologue
    .line 78
    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDark:Z

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setGlowAlpha(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 159
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowAlpha:F

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 161
    return-void
.end method

.method public setGlowScale(F)V
    .locals 0
    .param p1, "x"    # F

    .prologue
    .line 168
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mGlowScale:F

    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->invalidateSelf()V

    .line 170
    return-void
.end method

.method public setPressed(Z)V
    .locals 2
    .param p1, "pressed"    # Z

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDark:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    if-eq v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mRipplePaint:Landroid/graphics/Paint;

    .line 212
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mDark:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mLastDark:Z

    .line 214
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->mSupportHardware:Z

    if-eqz v0, :cond_1

    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedHardware(Z)V

    .line 219
    :goto_0
    return-void

    .line 217
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/policy/KeyButtonRipple;->setPressedSoftware(Z)V

    goto :goto_0
.end method
