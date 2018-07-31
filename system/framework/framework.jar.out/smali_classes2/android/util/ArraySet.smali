.class public final Landroid/util/ArraySet;
.super Ljava/lang/Object;
.source "ArraySet.java"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Collection",
        "<TE;>;",
        "Ljava/util/Set",
        "<TE;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ArraySet"

.field static sBaseCache:[Ljava/lang/Object;

.field static sBaseCacheSize:I

.field static sTwiceBaseCache:[Ljava/lang/Object;

.field static sTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, v0, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 253
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 259
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;-><init>(IZ)V

    .line 260
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v1, 0x0

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 264
    iput-boolean p2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    .line 265
    if-nez p1, :cond_0

    .line 266
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 267
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 271
    :goto_0
    iput v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 272
    return-void

    .line 269
    :cond_0
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/util/ArraySet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 278
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 279
    if-eqz p1, :cond_0

    .line 280
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 282
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<TE;>;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "set":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 287
    if-eqz p1, :cond_0

    .line 288
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 290
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 6
    .param p1, "size"    # I

    .prologue
    .line 155
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v2, 0x8

    if-ne p1, v2, :cond_2

    .line 156
    const-class v3, Landroid/util/ArraySet;

    monitor-enter v3

    .line 157
    :try_start_0
    sget-object v2, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 158
    sget-object v0, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    .local v0, "array":[Ljava/lang/Object;
    :try_start_1
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 161
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    sput-object v2, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 162
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [I

    iput-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 163
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 164
    sget v2, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    .line 169
    return-void

    .line 170
    :catch_0
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/ClassCastException;
    :try_start_2
    const-string/jumbo v2, "ArraySet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    const-string/jumbo v5, " [1]="

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 175
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 174
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v2, 0x0

    sput-object v2, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 177
    const/4 v2, 0x0

    sput v2, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :cond_0
    :goto_0
    monitor-exit v3

    .line 207
    :cond_1
    new-array v2, p1, [I

    iput-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 208
    new-array v2, p1, [Ljava/lang/Object;

    iput-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 209
    return-void

    .line 156
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .line 180
    :cond_2
    const/4 v2, 0x4

    if-ne p1, v2, :cond_1

    .line 181
    const-class v3, Landroid/util/ArraySet;

    monitor-enter v3

    .line 182
    :try_start_3
    sget-object v2, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 183
    sget-object v0, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 185
    .restart local v0    # "array":[Ljava/lang/Object;
    :try_start_4
    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 186
    const/4 v2, 0x0

    aget-object v2, v0, v2

    check-cast v2, [Ljava/lang/Object;

    sput-object v2, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 187
    const/4 v2, 0x1

    aget-object v2, v0, v2

    check-cast v2, [I

    iput-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 188
    const/4 v2, 0x0

    const/4 v4, 0x1

    aput-object v2, v0, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    aput-object v2, v0, v4

    .line 189
    sget v2, Landroid/util/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v2, v2, -0x1

    sput v2, Landroid/util/ArraySet;->sBaseCacheSize:I
    :try_end_4
    .catch Ljava/lang/ClassCastException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v3

    .line 194
    return-void

    .line 195
    :catch_1
    move-exception v1

    .line 199
    .restart local v1    # "e":Ljava/lang/ClassCastException;
    :try_start_5
    const-string/jumbo v2, "ArraySet"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found corrupt ArraySet cache: [0]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    const-string/jumbo v5, " [1]="

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 200
    const/4 v5, 0x1

    aget-object v5, v0, v5

    .line 199
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    const/4 v2, 0x0

    sput-object v2, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 202
    const/4 v2, 0x0

    sput v2, Landroid/util/ArraySet;->sBaseCacheSize:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 181
    .end local v0    # "array":[Ljava/lang/Object;
    .end local v1    # "e":Ljava/lang/ClassCastException;
    :catchall_1
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 212
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 213
    const-class v2, Landroid/util/ArraySet;

    monitor-enter v2

    .line 214
    :try_start_0
    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 215
    sget-object v1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    .line 216
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 217
    add-int/lit8 v0, p2, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 218
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 217
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 220
    :cond_0
    sput-object p1, Landroid/util/ArraySet;->sTwiceBaseCache:[Ljava/lang/Object;

    .line 221
    sget v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArraySet;->sTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit v2

    .line 245
    :cond_2
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 228
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 229
    const-class v2, Landroid/util/ArraySet;

    monitor-enter v2

    .line 230
    :try_start_1
    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 231
    sget-object v1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    .line 232
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 233
    add-int/lit8 v0, p2, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    .line 234
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 233
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 236
    :cond_4
    sput-object p1, Landroid/util/ArraySet;->sBaseCache:[Ljava/lang/Object;

    .line 237
    sget v1, Landroid/util/ArraySet;->sBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArraySet;->sBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 229
    .end local v0    # "i":I
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private getCollection()Landroid/util/MapCollections;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/MapCollections",
            "<TE;TE;>;"
        }
    .end annotation

    .prologue
    .line 675
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_0

    .line 676
    new-instance v0, Landroid/util/ArraySet$1;

    invoke-direct {v0, p0}, Landroid/util/ArraySet$1;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    .line 723
    :cond_0
    iget-object v0, p0, Landroid/util/ArraySet;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method

.method private indexOf(Ljava/lang/Object;I)I
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 79
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 82
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 83
    const/4 v4, -0x1

    return v4

    .line 86
    :cond_0
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 89
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 90
    return v3

    .line 94
    :cond_1
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 95
    return v3

    .line 100
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_4

    .line 101
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    .line 100
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    :cond_4
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_6

    .line 106
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 105
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 113
    :cond_6
    not-int v4, v1

    return v4
.end method

.method private indexOfNull()I
    .locals 6

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v5, 0x0

    .line 117
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 120
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 121
    const/4 v4, -0x1

    return v4

    .line 124
    :cond_0
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v4, v0, v5}, Landroid/util/ContainerHelpers;->binarySearch([III)I

    move-result v3

    .line 127
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 128
    return v3

    .line 132
    :cond_1
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    .line 133
    return v3

    .line 138
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_4

    .line 139
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v1

    if-nez v4, :cond_3

    return v1

    .line 138
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 143
    :cond_4
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_6

    .line 144
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v4, v4, v2

    if-nez v4, :cond_5

    return v2

    .line 143
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 151
    :cond_6
    not-int v4, v1

    return v4
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    const/4 v7, 0x0

    .line 374
    if-nez p1, :cond_0

    .line 375
    const/4 v0, 0x0

    .line 376
    .local v0, "hash":I
    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v1

    .line 381
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    .line 382
    return v7

    .line 378
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_0
    iget-boolean v5, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v5, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 379
    .restart local v0    # "hash":I
    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 378
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .restart local v0    # "hash":I
    goto :goto_1

    .line 385
    .restart local v1    # "index":I
    :cond_2
    not-int v1, v1

    .line 386
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v6, v6

    if-lt v5, v6, :cond_4

    .line 387
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    const/16 v6, 0x8

    if-lt v5, v6, :cond_6

    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/lit8 v6, v6, 0x1

    add-int v2, v5, v6

    .line 392
    .local v2, "n":I
    :goto_2
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 393
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 394
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 396
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v5, v5

    if-lez v5, :cond_3

    .line 398
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v6, v4

    invoke-static {v4, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 399
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    array-length v6, v3

    invoke-static {v3, v7, v5, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 402
    :cond_3
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v4, v3, v5}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 405
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_4
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v5, :cond_5

    .line 409
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 410
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, v1, 0x1

    iget v8, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v8, v1

    invoke-static {v5, v1, v6, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 413
    :cond_5
    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v0, v5, v1

    .line 414
    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v5, v1

    .line 415
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Landroid/util/ArraySet;->mSize:I

    .line 416
    const/4 v5, 0x1

    return v5

    .line 388
    :cond_6
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v6, 0x4

    if-lt v5, v6, :cond_7

    const/16 v2, 0x8

    .restart local v2    # "n":I
    goto :goto_2

    .end local v2    # "n":I
    :cond_7
    const/4 v2, 0x4

    .restart local v2    # "n":I
    goto :goto_2
.end method

.method public addAll(Landroid/util/ArraySet;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+TE;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    const/4 v4, 0x0

    .line 453
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 454
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 455
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-nez v2, :cond_1

    .line 456
    if-lez v0, :cond_0

    .line 457
    iget-object v2, p1, Landroid/util/ArraySet;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 458
    iget-object v2, p1, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 459
    iput v0, p0, Landroid/util/ArraySet;->mSize:I

    .line 466
    :cond_0
    return-void

    .line 462
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 463
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 462
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 761
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v4

    add-int/2addr v3, v4

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->ensureCapacity(I)V

    .line 762
    const/4 v0, 0x0

    .line 763
    .local v0, "added":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "added":Z
    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 764
    .local v1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .local v0, "added":Z
    goto :goto_0

    .line 766
    .end local v0    # "added":Z
    .end local v1    # "value":Ljava/lang/Object;, "TE;"
    :cond_0
    return v0
.end method

.method public append(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .prologue
    .line 425
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    .line 426
    .local v1, "index":I
    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 428
    .local v0, "hash":I
    :goto_0
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 429
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Array is full"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    .end local v0    # "hash":I
    :cond_0
    iget-boolean v2, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v2, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .restart local v0    # "hash":I
    goto :goto_0

    .end local v0    # "hash":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .restart local v0    # "hash":I
    goto :goto_0

    .line 431
    :cond_2
    if-lez v1, :cond_3

    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v3, v1, -0x1

    aget v2, v2, v3

    if-le v2, v0, :cond_3

    .line 440
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 441
    return-void

    .line 443
    :cond_3
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 444
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    aput v0, v2, v1

    .line 445
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aput-object p1, v2, v1

    .line 446
    return-void
.end method

.method public clear()V
    .locals 4

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v3, 0x0

    .line 297
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v1, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 299
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 300
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 301
    iput v3, p0, Landroid/util/ArraySet;->mSize:I

    .line 303
    :cond_0
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    .line 330
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 746
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 747
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 748
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 749
    const/4 v1, 0x0

    return v1

    .line 752
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public ensureCapacity(I)V
    .locals 5
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v4, 0x0

    .line 310
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v2, v2

    if-ge v2, p1, :cond_1

    .line 311
    iget-object v1, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 312
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 313
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 314
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-lez v2, :cond_0

    .line 315
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([II[III)V

    .line 316
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 318
    :cond_0
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v0, v2}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 320
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 9
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 600
    if-ne p0, p1, :cond_0

    .line 601
    return v8

    .line 603
    :cond_0
    instance-of v5, p1, Ljava/util/Set;

    if-eqz v5, :cond_4

    move-object v4, p1

    .line 604
    check-cast v4, Ljava/util/Set;

    .line 605
    .local v4, "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v5

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v6

    if-eq v5, v6, :cond_1

    .line 606
    return v7

    .line 610
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v0, v5, :cond_3

    .line 611
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 612
    .local v3, "mine":Ljava/lang/Object;, "TE;"
    invoke-interface {v4, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-nez v5, :cond_2

    .line 613
    return v7

    .line 610
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 618
    .end local v3    # "mine":Ljava/lang/Object;, "TE;"
    :catch_0
    move-exception v1

    .line 619
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v7

    .line 616
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 617
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v7

    .line 621
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_3
    return v8

    .line 623
    .end local v0    # "i":I
    .end local v4    # "set":Ljava/util/Set;, "Ljava/util/Set<*>;"
    :cond_4
    return v7
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 631
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 632
    .local v0, "hashes":[I
    const/4 v2, 0x0

    .line 633
    .local v2, "result":I
    const/4 v1, 0x0

    .local v1, "i":I
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 634
    aget v4, v0, v1

    add-int/2addr v2, v4

    .line 633
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 636
    :cond_0
    return v2
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 340
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    if-nez p1, :cond_0

    invoke-direct {p0}, Landroid/util/ArraySet;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    .line 341
    :cond_0
    iget-boolean v0, p0, Landroid/util/ArraySet;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    invoke-direct {p0, p1, v0}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v0, 0x0

    .line 358
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<TE;>;"
        }
    .end annotation

    .prologue
    .line 735
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-direct {p0}, Landroid/util/ArraySet;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v1, 0x0

    .line 476
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 477
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 478
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 479
    const/4 v1, 0x1

    return v1

    .line 481
    :cond_0
    return v1
.end method

.method public removeAll(Landroid/util/ArraySet;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet",
            "<+TE;>;)Z"
        }
    .end annotation

    .prologue
    .line 549
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":Landroid/util/ArraySet;, "Landroid/util/ArraySet<+TE;>;"
    iget v0, p1, Landroid/util/ArraySet;->mSize:I

    .line 553
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    .line 554
    .local v2, "originalSize":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 555
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 554
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 557
    :cond_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-eq v2, v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 776
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 777
    .local v0, "removed":Z
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .end local v0    # "removed":Z
    .local v2, "value$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 778
    .local v1, "value":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v0, v3

    .local v0, "removed":Z
    goto :goto_0

    .line 780
    .end local v0    # "removed":Z
    .end local v1    # "value":Ljava/lang/Object;
    :cond_0
    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 8
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/16 v6, 0x8

    const/4 v7, 0x0

    .line 490
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v3, v4, p1

    .line 491
    .local v3, "old":Ljava/lang/Object;
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v5, 0x1

    if-gt v4, v5, :cond_1

    .line 494
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v4, v5, v6}, Landroid/util/ArraySet;->freeArrays([I[Ljava/lang/Object;I)V

    .line 495
    sget-object v4, Llibcore/util/EmptyArray;->INT:[I

    iput-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 496
    sget-object v4, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 497
    iput v7, p0, Landroid/util/ArraySet;->mSize:I

    .line 537
    :cond_0
    :goto_0
    return-object v3

    .line 499
    :cond_1
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v4, v4

    if-le v4, v6, :cond_4

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    array-length v5, v5

    div-int/lit8 v5, v5, 0x3

    if-ge v4, v5, :cond_4

    .line 503
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-le v4, v6, :cond_3

    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    shr-int/lit8 v5, v5, 0x1

    add-int v0, v4, v5

    .line 507
    .local v0, "n":I
    :goto_1
    iget-object v2, p0, Landroid/util/ArraySet;->mHashes:[I

    .line 508
    .local v2, "ohashes":[I
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    .line 509
    .local v1, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/util/ArraySet;->allocArrays(I)V

    .line 511
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    .line 512
    if-lez p1, :cond_2

    .line 514
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    invoke-static {v2, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 515
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    invoke-static {v1, v7, v4, v7, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    :cond_2
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_0

    .line 522
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v2, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy([II[III)V

    .line 523
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v6, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v6, p1

    invoke-static {v1, v4, v5, p1, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 503
    .end local v0    # "n":I
    .end local v1    # "oarray":[Ljava/lang/Object;
    .end local v2    # "ohashes":[I
    :cond_3
    const/16 v0, 0x8

    .restart local v0    # "n":I
    goto :goto_1

    .line 526
    .end local v0    # "n":I
    :cond_4
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Landroid/util/ArraySet;->mSize:I

    .line 527
    iget v4, p0, Landroid/util/ArraySet;->mSize:I

    if-ge p1, v4, :cond_5

    .line 531
    iget-object v4, p0, Landroid/util/ArraySet;->mHashes:[I

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/util/ArraySet;->mHashes:[I

    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy([II[III)V

    .line 532
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    add-int/lit8 v5, p1, 0x1

    iget-object v6, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v7, p0, Landroid/util/ArraySet;->mSize:I

    sub-int/2addr v7, p1

    invoke-static {v4, v5, v6, p1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 534
    :cond_5
    iget-object v4, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v5, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v6, 0x0

    aput-object v6, v4, v5

    goto :goto_0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 791
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v1, 0x0

    .line 792
    .local v1, "removed":Z
    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 793
    iget-object v2, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 794
    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    .line 795
    const/4 v1, 0x1

    .line 792
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 798
    :cond_1
    return v1
.end method

.method public size()I
    .locals 1

    .prologue
    .line 565
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget v0, p0, Landroid/util/ArraySet;->mSize:I

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 4

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    const/4 v3, 0x0

    .line 570
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    new-array v0, v1, [Ljava/lang/Object;

    .line 571
    .local v0, "result":[Ljava/lang/Object;
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 572
    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    .local p1, "array":[Ljava/lang/Object;, "[TT;"
    const/4 v3, 0x0

    .line 577
    array-length v1, p1

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v2, :cond_0

    .line 579
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 580
    .local v0, "newArray":[Ljava/lang/Object;, "[TT;"
    move-object p1, v0

    .line 582
    .end local v0    # "newArray":[Ljava/lang/Object;, "[TT;"
    :cond_0
    iget-object v1, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    invoke-static {v1, v3, p1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 583
    array-length v1, p1

    iget v2, p0, Landroid/util/ArraySet;->mSize:I

    if-le v1, v2, :cond_1

    .line 584
    iget v1, p0, Landroid/util/ArraySet;->mSize:I

    const/4 v2, 0x0

    aput-object v2, p1, v1

    .line 586
    :cond_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 648
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 649
    const-string/jumbo v3, "{}"

    return-object v3

    .line 652
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    mul-int/lit8 v3, v3, 0xe

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 653
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v3, 0x7b

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v3, p0, Landroid/util/ArraySet;->mSize:I

    if-ge v1, v3, :cond_3

    .line 655
    if-lez v1, :cond_1

    .line 656
    const-string/jumbo v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 659
    .local v2, "value":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 660
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 654
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 662
    :cond_2
    const-string/jumbo v3, "(this Set)"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 665
    .end local v2    # "value":Ljava/lang/Object;
    :cond_3
    const/16 v3, 0x7d

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 666
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .prologue
    .line 350
    .local p0, "this":Landroid/util/ArraySet;, "Landroid/util/ArraySet<TE;>;"
    iget-object v0, p0, Landroid/util/ArraySet;->mArray:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method
