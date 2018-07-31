.class public Lcom/android/settings/widget/DonutView;
.super Landroid/view/View;
.source "DonutView.java"


# static fields
.field private static final LINE_CHARACTER_LIMIT:I = 0xa

.field private static final TOP:I = -0x5a


# instance fields
.field private mBackgroundCircle:Landroid/graphics/Paint;

.field private mBigNumberPaint:Landroid/text/TextPaint;

.field private mDeviceDensity:F

.field private mFilledArc:Landroid/graphics/Paint;

.field private mFullString:Ljava/lang/String;

.field private mPercent:I

.field private mPercentString:Ljava/lang/String;

.field private mStrokeWidth:F

.field private mTextPaint:Landroid/text/TextPaint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x1

    .line 55
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    iput v2, p0, Lcom/android/settings/widget/DonutView;->mDeviceDensity:F

    .line 57
    iget v2, p0, Lcom/android/settings/widget/DonutView;->mDeviceDensity:F

    const/high16 v3, 0x40c00000    # 6.0f

    mul-float/2addr v2, v3

    iput v2, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    .line 59
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 60
    const v2, 0x1010435

    invoke-static {p1, v2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v2

    .line 61
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 59
    invoke-direct {v0, v2, v3}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 63
    .local v0, "mAccentColorFilter":Landroid/graphics/ColorFilter;
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    .line 64
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 66
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 67
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 68
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 69
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    const v3, 0x7f0c03d3

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 71
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    .line 72
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 74
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 75
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 76
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/android/settings/widget/DonutView;->mContext:Landroid/content/Context;

    const v4, 0x7f0c03d4

    invoke-static {v3, v4}, Lcom/android/settings/Utils;->getDefaultColor(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 77
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 80
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    .line 81
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 82
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 83
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    .line 84
    const v3, 0x7f0d0297

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 83
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 85
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 87
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2}, Landroid/text/TextPaint;-><init>()V

    iput-object v2, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    .line 88
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setColor(I)V

    .line 89
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v5}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 90
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    .line 91
    const v3, 0x7f0d0296

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 90
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 93
    return-void
.end method

.method private drawDonut(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    const/high16 v5, -0x3d4c0000    # -90.0f

    const/4 v9, 0x0

    .line 104
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v1, v9, v0

    .line 105
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v2, v9, v0

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v3, v0, v3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v4, v0, v4

    .line 109
    const/high16 v6, 0x43b40000    # 360.0f

    .line 111
    iget-object v8, p0, Lcom/android/settings/widget/DonutView;->mBackgroundCircle:Landroid/graphics/Paint;

    move-object v0, p1

    .line 103
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 114
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v1, v9, v0

    .line 115
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    add-float v2, v9, v0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v3, v0, v3

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v4, p0, Lcom/android/settings/widget/DonutView;->mStrokeWidth:F

    sub-float v4, v0, v4

    .line 119
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mPercent:I

    mul-int/lit16 v0, v0, 0x168

    div-int/lit8 v0, v0, 0x64

    int-to-float v6, v0

    .line 121
    iget-object v8, p0, Lcom/android/settings/widget/DonutView;->mFilledArc:Landroid/graphics/Paint;

    move-object v0, p1

    .line 113
    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    .line 122
    return-void
.end method

.method private drawInnerText(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 125
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v0, v4

    .line 126
    .local v0, "centerX":F
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    int-to-float v1, v4

    .line 127
    .local v1, "centerY":F
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v4}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v4

    iget-object v5, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v5}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v5

    add-float v3, v4, v5

    .line 128
    .local v3, "totalHeight":F
    const/high16 v4, 0x40000000    # 2.0f

    div-float v4, v3, v4

    add-float v2, v1, v4

    .line 131
    .local v2, "startY":F
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    .line 132
    iget-object v5, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-direct {p0, v5}, Lcom/android/settings/widget/DonutView;->getTextHeight(Landroid/text/TextPaint;)F

    move-result v5

    sub-float v5, v2, v5

    iget-object v6, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    invoke-virtual {v6}, Landroid/text/TextPaint;->descent()F

    move-result v6

    sub-float/2addr v5, v6

    .line 133
    iget-object v6, p0, Lcom/android/settings/widget/DonutView;->mBigNumberPaint:Landroid/text/TextPaint;

    .line 131
    invoke-virtual {p1, v4, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 135
    iget-object v4, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5}, Landroid/text/TextPaint;->descent()F

    move-result v5

    sub-float v5, v2, v5

    iget-object v6, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v4, v0, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 136
    return-void
.end method

.method private getTextHeight(Landroid/text/TextPaint;)F
    .locals 2
    .param p1, "paint"    # Landroid/text/TextPaint;

    .prologue
    .line 157
    invoke-virtual {p1}, Landroid/text/TextPaint;->descent()F

    move-result v0

    invoke-virtual {p1}, Landroid/text/TextPaint;->ascent()F

    move-result v1

    sub-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 98
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawDonut(Landroid/graphics/Canvas;)V

    .line 99
    invoke-direct {p0, p1}, Lcom/android/settings/widget/DonutView;->drawInnerText(Landroid/graphics/Canvas;)V

    .line 100
    return-void
.end method

.method public setPercentage(I)V
    .locals 3
    .param p1, "percent"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/android/settings/widget/DonutView;->mPercent:I

    .line 143
    iget v0, p0, Lcom/android/settings/widget/DonutView;->mPercent:I

    invoke-static {v0}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DonutView;->mPercentString:Ljava/lang/String;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0f1242

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mFullString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/settings/widget/DonutView;->mTextPaint:Landroid/text/TextPaint;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 150
    const v2, 0x7f0d0298

    .line 147
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 146
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 152
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/widget/DonutView;->invalidate()V

    .line 153
    return-void
.end method
