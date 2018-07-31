.class public abstract Lcom/android/systemui/statusbar/ExpandableView;
.super Landroid/widget/FrameLayout;
.source "ExpandableView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static mClipRect:Landroid/graphics/Rect;


# instance fields
.field private mActualHeight:I

.field private mChangingPosition:Z

.field protected mClipBottomAmount:I

.field private mClipToActualHeight:Z

.field protected mClipTopAmount:I

.field private mDark:Z

.field private mInShelf:Z

.field private mMatchParentViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mMinClipTopAmount:I

.field protected mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

.field private mTransformingInShelf:Z

.field private mTransientContainer:Landroid/view/ViewGroup;

.field private mWillBeGone:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    .line 46
    iput v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 48
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 55
    return-void
.end method

.method private updateClipping()V
    .locals 5

    .prologue
    .line 367
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    if-eqz v1, :cond_0

    .line 368
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v0

    .line 369
    .local v0, "top":I
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getExtraBottomPadding()I

    move-result v4

    add-int/2addr v3, v4

    .line 370
    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    .line 369
    sub-int/2addr v3, v4

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v0, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 371
    sget-object v1, Lcom/android/systemui/statusbar/ExpandableView;->mClipRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    .line 375
    .end local v0    # "top":I
    :goto_0
    return-void

    .line 373
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ExpandableView;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0
.end method


# virtual methods
.method public areChildrenExpanded()Z
    .locals 1

    .prologue
    .line 363
    const/4 v0, 0x0

    return v0
.end method

.method public createNewViewState(Lcom/android/systemui/statusbar/stack/StackScrollState;)Lcom/android/systemui/statusbar/stack/ExpandableViewState;
    .locals 1
    .param p1, "stackScrollState"    # Lcom/android/systemui/statusbar/stack/StackScrollState;

    .prologue
    .line 484
    new-instance v0, Lcom/android/systemui/statusbar/stack/ExpandableViewState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/stack/ExpandableViewState;-><init>()V

    return-object v0
.end method

.method public getActualHeight()I
    .locals 1

    .prologue
    .line 143
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    return v0
.end method

.method public getBoundsOnScreen(Landroid/graphics/Rect;Z)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "clipToParent"    # Z

    .prologue
    .line 349
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->getBoundsOnScreen(Landroid/graphics/Rect;Z)V

    .line 350
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 352
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 354
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 355
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 356
    return-void
.end method

.method public getClipBottomAmount()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    return v0
.end method

.method public getClipTopAmount()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    return v0
.end method

