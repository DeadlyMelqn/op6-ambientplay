.class Landroid/support/v17/leanback/widget/GridLayoutManager$2;
.super Ljava/lang/Object;
.source "GridLayoutManager.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/Grid$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/GridLayoutManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/GridLayoutManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/support/v17/leanback/widget/GridLayoutManager;

    .prologue
    .line 1
    iput-object p1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    .line 1556
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public addItem(Ljava/lang/Object;IIII)V
    .locals 16
    .param p1, "item"    # Ljava/lang/Object;
    .param p2, "index"    # I
    .param p3, "length"    # I
    .param p4, "rowIndex"    # I
    .param p5, "edge"    # I

    .prologue
    move-object/from16 v4, p1

    .line 1639
    check-cast v4, Landroid/view/View;

    .line 1641
    .local v4, "v":Landroid/view/View;
    const/high16 v2, -0x80000000

    move/from16 v0, p5

    if-eq v0, v2, :cond_0

    const v2, 0x7fffffff

    move/from16 v0, p5

    if-ne v0, v2, :cond_1

    .line 1642
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    if-nez v2, :cond_5

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result p5

    .line 1646
    :cond_1
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mGrid:Landroid/support/v17/leanback/widget/Grid;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/Grid;->isReversedFlow()Z

    move-result v2

    xor-int/lit8 v14, v2, 0x1

    .line 1647
    .local v14, "edgeIsMin":Z
    if-eqz v14, :cond_6

    .line 1648
    move/from16 v5, p5

    .line 1649
    .local v5, "start":I
    add-int v6, p5, p3

    .line 1654
    .local v6, "end":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getRowStartSecondary(I)I

    move-result v2

    .line 1655
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->secondAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMin()I

    move-result v3

    .line 1654
    add-int/2addr v2, v3

    .line 1655
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mScrollOffsetSecondary:I

    .line 1654
    sub-int v7, v2, v3

    .line 1656
    .local v7, "startSecondary":I
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildrenStates:Landroid/support/v17/leanback/widget/ViewsStateBundle;

    move/from16 v0, p2

    invoke-virtual {v2, v4, v0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->loadView(Landroid/view/View;I)V

    .line 1657
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    move/from16 v3, p4

    invoke-virtual/range {v2 .. v7}, Landroid/support/v17/leanback/widget/GridLayoutManager;->layoutChild(ILandroid/view/View;III)V

    .line 1663
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$State;->isPreLayout()Z

    move-result v2

    if-nez v2, :cond_2

    .line 1664
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->updateScrollLimits()V

    .line 1666
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v2, :cond_3

    .line 1667
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesAfterLayout()V

    .line 1669
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    if-eqz v2, :cond_4

    .line 1670
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v2, v4}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v15

    .line 1671
    .local v15, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v8, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildLaidOutListener:Landroid/support/v17/leanback/widget/OnChildLaidOutListener;

    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v9, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    .line 1672
    if-nez v15, :cond_7

    const-wide/16 v12, -0x1

    :goto_2
    move-object v10, v4

    move/from16 v11, p2

    .line 1671
    invoke-interface/range {v8 .. v13}, Landroid/support/v17/leanback/widget/OnChildLaidOutListener;->onChildLaidOut(Landroid/view/ViewGroup;Landroid/view/View;IJ)V

    .line 1674
    .end local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_4
    return-void

    .line 1643
    .end local v5    # "start":I
    .end local v6    # "end":I
    .end local v7    # "startSecondary":I
    .end local v14    # "edgeIsMin":Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getSize()I

    move-result v2

    .line 1644
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v3, v3, Landroid/support/v17/leanback/widget/GridLayoutManager;->mWindowAlignment:Landroid/support/v17/leanback/widget/WindowAlignment;

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment;->mainAxis()Landroid/support/v17/leanback/widget/WindowAlignment$Axis;

    move-result-object v3

    invoke-virtual {v3}, Landroid/support/v17/leanback/widget/WindowAlignment$Axis;->getPaddingMax()I

    move-result v3

    .line 1643
    sub-int p5, v2, v3

    goto/16 :goto_0

    .line 1651
    .restart local v14    # "edgeIsMin":Z
    :cond_6
    sub-int v5, p5, p3

    .line 1652
    .restart local v5    # "start":I
    move/from16 v6, p5

    .restart local v6    # "end":I
    goto/16 :goto_1

    .line 1672
    .restart local v7    # "startSecondary":I
    .restart local v15    # "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :cond_7
    invoke-virtual {v15}, Landroid/support/v7/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v12

    goto :goto_2
.end method

