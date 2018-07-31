.class public Lcom/android/systemui/OPBatteryMeterDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "OPBatteryMeterDrawable.java"


# instance fields
.field private mBatteryStyle:I

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private mHeight:I

.field private mInStatusBar:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLog:Z

.field private mPluggedIn:Z

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameColor"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    .line 19
    iput v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    .line 27
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    .line 36
    iput-boolean v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mPluggedIn:Z

    .line 39
    iput-boolean v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLog:Z

    .line 78
    iput v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->resetUITimes:I

    .line 87
    iput v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastHeight:I

    .line 88
    iput v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastWidth:I

    .line 171
    iput-boolean v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mInStatusBar:Z

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 49
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    .line 53
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setDither(Z)V

    .line 55
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 56
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 61
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "height"    # I
    .param p3, "width"    # I

    .prologue
    const/4 v4, 0x0

    const/high16 v2, 0x43870000    # 270.0f

    .line 137
    invoke-direct {p0, p3, p2}, Lcom/android/systemui/OPBatteryMeterDrawable;->initCircleSize(II)V

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getBatteryLevel()I

    move-result v7

    .line 139
    .local v7, "level":I
    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getCharging()Z

    move-result v8

    .line 140
    .local v8, "pluggedin":Z
    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getChargeColor()I

    move-result v6

    .line 142
    .local v6, "color":I
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getChargeColor()I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    if-eqz v8, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getChargeColor()I

    move-result v0

    :goto_2
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 145
    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v3, 0x43b40000    # 360.0f

    iget-object v5, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 146
    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    int-to-float v0, v7

    const v3, 0x40666666    # 3.6f

    mul-float/2addr v3, v0

    iget-object v5, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 149
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v1

    const/high16 v1, 0x40800000    # 4.0f

    div-float v9, v0, v1

    .line 150
    .local v9, "radius":F
    if-eqz v8, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v9, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 153
    :cond_0
    return-void

    .line 140
    .end local v6    # "color":I
    .end local v9    # "radius":F
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/systemui/OPBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v6

    .restart local v6    # "color":I
    goto :goto_0

    .line 142
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/OPBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v0

    goto :goto_1

    .line 143
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/systemui/OPBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v0

    goto :goto_2
.end method

.method private initCircleSize(II)V
    .locals 10
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x40000000    # 2.0f

    .line 156
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    .line 157
    iget v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    const/high16 v7, 0x40d00000    # 6.5f

    div-float v4, v6, v7

    .line 158
    .local v4, "strokeWidth":F
    iget-object v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 159
    iget-object v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 160
    const/4 v2, 0x0

    .line 162
    .local v2, "pLeft":I
    div-float v6, v4, v8

    add-float v1, v9, v6

    .line 163
    .local v1, "left":F
    div-float v5, v4, v8

    .line 164
    .local v5, "top":F
    iget v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v4, v8

    sub-float/2addr v6, v7

    add-float v3, v6, v9

    .line 165
    .local v3, "right":F
    iget v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v7, v4, v8

    sub-float v0, v6, v7

    .line 166
    .local v0, "bottom":F
    iget-object v6, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v6, v1, v5, v3, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 167
    return-void
.end method

.method private postInvalidate(I)V
    .locals 4
    .param p1, "delaytime"    # I

    .prologue
    .line 73
    new-instance v0, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;

    const/4 v1, 0x3

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/-$Lambda$CBJXSLeEZ81IqvchDh4LhUGU2j4;-><init>(BLjava/lang/Object;)V

    int-to-long v2, p1

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/systemui/OPBatteryMeterDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 74
    return-void
.end method


# virtual methods
.method synthetic -com_android_systemui_OPBatteryMeterDrawable-mthref-0()V
    .locals 0

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->getBatteryLevel()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    .line 120
    :cond_0
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    packed-switch v0, :pswitch_data_0

    .line 128
    invoke-super {p0, p1}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->draw(Landroid/graphics/Canvas;)V

    .line 132
    return-void

    .line 122
    :pswitch_0
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    iget v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/OPBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    .line 123
    return-void

    .line 126
    :pswitch_1
    return-void

    .line 120
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .prologue
    .line 67
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicHeight()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1
    .param p1, "style"    # I

    .prologue
    .line 80
    iput p1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mBatteryStyle:I

    .line 81
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->resetUITimes:I

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/OPBatteryMeterDrawable;->postInvalidate()V

    .line 83
    return-void
.end method

.method public setBounds(IIII)V
    .locals 2
    .param p1, "left"    # I
    .param p2, "top"    # I
    .param p3, "right"    # I
    .param p4, "bottom"    # I

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setBounds(IIII)V

    .line 96
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    .line 97
    sub-int v0, p3, p1

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    .line 98
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastHeight:I

    iget v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastWidth:I

    iget v1, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    if-eq v0, v1, :cond_1

    .line 99
    :cond_0
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mHeight:I

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastHeight:I

    .line 100
    iget v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mWidth:I

    iput v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mLastWidth:I

    .line 101
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/android/systemui/OPBatteryMeterDrawable;->postInvalidate(I)V

    .line 104
    :cond_1
    return-void
.end method

.method public setColors(II)V
    .locals 1
    .param p1, "fillColor"    # I
    .param p2, "backgroundColor"    # I

    .prologue
    .line 109
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/OPBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    invoke-super {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;->setColors(II)V

    .line 114
    return-void
.end method
