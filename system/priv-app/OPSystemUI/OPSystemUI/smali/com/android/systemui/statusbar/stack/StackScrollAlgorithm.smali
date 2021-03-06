.class public Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;
.super Ljava/lang/Object;
.source "StackScrollAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    }
.end annotation


# instance fields
.field private mClipNotificationScrollToTop:Z

.field private mCollapsedSize:I

.field private mIncreasedPaddingBetweenElements:I

.field private mIsExpanded:Z

.field private mPaddingBetweenElements:I

.field private mStatusBarHeight:I

.field private mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;


# direct methods
.method static synthetic -get0(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)I
    .locals 1
    .param p0, "-this"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;

    .prologue
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    return v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;-><init>(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initView(Landroid/content/Context;)V

    .line 56
    return-void
.end method

.method public static canChildBeDismissed(Landroid/view/View;)Z
    .locals 3
    .param p0, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 167
    instance-of v1, p0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v1, :cond_0

    .line 168
    return v2

    :cond_0
    move-object v0, p0

    .line 170
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 171
    .local v0, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->areGutsExposed()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    return v2

    .line 174
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v1

    return v1
.end method

.method private clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 6
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 476
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getMaxHeadsUpTranslation()F

    move-result v1

    .line 477
    .local v1, "maxHeadsUpTranslation":F
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v5

    add-float/2addr v4, v5

    .line 478
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v5

    .line 477
    add-float v2, v4, v5

    .line 479
    .local v2, "maxShelfPosition":F
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 480
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v4

    int-to-float v4, v4

    sub-float v0, v1, v4

    .line 481
    .local v0, "bottomPosition":F
    iget v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-static {v4, v0}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 482
    .local v3, "newTranslation":F
    iget v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v4, v4

    sub-float v5, v1, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v4

    float-to-int v4, v4

    iput v4, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 484
    iput v3, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 485
    return-void
.end method

.method private clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V
    .locals 3
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .param p3, "childState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    .prologue
    .line 466
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v1

    .line 467
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v2

    .line 466
    add-float/2addr v1, v2

    .line 467
    iget v2, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 466
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 468
    .local v0, "newTranslation":F
    iget v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v1, v1

    .line 469
    iget v2, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 468
    sub-float v2, v0, v2

    sub-float/2addr v1, v2

    .line 469
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getCollapsedHeight()I

    move-result v2

    int-to-float v2, v2

    .line 468
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 470
    iput v0, p3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 471
    return-void
.end method

.method private clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 4
    .param p1, "childViewState"    # Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/4 v3, 0x1

    .line 496
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v1

    .line 497
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v2

    .line 496
    sub-int v0, v1, v2

    .line 498
    .local v0, "shelfStart":I
    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 499
    iget v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v2, v0

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 500
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 501
    iput-boolean v3, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    .line 503
    :cond_0
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 504
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    int-to-float v1, v1

    iget v2, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 506
    :cond_1
    return-void
.end method

.method private getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 5
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 99
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 100
    .local v0, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 101
    iget-object v4, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/ExpandableView;

    .line 102
    .local v3, "v":Lcom/android/systemui/statusbar/ExpandableView;
    instance-of v4, v3, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v4, :cond_0

    move-object v2, v3

    .line 103
    check-cast v2, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 104
    .local v2, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;)V

    .line 100
    .end local v2    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 107
    .end local v3    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    return-void
.end method

