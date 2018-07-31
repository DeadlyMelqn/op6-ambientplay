.class public Lcom/android/internal/colorextraction/types/Tonal;
.super Ljava/lang/Object;
.source "Tonal.java"

# interfaces
.implements Lcom/android/internal/colorextraction/types/ExtractionType;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/colorextraction/types/Tonal$ColorRange;,
        Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;,
        Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FIT_WEIGHT_H:F = 1.0f

.field private static final FIT_WEIGHT_L:F = 10.0f

.field private static final FIT_WEIGHT_S:F = 1.0f

.field public static final MAIN_COLOR_DARK:I = -0xdededf

.field public static final MAIN_COLOR_LIGHT:I = -0x1f1f20

.field public static final SECONDARY_COLOR_DARK:I = -0x1000000

.field public static final SECONDARY_COLOR_LIGHT:I = -0x616162

.field private static final TAG:Ljava/lang/String; = "Tonal"


# instance fields
.field private final mBlacklistedColors:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

.field private mTmpHSL:[F

.field private final mTonalPalettes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v1, 0x3

    new-array v1, v1, [F

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    .line 68
    new-instance v0, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;

    invoke-direct {v0, p1}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;-><init>(Landroid/content/Context;)V

    .line 69
    .local v0, "parser":Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getTonalPalettes()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    .line 70
    invoke-virtual {v0}, Lcom/android/internal/colorextraction/types/Tonal$ConfigParser;->getBlacklistedColors()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    .line 72
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    iput-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 73
    iget-object v1, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 74
    return-void
.end method

.method public static applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 4
    .param p0, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p1, "outGradientColors"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .prologue
    .line 271
    if-eqz p0, :cond_1

    .line 272
    invoke-virtual {p0}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 274
    .local v1, "light":Z
    :goto_0
    if-eqz v1, :cond_2

    const v0, -0x1f1f20

    .line 275
    .local v0, "innerColor":I
    :goto_1
    if-eqz v1, :cond_3

    const v2, -0x616162

    .line 277
    .local v2, "outerColor":I
    :goto_2
    invoke-virtual {p1, v0}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 278
    invoke-virtual {p1, v2}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 279
    invoke-virtual {p1, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 280
    return-void

    .line 272
    .end local v0    # "innerColor":I
    .end local v1    # "light":Z
    .end local v2    # "outerColor":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "light":Z
    goto :goto_0

    .line 271
    .end local v1    # "light":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "light":Z
    goto :goto_0

    .line 274
    :cond_2
    const v0, -0xdededf

    .restart local v0    # "innerColor":I
    goto :goto_1

    .line 275
    :cond_3
    const/high16 v2, -0x1000000

    .restart local v2    # "outerColor":I
    goto :goto_2
.end method

.method private applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 0
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .prologue
    .line 258
    invoke-static {p1, p2}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 259
    invoke-static {p1, p3}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 260
    invoke-static {p1, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 261
    return-void
.end method

.method private static bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I
    .locals 8
    .param p0, "palette"    # Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .param p1, "h"    # F
    .param p2, "s"    # F
    .param p3, "l"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 335
    const/4 v3, -0x1

    .line 336
    .local v3, "minErrorIndex":I
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 338
    .local v2, "minError":F
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 340
    iget-object v4, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    aget v4, v4, v1

    sub-float v4, p1, v4

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    mul-float/2addr v4, v7

    .line 341
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    aget v5, v5, v1

    sub-float v5, p2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    mul-float/2addr v5, v7

    .line 340
    add-float/2addr v4, v5

    .line 342
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    aget v5, v5, v1

    sub-float v5, p3, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x41200000    # 10.0f

    mul-float/2addr v5, v6

    .line 340
    add-float v0, v4, v5

    .line 343
    .local v0, "error":F
    cmpg-float v4, v0, v2

    if-gez v4, :cond_0

    .line 344
    move v2, v0

    .line 345
    move v3, v1

    .line 338
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 349
    .end local v0    # "error":F
    :cond_1
    return v3
.end method

.method private findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .locals 8
    .param p1, "h"    # F
    .param p2, "s"    # F

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 361
    const v5, 0x3d4ccccd    # 0.05f

    cmpg-float v5, p2, v5

    if-gez v5, :cond_0

    .line 362
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mGreyPalette:Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    return-object v5

    .line 365
    :cond_0
    const/4 v0, 0x0

    .line 366
    .local v0, "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 368
    .local v2, "error":F
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 369
    .local v4, "tonalPalettesCount":I
    const/4 v3, 0x0

    .end local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 370
    iget-object v5, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTonalPalettes:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    .line 372
    .local v1, "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_2

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_2

    .line 373
    move-object v0, v1

    .line 404
    .end local v1    # "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_1
    :goto_1
    return-object v0

    .line 377
    .restart local v1    # "candidate":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_2
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    cmpl-float v5, p1, v6

    if-ltz v5, :cond_3

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_3

    .line 378
    move-object v0, v1

    .line 379
    .local v0, "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    goto :goto_1

    .line 382
    .end local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_3
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_4

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_4

    cmpg-float v5, p1, v7

    if-gtz v5, :cond_4

    .line 383
    move-object v0, v1

    .line 384
    .restart local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    goto :goto_1

    .line 387
    .end local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_4
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_6

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_6

    .line 388
    move-object v0, v1

    .line 389
    .restart local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    sub-float v2, v5, p1

    .line 369
    .end local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 390
    :cond_6
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_7

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v5, p1, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_7

    .line 391
    move-object v0, v1

    .line 392
    .restart local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    sub-float v2, p1, v5

    .line 390
    goto :goto_2

    .line 393
    .end local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_7
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    cmpl-float v5, v5, v7

    if-lez v5, :cond_8

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpl-float v5, p1, v5

    if-ltz v5, :cond_8

    .line 394
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v5, p1, v5

    cmpg-float v5, v5, v2

    if-gez v5, :cond_8

    .line 395
    move-object v0, v1

    .line 396
    .restart local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v2, p1, v5

    .line 394
    goto :goto_2

    .line 397
    .end local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    :cond_8
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    cmpg-float v5, v5, v6

    if-gez v5, :cond_5

    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    cmpg-float v5, p1, v5

    if-gtz v5, :cond_5

    .line 398
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float/2addr v5, p1

    cmpg-float v5, v5, v2

    if-gez v5, :cond_5

    .line 399
    move-object v0, v1

    .line 400
    .restart local v0    # "best":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    iget v5, v1, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    invoke-static {v5}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v5

    sub-float v2, v5, p1

    goto :goto_2
.end method

.method private static fit([FFIFF)[F
    .locals 4
    .param p0, "data"    # [F
    .param p1, "v"    # F
    .param p2, "index"    # I
    .param p3, "min"    # F
    .param p4, "max"    # F

    .prologue
    .line 315
    array-length v3, p0

    new-array v1, v3, [F

    .line 316
    .local v1, "fitData":[F
    aget v3, p0, p2

    sub-float v0, p1, v3

    .line 318
    .local v0, "delta":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    .line 319
    aget v3, p0, v2

    add-float/2addr v3, v0

    invoke-static {v3, p3, p4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v3

    aput v3, v1, v2

    .line 318
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_0
    return-object v1
.end method

.method private static fract(F)F
    .locals 2
    .param p0, "v"    # F

    .prologue
    .line 408
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v0, v0

    sub-float v0, p0, v0

    return v0
.end method

.method private getColorInt(I[F[F[F)I
    .locals 3
    .param p1, "fitIndex"    # I
    .param p2, "h"    # [F
    .param p3, "s"    # [F
    .param p4, "l"    # [F

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p2, p1

    invoke-static {v1}, Lcom/android/internal/colorextraction/types/Tonal;->fract(F)F

    move-result v1

    const/high16 v2, 0x43b40000    # 360.0f

    mul-float/2addr v1, v2

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 284
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p3, p1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 285
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    aget v1, p4, p1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 286
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    invoke-static {v0}, Lcom/android/internal/graphics/ColorUtils;->HSLToColor([F)I

    move-result v0

    return v0
.end method

.method private isBlacklisted([F)Z
    .locals 7
    .param p1, "hsl"    # [F

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 295
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;

    .line 297
    .local v0, "badRange":Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    aget v2, p1, v5

    aget v3, p1, v6

    const/4 v4, 0x2

    aget v4, p1, v4

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/colorextraction/types/Tonal$ColorRange;->containsColor(FFF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 298
    return v6

    .line 295
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 301
    .end local v0    # "badRange":Lcom/android/internal/colorextraction/types/Tonal$ColorRange;
    :cond_1
    return v5
.end method

.method private runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z
    .locals 30
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .prologue
    .line 108
    if-nez p1, :cond_0

    .line 109
    const/16 v26, 0x0

    return v26

    .line 112
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v18

    .line 113
    .local v18, "mainColors":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Color;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    .line 114
    .local v19, "mainColorsSize":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v12

    .line 115
    .local v12, "hints":I
    and-int/lit8 v26, v12, 0x1

    if-eqz v26, :cond_1

    const/16 v25, 0x1

    .line 116
    .local v25, "supportsDarkText":Z
    :goto_0
    and-int/lit8 v26, v12, 0x4

    if-eqz v26, :cond_2

    const/4 v10, 0x1

    .line 118
    .local v10, "generatedFromBitmap":Z
    :goto_1
    if-nez v19, :cond_3

    .line 119
    const/16 v26, 0x0

    return v26

    .line 115
    .end local v10    # "generatedFromBitmap":Z
    .end local v25    # "supportsDarkText":Z
    :cond_1
    const/16 v25, 0x0

    .restart local v25    # "supportsDarkText":Z
    goto :goto_0

    .line 116
    :cond_2
    const/4 v10, 0x0

    .restart local v10    # "generatedFromBitmap":Z
    goto :goto_1

    .line 127
    :cond_3
    const/4 v4, 0x0

    .line 128
    .local v4, "bestColor":Landroid/graphics/Color;
    const/16 v26, 0x3

    move/from16 v0, v26

    new-array v13, v0, [F

    .line 129
    .local v13, "hsl":[F
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    move/from16 v0, v19

    if-ge v14, v0, :cond_5

    .line 130
    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Color;

    .line 131
    .local v6, "color":Landroid/graphics/Color;
    invoke-virtual {v6}, Landroid/graphics/Color;->toArgb()I

    move-result v7

    .line 132
    .local v7, "colorValue":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v26

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v27

    .line 133
    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v28

    .line 132
    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 136
    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/internal/colorextraction/types/Tonal;->isBlacklisted([F)Z

    move-result v26

    xor-int/lit8 v26, v26, 0x1

    if-eqz v26, :cond_6

    .line 137
    :cond_4
    move-object v4, v6

    .line 143
    .end local v4    # "bestColor":Landroid/graphics/Color;
    .end local v6    # "color":Landroid/graphics/Color;
    .end local v7    # "colorValue":I
    :cond_5
    if-nez v4, :cond_7

    .line 144
    const/16 v26, 0x0

    return v26

    .line 129
    .restart local v4    # "bestColor":Landroid/graphics/Color;
    .restart local v6    # "color":Landroid/graphics/Color;
    .restart local v7    # "colorValue":I
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 151
    .end local v4    # "bestColor":Landroid/graphics/Color;
    .end local v6    # "color":Landroid/graphics/Color;
    .end local v7    # "colorValue":I
    :cond_7
    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v7

    .line 152
    .restart local v7    # "colorValue":I
    invoke-static {v7}, Landroid/graphics/Color;->red(I)I

    move-result v26

    invoke-static {v7}, Landroid/graphics/Color;->green(I)I

    move-result v27

    invoke-static {v7}, Landroid/graphics/Color;->blue(I)I

    move-result v28

    move/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-static {v0, v1, v2, v13}, Lcom/android/internal/graphics/ColorUtils;->RGBToHSL(III[F)V

    .line 157
    const/16 v26, 0x0

    aget v27, v13, v26

    const/high16 v28, 0x43b40000    # 360.0f

    div-float v27, v27, v28

    aput v27, v13, v26

    .line 160
    const/16 v26, 0x0

    aget v26, v13, v26

    const/16 v27, 0x1

    aget v27, v13, v27

    move-object/from16 v0, p0

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-direct {v0, v1, v2}, Lcom/android/internal/colorextraction/types/Tonal;->findTonalPalette(FF)Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;

    move-result-object v21

    .line 161
    .local v21, "palette":Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
    if-nez v21, :cond_8

    .line 162
    const-string/jumbo v26, "Tonal"

    const-string/jumbo v27, "Could not find a tonal palette!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    const/16 v26, 0x0

    return v26

    .line 167
    :cond_8
    const/16 v26, 0x0

    aget v26, v13, v26

    const/16 v27, 0x1

    aget v27, v13, v27

    const/16 v28, 0x2

    aget v28, v13, v28

    move-object/from16 v0, v21

    move/from16 v1, v26

    move/from16 v2, v27

    move/from16 v3, v28

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->bestFit(Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;FFF)I

    move-result v9

    .line 168
    .local v9, "fitIndex":I
    const/16 v26, -0x1

    move/from16 v0, v26

    if-ne v9, v0, :cond_9

    .line 169
    const-string/jumbo v26, "Tonal"

    const-string/jumbo v27, "Could not find best fit!"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    const/16 v26, 0x0

    return v26

    .line 174
    :cond_9
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget v27, v13, v27

    .line 175
    const/high16 v28, -0x800000    # Float.NEGATIVE_INFINITY

    const/high16 v29, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 174
    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v11

    .line 176
    .local v11, "h":[F
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v27, v13, v27

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v23

    .line 177
    .local v23, "s":[F
    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v27, v13, v27

    const/16 v28, 0x0

    const/high16 v29, 0x3f800000    # 1.0f

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    move/from16 v3, v29

    invoke-static {v0, v1, v9, v2, v3}, Lcom/android/internal/colorextraction/types/Tonal;->fit([FFIFF)[F

    move-result-object v15

    .line 180
    .local v15, "l":[F
    new-instance v5, Ljava/lang/StringBuilder;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v27, "Tonal Palette - index: "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 181
    const-string/jumbo v27, ". Main color: "

    .line 180
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 181
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v11, v1, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v27

    .line 180
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    .line 182
    const-string/jumbo v27, "\nColors: "

    .line 180
    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v5, "builder":Ljava/lang/StringBuilder;
    const/4 v14, 0x0

    :goto_3
    array-length v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v14, v0, :cond_b

    .line 185
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v14, v11, v1, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-ge v14, v0, :cond_a

    .line 187
    const-string/jumbo v26, ", "

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    :cond_a
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 190
    :cond_b
    const-string/jumbo v26, "Tonal"

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    move/from16 v22, v9

    .line 194
    .local v22, "primaryIndex":I
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    invoke-direct {v0, v9, v11, v1, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v17

    .line 198
    .local v17, "mainColor":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    move/from16 v0, v17

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 199
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v20, v26, v27

    .line 200
    .local v20, "mainLuminosity":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const v27, -0x1f1f20

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 201
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v16, v26, v27

    .line 202
    .local v16, "lightLuminosity":F
    cmpl-float v26, v20, v16

    if-lez v26, :cond_c

    .line 203
    const/16 v26, 0x0

    return v26

    .line 205
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const v27, -0xdededf

    move/from16 v0, v27

    move-object/from16 v1, v26

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 206
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/colorextraction/types/Tonal;->mTmpHSL:[F

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget v8, v26, v27

    .line 207
    .local v8, "darkLuminosity":F
    cmpg-float v26, v20, v8

    if-gez v26, :cond_d

    .line 208
    const/16 v26, 0x0

    return v26

    .line 213
    :cond_d
    move-object/from16 v0, p2

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 214
    const/16 v26, 0x2

    move/from16 v0, v26

    if-lt v9, v0, :cond_e

    const/16 v26, -0x2

    :goto_4
    add-int v24, v9, v26

    .line 215
    .local v24, "secondaryIndex":I
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p2

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 219
    if-eqz v25, :cond_f

    .line 220
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    .line 226
    :goto_5
    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_11

    const/16 v26, -0x2

    :goto_6
    add-int v24, v22, v26

    .line 227
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 228
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p3

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 232
    if-eqz v25, :cond_12

    .line 233
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v22, v26, -0x1

    .line 239
    :goto_7
    const/16 v26, 0x2

    move/from16 v0, v22

    move/from16 v1, v26

    if-lt v0, v1, :cond_14

    const/16 v26, -0x2

    :goto_8
    add-int v24, v22, v26

    .line 240
    move-object/from16 v0, p0

    move/from16 v1, v22

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setMainColor(I)V

    .line 241
    move-object/from16 v0, p0

    move/from16 v1, v24

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v11, v2, v15}, Lcom/android/internal/colorextraction/types/Tonal;->getColorInt(I[F[F[F)I

    move-result v26

    move-object/from16 v0, p4

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSecondaryColor(I)V

    .line 243
    move-object/from16 v0, p2

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 244
    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 245
    move-object/from16 v0, p4

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;->setSupportsDarkText(Z)V

    .line 248
    const-string/jumbo v26, "Tonal"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, "Gradients: \n\tNormal "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string/jumbo v28, "\n\tDark "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    .line 249
    const-string/jumbo v28, "\n\tExtra dark: "

    .line 248
    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v26, 0x1

    return v26

    .line 214
    .end local v24    # "secondaryIndex":I
    :cond_e
    const/16 v26, 0x2

    goto/16 :goto_4

    .line 221
    .restart local v24    # "secondaryIndex":I
    :cond_f
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v9, v0, :cond_10

    .line 222
    const/16 v22, 0x0

    goto/16 :goto_5

    .line 224
    :cond_10
    const/16 v26, 0x3

    move/from16 v0, v26

    invoke-static {v9, v0}, Ljava/lang/Math;->min(II)I

    move-result v22

    goto/16 :goto_5

    .line 226
    :cond_11
    const/16 v26, 0x2

    goto/16 :goto_6

    .line 234
    :cond_12
    const/16 v26, 0x2

    move/from16 v0, v26

    if-ge v9, v0, :cond_13

    .line 235
    const/16 v22, 0x0

    goto/16 :goto_7

    .line 237
    :cond_13
    const/16 v22, 0x2

    goto/16 :goto_7

    .line 239
    :cond_14
    const/16 v26, 0x2

    goto/16 :goto_8
.end method


# virtual methods
.method public extractInto(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V
    .locals 1
    .param p1, "inWallpaperColors"    # Landroid/app/WallpaperColors;
    .param p2, "outColorsNormal"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p3, "outColorsDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;
    .param p4, "outColorsExtraDark"    # Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->runTonalExtraction(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)Z

    move-result v0

    .line 90
    .local v0, "success":Z
    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/colorextraction/types/Tonal;->applyFallback(Landroid/app/WallpaperColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;)V

    .line 93
    :cond_0
    return-void
.end method

.method public getBlacklistedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/colorextraction/types/Tonal$ColorRange;",
            ">;"
        }
    .end annotation

    .prologue
    .line 354
    iget-object v0, p0, Lcom/android/internal/colorextraction/types/Tonal;->mBlacklistedColors:Ljava/util/ArrayList;

    return-object v0
.end method
