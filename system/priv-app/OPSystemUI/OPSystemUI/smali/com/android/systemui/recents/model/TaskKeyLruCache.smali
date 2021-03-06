.class public Lcom/android/systemui/recents/model/TaskKeyLruCache;
.super Lcom/android/systemui/recents/model/TaskKeyCache;
.source "TaskKeyLruCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;
    }
.end annotation

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
.field private final mCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Integer;",
            "TV;>;"
        }
    .end annotation
.end field

.field private final mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/recents/model/TaskKeyLruCache;)Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/recents/model/TaskKeyLruCache;

    .prologue
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    return-object v0
.end method

.method public constructor <init>(ILcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;)V
    .locals 1
    .param p1, "cacheSize"    # I
    .param p2, "evictionCallback"    # Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .prologue
    .line 44
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    invoke-direct {p0}, Lcom/android/systemui/recents/model/TaskKeyCache;-><init>()V

    .line 45
    iput-object p2, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mEvictionCallback:Lcom/android/systemui/recents/model/TaskKeyLruCache$EvictionCallback;

    .line 46
    new-instance v0, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/recents/model/TaskKeyLruCache$1;-><init>(Lcom/android/systemui/recents/model/TaskKeyLruCache;I)V

    iput-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    .line 56
    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "writer"    # Ljava/io/PrintWriter;

    .prologue
    .line 64
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "innerPrefix":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v3, "TaskKeyCache"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 67
    const-string/jumbo v3, " numEntries="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 68
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 69
    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 70
    .local v2, "keyCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 71
    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    iget-object v4, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mKeys:Landroid/util/SparseArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 73
    :cond_0
    return-void
.end method

.method protected evictAllCache()V
    .locals 1

    .prologue
    .line 92
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 93
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
    .line 77
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

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
    .line 82
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-void
.end method

.method protected removeCacheEntry(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 87
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    return-void
.end method

.method final trimToSize(I)V
    .locals 1
    .param p1, "cacheSize"    # I

    .prologue
    .line 60
    .local p0, "this":Lcom/android/systemui/recents/model/TaskKeyLruCache;, "Lcom/android/systemui/recents/model/TaskKeyLruCache<TV;>;"
    iget-object v0, p0, Lcom/android/systemui/recents/model/TaskKeyLruCache;->mCache:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->trimToSize(I)V

    .line 61
    return-void
.end method
