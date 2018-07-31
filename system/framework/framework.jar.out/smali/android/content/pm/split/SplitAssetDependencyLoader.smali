.class public Landroid/content/pm/split/SplitAssetDependencyLoader;
.super Landroid/content/pm/split/SplitDependencyLoader;
.source "SplitAssetDependencyLoader.java"

# interfaces
.implements Landroid/content/pm/split/SplitAssetLoader;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/pm/split/SplitDependencyLoader",
        "<",
        "Landroid/content/pm/PackageParser$PackageParserException;",
        ">;",
        "Landroid/content/pm/split/SplitAssetLoader;"
    }
.end annotation


# instance fields
.field private mCachedAssetManagers:[Landroid/content/res/AssetManager;

.field private mCachedPaths:[[Ljava/lang/String;

.field private final mFlags:I

.field private final mSplitPaths:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/pm/PackageParser$PackageLite;Landroid/util/SparseArray;I)V
    .locals 5
    .param p1, "pkg"    # Landroid/content/pm/PackageParser$PackageLite;
    .param p3, "flags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$PackageLite;",
            "Landroid/util/SparseArray",
            "<[I>;I)V"
        }
    .end annotation

    .prologue
    .local p2, "dependencies":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[I>;"
    const/4 v4, 0x0

    .line 48
    invoke-direct {p0, p2}, Landroid/content/pm/split/SplitDependencyLoader;-><init>(Landroid/util/SparseArray;)V

    .line 51
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    .line 52
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v1, p1, Landroid/content/pm/PackageParser$PackageLite;->baseCodePath:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 53
    iget-object v0, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    iget-object v1, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/PackageParser$PackageLite;->splitCodePaths:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    invoke-static {v0, v4, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 55
    iput p3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    .line 56
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [[Ljava/lang/String;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    .line 57
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    array-length v0, v0

    new-array v0, v0, [Landroid/content/res/AssetManager;

    iput-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    .line 58
    return-void
.end method

.method private static createAssetManagerWithPaths([Ljava/lang/String;I)Landroid/content/res/AssetManager;
    .locals 22
    .param p0, "assetPaths"    # [Ljava/lang/String;
    .param p1, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 67
    new-instance v1, Landroid/content/res/AssetManager;

    invoke-direct {v1}, Landroid/content/res/AssetManager;-><init>()V

    .line 70
    .local v1, "assets":Landroid/content/res/AssetManager;
    :try_start_0
    sget v19, Landroid/os/Build$VERSION;->RESOURCES_SDK_INT:I

    .line 69
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v1 .. v19}, Landroid/content/res/AssetManager;->setConfiguration(IILjava/lang/String;IIIIIIIIIIIIIII)V

    .line 72
    const/4 v2, 0x0

    move-object/from16 v0, p0

    array-length v3, v0

    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v20, p0, v2

    .line 73
    .local v20, "assetPath":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_0

    .line 74
    invoke-static/range {v20 .. v20}, Landroid/content/pm/PackageParser;->isApkPath(Ljava/lang/String;)Z

    move-result v4

    xor-int/lit8 v4, v4, 0x1

    .line 73
    if-eqz v4, :cond_0

    .line 75
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Invalid package file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 75
    const/16 v4, -0x64

    invoke-direct {v2, v4, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .end local v20    # "assetPath":Ljava/lang/String;
    :catch_0
    move-exception v21

    .line 87
    .local v21, "e":Ljava/lang/Throwable;
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 88
    throw v21

    .line 79
    .end local v21    # "e":Ljava/lang/Throwable;
    .restart local v20    # "assetPath":Ljava/lang/String;
    :cond_0
    :try_start_1
    move-object/from16 v0, v20

    invoke-virtual {v1, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 80
    new-instance v2, Landroid/content/pm/PackageParser$PackageParserException;

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed adding asset path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 81
    const/16 v4, -0x65

    .line 80
    invoke-direct {v2, v4, v3}, Landroid/content/pm/PackageParser$PackageParserException;-><init>(ILjava/lang/String;)V

    throw v2
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 72
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 85
    .end local v20    # "assetPath":Ljava/lang/String;
    :cond_2
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_0

    aget-object v0, v2, v1

    .line 126
    .local v0, "assets":Landroid/content/res/AssetManager;
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    .end local v0    # "assets":Landroid/content/res/AssetManager;
    :cond_0
    return-void
.end method

.method protected constructSplit(I[II)V
    .locals 5
    .param p1, "splitIdx"    # I
    .param p2, "configSplitIndices"    # [I
    .param p3, "parentSplitIdx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 95
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v0, "assetPaths":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-ltz p3, :cond_0

    .line 97
    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    aget-object v3, v3, p3

    invoke-static {v0, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 100
    :cond_0
    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v3, v3, p1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    array-length v3, p2

    :goto_0
    if-ge v2, v3, :cond_1

    aget v1, p2, v2

    .line 102
    .local v1, "configSplitIdx":I
    iget-object v4, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mSplitPaths:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 101
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 104
    .end local v1    # "configSplitIdx":I
    :cond_1
    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    aput-object v2, v3, p1

    .line 105
    iget-object v2, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    iget-object v3, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedPaths:[[Ljava/lang/String;

    aget-object v3, v3, p1

    .line 106
    iget v4, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mFlags:I

    .line 105
    invoke-static {v3, v4}, Landroid/content/pm/split/SplitAssetDependencyLoader;->createAssetManagerWithPaths([Ljava/lang/String;I)Landroid/content/res/AssetManager;

    move-result-object v3

    aput-object v3, v2, p1

    .line 107
    return-void
.end method

.method public getBaseAssetManager()Landroid/content/res/AssetManager;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 111
    invoke-virtual {p0, v1}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 112
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getSplitAssetManager(I)Landroid/content/res/AssetManager;
    .locals 2
    .param p1, "idx"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageParser$PackageParserException;
        }
    .end annotation

    .prologue
    .line 119
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p0, v0}, Landroid/content/pm/split/SplitAssetDependencyLoader;->loadDependenciesForSplit(I)V

    .line 120
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    add-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method protected isSplitCached(I)Z
    .locals 1
    .param p1, "splitIdx"    # I

    .prologue
    .line 62
    iget-object v0, p0, Landroid/content/pm/split/SplitAssetDependencyLoader;->mCachedAssetManagers:[Landroid/content/res/AssetManager;

    aget-object v0, v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
