.class public Lcom/android/server/OnePlusPowerController$KMeans;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "KMeans"
.end annotation


# instance fields
.field private final mCenters:[[D

.field private final mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/OnePlusPowerController$KMeans;[[DIIII)V
    .locals 0
    .param p0, "-this"    # Lcom/android/server/OnePlusPowerController$KMeans;
    .param p1, "dataSet"    # [[D
    .param p2, "dataNum"    # I
    .param p3, "dimNum"    # I
    .param p4, "k"    # I
    .param p5, "seed"    # I

    .prologue
    invoke-direct/range {p0 .. p5}, Lcom/android/server/OnePlusPowerController$KMeans;->processKMeans([[DIIII)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 5
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .prologue
    const/4 v4, 0x2

    .line 2050
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$KMeans;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2052
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    new-array v1, v4, [I

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    const/4 v2, 0x1

    aput v4, v1, v2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    .line 2053
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v0

    new-array v0, v0, [Lcom/android/server/OnePlusPowerController$Cluster;

    iput-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    .line 2050
    return-void
.end method

.method private IsDouble(Ljava/lang/String;)Z
    .locals 6
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2184
    :try_start_0
    invoke-static {p1}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2185
    .local v0, "d":D
    const/4 v3, 0x1

    return v3

    .line 2186
    .end local v0    # "d":D
    :catch_0
    move-exception v2

    .line 2187
    .local v2, "ex":Ljava/lang/NumberFormatException;
    const-string/jumbo v3, "OnePlusPowerController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "IsDouble: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2188
    const/4 v3, 0x0

    return v3
.end method

.method private clearCenters()V
    .locals 6

    .prologue
    .line 2084
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2085
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    .line 2086
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v2, v2, v0

    const-wide/16 v4, 0x0

    aput-wide v4, v2, v1

    .line 2085
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2084
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2089
    .end local v1    # "j":I
    :cond_1
    return-void
.end method

.method private clusterOfDataSet([[D[DI)I
    .locals 9
    .param p1, "centers"    # [[D
    .param p2, "tuple"    # [D
    .param p3, "k"    # I

    .prologue
    .line 2112
    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-direct {p0, v6, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v0

    .line 2114
    .local v0, "dist":D
    const/4 v3, 0x0

    .line 2116
    .local v3, "label":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_1

    .line 2117
    aget-object v6, p1, v2

    invoke-direct {p0, v6, p2}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v4

    .line 2118
    .local v4, "temp":D
    cmpg-double v6, v4, v0

    if-gez v6, :cond_0

    .line 2119
    move-wide v0, v4

    .line 2120
    move v3, v2

    .line 2116
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2124
    .end local v4    # "temp":D
    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2125
    const-string/jumbo v6, "OnePlusPowerController"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "label="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2128
    :cond_2
    return v3
.end method

.method private getCenter(Lcom/android/server/OnePlusPowerController$Cluster;I)[D
    .locals 10
    .param p1, "cluster"    # Lcom/android/server/OnePlusPowerController$Cluster;
    .param p2, "dimNum"    # I

    .prologue
    .line 2160
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v3

    .line 2161
    .local v3, "num":I
    new-array v4, p2, [D

    .line 2162
    .local v4, "temp":[D
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v0

    .line 2164
    .local v0, "d":[[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2165
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    if-ge v2, p2, :cond_0

    .line 2166
    aget-wide v6, v4, v2

    aget-object v5, v0, v1

    aget-wide v8, v5, v2

    add-double/2addr v6, v8

    aput-wide v6, v4, v2

    .line 2165
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2164
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2170
    .end local v2    # "j":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "j":I
    :goto_2
    if-ge v2, p2, :cond_2

    .line 2171
    aget-wide v6, v4, v2

    int-to-double v8, v3

    div-double/2addr v6, v8

    aput-wide v6, v4, v2

    .line 2170
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2174
    :cond_2
    return-object v4
.end method

.method private getDistXY([D[D)D
    .locals 8
    .param p1, "tuple1"    # [D
    .param p2, "tuple2"    # [D

    .prologue
    .line 2098
    const-wide/16 v2, 0x0

    .line 2099
    .local v2, "sum":D
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 2100
    aget-wide v4, p1, v0

    aget-wide v6, p2, v0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v2, v4

    .line 2099
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2102
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    return-wide v4
.end method

.method private getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D
    .locals 8
    .param p1, "clusters"    # [Lcom/android/server/OnePlusPowerController$Cluster;
    .param p2, "centers"    # [[D

    .prologue
    .line 2138
    const-wide/16 v4, 0x0

    .line 2139
    .local v4, "var":D
    array-length v3, p1

    .line 2141
    .local v3, "k":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2142
    aget-object v6, p1, v1

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v0

    .line 2145
    .local v0, "d":[[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v6, p1, v1

    invoke-virtual {v6}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v6

    if-ge v2, v6, :cond_0

    .line 2146
    aget-object v6, v0, v2

    aget-object v7, p2, v1

    invoke-direct {p0, v6, v7}, Lcom/android/server/OnePlusPowerController$KMeans;->getDistXY([D[D)D

    move-result-wide v6

    add-double/2addr v4, v6

    .line 2145
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2141
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2150
    .end local v0    # "d":[[D
    .end local v2    # "j":I
    :cond_1
    return-wide v4
.end method

.method private printClustery(Lcom/android/server/OnePlusPowerController$Cluster;)V
    .locals 7
    .param p1, "cluster"    # Lcom/android/server/OnePlusPowerController$Cluster;

    .prologue
    const/4 v6, 0x0

    .line 2214
    const-string/jumbo v4, "OnePlusPowerController"

    const-string/jumbo v5, "Cluster:"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v4

    if-ge v1, v4, :cond_2

    .line 2216
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2217
    .local v3, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v0

    .line 2218
    .local v0, "array":[[D
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    aget-object v4, v0, v6

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 2219
    aget-object v4, v0, v1

    aget-wide v4, v4, v2

    double-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2220
    aget-object v4, v0, v6

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-eq v2, v4, :cond_0

    .line 2221
    const-string/jumbo v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2218
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2224
    :cond_1
    const-string/jumbo v4, "OnePlusPowerController"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2226
    .end local v0    # "array":[[D
    .end local v2    # "j":I
    .end local v3    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private printTwoDimensionalArray([[D)V
    .locals 7
    .param p1, "array"    # [[D

    .prologue
    const/4 v6, 0x0

    .line 2197
    const-string/jumbo v3, "OnePlusPowerController"

    const-string/jumbo v4, "Array:"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p1

    if-ge v0, v3, :cond_2

    .line 2199
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 2200
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    aget-object v3, p1, v6

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2201
    aget-object v3, p1, v0

    aget-wide v4, v3, v1

    double-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 2202
    aget-object v3, p1, v6

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    if-eq v1, v3, :cond_0

    .line 2203
    const-string/jumbo v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2200
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2206
    :cond_1
    const-string/jumbo v3, "OnePlusPowerController"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2198
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2208
    .end local v1    # "j":I
    .end local v2    # "sb":Ljava/lang/StringBuilder;
    :cond_2
    return-void
.end method

.method private processKMeans([[DIIII)V
    .locals 26
    .param p1, "dataSet"    # [[D
    .param p2, "dataNum"    # I
    .param p3, "dimNum"    # I
    .param p4, "k"    # I
    .param p5, "seed"    # I

    .prologue
    .line 2237
    invoke-direct/range {p0 .. p1}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    .line 2240
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_0

    .line 2241
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    new-instance v22, Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->this$0:Lcom/android/server/OnePlusPowerController;

    move-object/from16 v23, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OnePlusPowerController$Cluster;-><init>(Lcom/android/server/OnePlusPowerController;II)V

    aput-object v22, v21, v6

    .line 2240
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2244
    :cond_0
    const/4 v6, 0x0

    .line 2246
    new-instance v14, Ljava/util/Random;

    move/from16 v0, p5

    int-to-long v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    invoke-direct {v14, v0, v1}, Ljava/util/Random;-><init>(J)V

    .line 2247
    .local v14, "random":Ljava/util/Random;
    new-instance v16, Ljava/util/HashSet;

    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 2248
    .local v16, "set":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    :cond_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p4

    if-gt v0, v1, :cond_2

    .line 2249
    move/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/util/Random;->nextInt(I)I

    move-result v15

    .line 2250
    .local v15, "select":I
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2251
    invoke-interface/range {v16 .. v16}, Ljava/util/Set;->size()I

    move-result v21

    move/from16 v0, v21

    move/from16 v1, p4

    if-ne v0, v1, :cond_1

    .line 2254
    .end local v15    # "select":I
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2256
    .local v9, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, p4

    if-ge v6, v0, :cond_4

    .line 2257
    const-string/jumbo v21, "OnePlusPowerController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "The choosen data set is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2258
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2
    move/from16 v0, p3

    if-ge v7, v0, :cond_3

    .line 2259
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v21, v0

    aget-object v22, v21, v6

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Ljava/lang/Integer;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Integer;->intValue()I

    move-result v21

    aget-object v21, p1, v21

    aget-wide v24, v21, v7

    aput-wide v24, v22, v7

    .line 2258
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 2256
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 2263
    .end local v7    # "j":I
    :cond_4
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v21

    if-eqz v21, :cond_5

    .line 2264
    const-string/jumbo v21, "OnePlusPowerController"

    const-string/jumbo v22, "Centroids: "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2265
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    .line 2268
    :cond_5
    const/4 v8, 0x0

    .line 2270
    .local v8, "label":I
    const/4 v6, 0x0

    :goto_3
    move/from16 v0, p2

    if-ge v6, v0, :cond_7

    .line 2271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v21, v0

    aget-object v22, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OnePlusPowerController$KMeans;->clusterOfDataSet([[D[DI)I

    move-result v8

    .line 2273
    const/4 v5, 0x0

    .local v5, "column":I
    :goto_4
    move/from16 v0, p3

    if-ge v5, v0, :cond_6

    .line 2274
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    aget-object v20, v21, v8

    .line 2275
    .local v20, "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v19

    .line 2276
    .local v19, "temp":[[D
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v17

    .line 2277
    .local v17, "size":I
    aget-object v21, v19, v17

    aget-object v22, p1, v6

    aget-wide v22, v22, v5

    aput-wide v22, v21, v5

    .line 2273
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2279
    .end local v17    # "size":I
    .end local v19    # "temp":[[D
    .end local v20    # "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    aget-object v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    .line 2270
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 2283
    .end local v5    # "column":I
    :cond_7
    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    .line 2284
    .local v12, "oldVar":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusPowerController$KMeans;->getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D

    move-result-wide v10

    .line 2286
    .local v10, "newVar":D
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v21

    if-eqz v21, :cond_8

    .line 2287
    const-string/jumbo v21, "OnePlusPowerController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Initial sum of squre difference is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    :cond_8
    const/16 v18, 0x0

    .line 2292
    .local v18, "t":I
    :cond_9
    :goto_5
    sub-double v22, v10, v12

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->abs(D)D

    move-result-wide v22

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get29()I

    move-result v21

    move/from16 v0, v21

    int-to-double v0, v0

    move-wide/from16 v24, v0

    cmpl-double v21, v22, v24

    if-ltz v21, :cond_10

    .line 2293
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v21

    if-eqz v21, :cond_a

    .line 2294
    const-string/jumbo v21, "OnePlusPowerController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Iteration: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2295
    add-int/lit8 v18, v18, 0x1

    .line 2298
    :cond_a
    const/4 v6, 0x0

    :goto_6
    move/from16 v0, p4

    if-ge v6, v0, :cond_b

    .line 2299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v22, v0

    aget-object v22, v22, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusPowerController$KMeans;->getCenter(Lcom/android/server/OnePlusPowerController$Cluster;I)[D

    move-result-object v22

    aput-object v22, v21, v6

    .line 2298
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 2302
    :cond_b
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v21

    if-eqz v21, :cond_c

    .line 2303
    const-string/jumbo v21, "OnePlusPowerController"

    const-string/jumbo v22, "Centroids: "

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2304
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusPowerController$KMeans;->printTwoDimensionalArray([[D)V

    .line 2307
    :cond_c
    move-wide v12, v10

    .line 2308
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusPowerController$KMeans;->getVar([Lcom/android/server/OnePlusPowerController$Cluster;[[D)D

    move-result-wide v10

    .line 2311
    const/4 v6, 0x0

    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v6, v0, :cond_d

    .line 2312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    aget-object v21, v21, v6

    const/16 v22, 0x0

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    .line 2311
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    .line 2316
    :cond_d
    const/4 v6, 0x0

    :goto_8
    move/from16 v0, p2

    if-ge v6, v0, :cond_f

    .line 2317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    move-object/from16 v21, v0

    aget-object v22, p1, v6

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    move/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OnePlusPowerController$KMeans;->clusterOfDataSet([[D[DI)I

    move-result v8

    .line 2319
    const/4 v5, 0x0

    .restart local v5    # "column":I
    :goto_9
    move/from16 v0, p3

    if-ge v5, v0, :cond_e

    .line 2320
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    aget-object v20, v21, v8

    .line 2321
    .restart local v20    # "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/OnePlusPowerController$Cluster;->getCluster()[[D

    move-result-object v19

    .line 2322
    .restart local v19    # "temp":[[D
    invoke-virtual/range {v20 .. v20}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v17

    .line 2323
    .restart local v17    # "size":I
    aget-object v21, v19, v17

    aget-object v22, p1, v6

    aget-wide v22, v22, v5

    aput-wide v22, v21, v5

    .line 2319
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    .line 2325
    .end local v17    # "size":I
    .end local v19    # "temp":[[D
    .end local v20    # "tempCluster":Lcom/android/server/OnePlusPowerController$Cluster;
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    aget-object v21, v21, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v22, v0

    aget-object v22, v22, v8

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-virtual/range {v21 .. v22}, Lcom/android/server/OnePlusPowerController$Cluster;->setSize(I)V

    .line 2316
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 2329
    .end local v5    # "column":I
    :cond_f
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v21

    if-eqz v21, :cond_9

    .line 2330
    const-string/jumbo v21, "OnePlusPowerController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "After this iteration, the sum of squre difference is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 2334
    :cond_10
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get1()Z

    move-result v21

    if-eqz v21, :cond_11

    .line 2335
    const-string/jumbo v21, "OnePlusPowerController"

    const-string/jumbo v22, "The result is:"

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2336
    const/4 v6, 0x0

    :goto_a
    move/from16 v0, p4

    if-ge v6, v0, :cond_11

    .line 2337
    const-string/jumbo v21, "OnePlusPowerController"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "Cluster "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string/jumbo v23, " is "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    move-object/from16 v21, v0

    aget-object v4, v21, v6

    .line 2339
    .local v4, "c":Lcom/android/server/OnePlusPowerController$Cluster;
    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/server/OnePlusPowerController$KMeans;->printClustery(Lcom/android/server/OnePlusPowerController$Cluster;)V

    .line 2336
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 2342
    .end local v4    # "c":Lcom/android/server/OnePlusPowerController$Cluster;
    :cond_11
    return-void
.end method


# virtual methods
.method public getClusterCenterX(I)J
    .locals 2
    .param p1, "label"    # I

    .prologue
    const/4 v1, 0x0

    .line 2068
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2069
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 2071
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, v1

    double-to-long v0, v0

    return-wide v0
.end method

.method public getClusterCenterY(I)J
    .locals 2
    .param p1, "label"    # I

    .prologue
    .line 2076
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2077
    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    .line 2079
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mCenters:[[D

    aget-object v0, v0, p1

    const/4 v1, 0x1

    aget-wide v0, v0, v1

    double-to-long v0, v0

    return-wide v0
.end method

.method public getClusterSize(I)I
    .locals 2
    .param p1, "label"    # I

    .prologue
    const/4 v1, -0x1

    .line 2056
    if-ltz p1, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->-get17()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 2057
    :cond_0
    return v1

    .line 2059
    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    if-eqz v0, :cond_2

    .line 2060
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$KMeans;->mClusters:[Lcom/android/server/OnePlusPowerController$Cluster;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$Cluster;->getSize()I

    move-result v0

    return v0

    .line 2062
    :cond_2
    return v1
.end method
