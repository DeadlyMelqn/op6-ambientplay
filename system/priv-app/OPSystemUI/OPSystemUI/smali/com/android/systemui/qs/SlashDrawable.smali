.class public Lcom/android/systemui/qs/SlashDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SlashDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/qs/SlashDrawable$1;
    }
.end annotation


# instance fields
.field private mAnimationEnabled:Z

.field private mCurrentSlashLength:F

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPath:Landroid/graphics/Path;

.field private mRotation:F

.field private final mSlashLengthProp:Landroid/util/FloatProperty;

.field private final mSlashRect:Landroid/graphics/RectF;

.field private mSlashed:Z

.field private mTintList:Landroid/content/res/ColorStateList;

.field private mTintMode:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/qs/SlashDrawable;)F
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/qs/SlashDrawable;

    .prologue
    iget v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    return v0
.end method

.method static synthetic -set0(Lcom/android/systemui/qs/SlashDrawable;F)F
    .locals 0
    .param p0, "-this"    # Lcom/android/systemui/qs/SlashDrawable;
    .param p1, "-value"    # F

    .prologue
    iput p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    return p1
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 70
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 45
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    .line 63
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    .line 68
    iput-boolean v2, p0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    .line 120
    new-instance v0, Lcom/android/systemui/qs/SlashDrawable$1;

    const-string/jumbo v1, "slashLength"

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/qs/SlashDrawable$1;-><init>(Lcom/android/systemui/qs/SlashDrawable;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashLengthProp:Landroid/util/FloatProperty;

    .line 71
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 74
    invoke-static {}, Lcom/android/systemui/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 75
    const/4 v0, -0x1

    .line 73
    :goto_0
    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    .line 78
    return-void

    .line 76
    :cond_0
    sget v0, Lcom/android/systemui/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/android/systemui/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    goto :goto_0
.end method

.method private scale(FI)F
    .locals 1
    .param p1, "frac"    # F
    .param p2, "width"    # I

    .prologue
    .line 191
    int-to-float v0, p2

    mul-float/2addr v0, p1

    return v0
.end method

.method private updateRect(FFFF)V
    .locals 1
    .param p1, "left"    # F
    .param p2, "top"    # F
    .param p3, "right"    # F
    .param p4, "bottom"    # F

    .prologue
    .line 195
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p1, v0, Landroid/graphics/RectF;->left:F

    .line 196
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p2, v0, Landroid/graphics/RectF;->top:F

    .line 197
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 198
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    iput p4, v0, Landroid/graphics/RectF;->bottom:F

    .line 199
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 12
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const v11, -0x424a2cd0

    const/high16 v10, -0x3dcc0000    # -45.0f

    const/high16 v9, 0x3f800000    # 1.0f

    .line 153
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 154
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 155
    .local v1, "m":Landroid/graphics/Matrix;
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 156
    .local v4, "width":I
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 157
    .local v0, "height":I
    invoke-direct {p0, v9, v4}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v2

    .line 158
    .local v2, "radiusX":F
    invoke-direct {p0, v9, v0}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v3

    .line 160
    .local v3, "radiusY":F
    const v5, 0x3ecf96ed

    invoke-direct {p0, v5, v4}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v5

    .line 161
    invoke-direct {p0, v11, v0}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v6

    .line 162
    const v7, 0x3ef6cf78

    invoke-direct {p0, v7, v4}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v7

    .line 163
    iget v8, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    add-float/2addr v8, v11

    invoke-direct {p0, v8, v0}, Lcom/android/systemui/qs/SlashDrawable;->scale(FI)F

    move-result v8

    .line 159
    invoke-direct {p0, v5, v6, v7, v8}, Lcom/android/systemui/qs/SlashDrawable;->updateRect(FFFF)V

    .line 166
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 168
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v2, v3, v7}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 170
    iget v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    add-float/2addr v5, v10

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 171
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 172
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 175
    iget v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    neg-float v5, v5

    sub-float/2addr v5, v10

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 176
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 179
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v1, v5, v6}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 180
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 181
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashRect:Landroid/graphics/RectF;

    int-to-float v7, v4

    mul-float/2addr v7, v9

    int-to-float v8, v0

    mul-float/2addr v8, v9

    sget-object v9, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Path$Direction;)V

    .line 182
    iget v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    add-float/2addr v5, v10

    div-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    div-int/lit8 v7, v0, 0x2

    int-to-float v7, v7

    invoke-virtual {v1, v5, v6, v7}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 183
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {v5, v1}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    .line 184
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->clipOutPath(Landroid/graphics/Path;)Z

    .line 186
    iget-object v5, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 187
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 188
    return-void
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 245
    const/16 v0, 0xff

    return v0
