.class abstract Landroid/support/v17/leanback/widget/StaggeredGrid;
.super Landroid/support/v17/leanback/widget/Grid;
.source "StaggeredGrid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    }
.end annotation


# instance fields
.field protected mFirstIndex:I

.field protected mLocations:Landroid/support/v4/util/CircularArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/CircularArray",
            "<",
            "Landroid/support/v17/leanback/widget/StaggeredGrid$Location;",
            ">;"
        }
    .end annotation
.end field

.field protected mPendingItem:Ljava/lang/Object;

.field protected mPendingItemSize:I


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    .line 64
    new-instance v0, Landroid/support/v4/util/CircularArray;

    const/16 v1, 0x40

    invoke-direct {v0, v1}, Landroid/support/v4/util/CircularArray;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    .line 68
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 39
    return-void
.end method

.method private calculateOffsetAfterLastItem(I)I
    .locals 7
    .param p1, "row"    # I

    .prologue
    .line 202
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 203
    .local v0, "cachedIndex":I
    const/4 v1, 0x0

    .line 204
    .local v1, "foundCachedItemInSameRow":Z
    :goto_0
    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-lt v0, v5, :cond_0

    .line 205
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    .line 206
    .local v3, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v5, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    if-ne v5, p1, :cond_2

    .line 207
    const/4 v1, 0x1

    .line 212
    .end local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_0
    if-nez v1, :cond_1

    .line 213
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    .line 218
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->isReversedFlow()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    neg-int v5, v5

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mSpacing:I

    sub-int v4, v5, v6

    .line 220
    .local v4, "offset":I
    :goto_1
    add-int/lit8 v2, v0, 0x1

    .local v2, "i":I
    :goto_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v5

    if-gt v2, v5, :cond_4

    .line 221
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    sub-int/2addr v4, v5

    .line 220
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 210
    .end local v2    # "i":I
    .end local v4    # "offset":I
    .restart local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 219
    .end local v3    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v5

    iget v5, v5, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    iget v6, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mSpacing:I

    add-int v4, v5, v6

    .restart local v4    # "offset":I
    goto :goto_1

    .line 223
    .restart local v2    # "i":I
    :cond_4
    return v4
.end method


# virtual methods
.method protected final appendVisbleItemsWithCache(IZ)Z
    .locals 12
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const v11, 0x7fffffff

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 295
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 296
    return v9

    .line 298
    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v6

    .line 301
    .local v6, "count":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_5

    .line 303
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v2, v0, 0x1

    .line 304
    .local v2, "itemIndex":I
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    .line 318
    .local v5, "edge":I
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v7

    .line 319
    .local v7, "lastIndex":I
    :goto_0
    if-ge v2, v6, :cond_c

    if-gt v2, v7, :cond_c

    .line 320
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    .line 321
    .local v8, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    if-eq v5, v11, :cond_2

    .line 322
    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    add-int/2addr v5, v0

    .line 324
    :cond_2
    iget v4, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 325
    .local v4, "rowIndex":I
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v10, v1, v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    .line 326
    .local v3, "size":I
    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v3, v0, :cond_3

    .line 327
    iput v3, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 328
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    sub-int v1, v7, v2

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    .line 329
    move v7, v2

    .line 331
    :cond_3
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 332
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-gez v0, :cond_4

    .line 333
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    .line 335
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v9

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 336
    if-nez p2, :cond_9

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 337
    return v10

    .line 307
    .end local v2    # "itemIndex":I
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v5    # "edge":I
    .end local v7    # "lastIndex":I
    .end local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_5
    const v5, 0x7fffffff

    .line 308
    .restart local v5    # "edge":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    .line 309
    .restart local v2    # "itemIndex":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-gt v2, v0, :cond_6

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    if-ge v2, v0, :cond_8

    .line 311
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->clear()V

    .line 312
    return v9

    .line 308
    .end local v2    # "itemIndex":I
    :cond_7
    const/4 v2, 0x0

    .restart local v2    # "itemIndex":I
    goto :goto_1

    .line 313
    :cond_8
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    if-le v2, v0, :cond_1

    .line 315
    return v9

    .line 339
    .restart local v3    # "size":I
    .restart local v4    # "rowIndex":I
    .restart local v7    # "lastIndex":I
    .restart local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_9
    if-ne v5, v11, :cond_a

    .line 340
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    .line 343
    :cond_a
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    add-int/lit8 v0, v0, -0x1

    if-ne v4, v0, :cond_b

    .line 344
    if-eqz p2, :cond_b

    .line 345
    return v10

    .line 319
    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_c
    return v9
.end method

