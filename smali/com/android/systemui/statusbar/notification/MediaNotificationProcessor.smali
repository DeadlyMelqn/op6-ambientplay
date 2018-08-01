.class public Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;
.super Ljava/lang/Object;
.source "MediaNotificationProcessor.java"


# instance fields
.field private mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

.field private final mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

.field private final mContext:Landroid/content/Context;

.field private mFilteredBackgroundHsl:[F

.field private mIsLowPriority:Z

.field private final mPackageContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageContext"    # Landroid/content/Context;

    .prologue
    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;-><init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V

    .line 83
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/Context;Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageContext"    # Landroid/content/Context;
    .param p3, "colorizer"    # Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 72
    new-instance v0, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    .line 89
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    .line 90
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    .line 91
    return-void
.end method

.method private findBackgroundColorAndFilter(Landroid/support/v7/graphics/Palette;)I
    .locals 9
    .param p1, "palette"    # Landroid/support/v7/graphics/Palette;

    .prologue
    const/4 v8, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 253
    .local v0, "dominantSwatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-nez v0, :cond_0

    .line 255
    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 256
    const/4 v6, -0x1

    return v6

    .line 259
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 260
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 261
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6

    .line 264
    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette;->getSwatches()Ljava/util/List;

    move-result-object v5

    .line 265
    .local v5, "swatches":Ljava/util/List;, "Ljava/util/List<Landroid/support/v7/graphics/Palette$Swatch;>;"
    const/high16 v1, -0x40800000    # -1.0f

    .line 266
    .local v1, "highestNonWhitePopulation":F
    const/4 v2, 0x0

    .line 267
    .local v2, "second":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .end local v2    # "second":Landroid/support/v7/graphics/Palette$Swatch;
    .local v4, "swatch$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/graphics/Palette$Swatch;

    .line 268
    .local v3, "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    if-eq v3, v0, :cond_2

    .line 269
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    cmpl-float v6, v6, v1

    if-lez v6, :cond_2

    .line 270
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    .line 268
    if-eqz v6, :cond_2

    .line 271
    move-object v2, v3

    .line 272
    .local v2, "second":Landroid/support/v7/graphics/Palette$Swatch;
    invoke-virtual {v3}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v1, v6

    goto :goto_0

    .line 275
    .end local v2    # "second":Landroid/support/v7/graphics/Palette$Swatch;
    .end local v3    # "swatch":Landroid/support/v7/graphics/Palette$Swatch;
    :cond_3
    if-nez v2, :cond_4

    .line 277
    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 278
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6

    .line 280
    :cond_4
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    .line 281
    const/high16 v7, 0x40200000    # 2.5f

    .line 280
    cmpl-float v6, v6, v7

    if-lez v6, :cond_5

    .line 284
    iput-object v8, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 285
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6

    .line 287
    :cond_5
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    .line 288
    invoke-virtual {v2}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v6

    return v6
.end method

.method private hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z
    .locals 6
    .param p1, "swatch"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    const/4 v0, 0x0

    .line 246
    if-eqz p1, :cond_0

    .line 247
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    const v2, 0x46afc800    # 22500.0f

    div-float/2addr v1, v2

    float-to-double v2, v1

    const-wide v4, 0x3f60624dd2f1a9fcL    # 0.002

    cmpl-double v1, v2, v4

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 246
    :cond_0
    return v0
.end method

.method private isBlack([F)Z
    .locals 2
    .param p1, "hslColor"    # [F

    .prologue
    .line 301
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3da3d70a    # 0.08f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhite([F)Z
    .locals 2
    .param p1, "hslColor"    # [F

    .prologue
    .line 308
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f666666    # 0.9f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isWhiteOrBlack([F)Z
    .locals 1
    .param p1, "hsl"    # [F

    .prologue
    .line 293
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isBlack([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhite([F)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private selectForegroundColor(ILandroid/support/v7/graphics/Palette;)I
    .locals 7
    .param p1, "backgroundColor"    # I
    .param p2, "palette"    # Landroid/support/v7/graphics/Palette;

    .prologue
    .line 162
    invoke-static {p1}, Lcom/android/internal/util/NotificationColorUtil;->isColorLight(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDarkVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    .line 164
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 165
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDarkMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 166
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    .line 167
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v5

    .line 168
    const/high16 v6, -0x1000000

    move-object v0, p0

    .line 163
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I

    move-result v0

    return v0

    .line 170
    :cond_0
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v1

    .line 171
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getVibrantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v2

    .line 172
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getLightMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v3

    .line 173
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getMutedSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v4

    .line 174
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette;->getDominantSwatch()Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v5

    .line 175
    const/4 v6, -0x1

    move-object v0, p0

    .line 170
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I

    move-result v0

    return v0
.end method

.method private selectForegroundColorForSwatches(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;I)I
    .locals 3
    .param p1, "moreVibrant"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "vibrant"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p3, "moreMutedSwatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p4, "mutedSwatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p5, "dominantSwatch"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p6, "fallbackColor"    # I

    .prologue
    .line 182
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectVibrantCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 183
    .local v0, "coloredCandidate":Landroid/support/v7/graphics/Palette$Swatch;
    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0, p4, p3}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectMutedCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;

    move-result-object v0

    .line 186
    :cond_0
    if-eqz v0, :cond_3

    .line 187
    if-ne p5, v0, :cond_1

    .line 188
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 189
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 190
    const v2, 0x3c23d70a    # 0.01f

    .line 189
    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 191
    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v1

    const/4 v2, 0x1

    aget v1, v1, v2

    const v2, 0x3e428f5c    # 0.19f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 192
    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 194
    :cond_2
    invoke-virtual {v0}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 196
    :cond_3
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 197
    invoke-virtual {p5}, Landroid/support/v7/graphics/Palette$Swatch;->getRgb()I

    move-result v1

    return v1

    .line 199
    :cond_4
    return p6
.end method

.method private selectMutedCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 7
    .param p1, "first"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "second"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    const/4 v6, 0x1

    .line 205
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    .line 206
    .local v1, "firstValid":Z
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v4

    .line 207
    .local v4, "secondValid":Z
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 208
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v5

    aget v0, v5, v6

    .line 209
    .local v0, "firstSaturation":F
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getHsl()[F

    move-result-object v5

    aget v3, v5, v6

    .line 210
    .local v3, "secondSaturation":F
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v6

    int-to-float v6, v6

    div-float v2, v5, v6

    .line 211
    .local v2, "populationFraction":F
    mul-float v5, v0, v2

    cmpl-float v5, v5, v3

    if-lez v5, :cond_0

    .line 212
    return-object p1

    .line 214
    :cond_0
    return-object p2

    .line 216
    .end local v0    # "firstSaturation":F
    .end local v2    # "populationFraction":F
    .end local v3    # "secondSaturation":F
    :cond_1
    if-eqz v1, :cond_2

    .line 217
    return-object p1

    .line 218
    :cond_2
    if-eqz v4, :cond_3

    .line 219
    return-object p2

    .line 221
    :cond_3
    const/4 v5, 0x0

    return-object v5
.end method

.method private selectVibrantCandidate(Landroid/support/v7/graphics/Palette$Swatch;Landroid/support/v7/graphics/Palette$Swatch;)Landroid/support/v7/graphics/Palette$Swatch;
    .locals 6
    .param p1, "first"    # Landroid/support/v7/graphics/Palette$Swatch;
    .param p2, "second"    # Landroid/support/v7/graphics/Palette$Swatch;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v1

    .line 226
    .local v1, "firstValid":Z
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->hasEnoughPopulation(Landroid/support/v7/graphics/Palette$Swatch;)Z

    move-result v3

    .line 227
    .local v3, "secondValid":Z
    if-eqz v1, :cond_1

    if-eqz v3, :cond_1

    .line 228
    invoke-virtual {p1}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v0

    .line 229
    .local v0, "firstPopulation":I
    invoke-virtual {p2}, Landroid/support/v7/graphics/Palette$Swatch;->getPopulation()I

    move-result v2

    .line 230
    .local v2, "secondPopulation":I
    int-to-float v4, v0

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 231
    const/high16 v5, 0x3f800000    # 1.0f

    .line 230
    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    .line 232
    return-object p2

    .line 234
    :cond_0
    return-object p1

    .line 236
    .end local v0    # "firstPopulation":I
    .end local v2    # "secondPopulation":I
    :cond_1
    if-eqz v1, :cond_2

    .line 237
    return-object p1

    .line 238
    :cond_2
    if-eqz v3, :cond_3

    .line 239
    return-object p2

    .line 241
    :cond_3
    const/4 v4, 0x0

    return-object v4
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_2612(I[F)Z
    .locals 1
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .prologue
    .line 72
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->isWhiteOrBlack([F)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_MediaNotificationProcessor_5787(I[F)Z
    .locals 4
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .prologue
    const/4 v1, 0x0

    .line 140
    aget v2, p2, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    aget v3, v3, v1

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 141
    .local v0, "diff":F
    const/high16 v2, 0x41200000    # 10.0f

    cmpl-float v2, v0, v2

    if-lez v2, :cond_0

    const/high16 v2, 0x43af0000    # 350.0f

    cmpg-float v2, v0, v2

    if-gez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public processNotification(Landroid/app/Notification;Landroid/app/Notification$Builder;)V
    .locals 27
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "builder"    # Landroid/app/Notification$Builder;

    .prologue
    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object v17

    .line 102
    .local v17, "largeIcon":Landroid/graphics/drawable/Icon;
    const/4 v8, 0x0

    .line 103
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    const/4 v11, 0x0

    .line 104
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v17, :cond_2

    .line 107
    const/16 v22, 0x1

    move-object/from16 v0, p2

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setRebuildStyledRemoteViews(Z)V

    .line 108
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mPackageContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 109
    .local v11, "drawable":Landroid/graphics/drawable/Drawable;
    const/4 v7, 0x0

    .line 110
    .local v7, "backgroundColor":I
    invoke-virtual/range {p1 .. p1}, Landroid/app/Notification;->isColorizedMedia()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 111
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v21

    .line 112
    .local v21, "width":I
    invoke-virtual {v11}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v15

    .line 113
    .local v15, "height":I
    mul-int v6, v21, v15

    .line 114
    .local v6, "area":I
    const/16 v22, 0x57e4

    move/from16 v0, v22

    if-le v6, v0, :cond_0

    .line 115
    int-to-float v0, v6

    move/from16 v22, v0

    const v23, 0x46afc800    # 22500.0f

    div-float v22, v23, v22

    move/from16 v0, v22

    float-to-double v0, v0

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    .line 116
    .local v12, "factor":D
    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v22

    double-to-int v0, v0

    move/from16 v21, v0

    .line 117
    int-to-double v0, v15

    move-wide/from16 v22, v0

    mul-double v22, v22, v12

    move-wide/from16 v0, v22

    double-to-int v15, v0

    .line 119
    .end local v12    # "factor":D
    :cond_0
    sget-object v22, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    move/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v15, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 120
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 121
    .local v9, "canvas":Landroid/graphics/Canvas;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v21

    invoke-virtual {v11, v0, v1, v2, v15}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 122
    invoke-virtual {v11, v9}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 126
    invoke-static {v8}, Landroid/support/v7/graphics/Palette;->from(Landroid/graphics/Bitmap;)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v22

    .line 127
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    div-int/lit8 v23, v23, 0x2

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    const/16 v25, 0x0

    const/16 v26, 0x0

    .line 126
    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/support/v7/graphics/Palette$Builder;->clearFilters()Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v22

    .line 129
    const/16 v23, 0x57e4

    .line 126
    invoke-virtual/range {v22 .. v23}, Landroid/support/v7/graphics/Palette$Builder;->resizeBitmapArea(I)Landroid/support/v7/graphics/Palette$Builder;

    move-result-object v19

    .line 130
    .local v19, "paletteBuilder":Landroid/support/v7/graphics/Palette$Builder;
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v18

    .line 131
    .local v18, "palette":Landroid/support/v7/graphics/Palette;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->findBackgroundColorAndFilter(Landroid/support/v7/graphics/Palette;)I

    move-result v7

    .line 133
    const v20, 0x3ecccccd    # 0.4f

    .line 134
    .local v20, "textColorStartWidthFraction":F
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v22

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    .line 133
    const v23, 0x3ecccccd    # 0.4f

    .line 134
    mul-float v22, v22, v23

    move/from16 v0, v22

    float-to-int v0, v0

    move/from16 v22, v0

    .line 135
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v23

    .line 136
    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v24

    .line 134
    const/16 v25, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v22

    move/from16 v2, v25

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v7/graphics/Palette$Builder;->setRegion(IIII)Landroid/support/v7/graphics/Palette$Builder;

    .line 137
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mFilteredBackgroundHsl:[F

    move-object/from16 v22, v0

    if-eqz v22, :cond_1

    .line 138
    new-instance v22, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    move-object/from16 v2, p0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/-$Lambda$i-OzK8bcRGEPVjiIvScg5OybJuA;-><init>(BLjava/lang/Object;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    .line 144
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mBlackWhiteFilter:Landroid/support/v7/graphics/Palette$Filter;

    move-object/from16 v22, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/support/v7/graphics/Palette$Builder;->addFilter(Landroid/support/v7/graphics/Palette$Filter;)Landroid/support/v7/graphics/Palette$Builder;

    .line 145
    invoke-virtual/range {v19 .. v19}, Landroid/support/v7/graphics/Palette$Builder;->generate()Landroid/support/v7/graphics/Palette;

    move-result-object v18

    .line 146
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v7, v1}, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->selectForegroundColor(ILandroid/support/v7/graphics/Palette;)I

    move-result v14

    .line 147
    .local v14, "foregroundColor":I
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v14}, Landroid/app/Notification$Builder;->setColorPalette(II)V

    .line 154
    .end local v6    # "area":I
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v9    # "canvas":Landroid/graphics/Canvas;
    .end local v14    # "foregroundColor":I
    .end local v15    # "height":I
    .end local v18    # "palette":Landroid/support/v7/graphics/Palette;
    .end local v19    # "paletteBuilder":Landroid/support/v7/graphics/Palette$Builder;
    .end local v20    # "textColorStartWidthFraction":F
    .end local v21    # "width":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mColorizer:Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;

    move-object/from16 v23, v0

    .line 155
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v22

    .line 156
    const/16 v24, 0x1

    .line 155
    move/from16 v0, v22

    move/from16 v1, v24

    if-ne v0, v1, :cond_5

    const/16 v22, 0x1

    .line 154
    :goto_1
    move-object/from16 v0, v23

    move/from16 v1, v22

    invoke-virtual {v0, v11, v7, v1}, Lcom/android/systemui/statusbar/notification/ImageGradientColorizer;->colorize(Landroid/graphics/drawable/Drawable;IZ)Landroid/graphics/Bitmap;

    move-result-object v10

    .line 157
    .local v10, "colorized":Landroid/graphics/Bitmap;
    invoke-static {v10}, Landroid/graphics/drawable/Icon;->createWithBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v22

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/drawable/Icon;)Landroid/app/Notification$Builder;

    .line 159
    .end local v7    # "backgroundColor":I
    .end local v10    # "colorized":Landroid/graphics/Bitmap;
    .end local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-void

    .line 149
    .restart local v7    # "backgroundColor":I
    .local v8, "bitmap":Landroid/graphics/Bitmap;
    .restart local v11    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mIsLowPriority:Z

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 150
    const v16, 0x7f0600a1

    .line 152
    .local v16, "id":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v7

    goto :goto_0

    .line 151
    .end local v16    # "id":I
    :cond_4
    const v16, 0x7f06009e

    .restart local v16    # "id":I
    goto :goto_2

    .line 155
    .end local v8    # "bitmap":Landroid/graphics/Bitmap;
    .end local v16    # "id":I
    :cond_5
    const/16 v22, 0x0

    goto :goto_1
.end method

.method public setIsLowPriority(Z)V
    .locals 0
    .param p1, "isLowPriority"    # Z

    .prologue
    .line 312
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/MediaNotificationProcessor;->mIsLowPriority:Z

    .line 313
    return-void
.end method
