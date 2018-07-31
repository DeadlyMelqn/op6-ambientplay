.class public abstract Landroid/content/pm/split/SplitDependencyLoader;
.super Ljava/lang/Object;
.source "SplitDependencyLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Exception;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mDependencies:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<[I>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    .local p1, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    .line 51
    return-void
.end method

.method private static append([II)[I
    .locals 3
    .param p0, "src"    # [I
    .param p1, "elem"    # I

    .prologue
    .line 144
    if-nez p0, :cond_0

    .line 145
    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    aput p1, v1, v2

    return-object v1

    .line 147
    :cond_0
    array-length v1, p0

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 148
    .local v0, "dst":[I
    array-length v1, p0

    aput p1, v0, v1

    .line 149
    return-object v0
.end method

.method private collectConfigSplitIndices(I)[I
    .locals 3
    .param p1, "splitIdx"    # I

    .prologue
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    const/4 v2, 0x1

    .line 109
    iget-object v1, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 110
    .local v0, "deps":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-gt v1, v2, :cond_1

    .line 111
    :cond_0
    sget-object v1, Llibcore/util/EmptyArray;->INT:[I

    return-object v1

    .line 113
    :cond_1
    array-length v1, v0

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOfRange([III)[I

    move-result-object v1

    return-object v1
.end method

.method public static createDependenciesFromPackage(Landroid/content/pm/PackageParser$PackageLite;)Landroid/util/SparseArray;
    .locals 14
    .param p0, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            ")",
            "Landroid/util/SparseArray",
            "<[I>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;
        }
    .end annotation

    .prologue
    .line 157
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 160
    .local v6, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v11, 0x1

    new-array v11, v11, [I

    const/4 v12, -0x1

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x0

    invoke-virtual {v6, v12, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 164
    const/4 v8, 0x0

    .local v8, "splitIdx":I
    :goto_0
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_3

    .line 165
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v11, v11, v8

    if-nez v11, :cond_0

    .line 164
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->usesSplitNames:[Ljava/lang/String;

    aget-object v7, v11, v8

    .line 173
    .local v7, "splitDependency":Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 174
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v11, v7}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 175
    .local v2, "depIdx":I
    if-gez v2, :cond_1

    .line 176
    new-instance v11, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Split \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v13, v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 177
    const-string/jumbo v13, "\' requires split \'"

    .line 176
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 177
    const-string/jumbo v13, "\', which is missing."

    .line 176
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;)V

    throw v11

    .line 179
    :cond_1
    add-int/lit8 v9, v2, 0x1

    .line 184
    .end local v2    # "depIdx":I
    .local v9, "targetIdx":I
    :goto_2
    add-int/lit8 v11, v8, 0x1

    const/4 v12, 0x1

    new-array v12, v12, [I

    const/4 v13, 0x0

    aput v9, v12, v13

    invoke-virtual {v6, v11, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 182
    .end local v9    # "targetIdx":I
    :cond_2
    const/4 v9, 0x0

    .restart local v9    # "targetIdx":I
    goto :goto_2

    .line 191
    .end local v7    # "splitDependency":Ljava/lang/String;
    .end local v9    # "targetIdx":I
    :cond_3
    const/4 v8, 0x0

    :goto_3
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    array-length v11, v11

    if-ge v8, v11, :cond_8

    .line 192
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v11, v11, v8

    if-eqz v11, :cond_4

    .line 191
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 199
    :cond_4
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->configForSplit:[Ljava/lang/String;

    aget-object v1, v11, v8

    .line 200
    .local v1, "configForSplit":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 201
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    invoke-static {v11, v1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    .line 202
    .restart local v2    # "depIdx":I
    if-gez v2, :cond_5

    .line 203
    new-instance v11, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Split \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v13, v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 204
    const-string/jumbo v13, "\' targets split \'"

    .line 203
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 204
    const-string/jumbo v13, "\', which is missing."

    .line 203
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;)V

    throw v11

    .line 207
    :cond_5
    iget-object v11, p0, Landroid/content/pm/PackageParser$PackageLite;->isFeatureSplits:[Z

    aget-boolean v11, v11, v2

    if-nez v11, :cond_6

    .line 208
    new-instance v11, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Split \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v13, v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 209
    const-string/jumbo v13, "\' declares itself as configuration split for a non-feature split \'"

    .line 208
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 210
    iget-object v13, p0, Landroid/content/pm/PackageParser$PackageLite;->splitNames:[Ljava/lang/String;

    aget-object v13, v13, v2

    .line 208
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    .line 210
    const-string/jumbo v13, "\'"

    .line 208
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;)V

    throw v11

    .line 212
    :cond_6
    add-int/lit8 v10, v2, 0x1

    .line 217
    .end local v2    # "depIdx":I
    .local v10, "targetSplitIdx":I
    :goto_5
    invoke-virtual {v6, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [I

    add-int/lit8 v12, v8, 0x1

    invoke-static {v11, v12}, Landroid/content/pm/split/SplitDependencyLoader;->append([II)[I

    move-result-object v11

    .line 216
    invoke-virtual {v6, v10, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto/16 :goto_4

    .line 214
    .end local v10    # "targetSplitIdx":I
    :cond_7
    const/4 v10, 0x0

    .restart local v10    # "targetSplitIdx":I
    goto :goto_5

    .line 221
    .end local v1    # "configForSplit":Ljava/lang/String;
    .end local v10    # "targetSplitIdx":I
    :cond_8
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    .line 222
    .local v0, "bitset":Ljava/util/BitSet;
    const/4 v4, 0x0

    .local v4, "i":I
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v5

    .local v5, "size":I
    :goto_6
    if-ge v4, v5, :cond_c

    .line 223
    invoke-virtual {v6, v4}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    .line 225
    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    .line 226
    :goto_7
    const/4 v11, -0x1

    if-eq v8, v11, :cond_b

    .line 228
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->get(I)Z

    move-result v11

    if-eqz v11, :cond_9

    .line 229
    new-instance v11, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;

    const-string/jumbo v12, "Cycle detected in split dependencies."

    const/4 v13, 0x0

    invoke-direct {v11, v12, v13}, Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;-><init>(Ljava/lang/String;Landroid/content/pm/split/SplitDependencyLoader$IllegalDependencyException;)V

    throw v11

    .line 233
    :cond_9
    invoke-virtual {v0, v8}, Ljava/util/BitSet;->set(I)V

    .line 236
    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    .line 237
    .local v3, "deps":[I
    if-eqz v3, :cond_a

    const/4 v11, 0x0

    aget v8, v3, v11

    goto :goto_7

    :cond_a
    const/4 v8, -0x1

    goto :goto_7

    .line 222
    .end local v3    # "deps":[I
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 240
    :cond_c
    return-object v6
.end method


# virtual methods
.method protected abstract constructSplit(I[II)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[II)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract isSplitCached(I)Z
.end method

.method protected loadDependenciesForSplit(I)V
    .locals 8
    .param p1, "splitIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/content/pm/split/SplitDependencyLoader;, "Landroid/content/pm/split/SplitDependencyLoader<TE;>;"
    const/4 v7, 0x0

    .line 63
    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 64
    return-void

    .line 68
    :cond_0
    if-nez p1, :cond_1

    .line 69
    invoke-direct {p0, v7}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v0

    .line 70
    .local v0, "configSplitIndices":[I
    const/4 v6, -0x1

    invoke-virtual {p0, v7, v0, v6}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 71
    return-void

    .line 75
    .end local v0    # "configSplitIndices":[I
    :cond_1
    new-instance v4, Landroid/util/IntArray;

    invoke-direct {v4}, Landroid/util/IntArray;-><init>()V

    .line 76
    .local v4, "linearDependencies":Landroid/util/IntArray;
    invoke-virtual {v4, p1}, Landroid/util/IntArray;->add(I)V

    .line 83
    :goto_0
    iget-object v6, p0, Landroid/content/pm/split/SplitDependencyLoader;->mDependencies:Landroid/util/SparseArray;

    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 84
    .local v1, "deps":[I
    if-eqz v1, :cond_3

    array-length v6, v1

    if-lez v6, :cond_3

    .line 85
    aget p1, v1, v7

    .line 90
    :goto_1
    if-ltz p1, :cond_2

    invoke-virtual {p0, p1}, Landroid/content/pm/split/SplitDependencyLoader;->isSplitCached(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 98
    :cond_2
    move v5, p1

    .line 99
    .local v5, "parentIdx":I
    invoke-virtual {v4}, Landroid/util/IntArray;->size()I

    move-result v6

    add-int/lit8 v2, v6, -0x1

    .local v2, "i":I
    :goto_2
    if-ltz v2, :cond_5

    .line 100
    invoke-virtual {v4, v2}, Landroid/util/IntArray;->get(I)I

    move-result v3

    .line 101
    .local v3, "idx":I
    invoke-direct {p0, v3}, Landroid/content/pm/split/SplitDependencyLoader;->collectConfigSplitIndices(I)[I

    move-result-object v0

    .line 102
    .restart local v0    # "configSplitIndices":[I
    invoke-virtual {p0, v3, v0, v5}, Landroid/content/pm/split/SplitDependencyLoader;->constructSplit(I[II)V

    .line 103
    move v5, v3

    .line 99
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 87
    .end local v0    # "configSplitIndices":[I
    .end local v2    # "i":I
    .end local v3    # "idx":I
    .end local v5    # "parentIdx":I
    :cond_3
    const/4 p1, -0x1

    goto :goto_1

    .line 94
    :cond_4
    invoke-virtual {v4, p1}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    .line 105
    .restart local v2    # "i":I
    .restart local v5    # "parentIdx":I
    :cond_5
    return-void
.end method