.method private getPaddingForValue(Ljava/lang/Float;)F
    .locals 4
    .param p1, "increasedPadding"    # Ljava/lang/Float;

    .prologue
    const/4 v3, 0x0

    .line 330
    if-nez p1, :cond_0

    .line 331
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    return v0

    .line 332
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    cmpl-float v0, v0, v3

    if-ltz v0, :cond_1

    .line 334
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    .line 335
    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    int-to-float v1, v1

    .line 336
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 333
    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0

    .line 340
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v0, v0

    .line 341
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v1, v2

    .line 338
    invoke-static {v3, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v0

    return v0
.end method

.method private handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 9
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    const/4 v8, 0x0

    .line 211
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getDraggedViews()Ljava/util/ArrayList;

    move-result-object v3

    .line 212
    .local v3, "draggedViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "draggedView$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 213
    .local v1, "draggedView":Landroid/view/View;
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 214
    .local v0, "childIndex":I
    if-ltz v0, :cond_0

    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_0

    .line 215
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    add-int/lit8 v7, v0, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 216
    .local v4, "nextChild":Landroid/view/View;
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 219
    invoke-virtual {p2, v4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 222
    .local v5, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 223
    const/high16 v6, 0x3f800000    # 1.0f

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->shadowAlpha:F

    .line 224
    iput-boolean v8, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 229
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v5

    .line 231
    .restart local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v6

    iput v6, v5, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->alpha:F

    goto :goto_0

    .line 234
    .end local v0    # "childIndex":I
    .end local v1    # "draggedView":Landroid/view/View;
    .end local v4    # "nextChild":Landroid/view/View;
    .end local v5    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_2
    return-void
.end method

.method private initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 26
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 241
    const/16 v24, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getOverScrollAmount(Z)F

    move-result v5

    .line 243
    .local v5, "bottomOverScroll":F
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getScrollY()I

    move-result v21

    .line 247
    .local v21, "scrollY":I
    const/16 v24, 0x0

    move/from16 v0, v24

    move/from16 v1, v21

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v21

    .line 248
    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v24, v0

    add-float v24, v24, v5

    move/from16 v0, v24

    float-to-int v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    .line 251
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getHostView()Landroid/view/ViewGroup;

    move-result-object v12

    .line 252
    .local v12, "hostView":Landroid/view/ViewGroup;
    invoke-virtual {v12}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    .line 253
    .local v6, "childCount":I
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->clear()V

    .line 254
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->ensureCapacity(I)V

    .line 255
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljava/util/HashMap;->clear()V

    .line 256
    const/16 v17, 0x0

    .line 257
    .local v17, "notGoneIndex":I
    const/4 v15, 0x0

    .line 258
    .local v15, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v24

    if-eqz v24, :cond_2

    .line 259
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->hasPulsingNotifications()Z

    move-result v24

    if-eqz v24, :cond_1

    const/4 v11, 0x1

    .line 266
    .local v11, "firstHiddenIndex":I
    :goto_0
    const/4 v13, 0x0

    .end local v15    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .local v13, "i":I
    :goto_1
    if-ge v13, v6, :cond_b

    .line 267
    invoke-virtual {v12, v13}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lcom/android/systemui/statusbar/ExpandableView;

    .line 268
    .local v22, "v":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ExpandableView;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 269
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_3

    .line 266
    :cond_0
    :goto_2
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 259
    .end local v11    # "firstHiddenIndex":I
    .end local v13    # "i":I
    .end local v22    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v15    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_1
    const/4 v11, 0x0

    .restart local v11    # "firstHiddenIndex":I
    goto :goto_0

    .line 260
    .end local v11    # "firstHiddenIndex":I
    :cond_2
    move v11, v6

    .restart local v11    # "firstHiddenIndex":I
    goto :goto_0

    .line 272
    .end local v15    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v13    # "i":I
    .restart local v22    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_3
    if-lt v13, v11, :cond_4

    .line 274
    const/4 v15, 0x0

    .line 275
    .restart local v15    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v23

    .line 276
    .local v23, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    const/16 v24, 0x1

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 278
    .end local v15    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v23    # "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, v17

    move-object/from16 v4, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I

    move-result v17

    .line 279
    invoke-virtual/range {v22 .. v22}, Lcom/android/systemui/statusbar/ExpandableView;->getIncreasedPaddingAmount()F

    move-result v14

    .line 280
    .local v14, "increasedPadding":F
    const/16 v24, 0x0

    cmpl-float v24, v14, v24

    if-eqz v24, :cond_9

    .line 281
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 282
    if-eqz v15, :cond_6

    .line 283
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Float;

    .line 284
    .local v19, "prevValue":Ljava/lang/Float;
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v24

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v16

    .line 285
    .local v16, "newValue":F
    if-eqz v19, :cond_5

    .line 286
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v18

    .line 287
    .local v18, "prevPadding":F
    const/16 v24, 0x0

    cmpl-float v24, v14, v24

    if-lez v24, :cond_8

    .line 288
    move/from16 v0, v18

    move/from16 v1, v16

    invoke-static {v0, v1, v14}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v16

    .line 299
    .end local v18    # "prevPadding":F
    :cond_5
    :goto_3
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .end local v16    # "newValue":F
    .end local v19    # "prevValue":Ljava/lang/Float;
    :cond_6
    :goto_4
    move-object/from16 v0, v22

    instance-of v0, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    move/from16 v24, v0

    if-eqz v24, :cond_a

    move-object/from16 v20, v22

    .line 308
    check-cast v20, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 312
    .local v20, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getNotificationChildren()Ljava/util/List;

    move-result-object v10

    .line 313
    .local v10, "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v24

    if-eqz v24, :cond_a

    if-eqz v10, :cond_a

    .line 314
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, "childRow$iterator":Ljava/util/Iterator;
    :cond_7
    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_a

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 315
    .local v7, "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getVisibility()I

    move-result v24

    const/16 v25, 0x8

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_7

    .line 317
    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v9

    .line 318
    .local v9, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    move/from16 v0, v17

    iput v0, v9, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 319
    add-int/lit8 v17, v17, 0x1

    goto :goto_5

    .line 292
    .end local v7    # "childRow":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .end local v8    # "childRow$iterator":Ljava/util/Iterator;
    .end local v9    # "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v10    # "children":Ljava/util/List;, "Ljava/util/List<Lcom/android/systemui/statusbar/ExpandableNotificationRow;>;"
    .end local v20    # "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .restart local v16    # "newValue":F
    .restart local v18    # "prevPadding":F
    .restart local v19    # "prevValue":Ljava/lang/Float;
    :cond_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v24

    const/16 v25, 0x0

    cmpl-float v24, v24, v25

    if-lez v24, :cond_5

    .line 296
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Float;->floatValue()F

    move-result v24

    .line 293
    move/from16 v0, v16

    move/from16 v1, v18

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v16

    goto :goto_3

    .line 301
    .end local v16    # "newValue":F
    .end local v18    # "prevPadding":F
    .end local v19    # "prevValue":Ljava/lang/Float;
    :cond_9
    if-eqz v15, :cond_6

    .line 304
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    invoke-virtual {v0, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/Float;

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingForValue(Ljava/lang/Float;)F

    move-result v16

    .line 305
    .restart local v16    # "newValue":F
    move-object/from16 v0, p2

    iget-object v0, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->paddingMap:Ljava/util/HashMap;

    move-object/from16 v24, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v0, v15, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 324
    .end local v16    # "newValue":F
    :cond_a
    move-object/from16 v15, v22

    .local v15, "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    goto/16 :goto_2

    .line 327
    .end local v14    # "increasedPadding":F
    .end local v15    # "lastView":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v22    # "v":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_b
    return-void
.end method

.method private initConstants(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 65
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f070293

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    .line 67
    const v1, 0x7f070294

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 66
    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIncreasedPaddingBetweenElements:I

    .line 68
    const v1, 0x7f07029e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    .line 69
    const v1, 0x7f070431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mStatusBarHeight:I

    .line 70
    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    .line 71
    return-void
.end method

.method private updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 15
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 130
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isOnKeyguard()Z

    move-result v13

    if-nez v13, :cond_3

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v13

    .line 131
    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v14

    .line 130
    add-float v3, v13, v14

    .line 132
    .local v3, "drawStart":F
    :goto_0
    const/4 v10, 0x0

    .line 133
    .local v10, "previousNotificationEnd":F
    const/4 v11, 0x0

    .line 134
    .local v11, "previousNotificationStart":F
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 135
    .local v2, "childCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v2, :cond_6

    .line 136
    move-object/from16 v0, p2

    iget-object v13, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ExpandableView;

    .line 137
    .local v1, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v12

    .line 138
    .local v12, "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v13

    if-nez v13, :cond_0

    .line 139
    invoke-static {v3, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 140
    invoke-static {v3, v11}, Ljava/lang/Math;->max(FF)F

    move-result v11

    .line 142
    :cond_0
    iget v8, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 143
    .local v8, "newYTranslation":F
    iget v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v6, v13

    .line 144
    .local v6, "newHeight":F
    add-float v7, v8, v6

    .line 145
    .local v7, "newNotificationEnd":F
    instance-of v13, v1, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-eqz v13, :cond_4

    move-object v13, v1

    .line 146
    check-cast v13, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    invoke-virtual {v13}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v5

    .line 147
    :goto_2
    iget-boolean v13, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mClipNotificationScrollToTop:Z

    if-eqz v13, :cond_5

    .line 148
    iget-boolean v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->inShelf:Z

    xor-int/lit8 v13, v13, 0x1

    .line 147
    if-eqz v13, :cond_5

    .line 148
    cmpg-float v13, v8, v10

    if-gez v13, :cond_5

    .line 149
    if-eqz v5, :cond_1

    invoke-virtual/range {p3 .. p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->isShadeExpanded()Z

    move-result v13

    .line 147
    if-eqz v13, :cond_5

    .line 151
    :cond_1
    sub-float v9, v10, v8

    .line 152
    .local v9, "overlapAmount":F
    float-to-int v13, v9

    iput v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    .line 157
    .end local v9    # "overlapAmount":F
    :goto_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/ExpandableView;->isTransparent()Z

    move-result v13

    if-nez v13, :cond_2

    .line 160
    move v10, v7

    .line 161
    move v11, v8

    .line 135
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 131
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v2    # "childCount":I
    .end local v3    # "drawStart":F
    .end local v4    # "i":I
    .end local v6    # "newHeight":F
    .end local v7    # "newNotificationEnd":F
    .end local v8    # "newYTranslation":F
    .end local v10    # "previousNotificationEnd":F
    .end local v11    # "previousNotificationStart":F
    .end local v12    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "drawStart":F
    goto :goto_0

    .line 145
    .restart local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .restart local v2    # "childCount":I
    .restart local v4    # "i":I
    .restart local v6    # "newHeight":F
    .restart local v7    # "newNotificationEnd":F
    .restart local v8    # "newYTranslation":F
    .restart local v10    # "previousNotificationEnd":F
    .restart local v11    # "previousNotificationStart":F
    .restart local v12    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_4
    const/4 v5, 0x0

    .local v5, "isHeadsUp":Z
    goto :goto_2

    .line 154
    .end local v5    # "isHeadsUp":Z
    :cond_5
    const/4 v13, 0x0

    iput v13, v12, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->clipTopAmount:I

    goto :goto_3

    .line 164
    .end local v1    # "child":Lcom/android/systemui/statusbar/ExpandableView;
    .end local v6    # "newHeight":F
    .end local v7    # "newNotificationEnd":F
    .end local v8    # "newYTranslation":F
    .end local v12    # "state":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_6
    return-void
.end method

.method private updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V
    .locals 12
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDimmed()Z

    move-result v5

    .line 183
    .local v5, "dimmed":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDark()Z

    move-result v4

    .line 184
    .local v4, "dark":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->isHideSensitive()Z

    move-result v6

    .line 185
    .local v6, "hideSensitive":Z
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getActivatedChild()Lcom/android/systemui/statusbar/ActivatableNotificationView;

    move-result-object v0

    .line 186
    .local v0, "activatedChild":Landroid/view/View;
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 187
    .local v2, "childCount":I
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_0
    if-ge v7, v2, :cond_3

    .line 188
    iget-object v9, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 189
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p2, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 190
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dimmed:Z

    .line 191
    iput-boolean v4, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->dark:Z

    .line 196
    iget-boolean v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    if-nez v9, :cond_1

    move v9, v6

    .line 192
    :goto_1
    iput-boolean v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hideSensitive:Z

    .line 199
    if-ne v0, v1, :cond_2

    const/4 v8, 0x1

    .line 200
    .local v8, "isActivatedChild":Z
    :goto_2
    if-eqz v5, :cond_0

    if-eqz v8, :cond_0

    .line 201
    iget v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    mul-float/2addr v10, v11

    add-float/2addr v9, v10

    iput v9, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 187
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    .end local v8    # "isActivatedChild":Z
    :cond_1
    const/4 v9, 0x1

    goto :goto_1

    .line 199
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "isActivatedChild":Z
    goto :goto_2

    .line 204
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .end local v8    # "isActivatedChild":Z
    :cond_3
    return-void
.end method

.method private updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 12
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    const/4 v11, 0x0

    .line 417
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 418
    .local v1, "childCount":I
    const/4 v6, 0x0

    .line 419
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v3, 0x0

    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 420
    iget-object v9, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 421
    .local v0, "child":Landroid/view/View;
    instance-of v9, v0, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    if-nez v9, :cond_1

    .line 462
    .end local v0    # "child":Landroid/view/View;
    :cond_0
    return-void

    .restart local v0    # "child":Landroid/view/View;
    :cond_1
    move-object v5, v0

    .line 424
    check-cast v5, Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .line 425
    .local v5, "row":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUp()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 428
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v2

    .line 429
    .local v2, "childState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v6, :cond_2

    .line 430
    move-object v6, v5

    .line 431
    .local v6, "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    const/4 v9, 0x1

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 433
    .end local v6    # "topHeadsUpEntry":Lcom/android/systemui/statusbar/ExpandableNotificationRow;
    :cond_2
    if-ne v6, v5, :cond_7

    const/4 v4, 0x1

    .line 434
    .local v4, "isTopEntry":Z
    :goto_1
    iget v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float v8, v9, v10

    .line 435
    .local v8, "unmodifiedEndLocation":F
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_3

    .line 437
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToTop(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 438
    if-nez v3, :cond_3

    invoke-virtual {p3, v5}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 440
    invoke-direct {p0, p3, v5, v2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampHunToMaxTranslation(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/ExpandableNotificationRow;Lcom/android/systemui/statusbar/stack/ExpandableViewState;)V

    .line 441
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 444
    :cond_3
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isPinned()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 445
    iget v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    const/4 v10, 0x0

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 446
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iget v10, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 447
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 448
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v7

    .line 449
    .local v7, "topState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-nez v4, :cond_5

    iget-boolean v9, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    if-eqz v9, :cond_4

    .line 450
    iget v9, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    cmpg-float v9, v8, v9

    if-gez v9, :cond_5

    .line 453
    :cond_4
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getIntrinsicHeight()I

    move-result v9

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    .line 454
    iget v9, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    iget v10, v7, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    add-float/2addr v9, v10

    .line 455
    iget v10, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    .line 454
    sub-float/2addr v9, v10

    iput v9, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 458
    .end local v7    # "topState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_5
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->isHeadsUpAnimatingAway()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 459
    iput-boolean v11, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->hidden:Z

    .line 419
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 433
    .end local v4    # "isTopEntry":Z
    .end local v8    # "unmodifiedEndLocation":F
    :cond_7
    const/4 v4, 0x0

    .restart local v4    # "isTopEntry":Z
    goto :goto_1
.end method

.method private updateNotGoneIndex(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;ILcom/android/systemui/statusbar/ExpandableView;)I
    .locals 2
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "state"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "notGoneIndex"    # I
    .param p4, "v"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 348
    invoke-virtual {p1, p4}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v0

    .line 349
    .local v0, "viewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput p3, v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->notGoneIndex:I

    .line 350
    iget-object v1, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 351
    add-int/lit8 p3, p3, 0x1

    .line 352
    return p3
.end method

.method private updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 366
    iget v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->scrollY:I

    neg-int v0, v0

    int-to-float v5, v0

    .line 367
    .local v5, "currentYPosition":F
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 368
    .local v6, "childCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v6, :cond_0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 369
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F

    move-result v5

    .line 368
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 372
    :cond_0
    return-void
.end method

.method private updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 1
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 124
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v0

    .line 125
    .local v0, "shelf":Lcom/android/systemui/statusbar/NotificationShelf;
    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/NotificationShelf;->updateState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 126
    return-void
.end method

.method private updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 6
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 111
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 112
    .local v2, "childCount":I
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/stack/AmbientState;->getSpeedBumpIndex()I

    move-result v0

    .line 113
    .local v0, "belowSpeedBump":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v2, :cond_1

    .line 114
    iget-object v5, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 115
    .local v1, "child":Landroid/view/View;
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 119
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    if-lt v4, v0, :cond_0

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->belowSpeedBump:Z

    .line 113
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 119
    :cond_0
    const/4 v5, 0x0

    goto :goto_1

    .line 122
    .end local v1    # "child":Landroid/view/View;
    .end local v3    # "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    :cond_1
    return-void
.end method

.method private updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V
    .locals 7
    .param p1, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p2, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p3, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 525
    iget-object v0, p2, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 526
    .local v6, "childCount":I
    const/4 v2, 0x0

    .line 527
    .local v2, "childrenOnTop":F
    add-int/lit8 v1, v6, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    .line 528
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F

    move-result v2

    .line 527
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 531
    :cond_0
    return-void
.end method


# virtual methods
.method protected getMaxAllowedChildHeight(Landroid/view/View;)I
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 509
    instance-of v1, p1, Lcom/android/systemui/statusbar/ExpandableView;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 510
    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 511
    .local v0, "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v1

    return v1

    .line 513
    .end local v0    # "expandableView":Lcom/android/systemui/statusbar/ExpandableView;
    :cond_0
    if-nez p1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mCollapsedSize:I

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    goto :goto_0
.end method

.method protected getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I
    .locals 1
    .param p1, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p2, "child"    # Lcom/android/systemui/statusbar/ExpandableView;

    .prologue
    .line 412
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->getPaddingAfterChild(Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v0

    return v0
.end method

.method public getStackScrollState(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;)V
    .locals 1
    .param p1, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mTempAlgorithmState:Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;

    .line 79
    .local v0, "algorithmState":Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->resetViewStates()V

    .line 81
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initAlgorithmState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 83
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updatePositionsForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 85
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateZValuesForState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 87
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateHeadsUpStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 89
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->handleDraggedViews(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 90
    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateDimmedActivatedHideSensitive(Lcom/android/systemui/statusbar/stack/AmbientState;Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 91
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateClipping(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 92
    invoke-direct {p0, p2, v0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateSpeedBumpState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 93
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->updateShelfState(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    .line 94
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getNotificationChildrenStates(Lcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;)V

    .line 95
    return-void
.end method

.method public initView(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->initConstants(Landroid/content/Context;)V

    .line 60
    return-void
.end method

.method public setIsExpanded(Z)V
    .locals 0
    .param p1, "isExpanded"    # Z

    .prologue
    .line 575
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mIsExpanded:Z

    .line 576
    return-void
.end method

.method protected updateChild(ILcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;F)F
    .locals 9
    .param p1, "i"    # I
    .param p2, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p3, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p4, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;
    .param p5, "currentYPosition"    # F

    .prologue
    const/4 v7, 0x0

    .line 377
    iget-object v6, p3, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v6, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ExpandableView;

    .line 378
    .local v0, "child":Lcom/android/systemui/statusbar/ExpandableView;
    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v2

    .line 379
    .local v2, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    iput v7, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 380
    invoke-virtual {p0, p3, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getPaddingAfterChild(Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/ExpandableView;)I

    move-result v5

    .line 381
    .local v5, "paddingAfterChild":I
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->getMaxAllowedChildHeight(Landroid/view/View;)I

    move-result v1

    .line 382
    .local v1, "childHeight":I
    iput p5, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 383
    instance-of v3, v0, Lcom/android/systemui/statusbar/DismissView;

    .line 384
    .local v3, "isDismissView":Z
    instance-of v4, v0, Lcom/android/systemui/statusbar/EmptyShadeView;

    .line 386
    .local v4, "isEmptyShadeView":Z
    const/4 v6, 0x4

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 387
    if-eqz v3, :cond_2

    .line 388
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 389
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v7

    sub-int/2addr v7, v1

    int-to-float v7, v7

    .line 388
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 397
    :goto_0
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    int-to-float v7, v1

    add-float/2addr v6, v7

    int-to-float v7, v5

    add-float p5, v6, v7

    .line 398
    const/4 v6, 0x0

    cmpg-float v6, p5, v6

    if-gtz v6, :cond_0

    .line 399
    const/4 v6, 0x2

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    .line 401
    :cond_0
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->location:I

    if-nez v6, :cond_1

    .line 402
    const-string/jumbo v6, "StackScrollAlgorithm"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Failed to assign location for child "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    :cond_1
    iget v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v7

    .line 406
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v8

    .line 405
    add-float/2addr v7, v8

    add-float/2addr v6, v7

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 407
    return p5

    .line 390
    :cond_2
    if-eqz v4, :cond_3

    .line 391
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v6

    sub-int/2addr v6, v1

    int-to-float v6, v6

    .line 392
    invoke-virtual {p4}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v7

    const/high16 v8, 0x3e800000    # 0.25f

    mul-float/2addr v7, v8

    .line 391
    add-float/2addr v6, v7

    iput v6, v2, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    goto :goto_0

    .line 394
    :cond_3
    invoke-direct {p0, v2, p4}, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->clampPositionToShelf(Lcom/android/systemui/statusbar/stack/ExpandableViewState;Lcom/android/systemui/statusbar/stack/AmbientState;)V

    goto :goto_0
.end method

.method protected updateChildZValue(IFLcom/android/systemui/statusbar/stack/StackScrollState;Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;Lcom/android/systemui/statusbar/stack/AmbientState;)F
    .locals 13
    .param p1, "i"    # I
    .param p2, "childrenOnTop"    # F
    .param p3, "resultState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;
    .param p4, "algorithmState"    # Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;
    .param p5, "ambientState"    # Lcom/android/systemui/statusbar/stack/AmbientState;

    .prologue
    .line 536
    move-object/from16 v0, p4

    iget-object v10, v0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm$StackScrollAlgorithmState;->visibleChildren:Ljava/util/ArrayList;

    invoke-virtual {v10, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/ExpandableView;

    .line 537
    .local v2, "child":Lcom/android/systemui/statusbar/ExpandableView;
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/StackScrollState;->getViewStateForView(Landroid/view/View;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    move-result-object v3

    .line 538
    .local v3, "childViewState":Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getZDistanceBetweenElements()I

    move-result v9

    .line 539
    .local v9, "zDistanceBetweenElements":I
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getBaseZHeight()I

    move-result v10

    int-to-float v1, v10

    .line 540
    .local v1, "baseZ":F
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->mustStayOnScreen()Z

    move-result v10

    if-eqz v10, :cond_1

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isDozingAndNotPulsing(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v10

    xor-int/lit8 v10, v10, 0x1

    if-eqz v10, :cond_1

    .line 541
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    .line 542
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v12

    .line 541
    add-float/2addr v11, v12

    cmpg-float v10, v10, v11

    if-gez v10, :cond_1

    .line 543
    const/4 v10, 0x0

    cmpl-float v10, p2, v10

    if-eqz v10, :cond_0

    .line 544
    const/high16 v10, 0x3f800000    # 1.0f

    add-float/2addr p2, v10

    .line 551
    :goto_0
    int-to-float v10, v9

    mul-float/2addr v10, p2

    .line 550
    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    .line 571
    :goto_1
    return p2

    .line 546
    :cond_0
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v10

    .line 547
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    .line 546
    add-float/2addr v10, v11

    .line 547
    iget v11, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    .line 546
    sub-float v6, v10, v11

    .line 548
    .local v6, "overlap":F
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->height:I

    int-to-float v10, v10

    div-float v10, v6, v10

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    move-result v10

    add-float/2addr p2, v10

    goto :goto_0

    .line 552
    .end local v6    # "overlap":F
    :cond_1
    if-nez p1, :cond_3

    move-object/from16 v0, p5

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/stack/AmbientState;->isAboveShelf(Lcom/android/systemui/statusbar/ExpandableView;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 555
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getShelf()Lcom/android/systemui/statusbar/NotificationShelf;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/NotificationShelf;->getIntrinsicHeight()I

    move-result v7

    .line 556
    .local v7, "shelfHeight":I
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getInnerHeight()I

    move-result v10

    sub-int/2addr v10, v7

    int-to-float v10, v10

    .line 557
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getTopPadding()F

    move-result v11

    .line 556
    add-float/2addr v10, v11

    .line 558
    invoke-virtual/range {p5 .. p5}, Lcom/android/systemui/statusbar/stack/AmbientState;->getStackTranslation()F

    move-result v11

    .line 556
    add-float v8, v10, v11

    .line 559
    .local v8, "shelfStart":F
    iget v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->yTranslation:F

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/ExpandableView;->getPinnedHeadsUpHeight()I

    move-result v11

    int-to-float v11, v11

    add-float/2addr v10, v11

    .line 560
    iget v11, p0, Lcom/android/systemui/statusbar/stack/StackScrollAlgorithm;->mPaddingBetweenElements:I

    int-to-float v11, v11

    .line 559
    add-float v5, v10, v11

    .line 561
    .local v5, "notificationEnd":F
    cmpl-float v10, v8, v5

    if-lez v10, :cond_2

    .line 562
    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    .line 564
    :cond_2
    sub-float v10, v5, v8

    int-to-float v11, v7

    div-float v4, v10, v11

    .line 565
    .local v4, "factor":F
    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v4, v10}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 566
    int-to-float v10, v9

    mul-float/2addr v10, v4

    add-float/2addr v10, v1

    iput v10, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1

    .line 569
    .end local v4    # "factor":F
    .end local v5    # "notificationEnd":F
    .end local v7    # "shelfHeight":I
    .end local v8    # "shelfStart":F
    :cond_3
    iput v1, v3, Lcom/android/systemui/statusbar/stack/ExpandableViewState;->zTranslation:F

    goto :goto_1
.end method
