.class Landroid/widget/AbsListView$PositionScroller;
.super Landroid/widget/AbsListView$AbsPositionScroller;
.source "AbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PositionScroller"
.end annotation


# static fields
.field private static final MOVE_DOWN_BOUND:I = 0x3

.field private static final MOVE_DOWN_POS:I = 0x1

.field private static final MOVE_OFFSET:I = 0x5

.field private static final MOVE_UP_BOUND:I = 0x4

.field private static final MOVE_UP_POS:I = 0x2

.field private static final SCROLL_DURATION:I = 0xc8


# instance fields
.field private mBoundPos:I

.field private final mExtraScroll:I

.field private mLastSeenPos:I

.field private mMode:I

.field private mOffsetFromTop:I

.field private mScrollDuration:I

.field private mTargetPos:I

.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 1
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    .line 7342
    iput-object p1, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/widget/AbsListView$AbsPositionScroller;-><init>()V

    .line 7343
    invoke-static {p1}, Landroid/widget/AbsListView;->-get1(Landroid/widget/AbsListView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledFadingEdgeLength()I

    move-result v0

    iput v0, p0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    .line 7344
    return-void
.end method

.method private scrollToVisible(III)V
    .locals 17
    .param p1, "targetPos"    # I
    .param p2, "boundPos"    # I
    .param p3, "duration"    # I

    .prologue
    .line 7536
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v6, v14, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7537
    .local v6, "firstPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v5

    .line 7538
    .local v5, "childCount":I
    add-int v14, v6, v5

    add-int/lit8 v7, v14, -0x1

    .line 7539
    .local v7, "lastPos":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v14, v14, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v9, v14, Landroid/graphics/Rect;->top:I

    .line 7540
    .local v9, "paddedTop":I
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v14}, Landroid/widget/AbsListView;->getHeight()I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-object v15, v15, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    iget v15, v15, Landroid/graphics/Rect;->bottom:I

    sub-int v8, v14, v15

    .line 7542
    .local v8, "paddedBottom":I
    move/from16 v0, p1

    if-lt v0, v6, :cond_0

    move/from16 v0, p1

    if-le v0, v7, :cond_1

    .line 7543
    :cond_0
    const-string/jumbo v14, "AbsListView"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "scrollToVisible called with targetPos "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 7544
    const-string/jumbo v16, " not visible ["

    .line 7543
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 7544
    const-string/jumbo v16, ", "

    .line 7543
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    .line 7544
    const-string/jumbo v16, "]"

    .line 7543
    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7546
    :cond_1
    move/from16 v0, p2

    if-lt v0, v6, :cond_2

    move/from16 v0, p2

    if-le v0, v7, :cond_3

    .line 7548
    :cond_2
    const/16 p2, -0x1

    .line 7551
    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p1, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 7552
    .local v12, "targetChild":Landroid/view/View;
    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v13

    .line 7553
    .local v13, "targetTop":I
    invoke-virtual {v12}, Landroid/view/View;->getBottom()I

    move-result v11

    .line 7554
    .local v11, "targetBottom":I
    const/4 v10, 0x0

    .line 7556
    .local v10, "scrollBy":I
    if-le v11, v8, :cond_4

    .line 7557
    sub-int v10, v11, v8

    .line 7559
    :cond_4
    if-ge v13, v9, :cond_5

    .line 7560
    sub-int v10, v13, v9

    .line 7563
    :cond_5
    if-nez v10, :cond_6

    .line 7564
    return-void

    .line 7567
    :cond_6
    if-ltz p2, :cond_7

    .line 7568
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v15, p2, v6

    invoke-virtual {v14, v15}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 7569
    .local v3, "boundChild":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    .line 7570
    .local v4, "boundTop":I
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v2

    .line 7571
    .local v2, "boundBottom":I
    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v1

    .line 7573
    .local v1, "absScroll":I
    if-gez v10, :cond_8

    add-int v14, v2, v1

    if-le v14, v8, :cond_8

    .line 7575
    sub-int v14, v2, v8

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    .line 7582
    .end local v1    # "absScroll":I
    .end local v2    # "boundBottom":I
    .end local v3    # "boundChild":Landroid/view/View;
    .end local v4    # "boundTop":I
    :cond_7
    :goto_0
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move/from16 v0, p3

    invoke-virtual {v14, v10, v0}, Landroid/widget/AbsListView;->smoothScrollBy(II)V

    .line 7583
    return-void

    .line 7576
    .restart local v1    # "absScroll":I
    .restart local v2    # "boundBottom":I
    .restart local v3    # "boundChild":Landroid/view/View;
    .restart local v4    # "boundTop":I
    :cond_8
    if-lez v10, :cond_7

    sub-int v14, v4, v1

    if-ge v14, v9, :cond_7

    .line 7578
    sub-int v14, v4, v9

    const/4 v15, 0x0

    invoke-static {v15, v14}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 43

    .prologue
    .line 7592
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v26

    .line 7593
    .local v26, "listHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v12, v0, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7595
    .local v12, "firstPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    move/from16 v38, v0

    packed-switch v38, :pswitch_data_0

    .line 7786
    :cond_0
    :goto_0
    return-void

    .line 7597
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v38

    add-int/lit8 v23, v38, -0x1

    .line 7598
    .local v23, "lastViewIndex":I
    add-int v18, v12, v23

    .line 7600
    .local v18, "lastPos":I
    if-gez v23, :cond_1

    .line 7601
    return-void

    .line 7604
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_2

    .line 7606
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7607
    return-void

    .line 7610
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 7611
    .local v20, "lastView":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v22

    .line 7612
    .local v22, "lastViewHeight":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v25

    .line 7613
    .local v25, "lastViewTop":I
    sub-int v24, v26, v25

    .line 7614
    .local v24, "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_3

    .line 7615
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7617
    .local v9, "extraScroll":I
    :goto_1
    sub-int v38, v22, v24

    add-int v35, v38, v9

    .line 7618
    .local v35, "scrollBy":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_4

    const/16 v38, 0x1

    :goto_2
    const/16 v41, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v35

    move/from16 v2, v40

    move/from16 v3, v41

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7620
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7621
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ge v0, v1, :cond_0

    .line 7622
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 7615
    .end local v9    # "extraScroll":I
    .end local v35    # "scrollBy":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v9, v0, Landroid/graphics/Rect;->bottom:I

    .restart local v9    # "extraScroll":I
    goto :goto_1

    .line 7618
    .restart local v35    # "scrollBy":I
    :cond_4
    const/16 v38, 0x0

    goto :goto_2

    .line 7628
    .end local v9    # "extraScroll":I
    .end local v18    # "lastPos":I
    .end local v20    # "lastView":Landroid/view/View;
    .end local v22    # "lastViewHeight":I
    .end local v23    # "lastViewIndex":I
    .end local v24    # "lastViewPixelsShowing":I
    .end local v25    # "lastViewTop":I
    .end local v35    # "scrollBy":I
    :pswitch_1
    const/16 v31, 0x1

    .line 7629
    .local v31, "nextViewIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 7631
    .local v6, "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-eq v12, v0, :cond_5

    const/16 v38, 0x1

    move/from16 v0, v38

    if-gt v6, v0, :cond_6

    .line 7633
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    .line 7634
    return-void

    .line 7632
    :cond_6
    add-int v38, v12, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/widget/AbsListView;->mItemCount:I

    move/from16 v39, v0

    move/from16 v0, v38

    move/from16 v1, v39

    if-ge v0, v1, :cond_5

    .line 7636
    add-int/lit8 v28, v12, 0x1

    .line 7638
    .local v28, "nextPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v28

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    .line 7640
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7641
    return-void

    .line 7644
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v29

    .line 7645
    .local v29, "nextView":Landroid/view/View;
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getHeight()I

    move-result v30

    .line 7646
    .local v30, "nextViewHeight":I
    invoke-virtual/range {v29 .. v29}, Landroid/view/View;->getTop()I

    move-result v32

    .line 7647
    .local v32, "nextViewTop":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7648
    .restart local v9    # "extraScroll":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v38, v0

    move/from16 v0, v28

    move/from16 v1, v38

    if-ge v0, v1, :cond_8

    .line 7649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    add-int v39, v30, v32

    sub-int v39, v39, v9

    const/16 v40, 0x0

    move/from16 v0, v40

    move/from16 v1, v39

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v39

    .line 7650
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x1

    .line 7649
    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7652
    move/from16 v0, v28

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 7656
    :cond_8
    move/from16 v0, v32

    if-le v0, v9, :cond_9

    .line 7657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v32, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x0

    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_0

    .line 7659
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 7666
    .end local v6    # "childCount":I
    .end local v9    # "extraScroll":I
    .end local v28    # "nextPos":I
    .end local v29    # "nextView":Landroid/view/View;
    .end local v30    # "nextViewHeight":I
    .end local v31    # "nextViewIndex":I
    .end local v32    # "nextViewTop":I
    :pswitch_2
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ne v12, v0, :cond_a

    .line 7668
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7669
    return-void

    .line 7672
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 7673
    .local v14, "firstView":Landroid/view/View;
    if-nez v14, :cond_b

    .line 7674
    return-void

    .line 7676
    :cond_b
    invoke-virtual {v14}, Landroid/view/View;->getTop()I

    move-result v15

    .line 7677
    .local v15, "firstViewTop":I
    if-lez v12, :cond_c

    .line 7678
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v39, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7680
    .restart local v9    # "extraScroll":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v39, v0

    sub-int v40, v15, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v41, v0

    .line 7681
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-le v12, v0, :cond_d

    const/16 v38, 0x1

    .line 7680
    :goto_4
    const/16 v42, 0x1

    move-object/from16 v0, v39

    move/from16 v1, v40

    move/from16 v2, v41

    move/from16 v3, v42

    move/from16 v4, v38

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7683
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7685
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-le v12, v0, :cond_0

    .line 7686
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 7678
    .end local v9    # "extraScroll":I
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v9, v0, Landroid/graphics/Rect;->top:I

    .restart local v9    # "extraScroll":I
    goto :goto_3

    .line 7681
    :cond_d
    const/16 v38, 0x0

    goto :goto_4

    .line 7692
    .end local v9    # "extraScroll":I
    .end local v14    # "firstView":Landroid/view/View;
    .end local v15    # "firstViewTop":I
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v38

    add-int/lit8 v23, v38, -0x2

    .line 7693
    .restart local v23    # "lastViewIndex":I
    if-gez v23, :cond_e

    .line 7694
    return-void

    .line 7696
    :cond_e
    add-int v18, v12, v23

    .line 7698
    .restart local v18    # "lastPos":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-ne v0, v1, :cond_f

    .line 7700
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7701
    return-void

    .line 7704
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v20

    .line 7705
    .restart local v20    # "lastView":Landroid/view/View;
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getHeight()I

    move-result v22

    .line 7706
    .restart local v22    # "lastViewHeight":I
    invoke-virtual/range {v20 .. v20}, Landroid/view/View;->getTop()I

    move-result v25

    .line 7707
    .restart local v25    # "lastViewTop":I
    sub-int v24, v26, v25

    .line 7708
    .restart local v24    # "lastViewPixelsShowing":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget-object v0, v0, Landroid/widget/AbsListView;->mListPadding:Landroid/graphics/Rect;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mExtraScroll:I

    move/from16 v39, v0

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 7709
    .restart local v9    # "extraScroll":I
    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7710
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-le v0, v1, :cond_10

    .line 7711
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v24, v9

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    .line 7712
    const/16 v42, 0x1

    .line 7711
    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 7715
    :cond_10
    sub-int v5, v26, v9

    .line 7716
    .local v5, "bottom":I
    add-int v21, v25, v22

    .line 7717
    .local v21, "lastViewBottom":I
    move/from16 v0, v21

    if-le v5, v0, :cond_11

    .line 7718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v5, v21

    move/from16 v0, v39

    neg-int v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v40, v0

    const/16 v41, 0x1

    const/16 v42, 0x0

    invoke-virtual/range {v38 .. v42}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_0

    .line 7720
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->reportScrollStateChange(I)V

    goto/16 :goto_0

    .line 7727
    .end local v5    # "bottom":I
    .end local v9    # "extraScroll":I
    .end local v18    # "lastPos":I
    .end local v20    # "lastView":Landroid/view/View;
    .end local v21    # "lastViewBottom":I
    .end local v22    # "lastViewHeight":I
    .end local v23    # "lastViewIndex":I
    .end local v24    # "lastViewPixelsShowing":I
    .end local v25    # "lastViewTop":I
    :pswitch_4
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ne v0, v12, :cond_12

    .line 7729
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7730
    return-void

    .line 7733
    :cond_12
    move-object/from16 v0, p0

    iput v12, v0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7735
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v6

    .line 7736
    .restart local v6    # "childCount":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    move/from16 v33, v0

    .line 7737
    .local v33, "position":I
    add-int v38, v12, v6

    add-int/lit8 v18, v38, -0x1

    .line 7741
    .restart local v18    # "lastPos":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    .line 7742
    .local v10, "firstChild":Landroid/view/View;
    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v11

    .line 7743
    .local v11, "firstChildHeight":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    add-int/lit8 v39, v6, -0x1

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 7744
    .local v16, "lastChild":Landroid/view/View;
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getHeight()I

    move-result v17

    .line 7745
    .local v17, "lastChildHeight":I
    int-to-float v0, v11

    move/from16 v38, v0

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-nez v38, :cond_14

    const/high16 v13, 0x3f800000    # 1.0f

    .line 7747
    .local v13, "firstPositionVisiblePart":F
    :goto_5
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v38, v0

    const/16 v39, 0x0

    cmpl-float v38, v38, v39

    if-nez v38, :cond_15

    const/high16 v19, 0x3f800000    # 1.0f

    .line 7751
    .local v19, "lastPositionVisiblePart":F
    :goto_6
    const/16 v37, 0x0

    .line 7752
    .local v37, "viewTravelCount":F
    move/from16 v0, v33

    if-ge v0, v12, :cond_16

    .line 7753
    sub-int v38, v12, v33

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v13

    add-float v38, v38, v39

    const/high16 v39, 0x3f800000    # 1.0f

    add-float v37, v38, v39

    .line 7759
    :cond_13
    :goto_7
    int-to-float v0, v6

    move/from16 v38, v0

    div-float v34, v37, v38

    .line 7761
    .local v34, "screenTravelCount":F
    invoke-static/range {v34 .. v34}, Ljava/lang/Math;->abs(F)F

    move-result v38

    const/high16 v39, 0x3f800000    # 1.0f

    invoke-static/range {v38 .. v39}, Ljava/lang/Math;->min(FF)F

    move-result v27

    .line 7762
    .local v27, "modifier":F
    move/from16 v0, v33

    if-ge v0, v12, :cond_17

    .line 7763
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v38

    move/from16 v0, v38

    neg-int v0, v0

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v7, v0

    .line 7764
    .local v7, "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v8, v0

    .line 7765
    .local v8, "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7766
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 7746
    .end local v7    # "distance":I
    .end local v8    # "duration":I
    .end local v13    # "firstPositionVisiblePart":F
    .end local v19    # "lastPositionVisiblePart":F
    .end local v27    # "modifier":F
    .end local v34    # "screenTravelCount":F
    .end local v37    # "viewTravelCount":F
    :cond_14
    invoke-virtual {v10}, Landroid/view/View;->getTop()I

    move-result v38

    add-int v38, v38, v11

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    int-to-float v0, v11

    move/from16 v39, v0

    div-float v13, v38, v39

    .restart local v13    # "firstPositionVisiblePart":F
    goto/16 :goto_5

    .line 7748
    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v38

    add-int v38, v38, v17

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getBottom()I

    move-result v39

    sub-int v38, v38, v39

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    .line 7749
    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v39, v0

    .line 7748
    div-float v19, v38, v39

    .restart local v19    # "lastPositionVisiblePart":F
    goto/16 :goto_6

    .line 7754
    .restart local v37    # "viewTravelCount":F
    :cond_16
    move/from16 v0, v33

    move/from16 v1, v18

    if-le v0, v1, :cond_13

    .line 7755
    sub-int v38, v33, v18

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    const/high16 v39, 0x3f800000    # 1.0f

    sub-float v39, v39, v19

    add-float v37, v38, v39

    goto/16 :goto_7

    .line 7767
    .restart local v27    # "modifier":F
    .restart local v34    # "screenTravelCount":F
    :cond_17
    move/from16 v0, v33

    move/from16 v1, v18

    if-le v0, v1, :cond_18

    .line 7768
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Landroid/widget/AbsListView;->getHeight()I

    move-result v38

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v7, v0

    .line 7769
    .restart local v7    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    mul-float v38, v38, v27

    move/from16 v0, v38

    float-to-int v8, v0

    .line 7770
    .restart local v8    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    const/16 v40, 0x1

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7771
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 7774
    .end local v7    # "distance":I
    .end local v8    # "duration":I
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    sub-int v39, v33, v12

    invoke-virtual/range {v38 .. v39}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Landroid/view/View;->getTop()I

    move-result v36

    .line 7775
    .local v36, "targetTop":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    move/from16 v38, v0

    sub-int v7, v36, v38

    .line 7776
    .restart local v7    # "distance":I
    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    move/from16 v38, v0

    move/from16 v0, v38

    int-to-float v0, v0

    move/from16 v38, v0

    .line 7777
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v39

    move/from16 v0, v39

    int-to-float v0, v0

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v40, v0

    invoke-virtual/range {v40 .. v40}, Landroid/widget/AbsListView;->getHeight()I

    move-result v40

    move/from16 v0, v40

    int-to-float v0, v0

    move/from16 v40, v0

    div-float v39, v39, v40

    .line 7776
    mul-float v38, v38, v39

    move/from16 v0, v38

    float-to-int v8, v0

    .line 7778
    .restart local v8    # "duration":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    move-object/from16 v38, v0

    const/16 v39, 0x1

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move/from16 v2, v40

    invoke-virtual {v0, v7, v8, v1, v2}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    goto/16 :goto_0

    .line 7595
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public start(I)V
    .locals 9
    .param p1, "position"    # I

    .prologue
    const/16 v8, 0xc8

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 7348
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7350
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v5, v5, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v5, :cond_0

    .line 7352
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v6, Landroid/widget/AbsListView$PositionScroller$1;

    invoke-direct {v6, p0, p1}, Landroid/widget/AbsListView$PositionScroller$1;-><init>(Landroid/widget/AbsListView$PositionScroller;I)V

    iput-object v6, v5, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7357
    return-void

    .line 7360
    :cond_0
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7361
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7363
    return-void

    .line 7366
    :cond_1
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v2, v5, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7367
    .local v2, "firstPos":I
    add-int v5, v2, v0

    add-int/lit8 v3, v5, -0x1

    .line 7370
    .local v3, "lastPos":I
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5}, Landroid/widget/AbsListView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, p1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 7371
    .local v1, "clampedPosition":I
    if-ge v1, v2, :cond_2

    .line 7372
    sub-int v5, v2, v1

    add-int/lit8 v4, v5, 0x1

    .line 7373
    .local v4, "viewTravelCount":I
    const/4 v5, 0x2

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7382
    :goto_0
    if-lez v4, :cond_4

    .line 7383
    div-int v5, v8, v4

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7387
    :goto_1
    iput v1, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7388
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7389
    iput v6, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7391
    iget-object v5, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v5, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7392
    return-void

    .line 7374
    .end local v4    # "viewTravelCount":I
    :cond_2
    if-le v1, v3, :cond_3

    .line 7375
    sub-int v5, v1, v3

    add-int/lit8 v4, v5, 0x1

    .line 7376
    .restart local v4    # "viewTravelCount":I
    const/4 v5, 0x1

    iput v5, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7378
    .end local v4    # "viewTravelCount":I
    :cond_3
    invoke-direct {p0, v1, v6, v8}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7379
    return-void

    .line 7385
    .restart local v4    # "viewTravelCount":I
    :cond_4
    iput v8, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method public start(II)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "boundPosition"    # I

    .prologue
    .line 7396
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7398
    const/4 v9, -0x1

    if-ne p2, v9, :cond_0

    .line 7399
    invoke-virtual {p0, p1}, Landroid/widget/AbsListView$PositionScroller;->start(I)V

    .line 7400
    return-void

    .line 7403
    :cond_0
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v9, v9, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v9, :cond_1

    .line 7405
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v10, Landroid/widget/AbsListView$PositionScroller$2;

    invoke-direct {v10, p0, p1, p2}, Landroid/widget/AbsListView$PositionScroller$2;-><init>(Landroid/widget/AbsListView$PositionScroller;II)V

    iput-object v10, v9, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7410
    return-void

    .line 7413
    :cond_1
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v3

    .line 7414
    .local v3, "childCount":I
    if-nez v3, :cond_2

    .line 7416
    return-void

    .line 7419
    :cond_2
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v5, v9, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7420
    .local v5, "firstPos":I
    add-int v9, v5, v3

    add-int/lit8 v6, v9, -0x1

    .line 7423
    .local v6, "lastPos":I
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9}, Landroid/widget/AbsListView;->getCount()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9, p1}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 7424
    .local v4, "clampedPosition":I
    if-ge v4, v5, :cond_5

    .line 7425
    sub-int v1, v6, p2

    .line 7426
    .local v1, "boundPosFromLast":I
    const/4 v9, 0x1

    if-ge v1, v9, :cond_3

    .line 7428
    return-void

    .line 7431
    :cond_3
    sub-int v9, v5, v4

    add-int/lit8 v7, v9, 0x1

    .line 7432
    .local v7, "posTravel":I
    add-int/lit8 v2, v1, -0x1

    .line 7433
    .local v2, "boundTravel":I
    if-ge v2, v7, :cond_4

    .line 7434
    move v8, v2

    .line 7435
    .local v8, "viewTravelCount":I
    const/4 v9, 0x4

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7461
    .end local v1    # "boundPosFromLast":I
    :goto_0
    if-lez v8, :cond_9

    .line 7462
    const/16 v9, 0xc8

    div-int/2addr v9, v8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7466
    :goto_1
    iput v4, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7467
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7468
    const/4 v9, -0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7470
    iget-object v9, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v9, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7471
    return-void

    .line 7437
    .end local v8    # "viewTravelCount":I
    .restart local v1    # "boundPosFromLast":I
    :cond_4
    move v8, v7

    .line 7438
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x2

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7440
    .end local v1    # "boundPosFromLast":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_5
    if-le v4, v6, :cond_8

    .line 7441
    sub-int v0, p2, v5

    .line 7442
    .local v0, "boundPosFromFirst":I
    const/4 v9, 0x1

    if-ge v0, v9, :cond_6

    .line 7444
    return-void

    .line 7447
    :cond_6
    sub-int v9, v4, v6

    add-int/lit8 v7, v9, 0x1

    .line 7448
    .restart local v7    # "posTravel":I
    add-int/lit8 v2, v0, -0x1

    .line 7449
    .restart local v2    # "boundTravel":I
    if-ge v2, v7, :cond_7

    .line 7450
    move v8, v2

    .line 7451
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x3

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7453
    .end local v8    # "viewTravelCount":I
    :cond_7
    move v8, v7

    .line 7454
    .restart local v8    # "viewTravelCount":I
    const/4 v9, 0x1

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    goto :goto_0

    .line 7457
    .end local v0    # "boundPosFromFirst":I
    .end local v2    # "boundTravel":I
    .end local v7    # "posTravel":I
    .end local v8    # "viewTravelCount":I
    :cond_8
    const/16 v9, 0xc8

    invoke-direct {p0, v4, p2, v9}, Landroid/widget/AbsListView$PositionScroller;->scrollToVisible(III)V

    .line 7458
    return-void

    .line 7464
    .restart local v2    # "boundTravel":I
    .restart local v7    # "posTravel":I
    .restart local v8    # "viewTravelCount":I
    :cond_9
    const/16 v9, 0xc8

    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    goto :goto_1
