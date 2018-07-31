.class Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ice/box/helpers/ColorPickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorPickerView"
.end annotation


# static fields
.field private static final CENTER_RADIUS:I = 0x80

.field private static final CENTER_X:I = 0x190

.field private static final CENTER_Y:I = 0x190

.field private static final PI:F = 3.1415925f


# instance fields
.field private mCenterPaint:Landroid/graphics/Paint;

.field private final mColors:[I

.field private mHighlightCenter:Z

.field private mListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

.field private mPaint:Landroid/graphics/Paint;

.field private mTrackingCenter:Z

.field final synthetic this$0:Lcom/ice/box/helpers/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/ice/box/helpers/ColorPickerDialog;Landroid/content/Context;Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;I)V
    .locals 1

    .line 340
    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    .line 341
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 342
    iput-object p3, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    const/16 p1, 0xa

    .line 343
    new-array p1, p1, [I

    fill-array-data p1, :array_0

    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mColors:[I

    .line 345
    new-instance p1, Landroid/graphics/SweepGradient;

    iget-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mColors:[I

    const/4 p3, 0x0

    const/4 v0, 0x0

    invoke-direct {p1, p3, p3, p2, v0}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    .line 346
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 347
    iget-object p2, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 348
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 349
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    const/high16 p2, 0x43000000    # 128.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 350
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    .line 351
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 352
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 p1, 0x41a00000    # 20.0f

    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x1
        -0x7f7f80
        -0x1000000
        -0x10000
    .end array-data
.end method

.method private ave(IIF)I
    .locals 0

    sub-int/2addr p2, p1

    int-to-float p0, p2

    mul-float/2addr p3, p0

    .line 409
    invoke-static/range {p3 .. p3}, Ljava/lang/Math;->round(F)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private floatToByte(F)I
    .locals 0

    .line 382
    invoke-static/range {p1 .. p1}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method private interpColor([IF)I
    .locals 5

    const/4 v0, 0x0

    cmpg-float v0, p2, v0

    if-gtz v0, :cond_0

    const/4 p0, 0x0

    .line 414
    aget p0, p1, p0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_1

    .line 417
    array-length p0, p1

    add-int/lit8 p0, p0, -0x1

    aget p0, p1, p0

    return p0

    .line 419
    :cond_1
    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    mul-float/2addr p2, v0

    float-to-int v0, p2

    int-to-float v1, v0

    sub-float/2addr p2, v1

    .line 423
    aget v1, p1, v0

    add-int/lit8 v0, v0, 0x1

    .line 424
    aget p1, p1, v0

    .line 425
    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    invoke-direct {p0, v0, v2, p2}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v0

    .line 426
    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-direct {p0, v2, v3, p2}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v2

    .line 427
    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-direct {p0, v3, v4, p2}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result v3

    .line 428
    invoke-static/range {v1 .. v1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    invoke-direct {p0, v1, p1, p2}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->ave(IIF)I

    move-result p0

    .line 429
    invoke-static {v0, v2, v3, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method

.method private pinToByte(I)I
    .locals 0

    const/16 p0, 0xff

    if-gez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    if-le p1, p0, :cond_1

    move p1, p0

    :cond_1
    :goto_0
    return p1
.end method

.method private rotateColor(IF)I
    .locals 6

    const/high16 v0, 0x43340000    # 180.0f

    mul-float/2addr p2, v0

    const v0, 0x40490fdb    # (float)Math.PI

    div-float/2addr p2, v0

    .line 434
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 435
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 436
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 437
    new-instance v3, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v3 .. v3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 438
    new-instance v4, Landroid/graphics/ColorMatrix;

    invoke-direct/range {v4 .. v4}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 439
    invoke-virtual/range {v3 .. v3}, Landroid/graphics/ColorMatrix;->setRGB2YUV()V

    const/4 v5, 0x0

    .line 440
    invoke-virtual {v4, v5, p2}, Landroid/graphics/ColorMatrix;->setRotate(IF)V

    .line 441
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 442
    invoke-virtual/range {v4 .. v4}, Landroid/graphics/ColorMatrix;->setYUV2RGB()V

    .line 443
    invoke-virtual {v3, v4}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 444
    invoke-virtual/range {v3 .. v3}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object p2

    .line 445
    aget v3, p2, v5

    int-to-float v0, v0

    mul-float/2addr v3, v0

    const/4 v4, 0x1

    aget v4, p2, v4

    int-to-float v1, v1

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/4 v4, 0x2

    aget v4, p2, v4

    int-to-float v2, v2

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v3

    const/4 v4, 0x5

    .line 446
    aget v4, p2, v4

    mul-float/2addr v4, v0

    const/4 v5, 0x6

    aget v5, p2, v5

    mul-float/2addr v5, v1

    add-float/2addr v4, v5

    const/4 v5, 0x7

    aget v5, p2, v5

    mul-float/2addr v5, v2

    add-float/2addr v4, v5

    invoke-direct {p0, v4}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result v4

    const/16 v5, 0xa

    .line 447
    aget v5, p2, v5

    mul-float/2addr v5, v0

    const/16 v0, 0xb

    aget v0, p2, v0

    mul-float/2addr v0, v1

    add-float/2addr v5, v0

    const/16 v0, 0xc

    aget p2, p2, v0

    mul-float/2addr p2, v2

    add-float/2addr v5, p2

    invoke-direct {p0, v5}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->floatToByte(F)I

    move-result p2

    .line 448
    invoke-static/range {p1 .. p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    invoke-direct {p0, v3}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v0

    invoke-direct {p0, v4}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result v1

    invoke-direct {p0, p2}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->pinToByte(I)I

    move-result p0

    invoke-static {p1, v0, v1, p0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 357
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    const/high16 v1, 0x43c80000    # 400.0f

    sub-float v0, v1, v0

    .line 358
    iget-object v2, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    iget-object v2, v2, Lcom/ice/box/helpers/ColorPickerDialog;->rectF:Landroid/graphics/RectF;

    neg-float v3, v0

    invoke-virtual {v2, v3, v3, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 359
    invoke-virtual {p1, v1, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 360
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    iget-object v0, v0, Lcom/ice/box/helpers/ColorPickerDialog;->rectF:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawOval(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 361
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x43000000    # 128.0f

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v1, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 362
    iget-boolean v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v0, :cond_1

    .line 363
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 364
    iget-object v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 365
    iget-boolean v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eqz v3, :cond_0

    .line 366
    iget-object v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v4, 0xff

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_0

    .line 368
    :cond_0
    iget-object v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    const/16 v4, 0x80

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 370
    :goto_0
    iget-object v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    add-float/2addr v3, v1

    iget-object v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v2, v3, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 371
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    iget-object p0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    const/16 p1, 0x320

    .line 378
    invoke-virtual {p0, p1, p1}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 453
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/high16 v1, 0x43c80000    # 400.0f

    sub-float/2addr v0, v1

    .line 454
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    sub-float/2addr v2, v1

    mul-float v1, v0, v0

    mul-float v3, v2, v2

    add-float/2addr v1, v3

    float-to-double v3, v1

    .line 455
    invoke-static/range {v3 .. v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4060000000000000L    # 128.0

    cmpg-double v1, v3, v5

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-gtz v1, :cond_0

    move v1, v4

    goto :goto_0

    :cond_0
    move v1, v3

    .line 456
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    .line 485
    :pswitch_0
    iget-boolean p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz p1, :cond_5

    if-eqz v1, :cond_1

    .line 487
    iget-object p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;->colorChanged(I)V

    .line 489
    :cond_1
    iput-boolean v3, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    .line 490
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 458
    :pswitch_1
    iput-boolean v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz v1, :cond_2

    .line 460
    iput-boolean v4, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 461
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    .line 465
    :cond_2
    :pswitch_2
    iget-boolean p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mTrackingCenter:Z

    if-eqz p1, :cond_3

    .line 466
    iget-boolean p1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    if-eq p1, v1, :cond_5

    .line 467
    iput-boolean v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mHighlightCenter:Z

    .line 468
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->invalidate()V

    goto :goto_1

    :cond_3
    float-to-double v1, v2

    float-to-double v5, v0

    .line 471
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x40c90fda

    div-float/2addr p1, v0

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 477
    :cond_4
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mColors:[I

    invoke-direct {p0, v0, p1}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->interpColor([IF)I

    move-result p1

    .line 478
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 479
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog;->access$500(Lcom/ice/box/helpers/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static {v1, p1}, Lcom/ice/box/helpers/ColorPickerDialog;->access$400(Lcom/ice/box/helpers/ColorPickerDialog;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mListener:Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;

    invoke-interface {v0, p1}, Lcom/ice/box/helpers/ColorPickerDialog$OnColorChangedListener;->colorUpdate(I)V

    .line 481
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->invalidate()V

    :cond_5
    :goto_1
    return v4

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public setCenterColor(I)V
    .locals 1

    .line 396
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 397
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->invalidate()V

    return-void
.end method

.method public setTransparency(I)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v0 .. v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 402
    invoke-static/range {v0 .. v0}, Landroid/graphics/Color;->red(I)I

    move-result v1

    invoke-static/range {v0 .. v0}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static/range {v0 .. v0}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    invoke-static {p1, v1, v2, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    .line 403
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 404
    iget-object v0, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static/range {v0 .. v0}, Lcom/ice/box/helpers/ColorPickerDialog;->access$500(Lcom/ice/box/helpers/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->this$0:Lcom/ice/box/helpers/ColorPickerDialog;

    invoke-static {v1, p1}, Lcom/ice/box/helpers/ColorPickerDialog;->access$400(Lcom/ice/box/helpers/ColorPickerDialog;I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 405
    invoke-virtual/range {p0 .. p0}, Lcom/ice/box/helpers/ColorPickerDialog$ColorPickerView;->invalidate()V

    return-void
.end method
