.class public final Lcom/android/server/pm/dex/DexoptUtils;
.super Ljava/lang/Object;
.source "DexoptUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DexoptUtils"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "classLoaderName"    # Ljava/lang/String;

    .prologue
    .line 248
    const-string/jumbo v1, "&"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    return-object p0

    .line 251
    :cond_0
    move-object v0, p1

    .line 252
    .local v0, "classLoaderDexoptEncoding":Ljava/lang/String;
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isPathClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    const-string/jumbo v0, "PCL"

    .line 259
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 254
    :cond_1
    invoke-static {p1}, Lcom/android/internal/os/ClassLoaderFactory;->isDelegateLastClassLoaderName(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    const-string/jumbo v0, "DLC"

    goto :goto_0

    .line 257
    :cond_2
    const-string/jumbo v1, "DexoptUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Unsupported classLoaderName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "cl1"    # Ljava/lang/String;
    .param p1, "cl2"    # Ljava/lang/String;

    .prologue
    .line 271
    const-string/jumbo v0, "&"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string/jumbo v0, "&"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 271
    if-eqz v0, :cond_1

    .line 273
    :cond_0
    const-string/jumbo v0, "&"

    return-object v0

    .line 275
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object p1

    .line 276
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    return-object p0

    .line 277
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "classpath"    # Ljava/lang/String;
    .param p1, "newElement"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p1    # "newElement":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "newElement":Ljava/lang/String;
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private static encodeClasspath([Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "classpathElements"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 218
    if-eqz p0, :cond_0

    array-length v3, p0

    if-nez v3, :cond_1

    .line 219
    :cond_0
    const-string/jumbo v2, ""

    return-object v2

    .line 221
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 222
    .local v1, "sb":Ljava/lang/StringBuilder;
    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v0, p0, v2

    .line 223
    .local v0, "element":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-eqz v4, :cond_2

    .line 224
    const-string/jumbo v4, ":"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    :cond_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 228
    .end local v0    # "element":Ljava/lang/String;
    :cond_3
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getClassLoaderContexts(Landroid/content/pm/ApplicationInfo;[Ljava/lang/String;[Z)[Ljava/lang/String;
    .locals 17
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p1, "sharedLibraries"    # [Ljava/lang/String;
    .param p2, "pathsWithCode"    # [Z

    .prologue
    .line 69
    invoke-static/range {p1 .. p1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 71
    .local v7, "sharedLibrariesClassPath":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 70
    invoke-static {v7, v14}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "baseApkContextClassLoader":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_0

    .line 75
    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aput-object v1, v14, v15

    return-object v14

    .line 81
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/server/pm/dex/DexoptUtils;->getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;

    move-result-object v13

    .line 85
    .local v13, "splitRelativeCodePaths":[Ljava/lang/String;
    new-instance v14, Ljava/io/File;

    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v14}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 87
    .local v2, "baseApkName":Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 92
    .local v6, "sharedLibrariesAndBaseClassPath":Ljava/lang/String;
    array-length v14, v13

    add-int/lit8 v14, v14, 0x1

    new-array v3, v14, [Ljava/lang/String;

    .line 93
    .local v3, "classLoaderContexts":[Ljava/lang/String;
    const/4 v14, 0x0

    aget-boolean v14, p2, v14

    if-eqz v14, :cond_2

    .end local v1    # "baseApkContextClassLoader":Ljava/lang/String;
    :goto_0
    const/4 v14, 0x0

    aput-object v1, v3, v14

    .line 95
    invoke-virtual/range {p0 .. p0}, Landroid/content/pm/ApplicationInfo;->requestsIsolatedSplitLoading()Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    if-nez v14, :cond_4

    .line 99
    :cond_1
    move-object v4, v6

    .line 100
    .local v4, "classpath":Ljava/lang/String;
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_1
    array-length v14, v3

    if-ge v5, v14, :cond_a

    .line 101
    aget-boolean v14, p2, v5

    if-eqz v14, :cond_3

    .line 102
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    invoke-static {v4, v14}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 101
    :goto_2
    aput-object v14, v3, v5

    .line 110
    add-int/lit8 v14, v5, -0x1

    aget-object v14, v13, v14

    invoke-static {v4, v14}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 100
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 93
    .end local v4    # "classpath":Ljava/lang/String;
    .end local v5    # "i":I
    .restart local v1    # "baseApkContextClassLoader":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 102
    .end local v1    # "baseApkContextClassLoader":Ljava/lang/String;
    .restart local v4    # "classpath":Ljava/lang/String;
    .restart local v5    # "i":I
    :cond_3
    const/4 v14, 0x0

    goto :goto_2

    .line 123
    .end local v4    # "classpath":Ljava/lang/String;
    .end local v5    # "i":I
    :cond_4
    array-length v14, v13

    new-array v9, v14, [Ljava/lang/String;

    .line 124
    .local v9, "splitClassLoaderEncodingCache":[Ljava/lang/String;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    array-length v14, v13

    if-ge v5, v14, :cond_5

    .line 125
    aget-object v14, v13, v5

    .line 126
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    aget-object v15, v15, v5

    .line 125
    invoke-static {v14, v15}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v9, v5

    .line 124
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 129
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->classLoaderName:Ljava/lang/String;

    .line 128
    invoke-static {v6, v14}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 130
    .local v11, "splitDependencyOnBase":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/content/pm/ApplicationInfo;->splitDependencies:Landroid/util/SparseArray;

    .line 135
    .local v10, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v14

    if-ge v5, v14, :cond_7

    .line 136
    invoke-virtual {v10, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v12

    .line 137
    .local v12, "splitIndex":I
    aget-boolean v14, p2, v12

    if-eqz v14, :cond_6

    .line 139
    invoke-static {v12, v9, v10, v3, v11}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 147
    .end local v12    # "splitIndex":I
    :cond_7
    const/4 v5, 0x1

    :goto_5
    array-length v14, v3

    if-ge v5, v14, :cond_a

    .line 148
    const-string/jumbo v14, ""

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/content/pm/ApplicationInfo;->splitClassLoaderNames:[Ljava/lang/String;

    add-int/lit8 v16, v5, -0x1

    aget-object v15, v15, v16

    invoke-static {v14, v15}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 149
    .local v8, "splitClassLoader":Ljava/lang/String;
    aget-boolean v14, p2, v5

    if-eqz v14, :cond_9

    .line 152
    aget-object v14, v3, v5

    if-nez v14, :cond_8

    .end local v8    # "splitClassLoader":Ljava/lang/String;
    :goto_6
    aput-object v8, v3, v5

    .line 147
    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 154
    .restart local v8    # "splitClassLoader":Ljava/lang/String;
    :cond_8
    aget-object v14, v3, v5

    invoke-static {v8, v14}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto :goto_6

    .line 158
    :cond_9
    const/4 v14, 0x0

    aput-object v14, v3, v5

    goto :goto_7

    .line 163
    .end local v8    # "splitClassLoader":Ljava/lang/String;
    .end local v9    # "splitClassLoaderEncodingCache":[Ljava/lang/String;
    .end local v10    # "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    .end local v11    # "splitDependencyOnBase":Ljava/lang/String;
    :cond_a
    return-object v3
.end method

.method private static getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "index"    # I
    .param p1, "splitClassLoaderEncodingCache"    # [Ljava/lang/String;
    .param p3, "classLoaderContexts"    # [Ljava/lang/String;
    .param p4, "splitDependencyOnBase"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray",
            "<[I>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p2, "splitDependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v4, 0x0

    .line 192
    if-nez p0, :cond_0

    .line 193
    return-object p4

    .line 196
    :cond_0
    aget-object v3, p3, p0

    if-eqz v3, :cond_1

    .line 197
    aget-object v3, p3, p0

    return-object v3

    .line 200
    :cond_1
    invoke-virtual {p2, p0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v0, v3, v4

    .line 201
    .local v0, "parent":I
    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/server/pm/dex/DexoptUtils;->getParentDependencies(I[Ljava/lang/String;Landroid/util/SparseArray;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "parentDependencies":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 206
    move-object v2, v1

    .line 208
    .local v2, "splitContext":Ljava/lang/String;
    :goto_0
    aput-object v2, p3, p0

    .line 209
    return-object v2

    .line 207
    .end local v2    # "splitContext":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v0, -0x1

    aget-object v3, p1, v3

    invoke-static {v3, v1}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .restart local v2    # "splitContext":Ljava/lang/String;
    goto :goto_0
.end method

.method private static getSplitRelativeCodePaths(Landroid/content/pm/ApplicationInfo;)[Ljava/lang/String;
    .locals 9
    .param p0, "info"    # Landroid/content/pm/ApplicationInfo;

    .prologue
    .line 352
    new-instance v6, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getBaseCodePath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v0

    .line 353
    .local v0, "baseCodePath":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->getSplitCodePaths()[Ljava/lang/String;

    move-result-object v4

    .line 354
    .local v4, "splitCodePaths":[Ljava/lang/String;
    array-length v6, v4

    new-array v5, v6, [Ljava/lang/String;

    .line 355
    .local v5, "splitRelativeCodePaths":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v6, v4

    if-ge v2, v6, :cond_1

    .line 356
    new-instance v3, Ljava/io/File;

    aget-object v6, v4, v2

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 357
    .local v3, "pathFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    .line 359
    invoke-virtual {v3}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    .line 360
    .local v1, "basePath":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 361
    const-string/jumbo v6, "DexoptUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Split paths have different base paths: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "basePath":Ljava/lang/String;
    .end local v3    # "pathFile":Ljava/io/File;
    :cond_1
    return-object v5
.end method

.method static processContextForDexLoad(Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p0, "classLoadersNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p1, "classPaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v12, 0x0

    const/4 v11, 0x0

    .line 307
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v10

    if-eq v9, v10, :cond_0

    .line 308
    new-instance v9, Ljava/lang/IllegalArgumentException;

    .line 309
    const-string/jumbo v10, "The size of the class loader names and the dex paths do not match."

    .line 308
    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 311
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 312
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "Empty classLoadersNames"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 316
    :cond_1
    const-string/jumbo v8, ""

    .line 320
    .local v8, "parentContext":Ljava/lang/String;
    const/4 v4, 0x1

    .local v4, "i":I
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v4, v9, :cond_3

    .line 321
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v9}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 322
    return-object v12

    .line 324
    :cond_2
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 326
    .local v0, "classpath":Ljava/lang/String;
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-static {v0, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 325
    invoke-static {v8, v9}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 320
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 330
    .end local v0    # "classpath":Ljava/lang/String;
    :cond_3
    invoke-interface {p0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 331
    .local v7, "loadingClassLoader":Ljava/lang/String;
    invoke-static {v7}, Lcom/android/internal/os/ClassLoaderFactory;->isValidClassLoaderName(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 332
    return-object v12

    .line 334
    :cond_4
    invoke-interface {p1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v10, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 335
    .local v5, "loadedDexPaths":[Ljava/lang/String;
    array-length v9, v5

    new-array v6, v9, [Ljava/lang/String;

    .line 336
    .local v6, "loadedDexPathsContext":[Ljava/lang/String;
    const-string/jumbo v2, ""

    .line 337
    .local v2, "currentLoadedDexPathClasspath":Ljava/lang/String;
    const/4 v4, 0x0

    :goto_1
    array-length v9, v5

    if-ge v4, v9, :cond_5

    .line 338
    aget-object v3, v5, v4

    .line 339
    .local v3, "dexPath":Ljava/lang/String;
    invoke-static {v2, v7}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "currentContext":Ljava/lang/String;
    invoke-static {v1, v8}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClassLoaderChain(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v6, v4

    .line 342
    invoke-static {v2, v3}, Lcom/android/server/pm/dex/DexoptUtils;->encodeClasspath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 337
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 344
    .end local v1    # "currentContext":Ljava/lang/String;
    .end local v3    # "dexPath":Ljava/lang/String;
    :cond_5
    return-object v6
.end method
