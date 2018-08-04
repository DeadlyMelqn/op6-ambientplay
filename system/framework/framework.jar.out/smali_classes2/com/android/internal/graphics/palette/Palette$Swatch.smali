.class public final Lcom/android/internal/graphics/palette/Palette$Swatch;
.super Ljava/lang/Object;
.source "Palette.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/graphics/palette/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Swatch"
.end annotation


# instance fields
.field private final mBlue:I

.field private mBodyTextColor:I

.field private mGeneratedTextColors:Z

.field private final mGreen:I

.field private mHsl:[F

.field private final mPopulation:I

.field private final mRed:I

.field private final mRgb:I

.field private mTitleTextColor:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "color"    # I
    .param p2, "population"    # I

    .prologue
    .line 457
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 458
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRed:I

    .line 459
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mGreen:I

    .line 460
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mBlue:I

    .line 461
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    .line 462
    iput p2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    .line 463
    return-void
.end method

.method constructor <init>(IIII)V
    .locals 1
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I
    .param p4, "population"    # I

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    iput p1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRed:I

    .line 467
    iput p2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mGreen:I

    .line 468
    iput p3, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mBlue:I

    .line 469
    invoke-static {p1, p2, p3}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    .line 470
    iput p4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    .line 471
    return-void
.end method

.method constructor <init>([FI)V
    .locals 1
    .param p1, "hsl"    # [F
    .param p2, "population"    # I

    .prologue
    .line 474
    invoke-static {p1}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    invoke-direct {p0, v0, p2}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    .line 475
    iput-object p1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mHsl:[F

    .line 476
    return-void
.end method

.method private ensureTextColorsGenerated()V
    .locals 10

    .prologue
    const/high16 v9, 0x40900000    # 4.5f

    const/high16 v8, 0x40400000    # 3.0f

    const/4 v7, 0x1

    const/high16 v6, -0x1000000

    const/4 v5, -0x1

    .line 528
    iget-boolean v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mGeneratedTextColors:Z

    if-nez v4, :cond_2

    .line 531
    iget v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    .line 530
    invoke-static {v5, v4, v9}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v2

    .line 533
    .local v2, "lightBodyAlpha":I
    iget v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    .line 532
    invoke-static {v5, v4, v8}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v3

    .line 535
    .local v3, "lightTitleAlpha":I
    if-eq v2, v5, :cond_0

    if-eq v3, v5, :cond_0

    .line 537
    invoke-static {v5, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mBodyTextColor:I

    .line 538
    invoke-static {v5, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mTitleTextColor:I

    .line 539
    iput-boolean v7, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mGeneratedTextColors:Z

    .line 540
    return-void

    .line 544
    :cond_0
    iget v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    .line 543
    invoke-static {v6, v4, v9}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v0

    .line 546
    .local v0, "darkBodyAlpha":I
    iget v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    .line 545
    invoke-static {v6, v4, v8}, Lcom/android/internal/graphics/ColorUtils;->calculateMinimumAlpha(IIF)I

    move-result v1

    .line 548
    .local v1, "darkTitleAlpha":I
    if-eq v0, v5, :cond_1

    if-eq v1, v5, :cond_1

    .line 550
    invoke-static {v6, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mBodyTextColor:I

    .line 551
    invoke-static {v6, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mTitleTextColor:I

    .line 552
    iput-boolean v7, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mGeneratedTextColors:Z

    .line 553
    return-void

    .line 558
    :cond_1
    if-eq v2, v5, :cond_3

    .line 559
    invoke-static {v5, v2}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 558
    :goto_0
    iput v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mBodyTextColor:I

    .line 561
    if-eq v3, v5, :cond_4

    .line 562
    invoke-static {v5, v3}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    .line 561
    :goto_1
    iput v4, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mTitleTextColor:I

    .line 564
    iput-boolean v7, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mGeneratedTextColors:Z

    .line 566
    .end local v0    # "darkBodyAlpha":I
    .end local v1    # "darkTitleAlpha":I
    .end local v2    # "lightBodyAlpha":I
    .end local v3    # "lightTitleAlpha":I
    :cond_2
    return-void

    .line 560
    .restart local v0    # "darkBodyAlpha":I
    .restart local v1    # "darkTitleAlpha":I
    .restart local v2    # "lightBodyAlpha":I
    .restart local v3    # "lightTitleAlpha":I
    :cond_3
    invoke-static {v6, v0}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    goto :goto_0

    .line 563
    :cond_4
    invoke-static {v6, v1}, Lcom/android/internal/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v4

    goto :goto_1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 582
    if-ne p0, p1, :cond_0

    .line 583
    return v1

    .line 585
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 586
    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 590
    check-cast v0, Lcom/android/internal/graphics/palette/Palette$Swatch;

    .line 591
    .local v0, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    iget v4, v0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    iget v4, v0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    if-ne v3, v4, :cond_3

    :goto_0
    return v1

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method public getBodyTextColor()I
    .locals 1

    .prologue
    .line 523
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 524
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mBodyTextColor:I

    return v0
.end method

.method public getHsl()[F
    .locals 4

    .prologue
    .line 493
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mHsl:[F

    if-nez v0, :cond_0

    .line 494
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mHsl:[F

    .line 496
    :cond_0
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRed:I

    iget v1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mGreen:I

    iget v2, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mBlue:I

    iget-object v3, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mHsl:[F

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 497
    iget-object v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mHsl:[F

    return-object v0
.end method

.method public getPopulation()I
    .locals 1

    .prologue
    .line 504
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    return v0
.end method

.method public getRgb()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    return v0
.end method

.method public getTitleTextColor()I
    .locals 1

    .prologue
    .line 513
    invoke-direct {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->ensureTextColorsGenerated()V

    .line 514
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mTitleTextColor:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 596
    iget v0, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mRgb:I

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v2, 0x5d

    .line 570
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 571
    const-string/jumbo v1, " [RGB: #"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 571
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    const-string/jumbo v1, " [HSL: "

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 572
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    const-string/jumbo v1, " [Population: "

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 573
    iget v1, p0, Lcom/android/internal/graphics/palette/Palette$Swatch;->mPopulation:I

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    const-string/jumbo v1, " [Title Text: #"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 574
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getTitleTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    const-string/jumbo v1, " [Body Text: #"

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 576
    invoke-virtual {p0}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getBodyTextColor()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 570
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method