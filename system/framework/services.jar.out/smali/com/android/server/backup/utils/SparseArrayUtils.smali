.class public final Lcom/android/server/backup/utils/SparseArrayUtils;
.super Ljava/lang/Object;
.source "SparseArrayUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static union(Landroid/util/SparseArray;)Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/HashSet",
            "<TV;>;>;)",
            "Ljava/util/HashSet",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "sets":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/util/HashSet<TV;>;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 40
    .local v3, "unionSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TV;>;"
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 41
    .local v2, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 42
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 43
    .local v1, "ithSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TV;>;"
    if-eqz v1, :cond_0

    .line 44
    invoke-virtual {v3, v1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 41
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 47
    .end local v1    # "ithSet":Ljava/util/HashSet;, "Ljava/util/HashSet<TV;>;"
    :cond_1
    return-object v3
.end method
