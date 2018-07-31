.class public Lcom/ice/box/customcolorpicker/ColorPanelView;
.super Landroid/view/View;
.source "ColorPanelView.java"


# static fields
.field private static final DEFAULT_BORDER_COLOR:I = -0x919192


# instance fields
.field private alphaPaint:Landroid/graphics/Paint;

.field private alphaPattern:Landroid/graphics/drawable/Drawable;

.field private borderColor:I

.field private borderPaint:Landroid/graphics/Paint;

.field private borderWidthPx:I

.field private centerRect:Landroid/graphics/RectF;

.field private color:I

.field private colorPaint:Landroid/graphics/Paint;

.field private colorRect:Landroid/graphics/Rect;

.field private drawingRect:Landroid/graphics/Rect;

.field private originalPaint:Landroid/graphics/Paint;

.field private shape:I

.field private showOldColor:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 72
    invoke-direct {p0, p1, v0}, Lcom/ice/box/customcolorpicker/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 76
    invoke-direct {p0, p1, p2, v0}, Lcom/ice/box/customcolorpicker/ColorPanelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    new-instance p3, Landroid/graphics/RectF;

    invoke-direct/range {p3 .. p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->centerRect:Landroid/graphics/RectF;

    const p3, -0x919192

    .line 67
    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    const/high16 p3, -0x1000000

    .line 68
    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    .line 81
    invoke-direct/range {p0 .. p2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 103
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ice/box/R$styleable;->ColorPanelView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x1

    .line 104
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 105
    invoke-virtual {p2, v2, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->showOldColor:Z

    .line 106
    iget-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->showOldColor:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Color preview is only available in circle mode"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const v2, -0x919192

    .line 109
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    .line 110
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 111
    iget p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    if-ne p2, v2, :cond_2

    .line 115
    new-instance p2, Landroid/util/TypedValue;

    invoke-direct/range {p2 .. p2}, Landroid/util/TypedValue;-><init>()V

    .line 116
    iget p2, p2, Landroid/util/TypedValue;->data:I

    new-array v2, v0, [I

    const v3, 0x1010038

    aput v3, v2, v1

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 118
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_2
    const/high16 p2, 0x3f800000    # 1.0f

    .line 121
    invoke-static {p1, p2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    .line 122
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct/range {p2 .. p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderPaint:Landroid/graphics/Paint;

    .line 123
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 124
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct/range {p2 .. p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorPaint:Landroid/graphics/Paint;

    .line 125
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 126
    iget-boolean p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->showOldColor:Z

    if-eqz p2, :cond_3

    .line 127
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct/range {p2 .. p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->originalPaint:Landroid/graphics/Paint;

    .line 129
    :cond_3
    iget p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    if-ne p2, v0, :cond_4

    .line 130
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f080073

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 131
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct/range {p2 .. p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPaint:Landroid/graphics/Paint;

    .line 132
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 133
    new-instance p2, Landroid/graphics/BitmapShader;

    sget-object v0, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    sget-object v1, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {p2, p1, v0, v1}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    .line 134
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_4
    return-void
.end method

.method private setUpCenterRect()V
    .locals 5

    .line 201
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    .line 202
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    add-int/2addr v1, v2

    .line 203
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    add-int/2addr v2, v3

    .line 204
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    sub-int/2addr v3, v4

    .line 205
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    sub-int/2addr v0, v4

    .line 206
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v1, v1

    int-to-float v2, v2

    int-to-float v0, v0

    int-to-float v3, v3

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->centerRect:Landroid/graphics/RectF;

    return-void
.end method

.method private setUpColorRect()V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    .line 211
    iget v1, v0, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    add-int/2addr v1, v2

    .line 212
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    add-int/2addr v2, v3

    .line 213
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    sub-int/2addr v3, v4

    .line 214
    iget v0, v0, Landroid/graphics/Rect;->right:I

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    sub-int/2addr v0, v4

    .line 215
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorRect:Landroid/graphics/Rect;

    .line 216
    new-instance v0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPattern:Landroid/graphics/drawable/Drawable;

    .line 217
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPattern:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static/range {v2 .. v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static/range {v3 .. v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    .line 218
    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 217
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method


# virtual methods
.method public getBorderColor()I
    .locals 0

    .line 255
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    return p0
.end method

.method public getColor()I
    .locals 0

    .line 227
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    return p0
.end method

.method public getShape()I
    .locals 0
    .annotation build Lcom/ice/box/customcolorpicker/ColorShape;
    .end annotation

    .line 275
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 140
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 141
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 142
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    if-nez v0, :cond_2

    .line 143
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPattern:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPattern:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_0

    .line 150
    :cond_2
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 151
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 152
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    if-lez v1, :cond_3

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    int-to-float v3, v0

    iget-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 155
    :cond_3
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    const/16 v2, 0xff

    if-ge v1, v2, :cond_4

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    sub-int v3, v0, v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 159
    :cond_4
    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->showOldColor:Z

    if-eqz v1, :cond_5

    .line 160
    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->centerRect:Landroid/graphics/RectF;

    const/high16 v4, 0x42b40000    # 90.0f

    const/high16 v5, 0x43340000    # 180.0f

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->originalPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 161
    iget-object v9, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->centerRect:Landroid/graphics/RectF;

    const/high16 v10, 0x43870000    # 270.0f

    const/high16 v11, 0x43340000    # 180.0f

    const/4 v12, 0x1

    iget-object v13, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorPaint:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0

    .line 163
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderWidthPx:I

    sub-int/2addr v0, v3

    int-to-float v0, v0

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->colorPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_6
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 171
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    if-nez v0, :cond_0

    .line 172
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 173
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    .line 174
    invoke-virtual {p0, p1, p2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 175
    :cond_0
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 176
    invoke-super {p0, p1, p1}, Landroid/view/View;->onMeasure(II)V

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredWidth()I

    move-result p1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setMeasuredDimension(II)V

    goto :goto_0

    .line 179
    :cond_1
    invoke-super/range {p0 .. p2}, Landroid/view/View;->onMeasure(II)V

    :goto_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 94
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 95
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "color"

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    const-string v0, "instanceState"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 99
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct/range {v0 .. v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    .line 87
    invoke-super/range {p0 .. p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "color"

    .line 88
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 185
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 186
    iget p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->showOldColor:Z

    if-eqz p3, :cond_2

    .line 187
    :cond_0
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct/range {p3 .. p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    .line 188
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getPaddingLeft()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 189
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 190
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getPaddingTop()I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 191
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 192
    iget-boolean p1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->showOldColor:Z

    if-eqz p1, :cond_1

    .line 193
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setUpCenterRect()V

    goto :goto_0

    .line 195
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->setUpColorRect()V

    :cond_2
    :goto_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 264
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->borderColor:I

    .line 265
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    .line 237
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->invalidate()V

    return-void
.end method

.method public setOriginalColor(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .line 246
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->originalPaint:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    .line 247
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->originalPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method

.method public setShape(I)V
    .locals 0
    .param p1    # I
        .annotation build Lcom/ice/box/customcolorpicker/ColorShape;
        .end annotation
    .end param

    .line 284
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->shape:I

    .line 285
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->invalidate()V

    return-void
.end method

.method public showHint()V
    .locals 12

    const/4 v0, 0x2

    .line 292
    new-array v1, v0, [I

    .line 293
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct/range {v2 .. v2}, Landroid/graphics/Rect;-><init>()V

    .line 294
    invoke-virtual {p0, v1}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getLocationOnScreen([I)V

    .line 295
    invoke-virtual {p0, v2}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 296
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 297
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getWidth()I

    move-result v4

    .line 298
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPanelView;->getHeight()I

    move-result v5

    const/4 v6, 0x1

    .line 299
    aget v7, v1, v6

    div-int/lit8 v8, v5, 0x2

    add-int/2addr v7, v8

    const/4 v8, 0x0

    .line 300
    aget v9, v1, v8

    div-int/2addr v4, v0

    add-int/2addr v9, v4

    .line 301
    invoke-static/range {p0 .. p0}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v0

    if-nez v0, :cond_0

    .line 302
    invoke-virtual/range {v3 .. v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sub-int v9, v0, v9

    .line 305
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 306
    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    invoke-static/range {v4 .. v4}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    const/16 v10, 0xff

    if-eq v4, v10, :cond_1

    .line 307
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v4, "%06X"

    .line 309
    new-array v10, v6, [Ljava/lang/Object;

    const v11, 0xffffff

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPanelView;->color:I

    and-int/2addr p0, v11

    invoke-static/range {p0 .. p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v10, v8

    invoke-static {v4, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 311
    :goto_0
    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    .line 312
    invoke-virtual/range {v2 .. v2}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-ge v7, v0, :cond_2

    const v0, 0x800035

    .line 314
    aget v1, v1, v6

    add-int/2addr v1, v5

    iget v2, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    invoke-virtual {p0, v0, v9, v1}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1

    :cond_2
    const/16 v0, 0x51

    .line 318
    invoke-virtual {p0, v0, v8, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 320
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toast;->show()V

    return-void
.end method
