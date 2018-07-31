.class Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "ColorPickerDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/helpers/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TextSeekBarDrawable"
.end annotation


# static fields
.field private static final DELAY:J = 0x32L

.field private static final TAG:Ljava/lang/String; = "TextSeekBarDrawable"


# instance fields
.field private mActive:Z

.field private mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

.field private mDelta:I

.field private mOutlinePaint:Landroid/graphics/Paint;

.field private mPaint:Landroid/graphics/Paint;

.field private mProgress:Landroid/graphics/drawable/Drawable;

.field private mText:Ljava/lang/String;

.field private mTextWidth:F

.field private mTextXScale:F


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Ljava/lang/String;Z)V
    .locals 2

    .line 203
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 204
    iput-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    const p2, 0x108006c

    .line 205
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    .line 206
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    .line 207
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 208
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41c00000    # 24.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, -0x1000000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 210
    new-instance p1, Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    .line 211
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 212
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const/high16 p2, 0x41200000    # 10.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 213
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    const p2, -0x44003d00

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 214
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/BlurMaskFilter;

    sget-object v0, Landroid/graphics/BlurMaskFilter$Blur;->NORMAL:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p2, v1, v0}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 215
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    iget-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    iput p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextWidth:F

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 216
    :goto_0
    iput v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    .line 217
    new-instance p1, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-direct/range {p1 .. p1}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;-><init>()V

    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 256
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 257
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->hasStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 260
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->getCurrent()F

    move-result v0

    iput v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    .line 264
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 265
    iget v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextWidth:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40c00000    # 6.0f

    sub-float/2addr v2, v3

    sub-float/2addr v2, v3

    mul-float/2addr v1, v2

    add-float/2addr v1, v3

    .line 266
    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v2 .. v2}, Landroid/graphics/Paint;->getTextSize()F

    move-result v2

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v0, v2

    .line 267
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mActive:Z

    const/16 v4, 0x7f

    const/16 v5, 0xff

    if-eqz v3, :cond_1

    move v3, v5

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 268
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    iget-boolean v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mActive:Z

    if-eqz v3, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 269
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mOutlinePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 270
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mText:Ljava/lang/String;

    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v0, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, -0x3

    return p0
.end method

.method public isStateful()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    .line 222
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onLevelChange(I)Z
    .locals 5

    const-wide/16 v0, 0x32

    const/16 v2, 0xfa0

    if-ge p1, v2, :cond_0

    .line 240
    iget v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    .line 242
    iput v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    .line 243
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    iget v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3, v4}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->startScrolling(FF)V

    .line 244
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, p0, v2, v3}, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x1770

    if-le p1, v2, :cond_1

    .line 245
    iget v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    if-ltz v2, :cond_1

    const/4 v2, -0x1

    .line 247
    iput v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mDelta:I

    .line 248
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    iget v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->startScrolling(FF)V

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, p0, v2, v3}, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 251
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mProgress:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    move-result p0

    return p0
.end method

.method protected onStateChange([I)Z
    .locals 2

    .line 227
    sget-object v0, Lcom/ice/box/helpers/ColorPickerDialog;->STATE_FOCUSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    sget-object v1, Lcom/ice/box/helpers/ColorPickerDialog;->STATE_PRESSED:[I

    invoke-static {v1, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    or-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mActive:Z

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->invalidateSelf()V

    const/4 p0, 0x0

    return p0
.end method

.method public run()V
    .locals 4

    .line 288
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    .line 290
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->getCurrent()F

    move-result v0

    iput v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mTextXScale:F

    .line 291
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->mAnimation:Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;

    invoke-virtual/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog$ScrollAnimation;->hasEnded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 294
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$TextSeekBarDrawable;->invalidateSelf()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method
