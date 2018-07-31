.class public Lcom/ice/box/customcolorpicker/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;,
        Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final ALPHA_PANEL_HEIGH_DP:I = 0x14

.field private static final BORDER_WIDTH_PX:I = 0x1

.field private static final CIRCLE_TRACKER_RADIUS_DP:I = 0x5

.field private static final DEFAULT_BORDER_COLOR:I = -0x919192

.field private static final DEFAULT_SLIDER_COLOR:I = -0x424243

.field private static final HUE_PANEL_WDITH_DP:I = 0x1e

.field private static final PANEL_SPACING_DP:I = 0xa

.field private static final SLIDER_TRACKER_OFFSET_DP:I = 0x2

.field private static final SLIDER_TRACKER_SIZE_DP:I = 0x4


# instance fields
.field private alpha:I

.field private alphaPaint:Landroid/graphics/Paint;

.field private alphaPanelHeightPx:I

.field private alphaPatternDrawable:Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;

.field private alphaRect:Landroid/graphics/Rect;

.field private alphaShader:Landroid/graphics/Shader;

.field private alphaSliderText:Ljava/lang/String;

.field private alphaTextPaint:Landroid/graphics/Paint;

.field private borderColor:I

.field private borderPaint:Landroid/graphics/Paint;

.field private circleTrackerRadiusPx:I

.field private drawingRect:Landroid/graphics/Rect;

.field private hue:F

.field private hueAlphaTrackerPaint:Landroid/graphics/Paint;

.field private hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

.field private huePanelWidthPx:I

.field private hueRect:Landroid/graphics/Rect;

.field private mRequiredPadding:I

.field private onColorChangedListener:Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;

.field private panelSpacingPx:I

.field private sat:F

.field private satShader:Landroid/graphics/Shader;

.field private satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

.field private satValPaint:Landroid/graphics/Paint;

.field private satValRect:Landroid/graphics/Rect;

.field private satValTrackerPaint:Landroid/graphics/Paint;

.field private showAlphaPanel:Z

.field private sliderTrackerColor:I

.field private sliderTrackerOffsetPx:I

.field private sliderTrackerSizePx:I

.field private startTouchPoint:Landroid/graphics/Point;

.field private val:F

