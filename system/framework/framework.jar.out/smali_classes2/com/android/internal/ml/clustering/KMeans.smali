.class public Lcom/android/internal/ml/clustering/KMeans;
.super Ljava/lang/Object;
.source "KMeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/ml/clustering/KMeans$Mean;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "KMeans"


# instance fields
.field private final mMaxIterations:I

.field private final mRandomState:Ljava/util/Random;

.field private mSqConvergenceEpsilon:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;)V
    .locals 2
    .param p1, "random"    # Ljava/util/Random;

    .prologue
    .line 45
    const/16 v0, 0x1e

    const v1, 0x3ba3d70a    # 0.005f

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/ml/clustering/KMeans;-><init>(Ljava/util/Random;IF)V

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/Random;IF)V
    .locals 1
    .param p1, "random"    # Ljava/util/Random;
    .param p2, "maxIterations"    # I
    .param p3, "convergenceEpsilon"    # F

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    .line 49
    iput p2, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    .line 50
    mul-float v0, p3, p3

    iput v0, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    .line 51
    return-void
.end method

.method public static nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;
    .locals 7
    .param p0, "point"    # [F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([F",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const/4 v2, 0x0

    .line 188
    .local v2, "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    const v3, 0x7f7fffff    # Float.MAX_VALUE

    .line 190
    .local v3, "nearestDistance":F
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 191
    .local v1, "meanCount":I
    const/4 v0, 0x0

    .end local v2    # "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 192
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 195
    .local v4, "next":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {p0, v6}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v5

    .line 196
    .local v5, "nextDistance":F
    cmpg-float v6, v5, v3

    if-gez v6, :cond_0

    .line 197
    move-object v2, v4

    .line 198
    .local v2, "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    move v3, v5

    .line 191
    .end local v2    # "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 201
    .end local v4    # "next":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v5    # "nextDistance":F
    :cond_1
    return-object v2
.end method

.method public static score(Ljava/util/List;)D
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;)D"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "means":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const-wide/16 v8, 0x0

    .line 99
    .local v8, "score":D
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v6

    .line 100
    .local v6, "meansSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_2

    .line 101
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 102
    .local v5, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_1
    if-ge v4, v6, :cond_1

    .line 103
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 104
    .local v0, "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    if-ne v5, v0, :cond_0

    .line 102
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 107
    :cond_0
    iget-object v7, v5, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v10, v0, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v7, v10}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v7

    float-to-double v10, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 108
    .local v2, "distance":D
    add-double/2addr v8, v2

    goto :goto_2

    .line 100
    .end local v0    # "compareTo":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v2    # "distance":D
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v4    # "j":I
    .end local v5    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    :cond_2
    return-wide v8
.end method