.method public getCollapsedHeight()I
    .locals 1

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getDrawingRect(Landroid/graphics/Rect;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;

    .prologue
    .line 340
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 341
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    .line 342
    iget v0, p1, Landroid/graphics/Rect;->right:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->right:I

    .line 343
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    add-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 344
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationY()F

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getClipTopAmount()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->top:I

    .line 345
    return-void
.end method

.method public getExtraBottomPadding()I
    .locals 1

    .prologue
    .line 463
    const/4 v0, 0x0

    return v0
.end method

.method public getIncreasedPaddingAmount()F
    .locals 1

    .prologue
    .line 424
    const/4 v0, 0x0

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMaxContentHeight()I
    .locals 1

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getMinHeight()I
    .locals 1

    .prologue
    .line 158
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->getMinHeight(Z)I

    move-result v0

    return v0
.end method

.method public getMinHeight(Z)I
    .locals 1
    .param p1, "ignoreTemporaryStates"    # Z

    .prologue
    .line 169
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v0

    return v0
.end method

.method public getOutlineAlpha()F
    .locals 1

    .prologue
    .line 436
    const/4 v0, 0x0

    return v0
.end method

.method public getOutlineTranslation()I
    .locals 1

    .prologue
    .line 440
    const/4 v0, 0x0

    return v0
.end method

.method public getPinnedHeadsUpHeight()I
    .locals 1

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getShadowAlpha()F
    .locals 1

    .prologue
    .line 412
    const/4 v0, 0x0

    return v0
.end method

.method public getTransientContainer()Landroid/view/ViewGroup;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public getTranslation()F
    .locals 1

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getTranslationX()F

    move-result v0

    return v0
.end method

.method public hasNoContentHeight()Z
    .locals 1

    .prologue
    .line 493
    const/4 v0, 0x0

    return v0
.end method

.method public hasOverlappingRendering()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 408
    invoke-super {p0}, Landroid/widget/FrameLayout;->hasOverlappingRendering()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getActualHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isAboveShelf()Z
    .locals 1

    .prologue
    .line 520
    const/4 v0, 0x0

    return v0
.end method

.method public isChangingPosition()Z
    .locals 1

    .prologue
    .line 448
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    return v0
.end method

.method public isChildInGroup()Z
    .locals 1

    .prologue
    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public isContentExpandable()Z
    .locals 1

    .prologue
    .line 268
    const/4 v0, 0x0

    return v0
.end method

.method public isDark()Z
    .locals 1

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    return v0
.end method

.method public isGroupExpanded()Z
    .locals 1

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method public isGroupExpansionChanging()Z
    .locals 1

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method public isInShelf()Z
    .locals 1

    .prologue
    .line 504
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    return v0
.end method

.method public isSummaryWithChildren()Z
    .locals 1

    .prologue
    .line 359
    const/4 v0, 0x0

    return v0
.end method

.method public isTransformingIntoShelf()Z
    .locals 1

    .prologue
    .line 516
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    return v0
.end method

.method public isTransparent()Z
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x0

    return v0
.end method

.method public mustStayOnScreen()Z
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x0

    return v0
.end method

.method public notifyHeightChanged(Z)V
    .locals 1
    .param p1, "needsAnimation"    # Z

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0, p1}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onHeightChanged(Lcom/android/systemui/statusbar/ExpandableView;Z)V

    .line 275
    :cond_0
    return-void
.end method

.method public onHeightReset()V
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;->onReset(Lcom/android/systemui/statusbar/ExpandableView;)V

    .line 327
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 106
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 107
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 108
    return-void
.end method

.method protected onMeasure(II)V
    .locals 19
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 59
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    .line 60
    .local v8, "givenSize":I
    const v15, 0x7fffffff

    .line 61
    .local v15, "ownMaxHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v9

    .line 62
    .local v9, "heightMode":I
    if-eqz v9, :cond_0

    if-eqz v8, :cond_0

    .line 63
    invoke-static {v8, v15}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 65
    :cond_0
    const/high16 v17, -0x80000000

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 66
    .local v13, "newHeightSpec":I
    const/4 v12, 0x0

    .line 67
    .local v12, "maxChildHeight":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/ExpandableView;->getChildCount()I

    move-result v5

    .line 68
    .local v5, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v5, :cond_5

    .line 69
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Lcom/android/systemui/statusbar/ExpandableView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 70
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v17

    const/16 v18, 0x8

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    .line 68
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 73
    :cond_1
    move v7, v13

    .line 74
    .local v7, "childHeightSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v11

    .line 75
    .local v11, "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/16 v18, -0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 76
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    if-ltz v17, :cond_2

    .line 78
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    move/from16 v0, v17

    if-le v0, v15, :cond_3

    .line 79
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v15, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 83
    :cond_2
    :goto_2
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    .line 82
    move/from16 v0, v17

    invoke-virtual {v3, v0, v7}, Landroid/view/View;->measure(II)V

    .line 85
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 86
    .local v6, "childHeight":I
    invoke-static {v12, v6}, Ljava/lang/Math;->max(II)I

    move-result v12

    goto :goto_1

    .line 80
    .end local v6    # "childHeight":I
    :cond_3
    iget v0, v11, Landroid/view/ViewGroup$LayoutParams;->height:I

    move/from16 v17, v0

    const/high16 v18, 0x40000000    # 2.0f

    invoke-static/range {v17 .. v18}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    goto :goto_2

    .line 88
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 91
    .end local v3    # "child":Landroid/view/View;
    .end local v7    # "childHeightSpec":I
    .end local v11    # "layoutParams":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    if-ne v9, v0, :cond_6

    .line 92
    move v14, v8

    .line 93
    .local v14, "ownHeight":I
    :goto_3
    const/high16 v17, 0x40000000    # 2.0f

    move/from16 v0, v17

    invoke-static {v14, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v13

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "child$iterator":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    .line 96
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v17

    move-object/from16 v0, v17

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    move/from16 v17, v0

    const/16 v18, 0x0

    .line 95
    move/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v17

    invoke-static {v0, v1, v2}, Lcom/android/systemui/statusbar/ExpandableView;->getChildMeasureSpec(III)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v3, v0, v13}, Landroid/view/View;->measure(II)V

    goto :goto_4

    .line 92
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "child$iterator":Ljava/util/Iterator;
    .end local v14    # "ownHeight":I
    :cond_6
    invoke-static {v15, v12}, Ljava/lang/Math;->min(II)I

    move-result v14

    .restart local v14    # "ownHeight":I
    goto :goto_3

    .line 99
    .restart local v4    # "child$iterator":Ljava/util/Iterator;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/ExpandableView;->mMatchParentViews:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 100
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v16

    .line 101
    .local v16, "width":I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1, v14}, Lcom/android/systemui/statusbar/ExpandableView;->setMeasuredDimension(II)V

    .line 102
    return-void