.field private valShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 152
    invoke-direct {p0, p1, v0}, Lcom/ice/box/customcolorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 156
    invoke-direct {p0, p1, p2, v0}, Lcom/ice/box/customcolorpicker/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 160
    invoke-direct/range {p0 .. p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p3, 0xff

    .line 118
    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    const/high16 p3, 0x43b40000    # 360.0f

    .line 119
    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    const/4 p3, 0x0

    .line 120
    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    .line 121
    iput p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    const/4 p3, 0x0

    .line 123
    iput-boolean p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    const/4 p3, 0x0

    .line 124
    iput-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    const v0, -0x424243

    .line 125
    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    const v0, -0x919192

    .line 126
    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    .line 146
    iput-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    .line 161
    invoke-direct/range {p0 .. p2}, Lcom/ice/box/customcolorpicker/ColorPickerView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 3

    .line 473
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    .line 474
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    .line 476
    new-instance v1, Landroid/graphics/Point;

    invoke-direct/range {v1 .. v1}, Landroid/graphics/Point;-><init>()V

    int-to-float p1, p1

    mul-float/2addr p1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    .line 478
    iget p1, p0, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/graphics/Point;->x:I

    .line 479
    iget p0, p0, Landroid/graphics/Rect;->top:I

    iput p0, v1, Landroid/graphics/Point;->y:I

    return-object v1
.end method

.method private applyThemeColors(Landroid/content/Context;)V
    .locals 4

    .line 229
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct/range {v0 .. v0}, Landroid/util/TypedValue;-><init>()V

    .line 230
    iget v0, v0, Landroid/util/TypedValue;->data:I

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    const v3, 0x1010038

    aput v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 232
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    const v1, -0x919192

    if-ne v0, v1, :cond_0

    .line 233
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    .line 236
    :cond_0
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    const v1, -0x424243

    if-ne v0, v1, :cond_1

    .line 237
    invoke-virtual {p1, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    .line 240
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13

    .line 406
    iget-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPatternDrawable:Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 408
    :cond_0
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    .line 411
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 412
    iget v1, v0, Landroid/graphics/Rect;->left:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    int-to-float v5, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v2

    int-to-float v6, v1

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v2

    int-to-float v7, v1

    iget-object v8, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 416
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPatternDrawable:Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;

    invoke-virtual {v1, p1}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v1, 0x3

    .line 418
    new-array v1, v1, [F

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    const/4 v4, 0x0

    aput v3, v1, v4

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    aput v3, v1, v2

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 419
    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v10

    .line 420
    invoke-static {v4, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v11

    .line 422
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v6, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v7, v2

    iget v2, v0, Landroid/graphics/Rect;->right:I

    int-to-float v8, v2

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v9, v2

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaShader:Landroid/graphics/Shader;

    .line 424
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 426
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 428
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 429
    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v5

    const/high16 v6, 0x40800000    # 4.0f

    invoke-static {v5, v6}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v5

    add-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 433
    :cond_1
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    invoke-direct {p0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v1

    .line 435
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct/range {v2 .. v2}, Landroid/graphics/RectF;-><init>()V

    .line 436
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerSizePx:I

    div-int/2addr v5, v3

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 437
    iget v1, v1, Landroid/graphics/Point;->x:I

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerSizePx:I

    div-int/2addr v4, v3

    add-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->right:F

    .line 438
    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerOffsetPx:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iput v1, v2, Landroid/graphics/RectF;->top:F

    .line 439
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerOffsetPx:I

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 441
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p1, v2, v0, v0, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 351
    iget-object v8, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueRect:Landroid/graphics/Rect;

    .line 354
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 356
    iget v1, v8, Landroid/graphics/Rect;->left:I

    const/4 v9, 0x1

    sub-int/2addr v1, v9

    int-to-float v2, v1

    iget v1, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v9

    int-to-float v3, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v1, v9

    int-to-float v4, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v9

    int-to-float v5, v1

    iget-object v6, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 360
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 361
    new-instance v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    invoke-direct {v1, v0, v3}, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerView;Lcom/ice/box/customcolorpicker/ColorPickerView$1;)V

    iput-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    .line 362
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    invoke-virtual/range {v8 .. v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {v8 .. v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    .line 363
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v5, v5, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->canvas:Landroid/graphics/Canvas;

    .line 365
    invoke-virtual/range {v8 .. v8}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v1, v4

    float-to-int v1, v1

    new-array v1, v1, [I

    const/high16 v4, 0x43b40000    # 360.0f

    const/4 v5, 0x0

    move v10, v4

    move v6, v5

    .line 369
    :goto_0
    array-length v11, v1

    if-ge v6, v11, :cond_0

    const/4 v11, 0x3

    .line 370
    new-array v11, v11, [F

    aput v10, v11, v5

    const/high16 v12, 0x3f800000    # 1.0f

    aput v12, v11, v9

    aput v12, v11, v2

    invoke-static/range {v11 .. v11}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v11

    aput v11, v1, v6

    .line 371
    array-length v11, v1

    int-to-float v11, v11

    div-float v11, v4, v11

    sub-float/2addr v10, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 378
    :cond_0
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct/range {v4 .. v4}, Landroid/graphics/Paint;-><init>()V

    const/4 v6, 0x0

    .line 379
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 380
    :goto_1
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 381
    aget v6, v1, v5

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 382
    iget-object v6, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v11, v6, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->canvas:Landroid/graphics/Canvas;

    const/4 v12, 0x0

    int-to-float v15, v5

    iget-object v6, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v6, v6, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v6 .. v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v14, v6

    move v13, v15

    move-object/from16 v16, v4

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 386
    :cond_1
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1, v3, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 388
    iget v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    invoke-direct {v0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v1

    .line 390
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct/range {v3 .. v3}, Landroid/graphics/RectF;-><init>()V

    .line 391
    iget v4, v8, Landroid/graphics/Rect;->left:I

    iget v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerOffsetPx:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->left:F

    .line 392
    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerOffsetPx:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->right:F

    .line 393
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerSizePx:I

    div-int/2addr v5, v2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, v3, Landroid/graphics/RectF;->top:F

    .line 394
    iget v1, v1, Landroid/graphics/Point;->y:I

    iget v4, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerSizePx:I

    div-int/2addr v4, v2

    add-int/2addr v1, v4

    int-to-float v1, v1

    iput v1, v3, Landroid/graphics/RectF;->bottom:F

    .line 396
    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {v7, v3, v1, v1, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 281
    iget-object v8, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValRect:Landroid/graphics/Rect;

    .line 284
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 285
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v1

    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v1

    iget v1, v8, Landroid/graphics/Rect;->right:I

    const/4 v9, 0x1

    add-int/2addr v1, v9

    int-to-float v4, v1

    iget v1, v8, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v1, v9

    int-to-float v5, v1

    iget-object v6, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 289
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->valShader:Landroid/graphics/Shader;

    if-nez v1, :cond_0

    .line 291
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v11, v2

    iget v2, v8, Landroid/graphics/Rect;->top:I

    int-to-float v12, v2

    iget v2, v8, Landroid/graphics/Rect;->left:I

    int-to-float v13, v2

    iget v2, v8, Landroid/graphics/Rect;->bottom:I

    int-to-float v14, v2

    const/4 v15, -0x1

    const/high16 v16, -0x1000000

    sget-object v17, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v10, v1

    invoke-direct/range {v10 .. v17}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->valShader:Landroid/graphics/Shader;

    .line 296
    :cond_0
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->value:F

    iget v4, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_5

    .line 298
    :cond_1
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    if-nez v1, :cond_2

    .line 299
    new-instance v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    invoke-direct {v1, v0, v3}, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;-><init>(Lcom/ice/box/customcolorpicker/ColorPickerView;Lcom/ice/box/customcolorpicker/ColorPickerView$1;)V

    iput-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    .line 303
    :cond_2
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_3

    .line 304
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    invoke-virtual/range {v8 .. v8}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual/range {v8 .. v8}, Landroid/graphics/Rect;->height()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    .line 308
    :cond_3
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->canvas:Landroid/graphics/Canvas;

    if-nez v1, :cond_4

    .line 309
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    new-instance v4, Landroid/graphics/Canvas;

    iget-object v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v5, v5, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v4, v5}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v4, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->canvas:Landroid/graphics/Canvas;

    :cond_4
    const/4 v1, 0x3

    .line 312
    new-array v1, v1, [F

    const/4 v4, 0x0

    iget v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    aput v5, v1, v4

    aput v2, v1, v9

    const/4 v4, 0x2

    aput v2, v1, v4

    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v15

    .line 314
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v4, v8, Landroid/graphics/Rect;->left:I

    int-to-float v10, v4

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v11, v4

    iget v4, v8, Landroid/graphics/Rect;->right:I

    int-to-float v12, v4

    iget v4, v8, Landroid/graphics/Rect;->top:I

    int-to-float v13, v4

    const/4 v14, -0x1

    sget-object v16, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v9, v1

    invoke-direct/range {v9 .. v16}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satShader:Landroid/graphics/Shader;

    .line 316
    new-instance v1, Landroid/graphics/ComposeShader;

    iget-object v4, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->valShader:Landroid/graphics/Shader;

    iget-object v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satShader:Landroid/graphics/Shader;

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v4, v5, v6}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 317
    iget-object v4, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 327
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v9, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->canvas:Landroid/graphics/Canvas;

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual/range {v1 .. v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v12, v1

    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    .line 328
    invoke-virtual/range {v1 .. v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v13, v1

    iget-object v14, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 327
    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 332
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget v4, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    iput v4, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->value:F

    .line 338
    :cond_5
    iget-object v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    iget-object v1, v1, Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7, v1, v3, v8, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 340
    iget v1, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    iget v3, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    invoke-direct {v0, v1, v3}, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v1

    .line 342
    iget-object v3, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x1000000

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 343
    iget v3, v1, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    iget v4, v1, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    iget v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->circleTrackerRadiusPx:I

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    sub-int/2addr v5, v2

    int-to-float v2, v5

    iget-object v5, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v3, v4, v2, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 345
    iget-object v2, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    const v3, -0x222223

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 346
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v3, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->circleTrackerRadiusPx:I

    int-to-float v3, v3

    iget-object v0, v0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private getPreferredHeight()I
    .locals 2

    .line 727
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v1}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 729
    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 730
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    add-int/2addr v1, p0

    add-int/2addr v0, v1

    :cond_0
    return v0
.end method

.method private getPreferredWidth()I
    .locals 2

    .line 721
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    const/high16 v1, 0x43480000    # 200.0f

    invoke-static {v0, v1}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v0

    .line 723
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    add-int/2addr v0, v1

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    add-int/2addr v0, p0

    return v0
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 3

    .line 446
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueRect:Landroid/graphics/Rect;

    .line 447
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 449
    new-instance v1, Landroid/graphics/Point;

    invoke-direct/range {v1 .. v1}, Landroid/graphics/Point;-><init>()V

    mul-float/2addr p1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    div-float/2addr p1, v2

    sub-float/2addr v0, p1

    .line 451
    iget p1, p0, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    float-to-int p1, v0

    iput p1, v1, Landroid/graphics/Point;->y:I

    .line 452
    iget p0, p0, Landroid/graphics/Rect;->left:I

    iput p0, v1, Landroid/graphics/Point;->x:I

    return-object v1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/ice/box/R$styleable;->ColorPickerView:[I

    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 199
    invoke-virtual {p2, v1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    .line 200
    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    const/4 v0, 0x3

    const v2, -0x424243

    .line 201
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    const/4 v0, 0x2

    const v2, -0x919192

    .line 202
    invoke-virtual {p2, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    .line 203
    invoke-virtual/range {p2 .. p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 205
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->applyThemeColors(Landroid/content/Context;)V

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41f00000    # 30.0f

    invoke-static {p1, p2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    .line 208
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41a00000    # 20.0f

    invoke-static {p1, p2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    .line 209
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p1, p2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-static {p1, p2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->circleTrackerRadiusPx:I

    .line 211
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40800000    # 4.0f

    invoke-static {p1, p2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerSizePx:I

    .line 212
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerOffsetPx:I

    .line 214
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f07005b

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->mRequiredPadding:I

    .line 216
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->initPaintTools()V

    .line 219
    invoke-virtual {p0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setFocusable(Z)V

    .line 220
    invoke-virtual {p0, v1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setFocusableInTouchMode(Z)V

    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .line 245
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValPaint:Landroid/graphics/Paint;

    .line 246
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    .line 247
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    .line 248
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPaint:Landroid/graphics/Paint;

    .line 249
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaTextPaint:Landroid/graphics/Paint;

    .line 250
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct/range {v0 .. v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderPaint:Landroid/graphics/Paint;

    .line 252
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 253
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 254
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValTrackerPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 256
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 257
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 258
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 259
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 261
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaTextPaint:Landroid/graphics/Paint;

    const v2, -0xe3e3e4

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 262
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/high16 v3, 0x41600000    # 14.0f

    invoke-static {v2, v3}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 263
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 265
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 582
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    .line 589
    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    .line 591
    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 592
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->pointToHue(F)F

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    goto :goto_0

    .line 595
    :cond_1
    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 596
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object p1

    .line 598
    aget v0, p1, v1

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    .line 599
    aget p1, p1, v4

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    goto :goto_0

    .line 602
    :cond_2
    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v0, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 603
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    float-to-int p1, p1

    invoke-direct {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->pointToAlpha(I)I

    move-result p1

    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    goto :goto_0

    :cond_3
    move v4, v1

    :goto_0
    return v4
.end method

.method private pointToAlpha(I)I
    .locals 2

    .line 536
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    .line 537
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 539
    iget v1, p0, Landroid/graphics/Rect;->left:I

    if-ge p1, v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 541
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->right:I

    if-le p1, v1, :cond_1

    move p0, v0

    goto :goto_0

    .line 544
    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->left:I

    sub-int p0, p1, p0

    :goto_0
    mul-int/lit16 p0, p0, 0xff

    .line 547
    div-int/2addr p0, v0

    rsub-int p0, p0, 0xff

    return p0
.end method

.method private pointToHue(F)F
    .locals 2

    .line 517
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueRect:Landroid/graphics/Rect;

    .line 519
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 521
    iget v1, p0, Landroid/graphics/Rect;->top:I

    int-to-float v1, v1

    cmpg-float v1, p1, v1

    if-gez v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 523
    :cond_0
    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    move p0, v0

    goto :goto_0

    .line 526
    :cond_1
    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float p0, p1, p0

    :goto_0
    const/high16 p1, 0x43b40000    # 360.0f

    mul-float/2addr p0, p1

    div-float/2addr p0, v0

    sub-float/2addr p1, p0

    return p1
.end method

.method private pointToSatVal(FF)[F
    .locals 5

    .line 487
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValRect:Landroid/graphics/Rect;

    const/4 v0, 0x2

    .line 488
    new-array v0, v0, [F

    .line 490
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 491
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    .line 493
    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    cmpg-float v3, p1, v3

    const/4 v4, 0x0

    if-gez v3, :cond_0

    move p1, v4

    goto :goto_0

    .line 495
    :cond_0
    iget v3, p0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    cmpl-float v3, p1, v3

    if-lez v3, :cond_1

    move p1, v1

    goto :goto_0

    .line 498
    :cond_1
    iget v3, p0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr p1, v3

    .line 501
    :goto_0
    iget v3, p0, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_2

    move p0, v4

    goto :goto_1

    .line 503
    :cond_2
    iget v3, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float v3, v3

    cmpl-float v3, p2, v3

    if-lez v3, :cond_3

    move p0, v2

    goto :goto_1

    .line 506
    :cond_3
    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    sub-float p0, p2, p0

    :goto_1
    const/4 p2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v1, v3, v1

    mul-float/2addr v1, p1

    aput v1, v0, p2

    const/4 p1, 0x1

    div-float p2, v3, v2

    mul-float/2addr p2, p0

    sub-float/2addr v3, p2

    aput v3, v0, p1

    return-object v0
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 3

    .line 459
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValRect:Landroid/graphics/Rect;

    .line 460
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 461
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 463
    new-instance v2, Landroid/graphics/Point;

    invoke-direct/range {v2 .. v2}, Landroid/graphics/Point;-><init>()V

    mul-float/2addr p1, v1

    .line 465
    iget v1, p0, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    add-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    const/high16 p1, 0x3f800000    # 1.0f

    sub-float/2addr p1, p2

    mul-float/2addr p1, v0

    .line 466
    iget p0, p0, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p1, p0

    float-to-int p0, p1

    iput p0, v2, Landroid/graphics/Point;->y:I

    return-object v2
.end method

.method private setUpAlphaRect()V
    .locals 5

    .line 809
    iget-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-nez v0, :cond_0

    return-void

    .line 811
    :cond_0
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    .line 813
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    .line 814
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    .line 815
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    .line 816
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    .line 818
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    .line 820
    new-instance v0, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x40800000    # 4.0f

    invoke-static {v1, v2}, Lcom/ice/box/customcolorpicker/DrawingUtils;->dpToPx(Landroid/content/Context;F)I

    move-result v1

    invoke-direct {v0, v1}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;-><init>(I)V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPatternDrawable:Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;

    .line 821
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPatternDrawable:Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;

    iget-object v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    invoke-static/range {v1 .. v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-static/range {v2 .. v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    invoke-static/range {v3 .. v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaRect:Landroid/graphics/Rect;

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    int-to-float p0, p0

    .line 822
    invoke-static/range {p0 .. p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    .line 821
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/ice/box/customcolorpicker/AlphaPatternDrawable;->setBounds(IIII)V

    return-void
.end method

.method private setUpHueRect()V
    .locals 6

    .line 797
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    .line 799
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    .line 800
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x1

    .line 801
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    iget-boolean v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    iget v5, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    add-int/2addr v4, v5

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    sub-int/2addr v3, v4

    .line 802
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    .line 804
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueRect:Landroid/graphics/Rect;

    return-void
.end method

.method private setUpSatValRect()V
    .locals 6

    .line 781
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    .line 783
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/lit8 v1, v1, 0x1

    .line 784
    iget v2, v0, Landroid/graphics/Rect;->top:I

    add-int/lit8 v2, v2, 0x1

    .line 785
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v3, v3, -0x1

    .line 786
    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v0, v0, -0x1

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    sub-int/2addr v0, v4

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    sub-int/2addr v0, v4

    .line 788
    iget-boolean v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eqz v4, :cond_0

    .line 789
    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    iget v5, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    add-int/2addr v4, v5

    sub-int/2addr v3, v4

    .line 792
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v1, v2, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValRect:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 0

    .line 962
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    return-object p0
.end method

.method public getBorderColor()I
    .locals 0

    .line 930
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    return p0
.end method

.method public getColor()I
    .locals 4

    .line 841
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    const/4 v3, 0x0

    aput v2, v1, v3

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    const/4 v3, 0x1

    aput v2, v1, v3

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    const/4 v2, 0x2

    aput p0, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p0

    return p0
.end method

.method public getPaddingBottom()I
    .locals 1

    .line 742
    invoke-super/range {p0 .. p0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->mRequiredPadding:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getPaddingLeft()I
    .locals 1

    .line 747
    invoke-super/range {p0 .. p0}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->mRequiredPadding:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getPaddingRight()I
    .locals 1

    .line 752
    invoke-super/range {p0 .. p0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->mRequiredPadding:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getPaddingTop()I
    .locals 1

    .line 737
    invoke-super/range {p0 .. p0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->mRequiredPadding:I

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public getSliderTrackerColor()I
    .locals 0

    .line 912
    iget p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    .line 275
    :cond_0
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 276
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 277
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    .line 616
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 617
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 619
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr p1, v2

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingRight()I

    move-result v2

    sub-int/2addr p1, v2

    .line 620
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr p2, v2

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingTop()I

    move-result v2

    sub-int/2addr p2, v2

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v2, :cond_7

    if-ne v1, v2, :cond_0

    goto :goto_3

    .line 678
    :cond_0
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    add-int/2addr v0, v1

    .line 681
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    sub-int/2addr v1, v2

    .line 683
    iget-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eqz v2, :cond_1

    .line 684
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    add-int/2addr v2, v3

    sub-int/2addr v0, v2

    .line 685
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    iget v3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    add-int/2addr v2, v3

    add-int/2addr v1, v2

    :cond_1
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-gt v0, p1, :cond_2

    move v4, v2

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    if-gt v1, p2, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :goto_1
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    if-nez v2, :cond_6

    if-eqz v4, :cond_6

    :cond_5
    move p1, v0

    goto :goto_4

    :cond_6
    if-nez v4, :cond_c

    if-eqz v2, :cond_c

    :goto_2
    move p2, v1

    goto :goto_4

    :cond_7
    :goto_3
    if-ne v0, v2, :cond_a

    if-eq v1, v2, :cond_a

    .line 627
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    sub-int v0, p1, v0

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    sub-int/2addr v0, v1

    .line 629
    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eqz v1, :cond_8

    .line 630
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_8
    if-le v0, p2, :cond_9

    goto :goto_4

    :cond_9
    move p2, v0

    goto :goto_4

    :cond_a
    if-ne v1, v2, :cond_c

    if-eq v0, v2, :cond_c

    .line 646
    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    add-int/2addr v0, p2

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->huePanelWidthPx:I

    add-int/2addr v0, v1

    .line 648
    iget-boolean v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eqz v1, :cond_b

    .line 649
    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->panelSpacingPx:I

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaPanelHeightPx:I

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    :cond_b
    if-le v0, p1, :cond_5

    .line 715
    :cond_c
    :goto_4
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingLeft()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingRight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingTop()I

    move-result v0

    add-int/2addr p2, v0

    .line 716
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingBottom()I

    move-result v0

    add-int/2addr p2, v0

    .line 715
    invoke-virtual {p0, p1, p2}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 181
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 182
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "alpha"

    .line 184
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    const-string v0, "hue"

    .line 185
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    const-string v0, "sat"

    .line 186
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    const-string v0, "val"

    .line 187
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    const-string v0, "show_alpha"

    .line 188
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    const-string v0, "alpha_text"

    .line 189
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    const-string v0, "instanceState"

    .line 191
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    .line 193
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 166
    new-instance v0, Landroid/os/Bundle;

    invoke-direct/range {v0 .. v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "instanceState"

    .line 167
    invoke-super/range {p0 .. p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "alpha"

    .line 168
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "hue"

    .line 169
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "sat"

    .line 170
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "val"

    .line 171
    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    const-string v1, "show_alpha"

    .line 172
    iget-boolean v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "alpha_text"

    .line 173
    iget-object p0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 757
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 759
    new-instance p3, Landroid/graphics/Rect;

    invoke-direct/range {p3 .. p3}, Landroid/graphics/Rect;-><init>()V

    iput-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    .line 760
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingLeft()I

    move-result p4

    iput p4, p3, Landroid/graphics/Rect;->left:I

    .line 761
    iget-object p3, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingRight()I

    move-result p4

    sub-int/2addr p1, p4

    iput p1, p3, Landroid/graphics/Rect;->right:I

    .line 762
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingTop()I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 763
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->drawingRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getPaddingBottom()I

    move-result p3

    sub-int/2addr p2, p3

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    const/4 p1, 0x0

    .line 766
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->valShader:Landroid/graphics/Shader;

    .line 767
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satShader:Landroid/graphics/Shader;

    .line 768
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaShader:Landroid/graphics/Shader;

    .line 771
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    .line 772
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    .line 774
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setUpSatValRect()V

    .line 775
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setUpHueRect()V

    .line 776
    invoke-direct/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setUpAlphaRect()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 555
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    move v0, v1

    goto :goto_0

    .line 562
    :pswitch_0
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_1
    const/4 v0, 0x0

    .line 565
    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    .line 566
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 558
    :pswitch_2
    new-instance v0, Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    invoke-direct {v0, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->startTouchPoint:Landroid/graphics/Point;

    .line 559
    invoke-direct/range {p0 .. p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 571
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->onColorChangedListener:Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 572
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->onColorChangedListener:Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    const/4 v3, 0x3

    new-array v3, v3, [F

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    aput v4, v3, v1

    iget v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    aput v1, v3, v0

    const/4 v1, 0x2

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    aput v4, v3, v1

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v1

    invoke-interface {p1, v1}, Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 574
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->invalidate()V

    return v0

    .line 578
    :cond_1
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 1

    .line 950
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 951
    invoke-virtual {p0, p1}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0

    .line 972
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaSliderText:Ljava/lang/String;

    .line 973
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1

    .line 889
    iget-boolean v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    if-eq v0, p1, :cond_0

    .line 890
    iput-boolean p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->showAlphaPanel:Z

    const/4 p1, 0x0

    .line 895
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->valShader:Landroid/graphics/Shader;

    .line 896
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satShader:Landroid/graphics/Shader;

    .line 897
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alphaShader:Landroid/graphics/Shader;

    .line 898
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    .line 899
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->satValBackgroundCache:Lcom/ice/box/customcolorpicker/ColorPickerView$BitmapCache;

    .line 901
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0

    .line 939
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->borderColor:I

    .line 940
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x0

    .line 850
    invoke-virtual {p0, p1, v0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->setColor(IZ)V

    return-void
.end method

.method public setColor(IZ)V
    .locals 5

    .line 861
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 862
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    .line 863
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 864
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    const/4 v3, 0x3

    .line 866
    new-array v4, v3, [F

    .line 868
    invoke-static {v1, p1, v2, v4}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 870
    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    const/4 p1, 0x0

    .line 871
    aget v0, v4, p1

    iput v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    const/4 v0, 0x1

    .line 872
    aget v1, v4, v0

    iput v1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    const/4 v1, 0x2

    .line 873
    aget v2, v4, v1

    iput v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    if-eqz p2, :cond_0

    .line 875
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->onColorChangedListener:Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;

    if-eqz p2, :cond_0

    .line 876
    iget-object p2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->onColorChangedListener:Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;

    iget v2, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->alpha:I

    new-array v3, v3, [F

    iget v4, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hue:F

    aput v4, v3, p1

    iget p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sat:F

    aput p1, v3, v0

    iget p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->val:F

    aput p1, v3, v1

    invoke-static {v2, v3}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    invoke-interface {p2, p1}, Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 879
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->invalidate()V

    return-void
.end method

.method public setOnColorChangedListener(Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;)V
    .locals 0

    .line 832
    iput-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->onColorChangedListener:Lcom/ice/box/customcolorpicker/ColorPickerView$OnColorChangedListener;

    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 1

    .line 921
    iput p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    .line 922
    iget-object p1, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->hueAlphaTrackerPaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/ice/box/customcolorpicker/ColorPickerView;->sliderTrackerColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 923
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/customcolorpicker/ColorPickerView;->invalidate()V

    return-void
.end method
