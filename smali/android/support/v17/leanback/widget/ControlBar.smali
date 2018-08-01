.class Landroid/support/v17/leanback/widget/ControlBar;
.super Landroid/widget/LinearLayout;
.source "ControlBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;
    }
.end annotation


# instance fields
.field private mChildMarginFromCenter:I

.field mDefaultFocusToMiddle:Z

.field mLastFocusIndex:I

.field private mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    .line 34
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    .line 42
    return-void
.end method


# virtual methods
.method public addFocusables(Ljava/util/ArrayList;II)V
    .locals 2
    .param p2, "direction"    # I
    .param p3, "focusableMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;II)V"
        }
    .end annotation

    .prologue
    .line 66
    .local p1, "views":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/16 v0, 0x21

    if-eq p2, v0, :cond_0

    const/16 v0, 0x82

    if-ne p2, v0, :cond_3

    .line 67
    :cond_0
    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz v0, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 68
    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_1
    :goto_0
    return-void

    .line 69
    :cond_2
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 70
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getDefaultFocusIndex()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    :cond_3
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addFocusables(Ljava/util/ArrayList;II)V

    goto :goto_0
.end method

.method getDefaultFocusIndex()I
    .locals 1

    .prologue
    .line 49
    iget-boolean v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mDefaultFocusToMiddle:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 10
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 97
    iget v8, p0, Landroid/support/v17/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    if-gtz v8, :cond_0

    .line 98
    return-void

    .line 101
    :cond_0
    const/4 v7, 0x0

    .line 102
    .local v7, "totalExtraMargin":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    if-ge v2, v8, :cond_1

    .line 103
    invoke-virtual {p0, v2}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 104
    .local v1, "first":Landroid/view/View;
    add-int/lit8 v8, v2, 0x1

    invoke-virtual {p0, v8}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 105
    .local v6, "second":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    add-int v5, v8, v9

    .line 106
    .local v5, "measuredWidth":I
    iget v8, p0, Landroid/support/v17/leanback/widget/ControlBar;->mChildMarginFromCenter:I

    div-int/lit8 v9, v5, 0x2

    sub-int v4, v8, v9

    .line 107
    .local v4, "marginStart":I
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    .local v3, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/widget/LinearLayout$LayoutParams;->getMarginStart()I

    move-result v8

    sub-int v0, v4, v8

    .line 109
    .local v0, "extraMargin":I
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 110
    invoke-virtual {v6, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 111
    add-int/2addr v7, v0

    .line 102
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 113
    .end local v0    # "extraMargin":I
    .end local v1    # "first":Landroid/view/View;
    .end local v3    # "lp":Landroid/widget/LinearLayout$LayoutParams;
    .end local v4    # "marginStart":I
    .end local v5    # "measuredWidth":I
    .end local v6    # "second":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getMeasuredWidth()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getMeasuredHeight()I

    move-result v9

    invoke-virtual {p0, v8, v9}, Landroid/support/v17/leanback/widget/ControlBar;->setMeasuredDimension(II)V

    .line 114
    return-void
.end method

.method protected onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z
    .locals 3
    .param p1, "direction"    # I
    .param p2, "previouslyFocusedRect"    # Landroid/graphics/Rect;

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    .line 55
    iget v1, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    if-ltz v1, :cond_0

    iget v1, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 56
    iget v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    .line 57
    .local v0, "index":I
    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/ControlBar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Landroid/view/View;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x1

    return v1

    .line 56
    .end local v0    # "index":I
    :cond_0
    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ControlBar;->getDefaultFocusIndex()I

    move-result v0

    .restart local v0    # "index":I
    goto :goto_0

    .line 61
    .end local v0    # "index":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onRequestFocusInDescendants(ILandroid/graphics/Rect;)Z

    move-result v1

    return v1
.end method

.method public requestChildFocus(Landroid/view/View;Landroid/view/View;)V
    .locals 1
    .param p1, "child"    # Landroid/view/View;
    .param p2, "focused"    # Landroid/view/View;

    .prologue
    .line 87
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestChildFocus(Landroid/view/View;Landroid/view/View;)V

    .line 88
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ControlBar;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mLastFocusIndex:I

    .line 89
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ControlBar;->mOnChildFocusedListener:Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;

    invoke-interface {v0, p1, p2}, Landroid/support/v17/leanback/widget/ControlBar$OnChildFocusedListener;->onChildFocusedListener(Landroid/view/View;Landroid/view/View;)V

    .line 92
    :cond_0
    return-void
.end method
