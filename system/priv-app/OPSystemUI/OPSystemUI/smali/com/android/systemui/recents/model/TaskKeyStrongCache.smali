.class public Lcom/android/systemui/recents/model/TaskKeyStrongCache;
.super Lcom/android/systemui/recents/model/TaskKeyCache;
.source "TaskKeyStrongCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/systemui/recents/model/TaskKeyCache",
        "<TV;>;"
    }
.end annotation


# instance fields
.field private final mCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 30
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskKeyCache;-><init>()V

    .line 34
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    .line 30
    return-void
.end method


# virtual methods
.method final copyEntries(Lcom/android/systemui/recents/model/TaskKeyStrongCache;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/model/TaskKeyStrongCache",
            "<TV;>;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    .local p1, "other":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    iget-object v2, p1, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 38
    iget-object v2, p1, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/recents/model/Task$TaskKey;

    .line 39
    .local v1, "key":Lcom/android/systemui/recents/model/Task$TaskKey;
    iget-object v2, p1, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    iget v3, v1, Lcom/android/systemui/recents/model/Task$TaskKey;->id:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->put(Lcom/android/systemui/recents/model/Task$TaskKey;Ljava/lang/Object;)V

    .line 37
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 41
    .end local v1    # "key":Lcom/android/systemui/recents/model/Task$TaskKey;
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 44
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 45
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "TaskKeyCache"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 46
    const-string/jumbo v3, " numEntries="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 47
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 48
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 49
    .local v2, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 50
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 52
    :cond_0
    return-void
.end method

.method protected evictAllCache()V
    .locals 1

    .prologue
    .line 71
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 72
    return-void
.end method

.method protected getCacheEntry(I)Ljava/lang/Object;
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected putCacheEntry(ILjava/lang/Object;)V
    .locals 2
    .param p1, "id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)V"
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-void
.end method

.method protected removeCacheEntry(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 66
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyStrongCache;, "Lcom/android/systemui/recents/model/TaskKeyStrongCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyStrongCache;->mCache:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    return-void
.end method
