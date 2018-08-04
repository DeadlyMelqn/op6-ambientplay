.class final Landroid/util/MapCollections$MapIterator;
.super Ljava/lang/Object;
.source "MapCollections.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/MapCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "MapIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;>;",
        "Ljava/util/Map$Entry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field mEnd:I

.field mEntryValid:Z

.field mIndex:I

.field final synthetic this$0:Landroid/util/MapCollections;


# direct methods
.method constructor <init>(Landroid/util/MapCollections;)V
    .locals 1

    .prologue
    .line 80
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "this$0":Landroid/util/MapCollections;, "Landroid/util/MapCollections<TK;TV;>;"
    iput-object p1, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 81
    invoke-virtual {p1}, Landroid/util/MapCollections;->colGetSize()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 83
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    const/4 v1, 0x0

    .line 138
    iget-boolean v2, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v2, :cond_0

    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    .line 140
    const-string/jumbo v2, "This container does not support retaining Map.Entry objects"

    .line 139
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 142
    :cond_0
    instance-of v2, p1, Ljava/util/Map$Entry;

    if-nez v2, :cond_1

    .line 143
    return v1

    :cond_1
    move-object v0, p1

    .line 145
    check-cast v0, Ljava/util/Map$Entry;

    .line 146
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v3, v4, v1}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 147
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v3, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    .line 146
    :cond_2
    return v1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 111
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 113
    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    .line 112
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 115
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 120
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 122
    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    .line 121
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 2

    .prologue
    .line 87
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    const/4 v2, 0x0

    .line 152
    iget-boolean v3, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v3, :cond_0

    .line 153
    new-instance v2, Ljava/lang/IllegalStateException;

    .line 154
    const-string/jumbo v3, "This container does not support retaining Map.Entry objects"

    .line 153
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 156
    :cond_0
    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v3, v4, v2}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v0

    .line 157
    .local v0, "key":Ljava/lang/Object;
    iget-object v3, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v4, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/util/MapCollections;->colGetEntry(II)Ljava/lang/Object;

    move-result-object v1

    .line 158
    .local v1, "value":Ljava/lang/Object;
    if-nez v0, :cond_1

    move v3, v2

    .line 159
    :goto_0
    if-nez v1, :cond_2

    .line 158
    :goto_1
    xor-int/2addr v2, v3

    return v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 90
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 93
    :cond_0
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 94
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 95
    return-object p0
.end method

.method public remove()V
    .locals 2

    .prologue
    .line 100
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_0

    .line 101
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1}, Landroid/util/MapCollections;->colRemoveAt(I)V

    .line 104
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    .line 105
    iget v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroid/util/MapCollections$MapIterator;->mEnd:I

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    .line 107
    return-void
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TV;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    .local p1, "object":Ljava/lang/Object;, "TV;"
    iget-boolean v0, p0, Landroid/util/MapCollections$MapIterator;->mEntryValid:Z

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 131
    const-string/jumbo v1, "This container does not support retaining Map.Entry objects"

    .line 130
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_0
    iget-object v0, p0, Landroid/util/MapCollections$MapIterator;->this$0:Landroid/util/MapCollections;

    iget v1, p0, Landroid/util/MapCollections$MapIterator;->mIndex:I

    invoke-virtual {v0, v1, p1}, Landroid/util/MapCollections;->colSetValue(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 164
    .local p0, "this":Landroid/util/MapCollections$MapIterator;, "Landroid/util/MapCollections<TK;TV;>.MapIterator;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/util/MapCollections$MapIterator;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method