.end method

.method public startWithOffset(II)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "offset"    # I

    .prologue
    .line 7475
    const/16 v0, 0xc8

    invoke-virtual {p0, p1, p2, v0}, Landroid/widget/AbsListView$PositionScroller;->startWithOffset(III)V

    .line 7476
    return-void
.end method

.method public startWithOffset(III)V
    .locals 11
    .param p1, "position"    # I
    .param p2, "offset"    # I
    .param p3, "duration"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 7480
    invoke-virtual {p0}, Landroid/widget/AbsListView$PositionScroller;->stop()V

    .line 7482
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget-boolean v7, v7, Landroid/widget/AbsListView;->mDataChanged:Z

    if-eqz v7, :cond_0

    .line 7484
    move v3, p2

    .line 7485
    .local v3, "postOffset":I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    new-instance v8, Landroid/widget/AbsListView$PositionScroller$3;

    invoke-direct {v8, p0, p1, p2, p3}, Landroid/widget/AbsListView$PositionScroller$3;-><init>(Landroid/widget/AbsListView$PositionScroller;III)V

    iput-object v8, v7, Landroid/widget/AbsListView;->mPositionScrollAfterLayout:Ljava/lang/Runnable;

    .line 7490
    return-void

    .line 7493
    .end local v3    # "postOffset":I
    :cond_0
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getChildCount()I

    move-result v0

    .line 7494
    .local v0, "childCount":I
    if-nez v0, :cond_1

    .line 7496
    return-void

    .line 7499
    :cond_1
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getPaddingTop()I

    move-result v7

    add-int/2addr p2, v7

    .line 7501
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7}, Landroid/widget/AbsListView;->getCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-static {v7, p1}, Ljava/lang/Math;->min(II)I

    move-result v7

    invoke-static {v10, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    .line 7502
    iput p2, p0, Landroid/widget/AbsListView$PositionScroller;->mOffsetFromTop:I

    .line 7503
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mBoundPos:I

    .line 7504
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7505
    const/4 v7, 0x5

    iput v7, p0, Landroid/widget/AbsListView$PositionScroller;->mMode:I

    .line 7507
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v1, v7, Landroid/widget/AbsListView;->mFirstPosition:I

    .line 7508
    .local v1, "firstPos":I
    add-int v7, v1, v0

    add-int/lit8 v2, v7, -0x1

    .line 7511
    .local v2, "lastPos":I
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-ge v7, v1, :cond_2

    .line 7512
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v1, v7

    .line 7523
    .local v6, "viewTravelCount":I
    :goto_0
    int-to-float v7, v6

    int-to-float v8, v0

    div-float v4, v7, v8

    .line 7524
    .local v4, "screenTravelCount":F
    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v4, v7

    if-gez v7, :cond_4

    .end local p3    # "duration":I
    :goto_1
    iput p3, p0, Landroid/widget/AbsListView$PositionScroller;->mScrollDuration:I

    .line 7526
    iput v9, p0, Landroid/widget/AbsListView$PositionScroller;->mLastSeenPos:I

    .line 7528
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v7, p0}, Landroid/widget/AbsListView;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 7529
    return-void

    .line 7513
    .end local v4    # "screenTravelCount":F
    .end local v6    # "viewTravelCount":I
    .restart local p3    # "duration":I
    :cond_2
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    if-le v7, v2, :cond_3

    .line 7514
    iget v7, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int v6, v7, v2

    .restart local v6    # "viewTravelCount":I
    goto :goto_0

    .line 7517
    .end local v6    # "viewTravelCount":I
    :cond_3
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    iget v8, p0, Landroid/widget/AbsListView$PositionScroller;->mTargetPos:I

    sub-int/2addr v8, v1

    invoke-virtual {v7, v8}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v5

    .line 7518
    .local v5, "targetTop":I
    iget-object v7, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    sub-int v8, v5, p2

    const/4 v9, 0x1

    invoke-virtual {v7, v8, p3, v9, v10}, Landroid/widget/AbsListView;->smoothScrollBy(IIZZ)V

    .line 7519
    return-void

    .line 7525
    .end local v5    # "targetTop":I
    .restart local v4    # "screenTravelCount":F
    .restart local v6    # "viewTravelCount":I
    :cond_4
    int-to-float v7, p3

    div-float/2addr v7, v4

    float-to-int p3, v7

    goto :goto_1
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 7587
    iget-object v0, p0, Landroid/widget/AbsListView$PositionScroller;->this$0:Landroid/widget/AbsListView;

    invoke-virtual {v0, p0}, Landroid/widget/AbsListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 7588
    return-void
.end method
