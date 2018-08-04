.class public Lcom/android/systemui/HardwareBgDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "HardwareBgDrawable.java"


# instance fields
.field private final mLayers:[Landroid/graphics/drawable/Drawable;

.field private final mPaint:Landroid/graphics/Paint;

.field private mPoint:I

.field private mRotatedBackground:Z

.field private final mRoundTop:Z


# direct methods
.method public constructor <init>(ZZLandroid/content/Context;)V
    .locals 1
    .param p1, "roundTop"    # Z
    .param p2, "roundEnd"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p3, p1, p2}, Lcom/android/systemui/HardwareBgDrawable;->getLayers(Landroid/content/Context;ZZ)[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/HardwareBgDrawable;-><init>(Z[Landroid/graphics/drawable/Drawable;)V

    .line 38
    return-void
.end method

.method public constructor <init>(Z[Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "roundTop"    # Z
    .param p2, "layers"    # [Landroid/graphics/drawable/Drawable;

    .prologue
    .line 41
    invoke-direct {p0, p2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 30
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    .line 42
    array-length v0, p2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Need 2 layers"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    .line 46
    iput-object p2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    .line 47
    return-void
.end method

.method private static getLayers(Landroid/content/Context;ZZ)[Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "roundTop"    # Z
    .param p2, "roundEnd"    # Z

    .prologue
    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 50
    if-eqz p2, :cond_0

    const v0, 0x7f0802d3

    .line 52
    .local v0, "drawable":I
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 55
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 64
    .local v1, "layers":[Landroid/graphics/drawable/Drawable;
    :goto_1
    aget-object v2, v1, v3

    const v3, 0x1010434

    invoke-static {p0, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 65
    return-object v1

    .line 50
    .end local v0    # "drawable":I
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_0
    const v0, 0x7f0802d1

    .restart local v0    # "drawable":I
    goto :goto_0

    .line 58
    :cond_1
    new-array v1, v2, [Landroid/graphics/drawable/Drawable;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v4

    .line 60
    if-eqz p2, :cond_2

    const v2, 0x7f0802d4

    :goto_2
    invoke-virtual {p0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v3

    .line 58
    .restart local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    goto :goto_1

    .line 61
    .end local v1    # "layers":[Landroid/graphics/drawable/Drawable;
    :cond_2
    const v2, 0x7f0802d2

    goto :goto_2
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    iget v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    if-ltz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mRotatedBackground:Z

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/HardwareBgDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 81
    .local v0, "bounds":Landroid/graphics/Rect;
    iget v2, v0, Landroid/graphics/Rect;->top:I

    iget v3, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    add-int v1, v2, v3

    .line 82
    .local v1, "top":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    if-le v1, v2, :cond_0

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    .line 83
    :cond_0
    iget-boolean v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    if-eqz v2, :cond_1

    .line 84
    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mRoundTop:Z

    if-eqz v2, :cond_2

    .line 89
    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v7

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 90
    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 98
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "top":I
    :goto_1
    return-void

    .line 86
    .restart local v0    # "bounds":Landroid/graphics/Rect;
    .restart local v1    # "top":I
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v7

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->right:I

    iget v5, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 92
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 93
    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v7

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1

    .line 96
    .end local v0    # "bounds":Landroid/graphics/Rect;
    .end local v1    # "top":I
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/HardwareBgDrawable;->mLayers:[Landroid/graphics/drawable/Drawable;

    aget-object v2, v2, v6

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_1
.end method

.method public getCutPoint()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x1

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 102
    iget-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 103
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/systemui/HardwareBgDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 108
    return-void
.end method

.method public setCutPoint(I)V
    .locals 0
    .param p1, "point"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/android/systemui/HardwareBgDrawable;->mPoint:I

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/HardwareBgDrawable;->invalidateSelf()V

    .line 71
    return-void
.end method

.method public setRotatedBackground(Z)V
    .locals 0
    .param p1, "rotatedBackground"    # Z

    .prologue
    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/HardwareBgDrawable;->mRotatedBackground:Z

    .line 117
    return-void
.end method