.end method

.method public abstract performAddAnimation(JJ)V
.end method

.method public abstract performRemoveAnimation(JFLjava/lang/Runnable;)V
.end method

.method public pointInView(FFF)Z
    .locals 5
    .param p1, "localX"    # F
    .param p2, "localY"    # F
    .param p3, "slop"    # F

    .prologue
    const/4 v2, 0x0

    .line 112
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    int-to-float v1, v3

    .line 113
    .local v1, "top":F
    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    int-to-float v0, v3

    .line 114
    .local v0, "bottom":F
    neg-float v3, p3

    cmpl-float v3, p1, v3

    if-ltz v3, :cond_0

    sub-float v3, v1, p3

    cmpl-float v3, p2, v3

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/ExpandableView;->mRight:I

    iget v4, p0, Lcom/android/systemui/statusbar/ExpandableView;->mLeft:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    add-float/2addr v3, p3

    cmpg-float v3, p1, v3

    if-gez v3, :cond_0

    .line 115
    add-float v3, v0, p3

    cmpg-float v3, p2, v3

    if-gez v3, :cond_0

    const/4 v2, 0x1

    .line 114
    :cond_0
    return v2
.end method

.method public setActualHeight(I)V
    .locals 1
    .param p1, "actualHeight"    # I

    .prologue
    .line 134
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/ExpandableView;->setActualHeight(IZ)V

    .line 135
    return-void
.end method

.method public setActualHeight(IZ)V
    .locals 1
    .param p1, "actualHeight"    # I
    .param p2, "notifyListeners"    # Z

    .prologue
    .line 126
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mActualHeight:I

    .line 127
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 128
    if-eqz p2, :cond_0

    .line 129
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ExpandableView;->notifyHeightChanged(Z)V

    .line 131
    :cond_0
    return-void
.end method

.method public setActualHeightAnimating(Z)V
    .locals 0
    .param p1, "animating"    # Z

    .prologue
    .line 481
    return-void
.end method

.method public setBelowSpeedBump(Z)V
    .locals 0
    .param p1, "below"    # Z

    .prologue
    .line 302
    return-void
.end method

.method public setChangingPosition(Z)V
    .locals 0
    .param p1, "changingPosition"    # Z

    .prologue
    .line 444
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mChangingPosition:Z

    .line 445
    return-void
