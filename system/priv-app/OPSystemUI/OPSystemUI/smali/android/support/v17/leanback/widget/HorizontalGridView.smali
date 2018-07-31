.class public Landroid/support/v17/leanback/widget/HorizontalGridView;
.super Landroid/support/v17/leanback/widget/BaseGridView;
.source "HorizontalGridView.java"


# instance fields
.field private mFadingHighEdge:Z

.field private mFadingLowEdge:Z

.field private mHighFadeShader:Landroid/graphics/LinearGradient;

.field private mHighFadeShaderLength:I

.field private mHighFadeShaderOffset:I

.field private mLowFadeShader:Landroid/graphics/LinearGradient;

.field private mLowFadeShaderLength:I

.field private mLowFadeShaderOffset:I

.field private mTempBitmapHigh:Landroid/graphics/Bitmap;

.field private mTempBitmapLow:Landroid/graphics/Bitmap;

.field private mTempPaint:Landroid/graphics/Paint;

.field private mTempRect:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v17/leanback/widget/BaseGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 64
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    .line 76
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setOrientation(I)V

    .line 77
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 78
    return-void
.end method

.method private getTempBitmapHigh()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 291
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-eq v0, v1, :cond_2

    .line 301
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    .line 302
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 301
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 305
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    return-object v0

    .line 293
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private getTempBitmapLow()Landroid/graphics/Bitmap;
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-eq v0, v1, :cond_2

    .line 284
    :cond_0
    :goto_0
    iget v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    .line 285
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 284
    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 287
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    return-object v0

    .line 283
    :cond_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0
.end method

