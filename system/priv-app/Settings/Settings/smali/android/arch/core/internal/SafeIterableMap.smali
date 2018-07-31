.class public Landroid/arch/core/internal/SafeIterableMap;
.super Ljava/lang/Object;
.source "SafeIterableMap.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation build Landroid/support/annotation/RestrictTo;
    value = {
        .enum Landroid/support/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroid/support/annotation/RestrictTo$Scope;
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/core/internal/SafeIterableMap$AscendingIterator;,
        Landroid/arch/core/internal/SafeIterableMap$DescendingIterator;,
        Landroid/arch/core/internal/SafeIterableMap$Entry;,
        Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;,
        Landroid/arch/core/internal/SafeIterableMap$ListIterator;,
        Landroid/arch/core/internal/SafeIterableMap$SupportRemove;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field private mIterators:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/arch/core/internal/SafeIterableMap$SupportRemove",
            "<TK;TV;>;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mSize:I

.field private mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    .line 42
    const/4 v0, 0x0

    iput v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    .line 337
    return-void
.end method

.method static synthetic access$100(Landroid/arch/core/internal/SafeIterableMap;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .locals 1
    .param p0, "x0"    # Landroid/arch/core/internal/SafeIterableMap;

    .prologue
    .line 35
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method


# virtual methods
.method public descendingIterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 149
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$DescendingIterator;

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/internal/SafeIterableMap$DescendingIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    .line 150
    .local v0, "iterator":Landroid/arch/core/internal/SafeIterableMap$DescendingIterator;, "Landroid/arch/core/internal/SafeIterableMap$DescendingIterator<TK;TV;>;"
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-object v0
.end method

.method public eldest()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 168
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 180
    if-eq p1, p0, :cond_3

    .line 183
    instance-of v7, p1, Landroid/arch/core/internal/SafeIterableMap;

    if-eqz v7, :cond_4

    move-object v2, p1

    .line 186
    check-cast v2, Landroid/arch/core/internal/SafeIterableMap;

    .line 187
    .local v2, "map":Landroid/arch/core/internal/SafeIterableMap;
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v7

    invoke-virtual {v2}, Landroid/arch/core/internal/SafeIterableMap;->size()I

    move-result v8

    if-ne v7, v8, :cond_5

    .line 190
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 191
    .local v0, "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {v2}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 192
    .local v1, "iterator2":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_6

    .line 200
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_9

    :goto_0
    move v5, v6

    :cond_2
    return v5

    .line 181
    .end local v0    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .end local v1    # "iterator2":Ljava/util/Iterator;
    .end local v2    # "map":Landroid/arch/core/internal/SafeIterableMap;
    :cond_3
    return v5

    .line 184
    :cond_4
    return v6

    .line 188
    .restart local v2    # "map":Landroid/arch/core/internal/SafeIterableMap;
    :cond_5
    return v6

    .line 192
    .restart local v0    # "iterator1":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    .restart local v1    # "iterator2":Ljava/util/Iterator;
    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 193
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 194
    .local v3, "next1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 195
    .local v4, "next2":Ljava/lang/Object;
    if-eqz v3, :cond_8

    :cond_7
    if-eqz v3, :cond_0

    .line 196
    invoke-interface {v3, v4}, Ljava/util/Map$Entry;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 197
    :goto_1
    return v6

    .line 195
    :cond_8
    if-eqz v4, :cond_7

    goto :goto_1

    .line 200
    .end local v3    # "next1":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4    # "next2":Ljava/lang/Object;
    :cond_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_0
.end method

.method protected get(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 45
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 46
    .local v0, "currentNode":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    :goto_0
    if-nez v0, :cond_1

    .line 52
    :cond_0
    return-object v0

    .line 47
    :cond_1
    iget-object v1, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mKey:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 50
    iget-object v0, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 139
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$AscendingIterator;

    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v2, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, v1, v2}, Landroid/arch/core/internal/SafeIterableMap$AscendingIterator;-><init>(Landroid/arch/core/internal/SafeIterableMap$Entry;Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    .line 140
    .local v0, "iterator":Landroid/arch/core/internal/SafeIterableMap$ListIterator;, "Landroid/arch/core/internal/SafeIterableMap$ListIterator<TK;TV;>;"
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    return-object v0
.end method

.method public iteratorWithAdditions()Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/core/internal/SafeIterableMap",
            "<TK;TV;>.IteratorWithAdditions;"
        }
    .end annotation

    .prologue
    .line 159
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;-><init>(Landroid/arch/core/internal/SafeIterableMap;Landroid/arch/core/internal/SafeIterableMap$1;)V

    .line 160
    .local v0, "iterator":Landroid/arch/core/internal/SafeIterableMap$IteratorWithAdditions;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>.IteratorWithAdditions;"
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    return-object v0
.end method

.method public newest()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 175
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    iget-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    return-object v0
.end method

.method protected put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Landroid/arch/core/internal/SafeIterableMap$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 74
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Landroid/arch/core/internal/SafeIterableMap$Entry;

    invoke-direct {v0, p1, p2}, Landroid/arch/core/internal/SafeIterableMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 75
    .local v0, "newEntry":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    iget v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    .line 76
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v0, v1, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 83
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v1, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 84
    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 85
    return-object v0

    .line 77
    :cond_0
    iput-object v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 78
    iget-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v1, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 79
    return-object v0
.end method

.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    const/4 v1, 0x0

    .line 65
    invoke-virtual {p0, p1}, Landroid/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v0

    .line 66
    .local v0, "entry":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0, p1, p2}, Landroid/arch/core/internal/SafeIterableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 70
    return-object v1

    .line 67
    :cond_0
    iget-object v1, v0, Landroid/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object v1
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    const/4 v5, 0x0

    .line 97
    invoke-virtual {p0, p1}, Landroid/arch/core/internal/SafeIterableMap;->get(Ljava/lang/Object;)Landroid/arch/core/internal/SafeIterableMap$Entry;

    move-result-object v2

    .line 98
    .local v2, "toRemove":Landroid/arch/core/internal/SafeIterableMap$Entry;, "Landroid/arch/core/internal/SafeIterableMap$Entry<TK;TV;>;"
    if-eqz v2, :cond_1

    .line 101
    iget v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    .line 102
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 108
    :cond_0
    iget-object v3, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez v3, :cond_3

    .line 111
    iget-object v3, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mStart:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 114
    :goto_0
    iget-object v3, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    if-nez v3, :cond_4

    .line 117
    iget-object v3, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mEnd:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 120
    :goto_1
    iput-object v5, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 121
    iput-object v5, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    .line 122
    iget-object v3, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mValue:Ljava/lang/Object;

    return-object v3

    .line 99
    :cond_1
    return-object v5

    .line 103
    :cond_2
    iget-object v3, p0, Landroid/arch/core/internal/SafeIterableMap;->mIterators:Ljava/util/WeakHashMap;

    invoke-virtual {v3}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/core/internal/SafeIterableMap$SupportRemove;

    .line 104
    .local v1, "iter":Landroid/arch/core/internal/SafeIterableMap$SupportRemove;, "Landroid/arch/core/internal/SafeIterableMap$SupportRemove<TK;TV;>;"
    invoke-interface {v1, v2}, Landroid/arch/core/internal/SafeIterableMap$SupportRemove;->supportRemove(Landroid/arch/core/internal/SafeIterableMap$Entry;)V

    goto :goto_2

    .line 109
    .end local v0    # "-l_3_R":Ljava/lang/Object;
    .end local v1    # "iter":Landroid/arch/core/internal/SafeIterableMap$SupportRemove;, "Landroid/arch/core/internal/SafeIterableMap$SupportRemove<TK;TV;>;"
    :cond_3
    iget-object v3, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v4, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v4, v3, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_0

    .line 115
    :cond_4
    iget-object v3, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mNext:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iget-object v4, v2, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    iput-object v4, v3, Landroid/arch/core/internal/SafeIterableMap$Entry;->mPrevious:Landroid/arch/core/internal/SafeIterableMap$Entry;

    goto :goto_1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 129
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    iget v0, p0, Landroid/arch/core/internal/SafeIterableMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 205
    .local p0, "this":Landroid/arch/core/internal/SafeIterableMap;, "Landroid/arch/core/internal/SafeIterableMap<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {p0}, Landroid/arch/core/internal/SafeIterableMap;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 208
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 214
    const-string/jumbo v2, "]"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 209
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 211
    const-string/jumbo v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
