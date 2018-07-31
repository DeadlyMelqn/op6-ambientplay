.class abstract Landroid/support/v17/leanback/widget/Grid;
.super Ljava/lang/Object;
.source "Grid.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/Grid$Location;,
        Landroid/support/v17/leanback/widget/Grid$Provider;
    }
.end annotation


# instance fields
.field protected mFirstVisibleIndex:I

.field protected mLastVisibleIndex:I

.field protected mNumRows:I

.field protected mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

.field protected mReversedFlow:Z

.field protected mSpacing:I

.field protected mStartIndex:I

.field mTmpItem:[Ljava/lang/Object;

.field protected mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    .line 132
    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 133
    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 138
    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    .line 39
    return-void
.end method

.method public static createGrid(I)Landroid/support/v17/leanback/widget/Grid;
    .locals 2
    .param p0, "rows"    # I

    .prologue
    .line 145
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 146
    new-instance v0, Landroid/support/v17/leanback/widget/SingleRow;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/SingleRow;-><init>()V

    .line 152
    .local v0, "grid":Landroid/support/v17/leanback/widget/Grid;
    :goto_0
    return-object v0

    .line 149
    .end local v0    # "grid":Landroid/support/v17/leanback/widget/Grid;
    :cond_0
    new-instance v0, Landroid/support/v17/leanback/widget/StaggeredGridDefault;

    invoke-direct {v0}, Landroid/support/v17/leanback/widget/StaggeredGridDefault;-><init>()V

    .line 150
    .restart local v0    # "grid":Landroid/support/v17/leanback/widget/Grid;
    invoke-virtual {v0, p0}, Landroid/support/v17/leanback/widget/Grid;->setNumRows(I)V

    goto :goto_0
.end method

.method private resetVisibleIndexIfEmpty()V
    .locals 2

    .prologue
    .line 449
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndex()V

    .line 452
    :cond_0
    return-void
.end method


# virtual methods
.method public appendOneColumnVisibleItems()Z
    .locals 2

    .prologue
    .line 388
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    move-result v0

    return v0

    :cond_0
    const/high16 v0, -0x80000000

    goto :goto_0
.end method

.method public final appendVisibleItems(I)V
    .locals 1
    .param p1, "toLimit"    # I

    .prologue
    .line 396
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->appendVisibleItems(IZ)Z

    .line 397
    return-void
.end method

.method protected abstract appendVisibleItems(IZ)Z
.end method

.method protected final checkAppendOverLimit(I)Z
    .locals 4
    .param p1, "toLimit"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 317
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v2, :cond_0

    .line 318
    return v1

    .line 320
    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v3, p1

    if-gt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 321
    :cond_3
    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v3, p1, v3

    if-ge v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method protected final checkPrependOverLimit(I)Z
    .locals 4
    .param p1, "toLimit"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 328
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v2, :cond_0

    .line 329
    return v1

    .line 331
    :cond_0
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0, v1, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v3, p1, v3

    if-lt v2, v3, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    .line 332
    :cond_3
    invoke-virtual {p0, v0, v3}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(Z[I)I

    move-result v2

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v3, p1

    if-le v2, v3, :cond_1

    move v0, v1

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 0
    .param p1, "fromLimit"    # I
    .param p2, "da"    # I
    .param p3, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 526
    return-void
.end method

.method public fillDisappearingItems([IILandroid/util/SparseIntArray;)V
    .locals 16
    .param p1, "positions"    # [I
    .param p2, "positionsLength"    # I
    .param p3, "positionToRow"    # Landroid/util/SparseIntArray;

    .prologue
    .line 464
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v11

    .line 465
    .local v11, "lastPos":I
    if-ltz v11, :cond_1

    .line 466
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v2, v1, v11}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v13

    .line 467
    .local v13, "resultSearchLast":I
    :goto_0
    if-gez v13, :cond_4

    .line 469
    neg-int v2, v13

    add-int/lit8 v8, v2, -0x1

    .line 471
    .local v8, "firstDisappearingIndex":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_2

    .line 472
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v3, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v7, v2, v3

    .line 476
    .local v7, "edge":I
    :goto_1
    move v10, v8

    .local v10, "i":I
    :goto_2
    move/from16 v0, p2

    if-ge v10, v0, :cond_4

    .line 477
    aget v4, p1, v10

    .line 478
    .local v4, "disappearingIndex":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 479
    .local v6, "disappearingRow":I
    if-gez v6, :cond_0

    .line 480
    const/4 v6, 0x0

    .line 482
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x1

    const/4 v15, 0x1

    invoke-interface {v2, v4, v14, v3, v15}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v5

    .line 483
    .local v5, "size":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v3, v3, v14

    invoke-interface/range {v2 .. v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 484
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_3

    .line 485
    sub-int v2, v7, v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v7, v2, v3

    .line 476
    :goto_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 466
    .end local v4    # "disappearingIndex":I
    .end local v5    # "size":I
    .end local v6    # "disappearingRow":I
    .end local v7    # "edge":I
    .end local v8    # "firstDisappearingIndex":I
    .end local v10    # "i":I
    .end local v13    # "resultSearchLast":I
    :cond_1
    const/4 v13, 0x0

    .restart local v13    # "resultSearchLast":I
    goto :goto_0

    .line 474
    .restart local v8    # "firstDisappearingIndex":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v3, v11}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v3

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int v7, v2, v3

    .restart local v7    # "edge":I
    goto :goto_1

    .line 487
    .restart local v4    # "disappearingIndex":I
    .restart local v5    # "size":I
    .restart local v6    # "disappearingRow":I
    .restart local v10    # "i":I
    :cond_3
    add-int v2, v7, v5

    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int v7, v2, v3

    goto :goto_3

    .line 492
    .end local v4    # "disappearingIndex":I
    .end local v5    # "size":I
    .end local v6    # "disappearingRow":I
    .end local v7    # "edge":I
    .end local v8    # "firstDisappearingIndex":I
    .end local v10    # "i":I
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v9

    .line 493
    .local v9, "firstPos":I
    if-ltz v9, :cond_6

    .line 494
    const/4 v2, 0x0

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v0, v2, v1, v9}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result v12

    .line 495
    .local v12, "resultSearchFirst":I
    :goto_4
    if-gez v12, :cond_9

    .line 497
    neg-int v2, v12

    add-int/lit8 v8, v2, -0x2

    .line 499
    .restart local v8    # "firstDisappearingIndex":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_7

    .line 500
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    .line 504
    .restart local v7    # "edge":I
    :goto_5
    move v10, v8

    .restart local v10    # "i":I
    :goto_6
    if-ltz v10, :cond_9

    .line 505
    aget v4, p1, v10

    .line 506
    .restart local v4    # "disappearingIndex":I
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v6

    .line 507
    .restart local v6    # "disappearingRow":I
    if-gez v6, :cond_5

    .line 508
    const/4 v6, 0x0

    .line 510
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-interface {v2, v4, v14, v3, v15}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v5

    .line 511
    .restart local v5    # "size":I
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v2, :cond_8

    .line 512
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    add-int/2addr v2, v7

    add-int v7, v2, v5

    .line 516
    :goto_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/Grid;->mTmpItem:[Ljava/lang/Object;

    const/4 v14, 0x0

    aget-object v3, v3, v14

    invoke-interface/range {v2 .. v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 504
    add-int/lit8 v10, v10, -0x1

    goto :goto_6

    .line 494
    .end local v4    # "disappearingIndex":I
    .end local v5    # "size":I
    .end local v6    # "disappearingRow":I
    .end local v7    # "edge":I
    .end local v8    # "firstDisappearingIndex":I
    .end local v10    # "i":I
    .end local v12    # "resultSearchFirst":I
    :cond_6
    const/4 v12, 0x0

    .restart local v12    # "resultSearchFirst":I
    goto :goto_4

    .line 502
    .restart local v8    # "firstDisappearingIndex":I
    :cond_7
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v2, v9}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v7

    .restart local v7    # "edge":I
    goto :goto_5

    .line 514
    .restart local v4    # "disappearingIndex":I
    .restart local v5    # "size":I
    .restart local v6    # "disappearingRow":I
    .restart local v10    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    sub-int v2, v7, v2

    sub-int v7, v2, v5

    goto :goto_7

    .line 519
    .end local v4    # "disappearingIndex":I
    .end local v5    # "size":I
    .end local v6    # "disappearingRow":I
    .end local v7    # "edge":I
    .end local v8    # "firstDisappearingIndex":I
    .end local v10    # "i":I
    :cond_9
    return-void
.end method

.method protected abstract findRowMax(ZI[I)I
.end method

.method public final findRowMax(Z[I)I
    .locals 1
    .param p1, "findLarge"    # Z
    .param p2, "indices"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 303
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMax(ZI[I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0
.end method

.method protected abstract findRowMin(ZI[I)I
.end method

.method public final findRowMin(Z[I)I
    .locals 1
    .param p1, "findLarge"    # Z
    .param p2, "indices"    # [I
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 288
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    :goto_0
    invoke-virtual {p0, p1, v0, p2}, Landroid/support/v17/leanback/widget/Grid;->findRowMin(ZI[I)I

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0
.end method

.method public final getFirstVisibleIndex()I
    .locals 1

    .prologue
    .line 227
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    return v0
.end method

.method public final getItemPositionsInRows()[Landroid/support/v4/util/CircularIntArray;
    .locals 2

    .prologue
    .line 353
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getLastVisibleIndex()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;

    move-result-object v0

    return-object v0
.end method

.method public abstract getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
.end method

.method public final getLastVisibleIndex()I
    .locals 1

    .prologue
    .line 235
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    return v0
.end method

.method public abstract getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
.end method

.method public getNumRows()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    return v0
.end method

.method public final getRowIndex(I)I
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 271
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;

    move-result-object v0

    .line 272
    .local v0, "location":Landroid/support/v17/leanback/widget/Grid$Location;
    if-nez v0, :cond_0

    .line 273
    const/4 v1, -0x1

    return v1

    .line 275
    :cond_0
    iget v1, v0, Landroid/support/v17/leanback/widget/Grid$Location;->row:I

    return v1
.end method

.method public invalidateItemsAfter(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 252
    if-gez p1, :cond_0

    .line 253
    return-void

    .line 255
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-gez v0, :cond_1

    .line 256
    return-void

    .line 258
    :cond_1
    iget v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-lt v0, p1, :cond_2

    .line 259
    add-int/lit8 v0, p1, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    .line 261
    :cond_2
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 262
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/Grid;->getFirstVisibleIndex()I

    move-result v0

    if-gez v0, :cond_3

    .line 263
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/Grid;->setStart(I)V

    .line 265
    :cond_3
    return-void
.end method

.method public isReversedFlow()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    return v0
.end method

.method public final prependOneColumnVisibleItems()Z
    .locals 2

    .prologue
    .line 362
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-eqz v0, :cond_0

    const/high16 v0, -0x80000000

    :goto_0
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    move-result v0

    return v0

    :cond_0
    const v0, 0x7fffffff

    goto :goto_0
.end method

.method public final prependVisibleItems(I)V
    .locals 1
    .param p1, "toLimit"    # I

    .prologue
    .line 370
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v17/leanback/widget/Grid;->prependVisibleItems(IZ)Z

    .line 371
    return-void
.end method

.method protected abstract prependVisibleItems(IZ)Z
.end method

.method public removeInvisibleItemsAtEnd(II)V
    .locals 3
    .param p1, "aboveIndex"    # I
    .param p2, "toLimit"    # I

    .prologue
    .line 414
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v1, v2, :cond_3

    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    if-le v1, p1, :cond_3

    .line 415
    iget-boolean v1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    if-lt v1, p2, :cond_0

    const/4 v0, 0x1

    .line 417
    .local v0, "offEnd":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 418
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 419
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    goto :goto_0

    .line 415
    .end local v0    # "offEnd":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "offEnd":Z
    goto :goto_1

    .line 416
    .end local v0    # "offEnd":Z
    :cond_1
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v1

    if-gt v1, p2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "offEnd":Z
    goto :goto_1

    .end local v0    # "offEnd":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "offEnd":Z
    goto :goto_1

    .line 424
    .end local v0    # "offEnd":Z
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 425
    return-void
.end method

.method public removeInvisibleItemsAtFront(II)V
    .locals 4
    .param p1, "belowIndex"    # I
    .param p2, "toLimit"    # I

    .prologue
    .line 433
    :goto_0
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-lt v2, v3, :cond_3

    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    if-ge v2, p1, :cond_3

    .line 434
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    .line 435
    .local v1, "size":I
    iget-boolean v2, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    if-nez v2, :cond_1

    .line 436
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    add-int/2addr v2, v1

    if-gt v2, p2, :cond_0

    const/4 v0, 0x1

    .line 438
    .local v0, "offFront":Z
    :goto_1
    if-eqz v0, :cond_3

    .line 439
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->removeItem(I)V

    .line 440
    iget v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    goto :goto_0

    .line 436
    .end local v0    # "offFront":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "offFront":Z
    goto :goto_1

    .line 437
    .end local v0    # "offFront":Z
    :cond_1
    iget-object v2, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v3, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    invoke-interface {v2, v3}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v2

    sub-int/2addr v2, v1

    if-lt v2, p2, :cond_2

    const/4 v0, 0x1

    .restart local v0    # "offFront":Z
    goto :goto_1

    .end local v0    # "offFront":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "offFront":Z
    goto :goto_1

    .line 445
    .end local v0    # "offFront":Z
    .end local v1    # "size":I
    :cond_3
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;->resetVisibleIndexIfEmpty()V

    .line 446
    return-void
.end method

.method public resetVisibleIndex()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 242
    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mLastVisibleIndex:I

    iput v0, p0, Landroid/support/v17/leanback/widget/Grid;->mFirstVisibleIndex:I

    .line 243
    return-void
.end method

.method setNumRows(I)V
    .locals 3
    .param p1, "numRows"    # I

    .prologue
    .line 209
    if-gtz p1, :cond_0

    .line 210
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 212
    :cond_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ne v1, p1, :cond_1

    .line 213
    return-void

    .line 215
    :cond_1
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    .line 216
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    new-array v1, v1, [Landroid/support/v4/util/CircularIntArray;

    iput-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    .line 217
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/support/v17/leanback/widget/Grid;->mNumRows:I

    if-ge v0, v1, :cond_2

    .line 218
    iget-object v1, p0, Landroid/support/v17/leanback/widget/Grid;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    new-instance v2, Landroid/support/v4/util/CircularIntArray;

    invoke-direct {v2}, Landroid/support/v4/util/CircularIntArray;-><init>()V

    aput-object v2, v1, v0

    .line 217
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 220
    :cond_2
    return-void
.end method

.method public setProvider(Landroid/support/v17/leanback/widget/Grid$Provider;)V
    .locals 0
    .param p1, "provider"    # Landroid/support/v17/leanback/widget/Grid$Provider;

    .prologue
    .line 182
    iput-object p1, p0, Landroid/support/v17/leanback/widget/Grid;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    .line 183
    return-void
.end method

.method public final setReversedFlow(Z)V
    .locals 0
    .param p1, "reversedFlow"    # Z

    .prologue
    .line 166
    iput-boolean p1, p0, Landroid/support/v17/leanback/widget/Grid;->mReversedFlow:Z

    .line 167
    return-void
.end method

.method public final setSpacing(I)V
    .locals 0
    .param p1, "spacing"    # I

    .prologue
    .line 159
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mSpacing:I

    .line 160
    return-void
.end method

.method public setStart(I)V
    .locals 0
    .param p1, "startIndex"    # I

    .prologue
    .line 191
    iput p1, p0, Landroid/support/v17/leanback/widget/Grid;->mStartIndex:I

    .line 192
    return-void
.end method