.method public createItem(IZ[Ljava/lang/Object;Z)I
    .locals 7
    .param p1, "index"    # I
    .param p2, "append"    # Z
    .param p3, "item"    # [Ljava/lang/Object;
    .param p4, "disappearingItem"    # Z

    .prologue
    const/4 v6, 0x0

    .line 1572
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v5, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v5, v5, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v5, p1, v5

    invoke-virtual {v4, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewForPosition(I)Landroid/view/View;

    move-result-object v2

    .line 1574
    .local v2, "v":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 1575
    .local v0, "lp":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mBaseGridView:Landroid/support/v17/leanback/widget/BaseGridView;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/BaseGridView;->getChildViewHolder(Landroid/view/View;)Landroid/support/v7/widget/RecyclerView$ViewHolder;

    move-result-object v3

    .line 1576
    .local v3, "vh":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    const-class v5, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v4, v3, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getFacet(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ItemAlignmentFacet;

    invoke-virtual {v0, v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->setItemAlignmentFacet(Landroid/support/v17/leanback/widget/ItemAlignmentFacet;)V

    .line 1578
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->isItemRemoved()Z

    move-result v4

    if-nez v4, :cond_3

    .line 1580
    if-eqz p4, :cond_5

    .line 1581
    if-eqz p2, :cond_4

    .line 1582
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;)V

    .line 1594
    :goto_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 1595
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mChildVisibility:I

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1598
    :cond_0
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-eqz v4, :cond_1

    .line 1599
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;->consumePendingMovesBeforeLayout()V

    .line 1601
    :cond_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v2}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getSubPositionByView(Landroid/view/View;Landroid/view/View;)I

    move-result v1

    .line 1602
    .local v1, "subindex":I
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-nez v4, :cond_7

    .line 1609
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_2

    .line 1610
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPendingMoveSmoothScroller:Landroid/support/v17/leanback/widget/GridLayoutManager$PendingMoveSmoothScroller;

    if-nez v4, :cond_2

    .line 1611
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    .line 1630
    :cond_2
    :goto_1
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->measureChild(Landroid/view/View;)V

    .line 1632
    .end local v1    # "subindex":I
    :cond_3
    aput-object v2, p3, v6

    .line 1633
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mOrientation:I

    if-nez v4, :cond_9

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredWidthWithMargin(Landroid/view/View;)I

    move-result v4

    :goto_2
    return v4

    .line 1584
    :cond_4
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addDisappearingView(Landroid/view/View;I)V

    goto :goto_0

    .line 1587
    :cond_5
    if-eqz p2, :cond_6

    .line 1588
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 1590
    :cond_6
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2, v6}, Landroid/support/v17/leanback/widget/GridLayoutManager;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1613
    .restart local v1    # "subindex":I
    :cond_7
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInFastRelayout:Z

    if-nez v4, :cond_2

    .line 1619
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-nez v4, :cond_8

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-ne p1, v4, :cond_8

    .line 1620
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    if-ne v1, v4, :cond_8

    .line 1621
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    .line 1622
    :cond_8
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v4, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    if-lt p1, v4, :cond_2

    .line 1623
    invoke-virtual {v2}, Landroid/view/View;->hasFocusable()Z

    move-result v4

    .line 1622
    if-eqz v4, :cond_2

    .line 1624
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput p1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mFocusPosition:I

    .line 1625
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput v1, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mSubFocusPosition:I

    .line 1626
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iput-boolean v6, v4, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayoutSearchFocus:Z

    .line 1627
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/GridLayoutManager;->dispatchChildSelected()V

    goto :goto_1

    .line 1634
    .end local v1    # "subindex":I
    :cond_9
    iget-object v4, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v4, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getDecoratedMeasuredHeightWithMargin(Landroid/view/View;)I

    move-result v4

    goto :goto_2
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 1565
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mState:Landroid/support/v7/widget/RecyclerView$State;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$State;->getItemCount()I

    move-result v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getEdge(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1690
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1691
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mReverseFlowPrimary:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMax(Landroid/view/View;)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    invoke-virtual {v1, v0}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewMin(Landroid/view/View;)I

    move-result v1

    goto :goto_0
.end method

.method public getMinIndex()I
    .locals 1

    .prologue
    .line 1560
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v0, v0, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    return v0
.end method

.method public getSize(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1696
    iget-object v0, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v17/leanback/widget/GridLayoutManager;->getViewPrimarySize(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public removeItem(I)V
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 1679
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mPositionDeltaInPreLayout:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->findViewByPosition(I)Landroid/view/View;

    move-result-object v0

    .line 1680
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-boolean v1, v1, Landroid/support/v17/leanback/widget/GridLayoutManager;->mInLayout:Z

    if-eqz v1, :cond_0

    .line 1681
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->detachAndScrapView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    .line 1686
    :goto_0
    return-void

    .line 1683
    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/GridLayoutManager$2;->this$0:Landroid/support/v17/leanback/widget/GridLayoutManager;

    iget-object v2, v2, Landroid/support/v17/leanback/widget/GridLayoutManager;->mRecycler:Landroid/support/v7/widget/RecyclerView$Recycler;

    invoke-virtual {v1, v0, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager;->removeAndRecycleView(Landroid/view/View;Landroid/support/v7/widget/RecyclerView$Recycler;)V

    goto :goto_0
.end method
