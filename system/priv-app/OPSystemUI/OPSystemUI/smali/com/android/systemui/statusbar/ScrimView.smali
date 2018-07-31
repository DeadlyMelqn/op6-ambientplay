.class public Lcom/android/systemui/statusbar/ScrimView;
.super Landroid/view/View;
.source "ScrimView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ScrimView$1;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mChangeRunnable:Ljava/lang/Runnable;

.field private mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

.field private mColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

.field private mDrawAsSrc:Z

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mExcludedRect:Landroid/graphics/Rect;

.field private mHasExcludedArea:Z

.field private mTintColor:I

.field private mViewAlpha:F


# direct methods
.method static synthetic -set0(Lcom/android/systemui/statusbar/ScrimView;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/statusbar/ScrimView;
    .param p1, "-value"    # Landroid/animation/ValueAnimator;

    .prologue
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 82
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/ScrimView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 56
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    .line 61
    new-instance v0, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/-$Lambda$pyaD9kAmwLJhcZMARi3qzcmc3BQ;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 68
    new-instance v0, Lcom/android/systemui/statusbar/ScrimView$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ScrimView$1;-><init>(Lcom/android/systemui/statusbar/ScrimView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mClearAnimatorListener:Landroid/animation/AnimatorListenerAdapter;

    .line 91
    new-instance v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 93
    new-instance v0, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-direct {v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .line 94
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->updateScreenSize()V

    .line 95
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    .line 96
    return-void
.end method

.method private updateColorWithTint(Z)V
    .locals 8
    .param p1, "animated"    # Z

    .prologue
    const/4 v4, 0x0

    .line 222
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v5, v5, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    if-eqz v5, :cond_1

    .line 224
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    .line 225
    .local v0, "drawable":Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    iget v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x437f0000    # 255.0f

    div-float v3, v4, v5

    .line 226
    .local v3, "tintAmount":F
    iget-object v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v4}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getMainColor()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v4, v5, v3}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v1

    .line 228
    .local v1, "mainTinted":I
    iget-object v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v4}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->getSecondaryColor()I

    move-result v4

    iget v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v4, v5, v3}, Landroid/support/v4/graphics/ColorUtils;->blendARGB(IIF)I

    move-result v2

    .line 230
    .local v2, "secondaryTinted":I
    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setColors(IIZ)V

    .line 241
    .end local v0    # "drawable":Lcom/android/internal/colorextraction/drawable/GradientDrawable;
    .end local v1    # "mainTinted":I
    .end local v2    # "secondaryTinted":I
    .end local v3    # "tintAmount":F
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz v4, :cond_0

    .line 242
    iget-object v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 244
    :cond_0
    return-void

    .line 232
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    if-nez v5, :cond_2

    .line 233
    new-instance v5, Landroid/graphics/PorterDuffColorFilter;

    iget v6, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v5, v6, v7}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 237
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v6, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-static {v6}, Landroid/graphics/Color;->alpha(I)I

    move-result v6

    if-nez v6, :cond_3

    :goto_2
    invoke-virtual {v5, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 238
    iget-object v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_0

    .line 235
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    iget v6, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    invoke-virtual {v5, v6}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    goto :goto_1

    .line 237
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mColorFilter:Landroid/graphics/PorterDuffColorFilter;

    goto :goto_2
.end method

.method private updateScreenSize()V
    .locals 6

    .prologue
    .line 312
    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    instance-of v3, v3, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    if-eqz v3, :cond_1

    .line 313
    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mContext:Landroid/content/Context;

    const-class v4, Landroid/view/WindowManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 314
    .local v2, "wm":Landroid/view/WindowManager;
    if-nez v2, :cond_0

    .line 315
    const-string/jumbo v3, "ScrimView"

    const-string/jumbo v4, "Can\'t resize gradient drawable to fit the screen"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    return-void

    .line 318
    :cond_0
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 319
    .local v0, "display":Landroid/view/Display;
    if-eqz v0, :cond_1

    .line 320
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 321
    .local v1, "size":Landroid/graphics/Point;
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 322
    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    check-cast v3, Lcom/android/internal/colorextraction/drawable/GradientDrawable;

    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, v1, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Lcom/android/internal/colorextraction/drawable/GradientDrawable;->setScreenSize(II)V

    .line 325
    .end local v0    # "display":Landroid/view/Display;
    .end local v1    # "size":Landroid/graphics/Point;
    .end local v2    # "wm":Landroid/view/WindowManager;
    :cond_1
    return-void
.end method


# virtual methods
.method public getColors()Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    return-object v0
.end method

.method getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTint()I
    .locals 1

    .prologue
    .line 247
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    return v0
.end method

.method public getViewAlpha()F
    .locals 1

    .prologue
    .line 271
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 164
    invoke-super {p0, p1}, Landroid/view/View;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 166
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 168
    :cond_0
    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_ScrimView_2349(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 63
    const-string/jumbo v0, "ScrimView"

    const-string/jumbo v1, "Trying to animate null drawable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    return-void

    .line 66
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 104
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 105
    .local v0, "config":Lcom/android/systemui/statusbar/policy/ConfigurationController;
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 308
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->updateScreenSize()V

    .line 309
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 112
    const-class v1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 113
    .local v0, "config":Lcom/android/systemui/statusbar/policy/ConfigurationController;
    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->removeCallback(Ljava/lang/Object;)V

    .line 114
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v4, 0x0

    .line 118
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    if-lez v0, :cond_1

    .line 119
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    if-nez v0, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 150
    :cond_1
    :goto_0
    return-void

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_3

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p1, v4, v4, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 125
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 128
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_4

    .line 129
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 131
    iget-object v2, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 130
    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 132
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 135
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v1

    if-ge v0, v1, :cond_5

    .line 136
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v2

    .line 138
    iget-object v3, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 137
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 140
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 142
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v2

    invoke-virtual {p1, v4, v0, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 145
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 178
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 179
    if-eqz p1, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 181
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 183
    :cond_0
    return-void
.end method

.method public setChangeRunnable(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "changeRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 303
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    .line 304
    return-void
.end method

.method public setColors(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Z)V
    .locals 2
    .param p1, "colors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p2, "animated"    # Z

    .prologue
    .line 190
    if-nez p1, :cond_0

    .line 191
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Colors cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 194
    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mColors:Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    invoke-virtual {v0, p1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->set(Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 197
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    .line 198
    return-void
.end method

.method public setDrawAsSrc(Z)V
    .locals 3
    .param p1, "asSrc"    # Z

    .prologue
    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    .line 172
    if-eqz p1, :cond_0

    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    .line 173
    .local v0, "mode":Landroid/graphics/PorterDuff$Mode;
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v2, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setXfermode(Landroid/graphics/Xfermode;)V

    .line 174
    return-void

    .line 172
    .end local v0    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .restart local v0    # "mode":Landroid/graphics/PorterDuff$Mode;
    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 5
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 154
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 155
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getBottom()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 156
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 157
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawAsSrc:Z

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ScrimView;->setDrawAsSrc(Z)V

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ScrimView;->updateScreenSize()V

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 160
    return-void
.end method

.method public setExcludedArea(Landroid/graphics/Rect;)V
    .locals 7
    .param p1, "area"    # Landroid/graphics/Rect;

    .prologue
    const/4 v4, 0x0

    .line 287
    if-nez p1, :cond_0

    .line 288
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 290
    return-void

    .line 293
    :cond_0
    iget v5, p1, Landroid/graphics/Rect;->left:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 294
    .local v1, "left":I
    iget v5, p1, Landroid/graphics/Rect;->top:I

    invoke-static {v5, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 295
    .local v3, "top":I
    iget v5, p1, Landroid/graphics/Rect;->right:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getWidth()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 296
    .local v2, "right":I
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->getHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 297
    .local v0, "bottom":I
    iget-object v5, p0, Lcom/android/systemui/statusbar/ScrimView;->mExcludedRect:Landroid/graphics/Rect;

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 298
    if-ge v1, v2, :cond_1

    if-ge v3, v0, :cond_1

    const/4 v4, 0x1

    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/ScrimView;->mHasExcludedArea:Z

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ScrimView;->invalidate()V

    .line 300
    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ScrimView;->setTint(IZ)V

    .line 211
    return-void
.end method

.method public setTint(IZ)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "animated"    # Z

    .prologue
    .line 214
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    if-ne v0, p1, :cond_0

    .line 215
    return-void

    .line 217
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mTintColor:I

    .line 218
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ScrimView;->updateColorWithTint(Z)V

    .line 219
    return-void
.end method

.method public setViewAlpha(F)V
    .locals 2
    .param p1, "alpha"    # F

    .prologue
    .line 256
    iget v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_1

    .line 257
    iput p1, p0, Lcom/android/systemui/statusbar/ScrimView;->mViewAlpha:F

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mDrawable:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr v1, p1

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/ScrimView;->mChangeRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 268
    :cond_1
    return-void
.end method
