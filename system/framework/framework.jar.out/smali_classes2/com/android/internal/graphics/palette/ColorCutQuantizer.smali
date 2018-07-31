.class final Lcom/android/internal/graphics/palette/ColorCutQuantizer;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;,
        Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    }
.end annotation


# static fields
.field static final COMPONENT_BLUE:I = -0x1

.field static final COMPONENT_GREEN:I = -0x2

.field static final COMPONENT_RED:I = -0x3

.field private static final LOG_TAG:Ljava/lang/String; = "ColorCutQuantizer"

.field private static final LOG_TIMINGS:Z = false

.field private static final QUANTIZE_WORD_MASK:I = 0x1f

.field private static final QUANTIZE_WORD_WIDTH:I = 0x5

.field private static final VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mColors:[I

.field mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

.field mHistogram:[I

.field mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field

.field private final mTempHsl:[F

.field mTimingLogger:Landroid/util/TimingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 474
    new-instance v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;

    invoke-direct {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$1;-><init>()V

    sput-object v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    .line 64
    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    .line 64
    return-void
.end method

.method private static approximateToRgb888(I)I
    .locals 3
    .param p0, "color"    # I

    .prologue
    .line 501
    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v0

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v1

    invoke-static {p0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(III)I

    move-result v0

    return v0
.end method

.method static approximateToRgb888(III)I
    .locals 4
    .param p0, "r"    # I
    .param p1, "g"    # I
    .param p2, "b"    # I

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x5

    .line 495
    invoke-static {p0, v2, v3}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 496
    invoke-static {p1, v2, v3}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 497
    invoke-static {p2, v2, v3}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 495
    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    return v0
.end method

.method private generateAverageColors(Ljava/util/Collection;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    .local p1, "vboxes":Ljava/util/Collection;, "Ljava/util/Collection<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 217
    .local v0, "colors":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/graphics/palette/Palette$Swatch;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "vbox$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 218
    .local v2, "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    invoke-virtual {v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->getAverageColor()Lcom/android/internal/graphics/palette/Palette$Swatch;

    move-result-object v1

    .line 219
    .local v1, "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    invoke-direct {p0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(Lcom/android/internal/graphics/palette/Palette$Swatch;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 225
    .end local v1    # "swatch":Lcom/android/internal/graphics/palette/Palette$Swatch;
    .end local v2    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_1
    return-object v0
.end method

.method static modifySignificantOctet([IIII)V
    .locals 4
    .param p0, "a"    # [I
    .param p1, "dimension"    # I
    .param p2, "lower"    # I
    .param p3, "upper"    # I

    .prologue
    .line 425
    packed-switch p1, :pswitch_data_0

    .line 448
    :cond_0
    :pswitch_0
    return-void

    .line 431
    :pswitch_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-gt v1, p3, :cond_0

    .line 432
    aget v0, p0, v1

    .line 433
    .local v0, "color":I
    invoke-static {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 434
    invoke-static {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    .line 433
    or-int/2addr v2, v3

    .line 435
    invoke-static {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v3

    .line 433
    or-int/2addr v2, v3

    aput v2, p0, v1

    .line 431
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 440
    .end local v0    # "color":I
    .end local v1    # "i":I
    :pswitch_2
    move v1, p2

    .restart local v1    # "i":I
    :goto_1
    if-gt v1, p3, :cond_0

    .line 441
    aget v0, p0, v1

    .line 442
    .restart local v0    # "color":I
    invoke-static {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedBlue(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0xa

    .line 443
    invoke-static {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedGreen(I)I

    move-result v3

    shl-int/lit8 v3, v3, 0x5

    .line 442
    or-int/2addr v2, v3

    .line 444
    invoke-static {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizedRed(I)I

    move-result v3

    .line 442
    or-int/2addr v2, v3

    aput v2, p0, v1

    .line 440
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 425
    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static modifyWordWidth(III)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "currentWidth"    # I
    .param p2, "targetWidth"    # I

    .prologue
    .line 527
    if-le p2, p1, :cond_0

    .line 529
    sub-int v1, p2, p1

    shl-int v0, p0, v1

    .line 534
    .local v0, "newValue":I
    :goto_0
    const/4 v1, 0x1

    shl-int/2addr v1, p2

    add-int/lit8 v1, v1, -0x1

    and-int/2addr v1, v0

    return v1

    .line 532
    .end local v0    # "newValue":I
    :cond_0
    sub-int v1, p1, p2

    shr-int v0, p0, v1

    .restart local v0    # "newValue":I
    goto :goto_0
.end method

.method private static quantizeFromRgb888(I)I
    .locals 6
    .param p0, "color"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x5

    .line 485
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3, v5, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v2

    .line 486
    .local v2, "r":I
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3, v5, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v1

    .line 487
    .local v1, "g":I
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3, v5, v4}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->modifyWordWidth(III)I

    move-result v0

    .line 488
    .local v0, "b":I
    shl-int/lit8 v3, v2, 0xa

    shl-int/lit8 v4, v1, 0x5

    or-int/2addr v3, v4

    or-int/2addr v3, v0

    return v3
.end method

.method private quantizePixels(I)Ljava/util/List;
    .locals 4
    .param p1, "maxColors"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/util/PriorityQueue;

    sget-object v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->VBOX_COMPARATOR_VOLUME:Ljava/util/Comparator;

    invoke-direct {v0, p1, v1}, Ljava/util/PriorityQueue;-><init>(ILjava/util/Comparator;)V

    .line 173
    .local v0, "pq":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    new-instance v1, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3, v2}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;-><init>(Lcom/android/internal/graphics/palette/ColorCutQuantizer;II)V

    invoke-virtual {v0, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 177
    invoke-direct {p0, v0, p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->splitBoxes(Ljava/util/PriorityQueue;I)V

    .line 180
    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->generateAverageColors(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method static quantizedBlue(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 522
    and-int/lit8 v0, p0, 0x1f

    return v0
.end method

.method static quantizedGreen(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 515
    shr-int/lit8 v0, p0, 0x5

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method static quantizedRed(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 508
    shr-int/lit8 v0, p0, 0xa

    and-int/lit8 v0, v0, 0x1f

    return v0
.end method

.method private shouldIgnoreColor(I)Z
    .locals 2
    .param p1, "color565"    # I

    .prologue
    .line 451
    invoke-static {p1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v0

    .line 452
    .local v0, "rgb":I
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-static {v0, v1}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 453
    iget-object v1, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTempHsl:[F

    invoke-direct {p0, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v1

    return v1
.end method

.method private shouldIgnoreColor(I[F)Z
    .locals 4
    .param p1, "rgb"    # I
    .param p2, "hsl"    # [F

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 462
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    array-length v0, v2

    .local v0, "count":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 463
    iget-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    aget-object v2, v2, v1

    invoke-interface {v2, p1, p2}, Lcom/android/internal/graphics/palette/Palette$Filter;->isAllowed(I[F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 464
    const/4 v2, 0x1

    return v2

    .line 462
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 468
    .end local v0    # "count":I
    .end local v1    # "i":I
    :cond_1
    return v3
.end method

.method private shouldIgnoreColor(Lcom/android/internal/graphics/palette/Palette$Swatch;)Z
    .locals 2
    .param p1, "color"    # Lcom/android/internal/graphics/palette/Palette$Swatch;

    .prologue
    .line 457
    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getRgb()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/internal/graphics/palette/Palette$Swatch;->getHsl()[F

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(I[F)Z

    move-result v0

    return v0
.end method

.method private splitBoxes(Ljava/util/PriorityQueue;I)V
    .locals 2
    .param p2, "maxSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/PriorityQueue",
            "<",
            "Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "queue":Ljava/util/PriorityQueue;, "Ljava/util/PriorityQueue<Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;>;"
    :goto_0
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->size()I

    move-result v1

    if-ge v1, p2, :cond_1

    .line 194
    invoke-virtual {p1}, Ljava/util/PriorityQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    .line 196
    .local v0, "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->canSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    invoke-virtual {v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;->splitBox()Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    .line 204
    invoke-virtual {p1, v0}, Ljava/util/PriorityQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 210
    :cond_0
    return-void

    .line 213
    .end local v0    # "vbox":Lcom/android/internal/graphics/palette/ColorCutQuantizer$Vbox;
    :cond_1
    return-void
.end method


# virtual methods
.method public getQuantizedColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation

    .prologue
    .line 164
    iget-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .locals 15
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I
    .param p3, "filters"    # [Lcom/android/internal/graphics/palette/Palette$Filter;

    .prologue
    .line 92
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mTimingLogger:Landroid/util/TimingLogger;

    .line 93
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mFilters:[Lcom/android/internal/graphics/palette/Palette$Filter;

    .line 95
    const v9, 0x8000

    new-array v6, v9, [I

    iput-object v6, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mHistogram:[I

    .line 96
    .local v6, "hist":[I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v9, v0

    if-ge v7, v9, :cond_0

    .line 97
    aget v9, p1, v7

    invoke-static {v9}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizeFromRgb888(I)I

    move-result v8

    .line 99
    .local v8, "quantizedColor":I
    aput v8, p1, v7

    .line 101
    aget v9, v6, v8

    add-int/lit8 v9, v9, 0x1

    aput v9, v6, v8

    .line 96
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 109
    .end local v8    # "quantizedColor":I
    :cond_0
    const/4 v3, 0x0

    .line 110
    .local v3, "distinctColorCount":I
    const/4 v1, 0x0

    .local v1, "color":I
    :goto_1
    array-length v9, v6

    if-ge v1, v9, :cond_3

    .line 111
    aget v9, v6, v1

    if-lez v9, :cond_1

    invoke-direct {p0, v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->shouldIgnoreColor(I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 113
    const/4 v9, 0x0

    aput v9, v6, v1

    .line 115
    :cond_1
    aget v9, v6, v1

    if-lez v9, :cond_2

    .line 117
    add-int/lit8 v3, v3, 0x1

    .line 110
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 126
    :cond_3
    new-array v2, v3, [I

    iput-object v2, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mColors:[I

    .line 127
    .local v2, "colors":[I
    const/4 v4, 0x0

    .line 128
    .local v4, "distinctColorIndex":I
    const/4 v1, 0x0

    :goto_2
    array-length v9, v6

    if-ge v1, v9, :cond_5

    .line 129
    aget v9, v6, v1

    if-lez v9, :cond_4

    .line 130
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "distinctColorIndex":I
    .local v5, "distinctColorIndex":I
    aput v1, v2, v4

    move v4, v5

    .line 128
    .end local v5    # "distinctColorIndex":I
    .restart local v4    # "distinctColorIndex":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 138
    :cond_5
    move/from16 v0, p2

    if-gt v3, v0, :cond_6

    .line 140
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 141
    const/4 v9, 0x0

    array-length v10, v2

    :goto_3
    if-ge v9, v10, :cond_7

    aget v1, v2, v9

    .line 142
    iget-object v11, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    new-instance v12, Lcom/android/internal/graphics/palette/Palette$Swatch;

    invoke-static {v1}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->approximateToRgb888(I)I

    move-result v13

    aget v14, v6, v1

    invoke-direct {v12, v13, v14}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>(II)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 151
    :cond_6
    move/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->quantizePixels(I)Ljava/util/List;

    move-result-object v9

    iput-object v9, p0, Lcom/android/internal/graphics/palette/ColorCutQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 158
    :cond_7
    return-void
.end method
