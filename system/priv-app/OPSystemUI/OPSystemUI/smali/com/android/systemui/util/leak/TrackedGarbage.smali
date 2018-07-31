.class public Lcom/android/systemui/util/leak/TrackedGarbage;
.super Ljava/lang/Object;
.source "TrackedGarbage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;
    }
.end annotation


# instance fields
.field private final mGarbage:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private final mRefQueue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/leak/TrackedCollections;)V
    .locals 1
    .param p1, "trackedCollections"    # Lcom/android/systemui/util/leak/TrackedCollections;

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    .line 38
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    .line 43
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    .line 56
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "ref":Ljava/lang/ref/Reference;, "Ljava/lang/ref/Reference<*>;"
    if-eqz v0, :cond_0

    .line 57
    iget-object v1, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 59
    :cond_0
    return-void
.end method

.method private isOld(JJ)Z
    .locals 3
    .param p1, "createdUptimeMillis"    # J
    .param p3, "now"    # J

    .prologue
    .line 124
    const-wide/32 v0, 0xea60

    add-long/2addr v0, p1

    cmp-long v0, v0, p3

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized countOldGarbage()I
    .locals 8

    .prologue
    monitor-enter p0

    .line 110
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedGarbage;->cleanUp()V

    .line 112
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 114
    .local v0, "now":J
    const/4 v4, 0x0

    .line 115
    .local v4, "result":I
    iget-object v5, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    .line 116
    .local v2, "ref":Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;
    invoke-static {v2}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->-get1(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)J

    move-result-wide v6

    invoke-direct {p0, v6, v7, v0, v1}, Lcom/android/systemui/util/leak/TrackedGarbage;->isOld(JJ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 117
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .end local v2    # "ref":Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;
    :cond_1
    monitor-exit p0

    .line 120
    return v4

    .end local v0    # "now":J
    .end local v3    # "ref$iterator":Ljava/util/Iterator;
    .end local v4    # "result":I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized dump(Ljava/io/PrintWriter;)V
    .locals 11
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    monitor-enter p0

    .line 85
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedGarbage;->cleanUp()V

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 89
    .local v4, "now":J
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 90
    .local v0, "acc":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 91
    .local v1, "accOld":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    iget-object v8, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "ref$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    .line 92
    .local v6, "ref":Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;
    invoke-static {v6}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->-get0(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {v6}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->-get0(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    invoke-static {v6}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->-get1(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)J

    move-result-wide v8

    invoke-direct {p0, v8, v9, v4, v5}, Lcom/android/systemui/util/leak/TrackedGarbage;->isOld(JJ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 94
    invoke-static {v6}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->-get0(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v9

    invoke-static {v6}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;->-get0(Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;)Ljava/lang/Class;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v1, v8, v10}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v1, v9, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "acc":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    .end local v1    # "accOld":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    .end local v4    # "now":J
    .end local v6    # "ref":Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;
    .end local v7    # "ref$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 98
    .restart local v0    # "acc":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    .restart local v1    # "accOld":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    .restart local v4    # "now":J
    .restart local v7    # "ref$iterator":Ljava/util/Iterator;
    :cond_1
    :try_start_1
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "entry$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 99
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Class;

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    const-string/jumbo v8, ": "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 102
    const-string/jumbo v8, " total, "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 104
    const-string/jumbo v8, " old"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Ljava/lang/Integer;>;"
    :cond_2
    monitor-exit p0

    .line 107
    return-void
.end method

.method public declared-synchronized track(Ljava/lang/Object;)V
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    monitor-enter p0

    .line 49
    :try_start_0
    invoke-direct {p0}, Lcom/android/systemui/util/leak/TrackedGarbage;->cleanUp()V

    .line 50
    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    new-instance v1, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;

    iget-object v2, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mRefQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, v2}, Lcom/android/systemui/util/leak/TrackedGarbage$LeakReference;-><init>(Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v0, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mTrackedCollections:Lcom/android/systemui/util/leak/TrackedCollections;

    iget-object v1, p0, Lcom/android/systemui/util/leak/TrackedGarbage;->mGarbage:Ljava/util/HashSet;

    const-string/jumbo v2, "Garbage"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/leak/TrackedCollections;->track(Ljava/util/Collection;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 52
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