.end method

.method synthetic lambda$-com_android_systemui_qs_SlashDrawable_4973(Landroid/animation/ValueAnimator;)V
    .locals 0
    .param p1, "valueAnimator"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    return-void
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 92
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 95
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 97
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 234
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 235
    return-void
.end method

.method public setAnimationEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    .line 116
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 239
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 240
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 241
    return-void
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 101
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 105
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    .line 106
    return-void
.end method

.method protected setDrawableTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 222
    :cond_0
    return-void
.end method

.method public setRotation(F)V
    .locals 1
    .param p1, "rotation"    # F

    .prologue
    .line 109
    iget v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 110
    :cond_0
    iput p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mRotation:F

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    .line 112
    return-void
.end method

.method public setSlashed(Z)V
    .locals 6
    .param p1, "slashed"    # Z

    .prologue
    .line 133
    iget-boolean v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    if-ne v3, p1, :cond_0

    return-void

    .line 135
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    .line 137
    iget-boolean v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    if-eqz v3, :cond_1

    const v1, 0x3f955555

    .line 138
    .local v1, "end":F
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashed:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    .line 140
    .local v2, "start":F
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mAnimationEnabled:Z

    if-eqz v3, :cond_3

    .line 141
    iget-object v3, p0, Lcom/android/systemui/qs/SlashDrawable;->mSlashLengthProp:Landroid/util/FloatProperty;

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    aput v2, v4, v5

    const/4 v5, 0x1

    aput v1, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 142
    .local v0, "anim":Landroid/animation/ObjectAnimator;
    new-instance v3, Lcom/android/systemui/qs/-$Lambda$r1XWAFu85EnFy0D38NZuBYFntYU;

    invoke-direct {v3, p0}, Lcom/android/systemui/qs/-$Lambda$r1XWAFu85EnFy0D38NZuBYFntYU;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v3}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 143
    const-wide/16 v4, 0x15e

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 144
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 149
    .end local v0    # "anim":Landroid/animation/ObjectAnimator;
    :goto_2
    return-void

    .line 137
    .end local v1    # "end":F
    .end local v2    # "start":F
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "end":F
    goto :goto_0

    .line 138
    :cond_2
    const v2, 0x3f955555

    .restart local v2    # "start":F
    goto :goto_1

    .line 146
    :cond_3
    iput v1, p0, Lcom/android/systemui/qs/SlashDrawable;->mCurrentSlashLength:F

    .line 147
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    goto :goto_2
.end method

.method public setTint(I)V
    .locals 1
    .param p1, "tintColor"    # I

    .prologue
    .line 203
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 204
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    return-void
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintList:Landroid/content/res/ColorStateList;

    .line 211
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SlashDrawable;->setDrawableTintList(Landroid/content/res/ColorStateList;)V

    .line 213
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/qs/SlashDrawable;->invalidateSelf()V

    .line 215
    return-void
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .prologue
    .line 226
    iput-object p1, p0, Lcom/android/systemui/qs/SlashDrawable;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 227
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/qs/SlashDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 229
    return-void
.end method