.method public static sqDistance([F[F)F
    .locals 6
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    .line 206
    const/4 v0, 0x0

    .line 207
    .local v0, "dist":F
    array-length v2, p0

    .line 208
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 209
    aget v3, p0, v1

    aget v4, p1, v1

    sub-float/2addr v3, v4

    aget v4, p0, v1

    aget v5, p1, v1

    sub-float/2addr v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v0, v3

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 211
    :cond_0
    return v0
.end method

.method private step(Ljava/util/ArrayList;[[F)Z
    .locals 11
    .param p2, "inputData"    # [[F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/ml/clustering/KMeans$Mean;",
            ">;[[F)Z"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "means":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 145
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 146
    .local v4, "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 144
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 148
    .end local v4    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    :cond_0
    array-length v8, p2

    add-int/lit8 v2, v8, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 149
    aget-object v1, p2, v2

    .line 150
    .local v1, "current":[F
    invoke-static {v1, p1}, Lcom/android/internal/ml/clustering/KMeans;->nearestMean([FLjava/util/List;)Lcom/android/internal/ml/clustering/KMeans$Mean;

    move-result-object v5

    .line 151
    .local v5, "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v8, v5, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 148
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 154
    .end local v1    # "current":[F
    .end local v5    # "nearest":Lcom/android/internal/ml/clustering/KMeans$Mean;
    :cond_1
    const/4 v0, 0x1

    .line 156
    .local v0, "converged":Z
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v8

    add-int/lit8 v2, v8, -0x1

    :goto_2
    if-ltz v2, :cond_7

    .line 157
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    .line 158
    .restart local v4    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-nez v8, :cond_3

    .line 156
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 165
    :cond_3
    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 166
    .local v6, "oldCentroid":[F
    array-length v8, v6

    new-array v8, v8, [F

    iput-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    .line 167
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_4
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v3, v8, :cond_5

    .line 169
    const/4 v7, 0x0

    .local v7, "p":I
    :goto_5
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v8, v8

    if-ge v7, v8, :cond_4

    .line 170
    iget-object v9, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v10, v9, v7

    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [F

    aget v8, v8, v7

    add-float/2addr v8, v10

    aput v8, v9, v7

    .line 169
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 167
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 173
    .end local v7    # "p":I
    :cond_5
    const/4 v3, 0x0

    :goto_6
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    array-length v8, v8

    if-ge v3, v8, :cond_6

    .line 174
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    aget v9, v8, v3

    iget-object v10, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mClosestItems:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v9, v10

    aput v9, v8, v3

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 178
    :cond_6
    iget-object v8, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    invoke-static {v6, v8}, Lcom/android/internal/ml/clustering/KMeans;->sqDistance([F[F)F

    move-result v8

    iget v9, p0, Lcom/android/internal/ml/clustering/KMeans;->mSqConvergenceEpsilon:F

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    .line 179
    const/4 v0, 0x0

    goto :goto_3

    .line 182
    .end local v3    # "j":I
    .end local v4    # "mean":Lcom/android/internal/ml/clustering/KMeans$Mean;
    .end local v6    # "oldCentroid":[F
    :cond_7
    return v0
.end method


# virtual methods
.method public checkDataSetSanity([[F)V
    .locals 5
    .param p1, "inputData"    # [[F

    .prologue
    const/4 v4, 0x0

    .line 116
    if-nez p1, :cond_0

    .line 117
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Data set is null."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 118
    :cond_0
    array-length v3, p1

    if-nez v3, :cond_1

    .line 119
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Data set is empty."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 120
    :cond_1
    aget-object v3, p1, v4

    if-nez v3, :cond_2

    .line 121
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Bad data set format."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 124
    :cond_2
    aget-object v3, p1, v4

    array-length v0, v3

    .line 125
    .local v0, "dimension":I
    array-length v2, p1

    .line 126
    .local v2, "length":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_5

    .line 127
    aget-object v3, p1, v1

    if-eqz v3, :cond_3

    aget-object v3, p1, v1

    array-length v3, v3

    if-eq v3, v0, :cond_4

    .line 128
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Bad data set format."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 126
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 131
    :cond_5
    return-void
.end method

.method public predict(I[[F)Ljava/util/List;
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
    .line 64
    invoke-virtual {p0, p2}, Lcom/android/internal/ml/clustering/KMeans;->checkDataSetSanity([[F)V

    .line 65
    const/4 v6, 0x0

    aget-object v6, p2, v6

    array-length v1, v6

    .line 67
    .local v1, "dimension":I
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 68
    .local v5, "means":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/ml/clustering/KMeans$Mean;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p1, :cond_1

    .line 69
    new-instance v4, Lcom/android/internal/ml/clustering/KMeans$Mean;

    invoke-direct {v4, v1}, Lcom/android/internal/ml/clustering/KMeans$Mean;-><init>(I)V

    .line 70
    .local v4, "m":Lcom/android/internal/ml/clustering/KMeans$Mean;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v1, :cond_0

    .line 71
    iget-object v6, v4, Lcom/android/internal/ml/clustering/KMeans$Mean;->mCentroid:[F

    iget-object v7, p0, Lcom/android/internal/ml/clustering/KMeans;->mRandomState:Ljava/util/Random;

    invoke-virtual {v7}, Ljava/util/Random;->nextFloat()F

    move-result v7

    aput v7, v6, v3

    .line 70
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 73
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 77
    .end local v3    # "j":I
    .end local v4    # "m":Lcom/android/internal/ml/clustering/KMeans$Mean;
    :cond_1
    const/4 v0, 0x0

    .line 78
    .local v0, "converged":Z
    const/4 v2, 0x0

    .end local v0    # "converged":Z
    :goto_2
    iget v6, p0, Lcom/android/internal/ml/clustering/KMeans;->mMaxIterations:I

    if-ge v2, v6, :cond_2

    .line 79
    invoke-direct {p0, v5, p2}, Lcom/android/internal/ml/clustering/KMeans;->step(Ljava/util/ArrayList;[[F)Z

    move-result v0

    .line 80
    .local v0, "converged":Z
    if-eqz v0, :cond_3

    .line 87
    .end local v0    # "converged":Z
    :cond_2
    return-object v5

    .line 78
    .restart local v0    # "converged":Z
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method
