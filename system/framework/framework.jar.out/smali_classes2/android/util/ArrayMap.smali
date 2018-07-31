.class public final Landroid/util/ArrayMap;
.super Ljava/lang/Object;
.source "ArrayMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map",
        "<TK;TV;>;"
    }
.end annotation


# static fields
.field private static final BASE_SIZE:I = 0x4

.field private static final CACHE_SIZE:I = 0xa

.field private static final CONCURRENT_MODIFICATION_EXCEPTIONS:Z = true

.field private static final DEBUG:Z = false

.field public static final EMPTY:Landroid/util/ArrayMap;

.field static final EMPTY_IMMUTABLE_INTS:[I

.field private static final TAG:Ljava/lang/String; = "ArrayMap"

.field static mBaseCache:[Ljava/lang/Object;

.field static mBaseCacheSize:I

.field static mTwiceBaseCache:[Ljava/lang/Object;

.field static mTwiceBaseCacheSize:I


# instance fields
.field mArray:[Ljava/lang/Object;

.field mCollections:Landroid/util/MapCollections;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/MapCollections",
            "<TK;TV;>;"
        }
    .end annotation
.end field

.field mHashes:[I

.field final mIdentityHashCode:Z

.field mSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 78
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    .line 83
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    sput-object v0, Landroid/util/ArrayMap;->EMPTY:Landroid/util/ArrayMap;

    .line 48
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 265
    invoke-direct {p0, v0, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    .line 266
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 272
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/util/ArrayMap;-><init>(IZ)V

    .line 273
    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "capacity"    # I
    .param p2, "identityHashCode"    # Z

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v1, 0x0

    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    iput-boolean p2, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    .line 282
    if-gez p1, :cond_0

    .line 283
    sget-object v0, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 284
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 291
    :goto_0
    iput v1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 292
    return-void

    .line 285
    :cond_0
    if-nez p1, :cond_1

    .line 286
    sget-object v0, Llibcore/util/EmptyArray;->INT:[I

    iput-object v0, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 287
    sget-object v0, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    goto :goto_0

    .line 289
    :cond_1
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 298
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;-><init>()V

    .line 299
    if-eqz p1, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->putAll(Landroid/util/ArrayMap;)V

    .line 302
    :cond_0
    return-void
.end method

.method private allocArrays(I)V
    .locals 4
    .param p1, "size"    # I

    .prologue
    .line 191
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    sget-object v2, Landroid/util/ArrayMap;->EMPTY_IMMUTABLE_INTS:[I

    if-ne v1, v2, :cond_0

    .line 192
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v2, "ArrayMap is immutable"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 194
    :cond_0
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 195
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 196
    :try_start_0
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 197
    sget-object v0, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 198
    .local v0, "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 199
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 200
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 201
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 202
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 205
    return-void

    .end local v0    # "array":[Ljava/lang/Object;
    :cond_1
    monitor-exit v2

    .line 224
    :cond_2
    new-array v1, p1, [I

    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 225
    shl-int/lit8 v1, p1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 226
    return-void

    .line 195
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 208
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 209
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 210
    :try_start_1
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 211
    sget-object v0, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 212
    .restart local v0    # "array":[Ljava/lang/Object;
    iput-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 213
    const/4 v1, 0x0

    aget-object v1, v0, v1

    check-cast v1, [Ljava/lang/Object;

    sput-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 214
    const/4 v1, 0x1

    aget-object v1, v0, v1

    check-cast v1, [I

    iput-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 215
    const/4 v1, 0x0

    const/4 v3, 0x1

    aput-object v1, v0, v3

    const/4 v1, 0x0

    const/4 v3, 0x0

    aput-object v1, v0, v3

    .line 216
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, -0x1

    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit v2

    .line 219
    return-void

    .line 209
    .end local v0    # "array":[Ljava/lang/Object;
    :catchall_1
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private static binarySearchHashes([III)I
    .locals 2
    .param p0, "hashes"    # [I
    .param p1, "N"    # I
    .param p2, "hash"    # I

    .prologue
    .line 104
    :try_start_0
    invoke-static {p0, p1, p2}, Landroid/util/ContainerHelpers;->binarySearch([III)I
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    new-instance v1, Ljava/util/ConcurrentModificationException;

    invoke-direct {v1}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v1
.end method

.method private static freeArrays([I[Ljava/lang/Object;I)V
    .locals 5
    .param p0, "hashes"    # [I
    .param p1, "array"    # [Ljava/lang/Object;
    .param p2, "size"    # I

    .prologue
    const/16 v3, 0xa

    const/4 v4, 0x2

    .line 229
    array-length v1, p0

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 230
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 231
    :try_start_0
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 232
    sget-object v1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    .line 233
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 234
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_0

    .line 235
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 234
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 237
    :cond_0
    sput-object p1, Landroid/util/ArrayMap;->mTwiceBaseCache:[Ljava/lang/Object;

    .line 238
    sget v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArrayMap;->mTwiceBaseCacheSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "i":I
    :cond_1
    :goto_1
    monitor-exit v2

    .line 258
    :cond_2
    return-void

    .line 230
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 243
    :cond_3
    array-length v1, p0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 244
    const-class v2, Landroid/util/ArrayMap;

    monitor-enter v2

    .line 245
    :try_start_1
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    if-ge v1, v3, :cond_1

    .line 246
    sget-object v1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, p1, v3

    .line 247
    const/4 v1, 0x1

    aput-object p0, p1, v1

    .line 248
    shl-int/lit8 v1, p2, 0x1

    add-int/lit8 v0, v1, -0x1

    .restart local v0    # "i":I
    :goto_2
    if-lt v0, v4, :cond_4

    .line 249
    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 248
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    .line 251
    :cond_4
    sput-object p1, Landroid/util/ArrayMap;->mBaseCache:[Ljava/lang/Object;

    .line 252
    sget v1, Landroid/util/ArrayMap;->mBaseCacheSize:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Landroid/util/ArrayMap;->mBaseCacheSize:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 244
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
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 808
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    if-nez v0, :cond_0

    .line 809
    new-instance v0, Landroid/util/ArrayMap$1;

    invoke-direct {v0, p0}, Landroid/util/ArrayMap$1;-><init>(Landroid/util/ArrayMap;)V

    iput-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    .line 856
    :cond_0
    iget-object v0, p0, Landroid/util/ArrayMap;->mCollections:Landroid/util/MapCollections;

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 540
    .local v2, "index":I
    if-nez p1, :cond_0

    const/4 v1, 0x0

    .line 542
    .local v1, "hash":I
    :goto_0
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-lt v2, v3, :cond_2

    .line 543
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string/jumbo v4, "Array is full"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 541
    .end local v1    # "hash":I
    :cond_0
    iget-boolean v3, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v3, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .restart local v1    # "hash":I
    goto :goto_0

    .end local v1    # "hash":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    .restart local v1    # "hash":I
    goto :goto_0

    .line 545
    :cond_2
    if-lez v2, :cond_3

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v4, v2, -0x1

    aget v3, v3, v4

    if-le v3, v1, :cond_3

    .line 546
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 547
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 548
    const-string/jumbo v3, "ArrayMap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "New hash "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    const-string/jumbo v5, " is before end of array hash "

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 549
    iget-object v5, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v6, v2, -0x1

    aget v5, v5, v6

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 550
    const-string/jumbo v5, " at index "

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 550
    const-string/jumbo v5, " key "

    .line 548
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 551
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    return-void

    .line 554
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_3
    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Landroid/util/ArrayMap;->mSize:I

    .line 555
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v1, v3, v2

    .line 556
    shl-int/lit8 v2, v2, 0x1

    .line 557
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p1, v3, v2

    .line 558
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v4, v2, 0x1

    aput-object p2, v3, v4

    .line 559
    return-void
.end method

.method public clear()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 309
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_0

    .line 310
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 311
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 312
    .local v0, "oarray":[Ljava/lang/Object;
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 313
    .local v2, "osize":I
    sget-object v3, Llibcore/util/EmptyArray;->INT:[I

    iput-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 314
    sget-object v3, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 315
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 316
    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 318
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    .end local v2    # "osize":I
    :cond_0
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_1

    .line 319
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 321
    :cond_1
    return-void
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 866
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->containsAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 367
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 409
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfValue(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public ensureCapacity(I)V
    .locals 6
    .param p1, "minimumCapacity"    # I

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 343
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    .line 344
    .local v2, "osize":I
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v3, v3

    if-ge v3, p1, :cond_1

    .line 345
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 346
    .local v1, "ohashes":[I
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 347
    .local v0, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, p1}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 348
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_0

    .line 349
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v1, v5, v3, v5, v2}, Ljava/lang/System;->arraycopy([II[III)V

    .line 350
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v2, 0x1

    invoke-static {v0, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 352
    :cond_0
    invoke-static {v1, v0, v2}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 354
    .end local v0    # "oarray":[Ljava/lang/Object;
    .end local v1    # "ohashes":[I
    :cond_1
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v3, v2, :cond_2

    .line 355
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3

    .line 357
    :cond_2
    return-void
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<TK;TV;>;>;"
        }
    .end annotation

    .prologue
    .line 916
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getEntrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 11
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 718
    if-ne p0, p1, :cond_0

    .line 719
    return v10

    .line 721
    :cond_0
    instance-of v7, p1, Ljava/util/Map;

    if-eqz v7, :cond_6

    move-object v4, p1

    .line 722
    check-cast v4, Ljava/util/Map;

    .line 723
    .local v4, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result v7

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v8

    if-eq v7, v8, :cond_1

    .line 724
    return v9

    .line 728
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    :try_start_0
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v0, v7, :cond_5

    .line 729
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 730
    .local v3, "key":Ljava/lang/Object;, "TK;"
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    .line 731
    .local v5, "mine":Ljava/lang/Object;, "TV;"
    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 732
    .local v6, "theirs":Ljava/lang/Object;
    if-nez v5, :cond_3

    .line 733
    if-nez v6, :cond_2

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_4

    .line 734
    :cond_2
    return v9

    .line 736
    :cond_3
    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    if-nez v7, :cond_4

    .line 737
    return v9

    .line 728
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 742
    .end local v3    # "key":Ljava/lang/Object;, "TK;"
    .end local v5    # "mine":Ljava/lang/Object;, "TV;"
    .end local v6    # "theirs":Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 743
    .local v1, "ignored":Ljava/lang/ClassCastException;
    return v9

    .line 740
    .end local v1    # "ignored":Ljava/lang/ClassCastException;
    :catch_1
    move-exception v2

    .line 741
    .local v2, "ignored":Ljava/lang/NullPointerException;
    return v9

    .line 745
    .end local v2    # "ignored":Ljava/lang/NullPointerException;
    :cond_5
    return v10

    .line 747
    .end local v0    # "i":I
    .end local v4    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    :cond_6
    return v9
.end method

.method public erase()V
    .locals 5

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v4, 0x0

    .line 328
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    if-lez v3, :cond_1

    .line 329
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    shl-int/lit8 v0, v3, 0x1

    .line 330
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 331
    .local v1, "array":[Ljava/lang/Object;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 332
    const/4 v3, 0x0

    aput-object v3, v1, v2

    .line 331
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 334
    :cond_0
    iput v4, p0, Landroid/util/ArrayMap;->mSize:I

    .line 336
    .end local v0    # "N":I
    .end local v1    # "array":[Ljava/lang/Object;
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 420
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 421
    .local v0, "index":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    .line 755
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 756
    .local v1, "hashes":[I
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 757
    .local v0, "array":[Ljava/lang/Object;
    const/4 v3, 0x0

    .line 758
    .local v3, "result":I
    const/4 v2, 0x0

    .local v2, "i":I
    const/4 v5, 0x1

    .local v5, "v":I
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 759
    aget-object v6, v0, v5

    .line 760
    .local v6, "value":Ljava/lang/Object;
    aget v8, v1, v2

    if-nez v6, :cond_0

    const/4 v7, 0x0

    :goto_1
    xor-int/2addr v7, v8

    add-int/2addr v3, v7

    .line 758
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 760
    :cond_0
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    goto :goto_1

    .line 762
    .end local v6    # "value":Ljava/lang/Object;
    :cond_1
    return v3
.end method

.method indexOf(Ljava/lang/Object;I)I
    .locals 6
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "hash"    # I

    .prologue
    .line 115
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 118
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 119
    const/4 v4, -0x1

    return v4

    .line 122
    :cond_0
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v4, v0, p2}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v3

    .line 125
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 126
    return v3

    .line 130
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 131
    return v3

    .line 136
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-ne v4, p2, :cond_4

    .line 137
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    return v1

    .line 136
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 141
    :cond_4
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-ne v4, p2, :cond_6

    .line 142
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    return v2

    .line 141
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 149
    :cond_6
    not-int v4, v1

    return v4
.end method

.method public indexOfKey(Ljava/lang/Object;)I
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .prologue
    .line 377
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v0

    :goto_0
    return v0

    .line 378
    :cond_0
    iget-boolean v0, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v0, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method indexOfNull()I
    .locals 6

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v5, 0x0

    .line 153
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 156
    .local v0, "N":I
    if-nez v0, :cond_0

    .line 157
    const/4 v4, -0x1

    return v4

    .line 160
    :cond_0
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v4, v0, v5}, Landroid/util/ArrayMap;->binarySearchHashes([III)I

    move-result v3

    .line 163
    .local v3, "index":I
    if-gez v3, :cond_1

    .line 164
    return v3

    .line 168
    :cond_1
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v3, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_2

    .line 169
    return v3

    .line 174
    :cond_2
    add-int/lit8 v1, v3, 0x1

    .local v1, "end":I
    :goto_0
    if-ge v1, v0, :cond_4

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v1

    if-nez v4, :cond_4

    .line 175
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_3

    return v1

    .line 174
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_4
    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_6

    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v4, v2

    if-nez v4, :cond_6

    .line 180
    iget-object v4, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    if-nez v4, :cond_5

    return v2

    .line 179
    :cond_5
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 187
    :cond_6
    not-int v4, v1

    return v4
.end method

.method indexOfValue(Ljava/lang/Object;)I
    .locals 4
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 382
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v3, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v0, v3, 0x2

    .line 383
    .local v0, "N":I
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 384
    .local v1, "array":[Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 385
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 386
    aget-object v3, v1, v2

    if-nez v3, :cond_0

    .line 387
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 385
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 391
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x1

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 392
    aget-object v3, v1, v2

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 393
    shr-int/lit8 v3, v2, 0x1

    return v3

    .line 391
    :cond_2
    add-int/lit8 v2, v2, 0x2

    goto :goto_1

    .line 397
    :cond_3
    const/4 v3, -0x1

    return v3
.end method

.method public isEmpty()Z
    .locals 2

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v0, 0x0

    .line 460
    iget v1, p0, Landroid/util/ArrayMap;->mSize:I

    if-gtz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TK;"
        }
    .end annotation

    .prologue
    .line 430
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<TK;>;"
        }
    .end annotation

    .prologue
    .line 929
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getKeySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    const/4 v12, 0x0

    const/4 v9, 0x0

    .line 473
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    .line 476
    .local v6, "osize":I
    if-nez p1, :cond_0

    .line 477
    const/4 v0, 0x0

    .line 478
    .local v0, "hash":I
    invoke-virtual {p0}, Landroid/util/ArrayMap;->indexOfNull()I

    move-result v1

    .line 483
    .local v1, "index":I
    :goto_0
    if-ltz v1, :cond_2

    .line 484
    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v1, v7, 0x1

    .line 485
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v5, v7, v1

    .line 486
    .local v5, "old":Ljava/lang/Object;, "TV;"
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v7, v1

    .line 487
    return-object v5

    .line 480
    .end local v0    # "hash":I
    .end local v1    # "index":I
    .end local v5    # "old":Ljava/lang/Object;, "TV;"
    :cond_0
    iget-boolean v7, p0, Landroid/util/ArrayMap;->mIdentityHashCode:Z

    if-eqz v7, :cond_1

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    .line 481
    .restart local v0    # "hash":I
    :goto_1
    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->indexOf(Ljava/lang/Object;I)I

    move-result v1

    .restart local v1    # "index":I
    goto :goto_0

    .line 480
    .end local v0    # "hash":I
    .end local v1    # "index":I
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .restart local v0    # "hash":I
    goto :goto_1

    .line 490
    .restart local v1    # "index":I
    :cond_2
    not-int v1, v1

    .line 491
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    if-lt v6, v7, :cond_7

    .line 492
    const/16 v7, 0x8

    if-lt v6, v7, :cond_3

    shr-int/lit8 v7, v6, 0x1

    add-int v2, v6, v7

    .line 497
    .local v2, "n":I
    :goto_2
    iget-object v4, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 498
    .local v4, "ohashes":[I
    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 499
    .local v3, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v2}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 501
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v6, v7, :cond_5

    .line 502
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 493
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_3
    const/4 v7, 0x4

    if-lt v6, v7, :cond_4

    const/16 v2, 0x8

    .restart local v2    # "n":I
    goto :goto_2

    .end local v2    # "n":I
    :cond_4
    const/4 v2, 0x4

    .restart local v2    # "n":I
    goto :goto_2

    .line 505
    .restart local v3    # "oarray":[Ljava/lang/Object;
    .restart local v4    # "ohashes":[I
    :cond_5
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    if-lez v7, :cond_6

    .line 507
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v8, v4

    invoke-static {v4, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 508
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    array-length v8, v3

    invoke-static {v3, v9, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 511
    :cond_6
    invoke-static {v4, v3, v6}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 514
    .end local v2    # "n":I
    .end local v3    # "oarray":[Ljava/lang/Object;
    .end local v4    # "ohashes":[I
    :cond_7
    if-ge v1, v6, :cond_8

    .line 517
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v9, v1, 0x1

    sub-int v10, v6, v1

    invoke-static {v7, v1, v8, v9, v10}, Ljava/lang/System;->arraycopy([II[III)V

    .line 518
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    iget-object v9, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v10, v1, 0x1

    shl-int/lit8 v10, v10, 0x1

    iget v11, p0, Landroid/util/ArrayMap;->mSize:I

    sub-int/2addr v11, v1

    shl-int/lit8 v11, v11, 0x1

    invoke-static {v7, v8, v9, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 522
    :cond_8
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    if-ne v6, v7, :cond_9

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    if-lt v1, v7, :cond_a

    .line 523
    :cond_9
    new-instance v7, Ljava/util/ConcurrentModificationException;

    invoke-direct {v7}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v7

    .line 526
    :cond_a
    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    aput v0, v7, v1

    .line 527
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    aput-object p1, v7, v8

    .line 528
    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, v1, 0x1

    add-int/lit8 v8, v8, 0x1

    aput-object p2, v7, v8

    .line 529
    iget v7, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/lit8 v7, v7, 0x1

    iput v7, p0, Landroid/util/ArrayMap;->mSize:I

    .line 530
    return-object v12
.end method

.method public putAll(Landroid/util/ArrayMap;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "array":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<+TK;+TV;>;"
    const/4 v5, 0x0

    .line 604
    iget v0, p1, Landroid/util/ArrayMap;->mSize:I

    .line 605
    .local v0, "N":I
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    add-int/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 606
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    if-nez v2, :cond_1

    .line 607
    if-lez v0, :cond_0

    .line 608
    iget-object v2, p1, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v2, v5, v3, v5, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 609
    iget-object v2, p1, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    iget-object v3, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v4, v0, 0x1

    invoke-static {v2, v5, v3, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 610
    iput v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 617
    :cond_0
    return-void

    .line 613
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 614
    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 613
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 875
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    iget v2, p0, Landroid/util/ArrayMap;->mSize:I

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 876
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 877
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 879
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<+TK;+TV;>;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .prologue
    .line 627
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    .line 628
    .local v0, "index":I
    if-ltz v0, :cond_0

    .line 629
    invoke-virtual {p0, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 632
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 887
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->removeAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 12
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    const/4 v11, 0x0

    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 641
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    add-int/lit8 v7, v7, 0x1

    aget-object v4, v6, v7

    .line 642
    .local v4, "old":Ljava/lang/Object;
    iget v5, p0, Landroid/util/ArrayMap;->mSize:I

    .line 644
    .local v5, "osize":I
    const/4 v6, 0x1

    if-gt v5, v6, :cond_1

    .line 647
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    invoke-static {v6, v7, v5}, Landroid/util/ArrayMap;->freeArrays([I[Ljava/lang/Object;I)V

    .line 648
    sget-object v6, Llibcore/util/EmptyArray;->INT:[I

    iput-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 649
    sget-object v6, Llibcore/util/EmptyArray;->OBJECT:[Ljava/lang/Object;

    iput-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 650
    const/4 v1, 0x0

    .line 693
    .local v1, "nsize":I
    :cond_0
    :goto_0
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v5, v6, :cond_7

    .line 694
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 652
    .end local v1    # "nsize":I
    :cond_1
    add-int/lit8 v1, v5, -0x1

    .line 653
    .restart local v1    # "nsize":I
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v6, v6

    if-le v6, v9, :cond_5

    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    array-length v7, v7

    div-int/lit8 v7, v7, 0x3

    if-ge v6, v7, :cond_5

    .line 657
    if-le v5, v9, :cond_2

    shr-int/lit8 v6, v5, 0x1

    add-int v0, v5, v6

    .line 661
    .local v0, "n":I
    :goto_1
    iget-object v3, p0, Landroid/util/ArrayMap;->mHashes:[I

    .line 662
    .local v3, "ohashes":[I
    iget-object v2, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    .line 663
    .local v2, "oarray":[Ljava/lang/Object;
    invoke-direct {p0, v0}, Landroid/util/ArrayMap;->allocArrays(I)V

    .line 665
    iget v6, p0, Landroid/util/ArrayMap;->mSize:I

    if-eq v5, v6, :cond_3

    .line 666
    new-instance v6, Ljava/util/ConcurrentModificationException;

    invoke-direct {v6}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v6

    .line 657
    .end local v0    # "n":I
    .end local v2    # "oarray":[Ljava/lang/Object;
    .end local v3    # "ohashes":[I
    :cond_2
    const/16 v0, 0x8

    .restart local v0    # "n":I
    goto :goto_1

    .line 669
    .restart local v2    # "oarray":[Ljava/lang/Object;
    .restart local v3    # "ohashes":[I
    :cond_3
    if-lez p1, :cond_4

    .line 671
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    invoke-static {v3, v8, v6, v8, p1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 672
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, p1, 0x1

    invoke-static {v2, v8, v6, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 674
    :cond_4
    if-ge p1, v1, :cond_0

    .line 677
    add-int/lit8 v6, p1, 0x1

    iget-object v7, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v8, v1, p1

    invoke-static {v3, v6, v7, p1, v8}, Ljava/lang/System;->arraycopy([II[III)V

    .line 678
    add-int/lit8 v6, p1, 0x1

    shl-int/lit8 v6, v6, 0x1

    iget-object v7, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v8, p1, 0x1

    .line 679
    sub-int v9, v1, p1

    shl-int/lit8 v9, v9, 0x1

    .line 678
    invoke-static {v2, v6, v7, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 682
    .end local v0    # "n":I
    .end local v2    # "oarray":[Ljava/lang/Object;
    .end local v3    # "ohashes":[I
    :cond_5
    if-ge p1, v1, :cond_6

    .line 685
    iget-object v6, p0, Landroid/util/ArrayMap;->mHashes:[I

    add-int/lit8 v7, p1, 0x1

    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    sub-int v9, v1, p1

    invoke-static {v6, v7, v8, p1, v9}, Ljava/lang/System;->arraycopy([II[III)V

    .line 686
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    add-int/lit8 v7, p1, 0x1

    shl-int/lit8 v7, v7, 0x1

    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, p1, 0x1

    .line 687
    sub-int v10, v1, p1

    shl-int/lit8 v10, v10, 0x1

    .line 686
    invoke-static {v6, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 689
    :cond_6
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    aput-object v11, v6, v7

    .line 690
    iget-object v6, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v7, v1, 0x1

    add-int/lit8 v7, v7, 0x1

    aput-object v11, v6, v7

    goto/16 :goto_0

    .line 696
    :cond_7
    iput v1, p0, Landroid/util/ArrayMap;->mSize:I

    .line 697
    return-object v4
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 897
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p1, "collection":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Landroid/util/MapCollections;->retainAllHelper(Ljava/util/Map;Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public setValueAt(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITV;)TV;"
        }
    .end annotation

    .prologue
    .line 449
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 p1, v1, 0x1

    .line 450
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aget-object v0, v1, p1

    .line 451
    .local v0, "old":Ljava/lang/Object;, "TV;"
    iget-object v1, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    aput-object p2, v1, p1

    .line 452
    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 705
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 774
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 775
    const-string/jumbo v4, "{}"

    return-object v4

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    mul-int/lit8 v4, v4, 0x1c

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 779
    .local v0, "buffer":Ljava/lang/StringBuilder;
    const/16 v4, 0x7b

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 780
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v4, p0, Landroid/util/ArrayMap;->mSize:I

    if-ge v1, v4, :cond_4

    .line 781
    if-lez v1, :cond_1

    .line 782
    const-string/jumbo v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    :cond_1
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    .line 785
    .local v2, "key":Ljava/lang/Object;
    if-eq v2, p0, :cond_2

    .line 786
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 790
    :goto_1
    const/16 v4, 0x3d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 791
    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 792
    .local v3, "value":Ljava/lang/Object;
    if-eq v3, p0, :cond_3

    .line 793
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 780
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 788
    .end local v3    # "value":Ljava/lang/Object;
    :cond_2
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 795
    .restart local v3    # "value":Ljava/lang/Object;
    :cond_3
    const-string/jumbo v4, "(this Map)"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 798
    .end local v2    # "key":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v4, 0x7d

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 799
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public validate()V
    .locals 11

    .prologue
    .line 570
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget v0, p0, Landroid/util/ArrayMap;->mSize:I

    .line 571
    .local v0, "N":I
    const/4 v8, 0x1

    if-gt v0, v8, :cond_0

    .line 573
    return-void

    .line 575
    :cond_0
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    const/4 v9, 0x0

    aget v1, v8, v9

    .line 576
    .local v1, "basehash":I
    const/4 v2, 0x0

    .line 577
    .local v2, "basei":I
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_5

    .line 578
    iget-object v8, p0, Landroid/util/ArrayMap;->mHashes:[I

    aget v4, v8, v5

    .line 579
    .local v4, "hash":I
    if-eq v4, v1, :cond_2

    .line 580
    move v1, v4

    .line 581
    move v2, v5

    .line 577
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 586
    :cond_2
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v5, 0x1

    aget-object v3, v8, v9

    .line 587
    .local v3, "cur":Ljava/lang/Object;
    add-int/lit8 v6, v5, -0x1

    .local v6, "j":I
    :goto_1
    if-lt v6, v2, :cond_1

    .line 588
    iget-object v8, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v9, v6, 0x1

    aget-object v7, v8, v9

    .line 589
    .local v7, "prev":Ljava/lang/Object;
    if-ne v3, v7, :cond_3

    .line 590
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 592
    :cond_3
    if-eqz v3, :cond_4

    if-eqz v7, :cond_4

    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 593
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Duplicate key in ArrayMap: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 587
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 597
    .end local v3    # "cur":Ljava/lang/Object;
    .end local v4    # "hash":I
    .end local v6    # "j":I
    .end local v7    # "prev":Ljava/lang/Object;
    :cond_5
    return-void
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TV;"
        }
    .end annotation

    .prologue
    .line 439
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    iget-object v0, p0, Landroid/util/ArrayMap;->mArray:[Ljava/lang/Object;

    shl-int/lit8 v1, p1, 0x1

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 942
    .local p0, "this":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<TK;TV;>;"
    invoke-direct {p0}, Landroid/util/ArrayMap;->getCollection()Landroid/util/MapCollections;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/MapCollections;->getValues()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
