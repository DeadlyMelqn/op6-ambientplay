.class Landroid/support/v17/leanback/widget/SingleRow;
.super Landroid/support/v17/leanback/widget/Grid;
.source "SingleRow.java"


# instance fields
.field private final mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v17/leanback/widget/Grid;-><init>()V

    .line 27
    new-instance v0, Landroid/support/v17/leanback/widget/Grid$Location;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Location;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    .line 30
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/SingleRow;->setNumRows(I)V

    .line 31
    return-void
.end method


# virtual methods
.method protected final appendVisibleItems(IZ)Z
    .locals 8
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 104
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 105
    return v4

    .line 107
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    return v4

    .line 111
    :cond_1
    const/4 v6, 0x0

    .line 112
    .local v6, "filledOne":Z
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v2

    .local v2, "index":I
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-ge v2, v0, :cond_3

    .line 113
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    const/4 v7, 0x1

    invoke-interface {v0, v2, v7, v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    .line 115
    .local v3, "size":I
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_5

    .line 116
    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_4

    const v5, 0x7fffffff

    .line 117
    .local v5, "edge":I
    :goto_1
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    .line 126
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 127
    const/4 v6, 0x1

    .line 128
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkAppendOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 132
    .end local v3    # "size":I
    .end local v5    # "edge":I
    :cond_3
    return v6

    .line 116
    .restart local v3    # "size":I
    :cond_4
    const/high16 v5, -0x80000000

    .restart local v5    # "edge":I
    goto :goto_1

    .line 119
    .end local v5    # "edge":I
    :cond_5
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_6

    .line 120
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    sub-int v5, v0, v1

    .line 124
    .restart local v5    # "edge":I
    :goto_3
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    goto :goto_2

    .line 122
    .end local v5    # "edge":I
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v7, v2, -0x1

    invoke-interface {v1, v7}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int v5, v0, v1

    .restart local v5    # "edge":I
    goto :goto_3

    .line 112
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public collectAdjacentPrefetchPositions(IILandroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;)V
    .locals 6
    .param p1, "fromLimit"    # I
    .param p2, "da"    # I
    .param p3, "layoutPrefetchRegistry"    # Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 140
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v4, :cond_1

    if-lez p2, :cond_2

    .line 142
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getFirstVisibleIndex()I

    move-result v4

    if-nez v4, :cond_3

    .line 143
    return-void

    .line 140
    :cond_1
    if-ltz p2, :cond_0

    .line 151
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getLastVisibleIndex()I

    move-result v4

    iget-object v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v4, v5, :cond_5

    .line 152
    return-void

    .line 146
    :cond_3
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v1

    .line 147
    .local v1, "indexToPrefetch":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v5

    .line 148
    iget-boolean v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v4, :cond_4

    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    .line 147
    :goto_0
    add-int v3, v5, v4

    .line 161
    .local v3, "nearestEdge":I
    :goto_1
    sub-int v4, v3, p1

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 162
    .local v0, "distance":I
    invoke-interface {p3, v1, v0}, Landroid/support/v7/widget/RecyclerView$LayoutManager$LayoutPrefetchRegistry;->addPosition(II)V

    .line 163
    return-void

    .line 148
    .end local v0    # "distance":I
    .end local v3    # "nearestEdge":I
    :cond_4
    iget v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    neg-int v4, v4

    goto :goto_0

    .line 155
    .end local v1    # "indexToPrefetch":I
    :cond_5
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForAppend()I

    move-result v1

    .line 156
    .restart local v1    # "indexToPrefetch":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v4

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int v2, v4, v5

    .line 157
    .local v2, "itemSizeWithSpace":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    invoke-interface {v4, v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v4

    .line 158
    iget-boolean v5, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v5, :cond_6

    neg-int v2, v2

    .line 157
    .end local v2    # "itemSizeWithSpace":I
    :cond_6
    add-int v3, v4, v2

    .restart local v3    # "nearestEdge":I
    goto :goto_1
.end method

.method protected final findRowMax(ZI[I)I
    .locals 2
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .prologue
    const/4 v0, 0x0

    .line 186
    if-eqz p3, :cond_0

    .line 187
    aput v0, p3, v0

    .line 188
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 190
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    :goto_0
    return v0

    .line 191
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method protected final findRowMin(ZI[I)I
    .locals 2
    .param p1, "findLarge"    # Z
    .param p2, "indexLimit"    # I
    .param p3, "indices"    # [I

    .prologue
    const/4 v0, 0x0

    .line 176
    if-eqz p3, :cond_0

    .line 177
    aput v0, p3, v0

    .line 178
    const/4 v0, 0x1

    aput p2, p3, v0

    .line 180
    :cond_0
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    :goto_0
    return v0

    .line 181
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0, p2}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemPositionsInRows(II)[Landroid/support/v4/util/CircularIntArray;
    .locals 2
    .param p1, "startPos"    # I
    .param p2, "endPos"    # I

    .prologue
    const/4 v1, 0x0

    .line 168
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/support/v4/util/CircularIntArray;->clear()V

    .line 169
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p1}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 170
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    aget-object v0, v0, v1

    invoke-virtual {v0, p2}, Landroid/support/v4/util/CircularIntArray;->addLast(I)V

    .line 171
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItemPositionsInRows:[Landroid/support/v4/util/CircularIntArray;

    return-object v0
.end method

.method public final getLocation(I)Landroid/support/v17/leanback/widget/Grid$Location;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpLocation:Landroid/support/v17/leanback/widget/Grid$Location;

    return-object v0
.end method

.method getStartIndexForAppend()I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 50
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-ltz v0, :cond_0

    .line 51
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 52
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 53
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 55
    :cond_1
    return v2
.end method

.method getStartIndexForPrepend()I
    .locals 2

    .prologue
    .line 60
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_0

    .line 61
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    add-int/lit8 v0, v0, -0x1

    return v0

    .line 62
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 63
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mStartIndex:I

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0

    .line 65
    :cond_1
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method protected final prependVisibleItems(IZ)Z
    .locals 8
    .param p1, "toLimit"    # I
    .param p2, "oneColumnMode"    # Z

    .prologue
    const/4 v4, 0x0

    .line 71
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 72
    return v4

    .line 74
    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    return v4

    .line 77
    :cond_1
    const/4 v6, 0x0

    .line 78
    .local v6, "filledOne":Z
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    invoke-interface {v0}, Landroid/support/v17/leanback/widget/Grid$Provider;->getMinIndex()I

    move-result v7

    .line 79
    .local v7, "minIndex":I
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/SingleRow;->getStartIndexForPrepend()I

    move-result v2

    .local v2, "index":I
    :goto_0
    if-lt v2, v7, :cond_3

    .line 80
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    invoke-interface {v0, v2, v4, v1, v4}, Landroid/support/v17/leanback/widget/Grid$Provider;->createItem(IZ[Ljava/lang/Object;Z)I

    move-result v3

    .line 82
    .local v3, "size":I
    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    if-gez v0, :cond_5

    .line 83
    :cond_2
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_4

    const/high16 v5, -0x80000000

    .line 84
    .local v5, "edge":I
    :goto_1
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mLastVisibleIndex:I

    .line 93
    :goto_2
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mTmpItem:[Ljava/lang/Object;

    aget-object v1, v1, v4

    invoke-interface/range {v0 .. v5}, Landroid/support/v17/leanback/widget/Grid$Provider;->addItem(Ljava/lang/Object;IIII)V

    .line 94
    const/4 v6, 0x1

    .line 95
    if-nez p2, :cond_3

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/SingleRow;->checkPrependOverLimit(I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 99
    .end local v3    # "size":I
    .end local v5    # "edge":I
    :cond_3
    return v6

    .line 83
    .restart local v3    # "size":I
    :cond_4
    const v5, 0x7fffffff

    .restart local v5    # "edge":I
    goto :goto_1

    .line 86
    .end local v5    # "edge":I
    :cond_5
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mReversedFlow:Z

    if-eqz v0, :cond_6

    .line 87
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    add-int/2addr v0, v1

    add-int v5, v0, v3

    .line 91
    .restart local v5    # "edge":I
    :goto_3
    iput v2, p0, Landroid/support/v17/leanback/widget/SingleRow;->mFirstVisibleIndex:I

    goto :goto_2

    .line 89
    .end local v5    # "edge":I
    :cond_6
    iget-object v0, p0, Landroid/support/v17/leanback/widget/SingleRow;->mProvider:Landroid/support/v17/leanback/widget/Grid$Provider;

    add-int/lit8 v1, v2, 0x1

    invoke-interface {v0, v1}, Landroid/support/v17/leanback/widget/Grid$Provider;->getEdge(I)I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/SingleRow;->mSpacing:I

    sub-int/2addr v0, v1

    sub-int v5, v0, v3

    .restart local v5    # "edge":I
    goto :goto_3

    .line 79
    :cond_7
    add-int/lit8 v2, v2, -0x1

    goto :goto_0
.end method
