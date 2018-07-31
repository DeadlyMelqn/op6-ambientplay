.class Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AlphaPatternDrawable.java"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private numRectanglesHorizontal:I

.field private numRectanglesVertical:I

.field private paint:Landroid/graphics/Paint;

.field private paintGray:Landroid/graphics/Paint;

.field private paintWhite:Landroid/graphics/Paint;

.field private rectangleSize:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    .line 51
    invoke-direct/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/16 v0, 0xa

    .line 34
    iput v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    .line 36
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paint:Landroid/graphics/Paint;

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paintWhite:Landroid/graphics/Paint;

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paintGray:Landroid/graphics/Paint;

    .line 52
    iput p1, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    .line 53
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paintWhite:Landroid/graphics/Paint;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paintGray:Landroid/graphics/Paint;

    const p1, -0x343435

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private generatePatternBitmap()V
    .locals 10

    .line 96
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_4

    .line 100
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->bitmap:Landroid/graphics/Bitmap;

    .line 101
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 103
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct/range {v1 .. v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    move v4, v2

    move v5, v3

    .line 105
    :goto_0
    iget v6, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->numRectanglesVertical:I

    if-gt v4, v6, :cond_4

    move v6, v2

    move v7, v5

    .line 107
    :goto_1
    iget v8, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->numRectanglesHorizontal:I

    if-gt v6, v8, :cond_3

    .line 108
    iget v8, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    mul-int/2addr v8, v4

    iput v8, v1, Landroid/graphics/Rect;->top:I

    .line 109
    iget v8, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    mul-int/2addr v8, v6

    iput v8, v1, Landroid/graphics/Rect;->left:I

    .line 110
    iget v8, v1, Landroid/graphics/Rect;->top:I

    iget v9, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->bottom:I

    .line 111
    iget v8, v1, Landroid/graphics/Rect;->left:I

    iget v9, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    add-int/2addr v8, v9

    iput v8, v1, Landroid/graphics/Rect;->right:I

    if-eqz v7, :cond_1

    .line 112
    iget-object v8, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paintWhite:Landroid/graphics/Paint;

    goto :goto_2

    :cond_1
    iget-object v8, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paintGray:Landroid/graphics/Paint;

    :goto_2
    invoke-virtual {v0, v1, v8}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    if-nez v7, :cond_2

    move v7, v3

    goto :goto_3

    :cond_2
    move v7, v2

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    xor-int/lit8 v5, v5, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_4
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 59
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 60
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->bitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public getOpacity()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 3

    .line 81
    invoke-super/range {p0 .. p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    .line 82
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->height()I

    move-result v0

    .line 83
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    .line 84
    iget v1, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    div-int/2addr p1, v1

    int-to-double v1, p1

    invoke-static/range {v1 .. v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p1, v1

    iput p1, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->numRectanglesHorizontal:I

    .line 85
    iget p1, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->rectangleSize:I

    div-int/2addr v0, p1

    int-to-double v0, v0

    invoke-static/range {v0 .. v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    iput p1, p0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->numRectanglesVertical:I

    .line 86
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->generatePatternBitmap()V

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 71
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Alpha is not supported by this drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 76
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "ColorFilter is not supported by this drawable."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