.method private needsFadingHighEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 266
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-nez v3, :cond_0

    .line 267
    return v6

    .line 269
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    .line 270
    .local v0, "c":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 271
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 272
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalRight(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v4

    .line 273
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v5

    .line 272
    sub-int/2addr v4, v5

    .line 273
    iget v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 272
    add-int/2addr v4, v5

    if-le v3, v4, :cond_1

    .line 274
    const/4 v3, 0x1

    return v3

    .line 270
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 277
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return v6
.end method

.method private needsFadingLowEdge()Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 252
    iget-boolean v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-nez v3, :cond_0

    .line 253
    return v6

    .line 255
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildCount()I

    move-result v0

    .line 256
    .local v0, "c":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 257
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 258
    .local v2, "view":Landroid/view/View;
    iget-object v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v3, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getOpticalLeft(Landroid/view/View;)I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v4, v5

    if-ge v3, v4, :cond_1

    .line 259
    const/4 v3, 0x1

    return v3

    .line 256
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 262
    .end local v2    # "view":Landroid/view/View;
    :cond_2
    return v6
.end method

.method private updateLayerType()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 387
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v0, :cond_1

    .line 388
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 389
    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    .line 394
    :goto_0
    return-void

    .line 391
    :cond_1
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 392
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setWillNotDraw(Z)V

    goto :goto_0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 310
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingLowEdge()Z

    move-result v9

    .line 311
    .local v9, "needsFadingLow":Z
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->needsFadingHighEdge()Z

    move-result v8

    .line 312
    .local v8, "needsFadingHigh":Z
    if-nez v9, :cond_0

    .line 313
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapLow:Landroid/graphics/Bitmap;

    .line 315
    :cond_0
    if-nez v8, :cond_1

    .line 316
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempBitmapHigh:Landroid/graphics/Bitmap;

    .line 318
    :cond_1
    if-nez v9, :cond_2

    xor-int/lit8 v1, v8, 0x1

    if-eqz v1, :cond_2

    .line 319
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 320
    return-void

    .line 323
    :cond_2
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    sub-int v7, v1, v2

    .line 324
    .local v7, "lowEdge":I
    :goto_0
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v1, :cond_6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    .line 325
    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderOffset:I

    .line 324
    add-int/2addr v1, v2

    .line 325
    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    .line 324
    add-int v6, v1, v2

    .line 328
    .local v6, "highEdge":I
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    .line 329
    .local v10, "save":I
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingLowEdge:Z

    if-eqz v1, :cond_7

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    :goto_2
    add-int v2, v7, v1

    .line 330
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mFadingHighEdge:Z

    if-eqz v1, :cond_8

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    :goto_3
    sub-int v1, v6, v1

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v3

    .line 329
    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v1, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 331
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 332
    invoke-virtual {p1, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 334
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0}, Landroid/graphics/Canvas;-><init>()V

    .line 335
    .local v0, "tmpCanvas":Landroid/graphics/Canvas;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->top:I

    .line 336
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    .line 337
    if-eqz v9, :cond_3

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    if-lez v1, :cond_3

    .line 338
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapLow()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 339
    .local v11, "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 340
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 342
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 343
    .local v12, "tmpSave":I
    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 344
    neg-int v1, v7

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 345
    invoke-super {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 346
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 348
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 349
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 351
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 352
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLowFadeShaderLength:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 353
    int-to-float v1, v7

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 354
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 355
    neg-int v1, v7

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 357
    .end local v11    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "tmpSave":I
    :cond_3
    if-eqz v8, :cond_4

    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    if-lez v1, :cond_4

    .line 358
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getTempBitmapHigh()Landroid/graphics/Bitmap;

    move-result-object v11

    .line 359
    .restart local v11    # "tempBitmap":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    invoke-virtual {v11, v1}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 360
    invoke-virtual {v0, v11}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 362
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    move-result v12

    .line 363
    .restart local v12    # "tmpSave":I
    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v1, v2}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 364
    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v1, v6, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 365
    invoke-super {p0, v0}, Landroid/support/v17/leanback/widget/BaseGridView;->draw(Landroid/graphics/Canvas;)V

    .line 366
    invoke-virtual {v0, v12}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 368
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShader:Landroid/graphics/LinearGradient;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 369
    const/4 v1, 0x0

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 371
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    .line 372
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    .line 373
    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v1, v6, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 374
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempRect:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v11, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 375
    iget v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mHighFadeShaderLength:I

    sub-int v1, v6, v1

    neg-int v1, v1

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 377
    .end local v11    # "tempBitmap":Landroid/graphics/Bitmap;
    .end local v12    # "tmpSave":I
    :cond_4
    return-void

    .line 323
    .end local v0    # "tmpCanvas":Landroid/graphics/Canvas;
    .end local v6    # "highEdge":I
    .end local v7    # "lowEdge":I
    .end local v10    # "save":I
    :cond_5
    const/4 v7, 0x0

    .restart local v7    # "lowEdge":I
    goto/16 :goto_0

    .line 325
    :cond_6
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->getWidth()I

    move-result v6

    .restart local v6    # "highEdge":I
    goto/16 :goto_1

    .line 329
    .restart local v10    # "save":I
    :cond_7
    const/4 v1, 0x0

    goto/16 :goto_2

    .line 330
    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_3
.end method

.method protected initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/HorizontalGridView;->initBaseGridViewAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget-object v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 83
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(Landroid/content/res/TypedArray;)V

    .line 84
    sget v1, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_numberOfRows:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setNumRows(I)V

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 86
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->updateLayerType()V

    .line 87
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    .line 88
    iget-object v1, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mTempPaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v3, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v3}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 89
    return-void
.end method

.method public setNumRows(I)V
    .locals 1
    .param p1, "numRows"    # I

    .prologue
    .line 103
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setNumRows(I)V

    .line 104
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    .line 105
    return-void
.end method

.method public setRowHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 115
    iget-object v0, p0, Landroid/support/v17/leanback/widget/HorizontalGridView;->mLayoutManager:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v0, p1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->setRowHeight(I)V

    .line 116
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->requestLayout()V

    .line 117
    return-void
.end method

.method setRowHeight(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "array"    # Landroid/content/res/TypedArray;

    .prologue
    .line 92
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v1

    .line 93
    .local v1, "typedValue":Landroid/util/TypedValue;
    if-eqz v1, :cond_0

    .line 94
    sget v2, Landroid/support/v17/leanback/R$styleable;->lbHorizontalGridView_rowHeight:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    .line 95
    .local v0, "size":I
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/HorizontalGridView;->setRowHeight(I)V

    .line 97
    .end local v0    # "size":I
    :cond_0
    return-void
.end method