.method protected final appendVisibleItemToRow(III)I
    .locals 8
    .param p1, "itemIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "location"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 364
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-ltz v0, :cond_1

    .line 365
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v2, p1, -0x1

    if-eq v0, v2, :cond_1

    .line 367
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 370
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_3

    .line 373
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-ne p1, v0, :cond_2

    .line 374
    invoke-direct {p0, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->calculateOffsetAfterLastItem(I)I

    move-result v7

    .line 381
    .local v7, "offset":I
    :goto_0
    new-instance v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v6, p2, v7, v3}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 382
    .local v6, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/CircularArray;->addLast(Ljava/lang/Object;)V

    .line 384
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 385
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 386
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 387
    .local v1, "item":Ljava/lang/Object;
    iput-object v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 392
    :goto_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 393
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 401
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v2, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 402
    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return v0

    .line 376
    .end local v1    # "item":Ljava/lang/Object;
    .end local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v7    # "offset":I
    :cond_2
    const/4 v7, 0x0

    .restart local v7    # "offset":I
    goto :goto_0

    .line 379
    .end local v7    # "offset":I
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    sub-int v7, p3, v0

    .restart local v7    # "offset":I
    goto :goto_0

    .line 389
    .restart local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_4
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v4, v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v0

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 390
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v0, v3

    .restart local v1    # "item":Ljava/lang/Object;
    goto :goto_1

    .line 395
    :cond_5
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_6

    .line 396
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    goto :goto_2

    .line 398
    :cond_6
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    goto :goto_2
.end method

