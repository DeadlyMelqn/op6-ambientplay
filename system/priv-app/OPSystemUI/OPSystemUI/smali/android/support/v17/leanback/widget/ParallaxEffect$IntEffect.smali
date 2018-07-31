.class final Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;
.super Landroid/support/v17/leanback/widget/ParallaxEffect;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/ParallaxEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "IntEffect"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 278
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/ParallaxEffect;-><init>()V

    return-void
.end method


# virtual methods
.method calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;
    .locals 8
    .param p1, "source"    # Landroid/support/v17/leanback/widget/Parallax;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 282
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_0

    .line 283
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Must use two marker values for direct mapping"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 285
    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v5

    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v4

    if-eq v5, v4, :cond_1

    .line 286
    new-instance v4, Ljava/lang/RuntimeException;

    .line 287
    const-string/jumbo v5, "Marker value must use same Property for direct mapping"

    .line 286
    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 289
    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I

    move-result v2

    .line 291
    .local v2, "value1":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I

    move-result v3

    .line 293
    .local v3, "value2":I
    if-le v2, v3, :cond_2

    .line 294
    move v1, v3

    .line 295
    .local v1, "swapValue":I
    move v3, v2

    .line 296
    move v2, v1

    .line 299
    .end local v1    # "swapValue":I
    :cond_2
    iget-object v4, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->get(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Integer;

    move-result-object v0

    .line 300
    .local v0, "currentValue":Ljava/lang/Number;
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-ge v4, v2, :cond_4

    .line 301
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 305
    :cond_3
    :goto_0
    return-object v0

    .line 302
    :cond_4
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v4

    if-le v4, v3, :cond_3

    .line 303
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F
    .locals 12
    .param p1, "source"    # Landroid/support/v17/leanback/widget/Parallax;

    .prologue
    const/high16 v11, 0x3f800000    # 1.0f

    .line 310
    const/4 v5, 0x0

    .line 311
    .local v5, "lastIndex":I
    const/4 v7, 0x0

    .line 312
    .local v7, "lastValue":I
    const/4 v6, 0x0

    .line 314
    .local v6, "lastMarkerValue":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v9, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_6

    .line 316
    iget-object v9, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v9, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;

    .line 317
    .local v4, "k":Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getProperty()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/support/v17/leanback/widget/Parallax$IntProperty;

    invoke-virtual {v9}, Landroid/support/v17/leanback/widget/Parallax$IntProperty;->getIndex()I

    move-result v3

    .line 318
    .local v3, "index":I
    invoke-virtual {v4, p1}, Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;->getMarkerValue(Landroid/support/v17/leanback/widget/Parallax;)I

    move-result v8

    .line 319
    .local v8, "markerValue":I
    invoke-virtual {p1, v3}, Landroid/support/v17/leanback/widget/Parallax;->getIntPropertyValue(I)I

    move-result v0

    .line 322
    .local v0, "currentValue":I
    if-nez v2, :cond_0

    .line 323
    if-lt v0, v8, :cond_5

    .line 324
    const/4 v9, 0x0

    return v9

    .line 327
    :cond_0
    if-ne v5, v3, :cond_1

    if-ge v6, v8, :cond_1

    .line 328
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "marker value of same variable must be descendant order"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 331
    :cond_1
    const v9, 0x7fffffff

    if-ne v0, v9, :cond_2

    .line 335
    sub-int v9, v6, v7

    int-to-float v9, v9

    .line 336
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v10

    .line 335
    div-float v1, v9, v10

    .line 337
    .local v1, "fraction":F
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    .line 338
    .end local v1    # "fraction":F
    :cond_2
    if-lt v0, v8, :cond_5

    .line 339
    if-ne v5, v3, :cond_3

    .line 343
    sub-int v9, v6, v0

    int-to-float v9, v9

    .line 344
    sub-int v10, v6, v8

    int-to-float v10, v10

    .line 343
    div-float v1, v9, v10

    .line 359
    .restart local v1    # "fraction":F
    :goto_1
    invoke-virtual {p0, v1, v2}, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;->getFractionWithWeightAdjusted(FI)F

    move-result v9

    return v9

    .line 345
    .end local v1    # "fraction":F
    :cond_3
    const/high16 v9, -0x80000000

    if-eq v7, v9, :cond_4

    .line 349
    sub-int v9, v0, v7

    add-int/2addr v6, v9

    .line 350
    sub-int v9, v6, v0

    int-to-float v9, v9

    .line 351
    sub-int v10, v6, v8

    int-to-float v10, v10

    .line 350
    div-float v1, v9, v10

    .restart local v1    # "fraction":F
    goto :goto_1

    .line 356
    .end local v1    # "fraction":F
    :cond_4
    sub-int v9, v0, v8

    int-to-float v9, v9

    .line 357
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->getMaxValue()F

    move-result v10

    .line 356
    div-float/2addr v9, v10

    sub-float v1, v11, v9

    .restart local v1    # "fraction":F
    goto :goto_1

    .line 362
    .end local v1    # "fraction":F
    :cond_5
    move v7, v0

    .line 363
    move v5, v3

    .line 364
    move v6, v8

    .line 314
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .end local v0    # "currentValue":I
    .end local v3    # "index":I
    .end local v4    # "k":Landroid/support/v17/leanback/widget/Parallax$IntPropertyMarkerValue;
    .end local v8    # "markerValue":I
    :cond_6
    return v11
.end method
