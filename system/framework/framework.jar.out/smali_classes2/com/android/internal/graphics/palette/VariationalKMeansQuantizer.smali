.class public Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;
.super Ljava/lang/Object;
.source "VariationalKMeansQuantizer.java"

# interfaces
.implements Lcom/android/internal/graphics/palette/Quantizer;


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeansQuantizer"


# instance fields
.field private final mInitializations:I

.field private final mKMeans:Lcom/android/internal/ml/clustering/KMeans;

.field private final mMinClusterSqDistance:F

.field private mQuantizedColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/graphics/palette/Palette$Swatch;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    const/high16 v0, 0x3e800000    # 0.25f

    invoke-direct {p0, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(F)V

    .line 57
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "minClusterDistance"    # F

    .prologue
    .line 60
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;-><init>(FI)V

    .line 61
    return-void
.end method

.method public constructor <init>(FI)V
    .locals 4
    .param p1, "minClusterDistance"    # F
    .param p2, "initializations"    # I

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Lcom/android/internal/ml/clustering/KMeans;

    new-instance v1, Ljava/util/Random;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/Random;-><init>(J)V

    const/4 v2, 0x0

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v3, v2}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    iput-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    .line 64
    mul-float v0, p1, p1

    iput v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    .line 65
    iput p2, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 66
    return-void
.end method

.method private getOptimalKMeans(I[[F)Ljava/util/List;
    .locals 8
    .param p1, "k"    # I
    .param p2, "inputData"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[[F)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 128
    const/4 v1, 0x0

    .line 129
    .local v1, "optimal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const-wide v2, -0x10000000000001L

    .line 130
    .local v2, "optimalScore":D
    iget v4, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mInitializations:I

    .line 131
    .end local v1    # "optimal":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    .local v4, "runs":I
    :goto_0
    if-lez v4, :cond_2

    .line 135
    iget-object v5, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mKMeans:Lcom/android/internal/ml/clustering/KMeans;

    invoke-virtual {v5, p1, p2}, Lcom/android/internal/ml/clustering/KMeans;->predict(I[[F)Ljava/util/List;

    move-result-object v0

    .line 136
    .local v0, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    invoke-static {v0}, Lcom/android/internal/ml/clustering/KMeans;->score(Ljava/util/List;)D

    move-result-wide v6

    .line 137
    .local v6, "score":D
    if-eqz v1, :cond_0

    cmpl-double v5, v6, v2

    if-lez v5, :cond_1

    .line 141
    :cond_0
    move-wide v2, v6

    .line 142
    move-object v1, v0

    .line 144
    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 147
    .end local v0    # "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    .end local v6    # "score":D
    :cond_2
    return-object v1
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
    .line 152
    iget-object v0, p0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    return-object v0
.end method

.method public quantize([II[Lcom/android/internal/graphics/palette/Palette$Filter;)V
    .locals 22
    .param p1, "pixels"    # [I
    .param p2, "maxColors"    # I
    .param p3, "filters"    # [Lcom/android/internal/graphics/palette/Palette$Filter;

    .prologue
    .line 79
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v7, v0, [F

    .local v7, "hsl":[F
    fill-array-data v7, :array_0

    .line 80
    sget-object v16, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [I

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v18, v0

    const/16 v19, 0x0

    aput v18, v17, v19

    const/16 v18, 0x3

    const/16 v19, 0x1

    aput v18, v17, v19

    invoke-static/range {v16 .. v17}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[F

    .line 81
    .local v8, "hslPixels":[[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v9, v0, :cond_0

    .line 82
    aget v16, p1, v9

    move/from16 v0, v16

    invoke-static {v0, v7}, Lcom/android/internal/graphics/ColorUtils;->colorToHSL(I[F)V

    .line 84
    aget-object v16, v8, v9

    const/16 v17, 0x0

    aget v17, v7, v17

    const/high16 v18, 0x43b40000    # 360.0f

    div-float v17, v17, v18

    const/16 v18, 0x0

    aput v17, v16, v18

    .line 85
    aget-object v16, v8, v9

    const/16 v17, 0x1

    aget v17, v7, v17

    const/16 v18, 0x1

    aput v17, v16, v18

    .line 86
    aget-object v16, v8, v9

    const/16 v17, 0x2

    aget v17, v7, v17

    const/16 v18, 0x2

    aput v17, v16, v18

    .line 81
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 89
    :cond_0
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->getOptimalKMeans(I[[F)Ljava/util/List;

    move-result-object v14

    .line 93
    .local v14, "optimalMeans":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v9, v0, :cond_4

    .line 94
    invoke-interface {v14, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 95
    .local v5, "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v6

    .line 96
    .local v6, "currentCentroid":[F
    add-int/lit8 v10, v9, 0x1

    .local v10, "j":I
    :goto_2
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v10, v0, :cond_3

    .line 97
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 98
    .local v3, "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v4

    .line 99
    .local v4, "compareToCentroid":[F
    invoke-static {v6, v4}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v15

    .line 101
    .local v15, "sqDistance":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mMinClusterSqDistance:F

    move/from16 v16, v0

    cmpg-float v16, v15, v16

    if-gez v16, :cond_2

    .line 102
    invoke-interface {v14, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 103
    invoke-virtual {v5}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v16

    invoke-virtual {v3}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 104
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_3
    array-length v0, v6

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v11, v0, :cond_1

    .line 105
    aget v16, v6, v11

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    aget v18, v4, v11

    aget v19, v6, v11

    sub-float v18, v18, v19

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    aput v16, v6, v11

    .line 104
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 107
    :cond_1
    add-int/lit8 v10, v10, -0x1

    .line 96
    .end local v11    # "k":I
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 93
    .end local v3    # "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v4    # "compareToCentroid":[F
    .end local v15    # "sqDistance":F
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 113
    .end local v5    # "current":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v6    # "currentCentroid":[F
    .end local v10    # "j":I
    :cond_4
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    .line 114
    invoke-interface {v14}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, "mean$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 115
    .local v12, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v16

    if-eqz v16, :cond_5

    .line 118
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getCentroid()[F

    move-result-object v2

    .line 119
    .local v2, "centroid":[F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/graphics/palette/VariationalKMeansQuantizer;->mQuantizedColors:Ljava/util/List;

    move-object/from16 v16, v0

    new-instance v17, Lcom/android/internal/graphics/palette/Palette$Swatch;

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [F

    move-object/from16 v18, v0

    .line 120
    const/16 v19, 0x0

    aget v19, v2, v19

    const/high16 v20, 0x43b40000    # 360.0f

    mul-float v19, v19, v20

    const/16 v20, 0x0

    aput v19, v18, v20

    .line 121
    const/16 v19, 0x1

    aget v19, v2, v19

    const/16 v20, 0x1

    aput v19, v18, v20

    .line 122
    const/16 v19, 0x2

    aget v19, v2, v19

    const/16 v20, 0x2

    aput v19, v18, v20

    .line 123
    invoke-virtual {v12}, Lcom/android/internal/ml/clustering/KMeans$Mean;->getItems()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v19

    .line 119
    invoke-direct/range {v17 .. v19}, Lcom/android/internal/graphics/palette/Palette$Swatch;-><init>([FI)V

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 125
    .end local v2    # "centroid":[F
    .end local v12    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    :cond_6
    return-void

    .line 79
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method