.end method

.method public setClipBottomAmount(I)V
    .locals 0
    .param p1, "clipBottomAmount"    # I

    .prologue
    .line 248
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipBottomAmount:I

    .line 249
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 250
    return-void
.end method

.method public setClipToActualHeight(Z)V
    .locals 0
    .param p1, "clipToActualHeight"    # Z

    .prologue
    .line 378
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipToActualHeight:Z

    .line 379
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 380
    return-void
.end method

.method public setClipTopAmount(I)V
    .locals 0
    .param p1, "clipTopAmount"    # I

    .prologue
    .line 236
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mClipTopAmount:I

    .line 237
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ExpandableView;->updateClipping()V

    .line 238
    return-void
.end method

.method public setDark(ZZJ)V
    .locals 0
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 198
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mDark:Z

    .line 199
    return-void
.end method

.method public setDimmed(ZZ)V
    .locals 0
    .param p1, "dimmed"    # Z
    .param p2, "fade"    # Z

    .prologue
    .line 188
    return-void
.end method

.method public setFakeShadowIntensity(FFII)V
    .locals 0
    .param p1, "shadowIntensity"    # F
    .param p2, "outlineAlpha"    # F
    .param p3, "shadowYEnd"    # I
    .param p4, "outlineTranslation"    # I

    .prologue
    .line 433
    return-void
.end method

.method public setHideSensitive(ZZJJ)V
    .locals 0
    .param p1, "hideSensitive"    # Z
    .param p2, "animated"    # Z
    .param p3, "delay"    # J
    .param p5, "duration"    # J

    .prologue
    .line 220
    return-void
.end method

.method public setHideSensitiveForIntrinsicHeight(Z)V
    .locals 0
    .param p1, "hideSensitive"    # Z

    .prologue
    .line 213
    return-void
.end method

.method public setInShelf(Z)V
    .locals 0
    .param p1, "inShelf"    # Z

    .prologue
    .line 500
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mInShelf:Z

    .line 501
    return-void
.end method

.method public setLayerType(ILandroid/graphics/Paint;)V
    .locals 1
    .param p1, "layerType"    # I
    .param p2, "paint"    # Landroid/graphics/Paint;

    .prologue
    .line 400
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ExpandableView;->hasOverlappingRendering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 401
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 403
    :cond_0
    return-void
.end method

.method public setMinClipTopAmount(I)V
    .locals 0
    .param p1, "minClipTopAmount"    # I

    .prologue
    .line 395
    iput p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mMinClipTopAmount:I

    .line 396
    return-void
.end method

.method public setOnHeightChangedListener(Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/ExpandableView$OnHeightChangedListener;

    .line 262
    return-void
.end method

.method public setShadowAlpha(F)V
    .locals 0
    .param p1, "shadowAlpha"    # F

    .prologue
    .line 416
    return-void
.end method

.method public setTransformingInShelf(Z)V
    .locals 0
    .param p1, "transformingInShelf"    # Z

    .prologue
    .line 512
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransformingInShelf:Z

    .line 513
    return-void
.end method

.method public setTransientContainer(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "transientContainer"    # Landroid/view/ViewGroup;

    .prologue
    .line 452
    iput-object p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mTransientContainer:Landroid/view/ViewGroup;

    .line 453
    return-void
.end method

.method public setTranslation(F)V
    .locals 0
    .param p1, "translation"    # F

    .prologue
    .line 313
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ExpandableView;->setTranslationX(F)V

    .line 314
    return-void
.end method

.method public setWillBeGone(Z)V
    .locals 0
    .param p1, "willBeGone"    # Z

    .prologue
    .line 387
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    .line 388
    return-void
.end method

.method public willBeGone()Z
    .locals 1

    .prologue
    .line 383
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ExpandableView;->mWillBeGone:Z

    return v0
.end method