.method protected final appendVisibleItems(IZ)Z
    .locals 4
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 272
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 273
    return v2

    .line 275
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    return v2

    .line 279
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisbleItemsWithCache(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    const/4 v0, 0x1

    .line 284
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 285
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 280
    return v0

    .line 282
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->appendVisibleItemsWithoutCache(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 284
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 285
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 282
    return v0

    .line 283
    :catchall_0
    move-exception v0

    .line 284
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 285
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 283
    throw v0
.end method

.method protected abstract appendVisibleItemsWithoutCache(IZ)Z
.end method

.method public final getFirstIndex()I
    .locals 1

    .prologue
    .line 78
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    return v0
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .locals 4
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    .line 407
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mNumRows:I

    if-ge v0, v2, :cond_0

    .line 408
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/support/v4/util/CircularIntArray;->clear()V

    .line 407
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 410
    :cond_0
    if-ltz p1, :cond_2

    .line 411
    move v0, p1

    :goto_1
    if-gt v0, p2, :cond_2

    .line 412
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v3

    iget v3, v3, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    aget-object v1, v2, v3

    .line 413
    .local v1, "row":Landroid/support/v4/util/CircularIntArray;
    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->getLast()I

    move-result v2

    add-int/lit8 v3, v0, -0x1

    if-ne v2, v3, :cond_1

    .line 415
    invoke-virtual {v1}, Landroid/support/v4/util/CircularIntArray;->popLast()I

    .line 416
    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 411
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 419
    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 420
    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    goto :goto_2

    .line 424
    .end local v1    # "row":Landroid/support/v4/util/CircularIntArray;
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v2
.end method

.method public final getLastIndex()I
    .locals 2

    .prologue
    .line 86
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public bridge synthetic getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .locals 1

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 98
    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int v0, p1, v1

    .line 99
    .local v0, "indexInArray":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 100
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 102
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/CircularArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    return-object v1
.end method

.method public invalidateItemsAfter(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 429
    invoke-super {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->invalidateItemsAfter(I)V

    .line 430
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v1

    sub-int/2addr v1, p1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromEnd(I)V

    .line 431
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 432
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 434
    :cond_0
    return-void
.end method

.method protected final prependVisbleItemsWithCache(IZ)Z
    .locals 12
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 139
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 140
    return v10

    .line 145
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_2

    .line 147
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v6

    .line 148
    .local v6, "edge":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v0

    iget v9, v0, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 149
    .local v9, "offset":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v2, v0, -0x1

    .line 164
    .local v2, "itemIndex":I
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 165
    .local v7, "firstIndex":I
    :goto_0
    if-lt v2, v7, :cond_a

    .line 166
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    .line 167
    .local v8, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget v4, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->row:I

    .line 168
    .local v4, "rowIndex":I
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v10, v1, v10}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    .line 169
    .local v3, "size":I
    iget v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    if-eq v3, v0, :cond_6

    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    add-int/lit8 v1, v2, 0x1

    iget v5, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/support/v4/util/CircularArray;->removeFromStart(I)V

    .line 171
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 173
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v0, v0, v10

    iput-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 174
    iput v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    .line 175
    return v10

    .line 152
    .end local v2    # "itemIndex":I
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v6    # "edge":I
    .end local v7    # "firstIndex":I
    .end local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v9    # "offset":I
    :cond_2
    const v6, 0x7fffffff

    .line 153
    .restart local v6    # "edge":I
    const/4 v9, 0x0

    .line 154
    .restart local v9    # "offset":I
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mStartIndex:I

    .line 155
    .restart local v2    # "itemIndex":I
    :goto_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLastIndex()I

    move-result v0

    if-gt v2, v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_5

    .line 157
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0}, Landroid/support/v4/util/CircularArray;->clear()V

    .line 158
    return v10

    .line 154
    .end local v2    # "itemIndex":I
    :cond_4
    const/4 v2, 0x0

    .restart local v2    # "itemIndex":I
    goto :goto_1

    .line 159
    :cond_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 161
    return v10

    .line 177
    .restart local v3    # "size":I
    .restart local v4    # "rowIndex":I
    .restart local v7    # "firstIndex":I
    .restart local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_6
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    .line 178
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_7

    .line 179
    iput v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 181
    :cond_7
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v10

    sub-int v5, v6, v9

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 182
    if-nez p2, :cond_8

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 183
    return v11

    .line 185
    :cond_8
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v6

    .line 186
    iget v9, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 188
    if-nez v4, :cond_9

    .line 189
    if-eqz p2, :cond_9

    .line 190
    return v11

    .line 165
    :cond_9
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 194
    .end local v3    # "size":I
    .end local v4    # "rowIndex":I
    .end local v8    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    :cond_a
    return v10
.end method

.method protected final prependVisibleItemToRow(III)I
    .locals 9
    .param p1, "itemIndex"    # I
    .param p2, "rowIndex"    # I
    .param p3, "edge"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 239
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    if-ltz v0, :cond_1

    .line 240
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getFirstIndex()I

    move-result v2

    if-ne v0, v2, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    add-int/lit8 v2, p1, 0x1

    if-eq v0, v2, :cond_1

    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 245
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    if-ltz v0, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/StaggeredGrid;->getLocation(I)Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    move-result-object v8

    .line 246
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    invoke-interface {v0, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    .line 247
    .local v7, "oldFirstEdge":I
    new-instance v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;

    invoke-direct {v6, p2, v3, v3}, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;-><init>(III)V

    .line 248
    .local v6, "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLocations:Landroid/support/v4/util/CircularArray;

    invoke-virtual {v0, v6}, Landroid/support/v4/util/CircularArray;->addFirst(Ljava/lang/Object;)V

    .line 250
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    if-eqz v0, :cond_5

    .line 251
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItemSize:I

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 252
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 253
    .local v1, "item":Ljava/lang/Object;
    iput-object v4, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 258
    :goto_1
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstVisibleIndex:I

    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mFirstIndex:I

    .line 259
    iget v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    if-gez v0, :cond_2

    .line 260
    iput p1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mLastVisibleIndex:I

    .line 262
    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mReversedFlow:Z

    if-nez v0, :cond_6

    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    sub-int v5, p3, v0

    .line 263
    .local v5, "thisEdge":I
    :goto_2
    if-eqz v8, :cond_3

    .line 264
    sub-int v0, v7, v5

    iput v0, v8, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->offset:I

    .line 266
    :cond_3
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    move v2, p1

    move v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 267
    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    return v0

    .line 245
    .end local v1    # "item":Ljava/lang/Object;
    .end local v5    # "thisEdge":I
    .end local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .end local v7    # "oldFirstEdge":I
    :cond_4
    const/4 v8, 0x0

    .local v8, "oldFirstLoc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    goto :goto_0

    .line 255
    .end local v8    # "oldFirstLoc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .restart local v6    # "loc":Landroid/support/v17/leanback/widget/StaggeredGrid$Location;
    .restart local v7    # "oldFirstEdge":I
    :cond_5
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, p1, v3, v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v0

    iput v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    .line 256
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v0, v3

    .restart local v1    # "item":Ljava/lang/Object;
    goto :goto_1

    .line 262
    :cond_6
    iget v0, v6, Landroid/support/v17/leanback/widget/StaggeredGrid$Location;->size:I

    add-int v5, p3, v0

    .restart local v5    # "thisEdge":I
    goto :goto_2
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 4
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 118
    return v2

    .line 120
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/StaggeredGrid;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 121
    return v2

    .line 124
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisbleItemsWithCache(IZ)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 130
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 125
    return v0

    .line 127
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/StaggeredGrid;->prependVisibleItemsWithoutCache(IZ)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    .line 129
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 130
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 127
    return v0

    .line 128
    :catchall_0
    move-exception v0

    .line 129
    iget-object v1, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mTmpItem:[Ljava/lang/Object;

    aput-object v3, v1, v2

    .line 130
    iput-object v3, p0, Landroid/support/v17/leanback/widget/StaggeredGrid;->mPendingItem:Ljava/lang/Object;

    .line 128
    throw v0
.end method

.method protected abstract prependVisibleItemsWithoutCache(IZ)Z
.end method
