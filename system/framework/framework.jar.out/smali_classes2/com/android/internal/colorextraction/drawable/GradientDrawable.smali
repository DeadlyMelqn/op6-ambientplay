.class public Lcom/android/internal/colorextraction/drawable/GradientDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GradientDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;
    }
.end annotation


# static fields
.field private static final CENTRALIZED_CIRCLE_1:F = -2.0f

.field private static final COLOR_ANIMATION_DURATION:J = 0x7d0L

.field private static final GRADIENT_RADIUS:I = 0x1e0

.field private static final TAG:Ljava/lang/String; = "GradientDrawable"


# instance fields
.field private mAlpha:I

.field private mColorAnimation:Landroid/animation/ValueAnimator;

.field private mDensity:F

.field private mMainColor:I

.field private final mPaint:Landroid/graphics/Paint;

.field private mSecondaryColor:I

.field private final mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

.field private final mWindowBounds:Landroid/graphics/Rect;


# direct methods
.method static synthetic -get0(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "-this"    # Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .prologue
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/internal/colorextraction/drawable/GradientDrawable;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 50
    const/16 v0, 0xff

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    .line 63
    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    const/high16 v1, 0x43f00000    # 480.0f

    const/high16 v2, 0x3f000000    # 0.5f

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40000000    # -2.0f

    invoke-direct {v0, v2, v3, v1, v4}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 66
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    .line 67
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 68
    return-void
.end method

.method private buildPaints()V
    .locals 10

    .prologue
    .line 161
    iget-object v7, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 162
    .local v7, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    if-nez v4, :cond_0

    .line 163
    return-void

    .line 166
    :cond_0
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v9, v4

    .line 167
    .local v9, "w":F
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v8, v4

    .line 169
    .local v8, "h":F
    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float v1, v4, v9

    .line 170
    .local v1, "x":F
    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float v2, v4, v8

    .line 172
    .local v2, "y":F
    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v4, v4, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->radius:F

    iget v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mDensity:F

    mul-float v3, v4, v5

    .line 177
    .local v3, "radius":F
    new-instance v0, Landroid/graphics/RadialGradient;

    .line 178
    iget v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    iget v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    sget-object v6, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    .line 177
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .line 179
    .local v0, "radialGradient":Landroid/graphics/RadialGradient;
    iget-object v4, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 180
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 184
    iget-object v6, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    .line 185
    .local v6, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-nez v0, :cond_0

    .line 186
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to call setScreenSize before drawing."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v9, v0

    .line 191
    .local v9, "w":F
    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v7, v0

    .line 193
    .local v7, "h":F
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v0, v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->x:F

    mul-float v10, v0, v9

    .line 194
    .local v10, "x":F
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSplat:Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;

    iget v0, v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$Splat;->y:F

    mul-float v11, v0, v7

    .line 196
    .local v11, "y":F
    invoke-static {v9, v7}, Ljava/lang/Math;->max(FF)F

    move-result v8

    .line 197
    .local v8, "radius":F
    sub-float v1, v10, v8

    sub-float v2, v11, v8

    add-float v3, v10, v8

    add-float v4, v11, v8

    iget-object v5, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 198
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 130
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    return v0
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v0

    return-object v0
.end method

.method public getMainColor()I
    .locals 1

    .prologue
    .line 202
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, -0x3

    return v0
.end method

.method public getSecondaryColor()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    return v0
.end method

.method synthetic lambda$-com_android_internal_colorextraction_drawable_GradientDrawable_3291(IIIILandroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "mainFrom"    # I
    .param p2, "mainColor"    # I
    .param p3, "secFrom"    # I
    .param p4, "secondaryColor"    # I
    .param p5, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 94
    invoke-virtual {p5}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 95
    .local v0, "ratio":F
    invoke-static {p1, p2, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 96
    invoke-static {p3, p4, v0}, Lcom/android/internal/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    iput v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 97
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 98
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 2
    .param p1, "alpha"    # I

    .prologue
    .line 121
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    if-eq p1, v0, :cond_0

    .line 122
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    .line 123
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 124
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    .line 126
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 142
    return-void
.end method

.method public setColors(IIZ)V
    .locals 7
    .param p1, "mainColor"    # I
    .param p2, "secondaryColor"    # I
    .param p3, "animated"    # Z

    .prologue
    .line 79
    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    if-ne p2, v0, :cond_0

    .line 80
    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 87
    :cond_1
    if-eqz p3, :cond_2

    .line 88
    iget v1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 89
    .local v1, "mainFrom":I
    iget v3, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 91
    .local v3, "secFrom":I
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput v2, v0, v4

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v4, 0x1

    aput v2, v0, v4

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v6

    .line 92
    .local v6, "anim":Landroid/animation/ValueAnimator;
    const-wide/16 v4, 0x7d0

    invoke-virtual {v6, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 93
    new-instance v0, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;

    move v2, p1

    move v4, p2

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/colorextraction/drawable/-$Lambda$D0plBYSeplKHUImgLxjOl14-7Rw;-><init>(IIIILjava/lang/Object;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 100
    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable$1;-><init>(Lcom/android/internal/colorextraction/drawable/GradientDrawable;)V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 108
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v6, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    .line 110
    iput-object v6, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mColorAnimation:Landroid/animation/ValueAnimator;

    .line 117
    .end local v1    # "mainFrom":I
    .end local v3    # "secFrom":I
    .end local v6    # "anim":Landroid/animation/ValueAnimator;
    :goto_0
    return-void

    .line 112
    :cond_2
    iput p1, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mMainColor:I

    .line 113
    iput p2, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mSecondaryColor:I

    .line 114
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 115
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    goto :goto_0
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 3
    .param p1, "colors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .prologue
    .line 71
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    .line 72
    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2
    .param p1, "colors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p2, "animated"    # Z

    .prologue
    .line 75
    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v1

    invoke-virtual {p0, v0, v1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    .line 76
    return-void
.end method

.method public setScreenSize(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mWindowBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    .line 156
    invoke-virtual {p0, v1, v1, p1, p2}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setBounds(IIII)V

    .line 157
    invoke-direct {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->buildPaints()V

    .line 158
    return-void
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)V
    .locals 1
    .param p1, "mode"    # Landroid/graphics/Xfermode;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 136
    invoke-virtual {p0}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->invalidateSelf()V

    .line 137
    return-void
.end method
