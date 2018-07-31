.class public Landroid/support/v17/leanback/widget/PagingIndicator$Dot;
.super Ljava/lang/Object;
.source "PagingIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PagingIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Dot"
.end annotation


# instance fields
.field mAlpha:F

.field mArrowImageRadius:F

.field mCenterX:F

.field mDiameter:F

.field mDirection:F

.field mFgColor:I
    .annotation build Landroid/support/annotation/ColorInt;
    .end annotation
.end field

.field mLayoutDirection:F

.field mRadius:F

.field mTranslationX:F

.field final synthetic this$0:Landroid/support/v17/leanback/widget/PagingIndicator;


# virtual methods
.method public adjustAlpha()V
    .locals 6

    .prologue
    .line 498
    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 499
    .local v0, "alpha":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v4}, Landroid/graphics/Color;->red(I)I

    move-result v3

    .line 500
    .local v3, "red":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v4}, Landroid/graphics/Color;->green(I)I

    move-result v2

    .line 501
    .local v2, "green":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotFgSelectColor:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    .line 502
    .local v1, "blue":I
    invoke-static {v0, v3, v2, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v4

    iput v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    .line 503
    return-void
.end method

.method deselect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 488
    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 489
    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 490
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotDiameter:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 491
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotRadius:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 492
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 493
    iput v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 494
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 495
    return-void
.end method

.method draw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 536
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    add-float v0, v1, v2

    .line 537
    .local v0, "centerX":F
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 538
    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 539
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mFgColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 540
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v3, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/PagingIndicator;->mFgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 541
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrow:Landroid/graphics/Bitmap;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRect:Landroid/graphics/Rect;

    new-instance v3, Landroid/graphics/Rect;

    iget v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    sub-float v4, v0, v4

    float-to-int v4, v4

    .line 542
    iget-object v5, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v5, v5, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    sub-float/2addr v5, v6

    float-to-int v5, v5

    .line 543
    iget v6, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    add-float/2addr v6, v0

    float-to-int v6, v6

    .line 544
    iget-object v7, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v7, v7, Landroid/support/v17/leanback/widget/PagingIndicator;->mDotCenterY:I

    int-to-float v7, v7

    iget v8, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 541
    invoke-direct {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 544
    iget-object v4, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowPaint:Landroid/graphics/Paint;

    .line 541
    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 546
    :cond_0
    return-void
.end method

.method public getAlpha()F
    .locals 1

    .prologue
    .line 506
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    return v0
.end method

.method public getDiameter()F
    .locals 1

    .prologue
    .line 525
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    return v0
.end method

.method public getTranslationX()F
    .locals 1

    .prologue
    .line 516
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    return v0
.end method

.method onRtlPropertiesChanged()V
    .locals 1

    .prologue
    .line 549
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget-boolean v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mIsLtr:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    .line 550
    return-void

    .line 549
    :cond_0
    const/high16 v0, -0x40800000    # -1.0f

    goto :goto_0
.end method

.method select()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 478
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 479
    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mCenterX:F

    .line 480
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowDiameter:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 481
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v0, v0, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowRadius:I

    int-to-float v0, v0

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 482
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 483
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 484
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 485
    return-void
.end method

.method public setAlpha(F)V
    .locals 1
    .param p1, "alpha"    # F

    .prologue
    .line 510
    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mAlpha:F

    .line 511
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->adjustAlpha()V

    .line 512
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 513
    return-void
.end method

.method public setDiameter(F)V
    .locals 2
    .param p1, "diameter"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    .line 529
    iput p1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDiameter:F

    .line 530
    div-float v0, p1, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mRadius:F

    .line 531
    div-float v0, p1, v1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    iget v1, v1, Landroid/support/v17/leanback/widget/PagingIndicator;->mArrowToBgRatio:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mArrowImageRadius:F

    .line 532
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 533
    return-void
.end method

.method public setTranslationX(F)V
    .locals 2
    .param p1, "translationX"    # F

    .prologue
    .line 520
    iget v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mDirection:F

    mul-float/2addr v0, p1

    iget v1, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mLayoutDirection:F

    mul-float/2addr v0, v1

    iput v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->mTranslationX:F

    .line 521
    iget-object v0, p0, Landroid/support/v17/leanback/widget/PagingIndicator$Dot;->this$0:Landroid/support/v17/leanback/widget/PagingIndicator;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PagingIndicator;->invalidate()V

    .line 522
    return-void
.end method
