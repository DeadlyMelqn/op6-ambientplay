.class Lcom/oneplus/lib/widget/recyclerview/ScrollbarHelper;
.super Ljava/lang/Object;
.source "ScrollbarHelper.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static computeScrollExtent(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I
    .locals 3
    .param p0, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "orientation"    # Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    const/4 v2, 0x0

    .line 63
    invoke-virtual {p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 65
    :cond_0
    return v2

    .line 63
    :cond_1
    if-eqz p2, :cond_0

    .line 64
    if-eqz p3, :cond_0

    .line 67
    if-nez p5, :cond_2

    .line 68
    invoke-virtual {p4, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v1

    invoke-virtual {p4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    return v1

    .line 70
    :cond_2
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v1

    .line 71
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v2

    .line 70
    sub-int v0, v1, v2

    .line 72
    .local v0, "extend":I
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getTotalSpace()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    return v1
.end method

.method static computeScrollOffset(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;ZZ)I
    .locals 9
    .param p0, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "orientation"    # Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z
    .param p6, "reverseLayout"    # Z

    .prologue
    const/4 v8, 0x0

    .line 32
    invoke-virtual {p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v6

    if-nez v6, :cond_1

    .line 34
    :cond_0
    return v8

    .line 32
    :cond_1
    if-eqz p2, :cond_0

    .line 33
    if-eqz p3, :cond_0

    .line 36
    invoke-virtual {p4, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 37
    invoke-virtual {p4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 36
    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 38
    .local v5, "minPosition":I
    invoke-virtual {p4, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 39
    invoke-virtual {p4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 38
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v4

    .line 40
    .local v4, "maxPosition":I
    if-eqz p6, :cond_2

    .line 41
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v6

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 43
    .local v2, "itemsBefore":I
    :goto_0
    if-nez p5, :cond_3

    .line 44
    return v2

    .line 42
    .end local v2    # "itemsBefore":I
    :cond_2
    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .restart local v2    # "itemsBefore":I
    goto :goto_0

    .line 46
    :cond_3
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v6

    .line 47
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v7

    .line 46
    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 48
    .local v3, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v6

    .line 49
    invoke-virtual {p4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v7

    .line 48
    sub-int/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    add-int/lit8 v1, v6, 0x1

    .line 50
    .local v1, "itemRange":I
    int-to-float v6, v3

    int-to-float v7, v1

    div-float v0, v6, v7

    .line 52
    .local v0, "avgSizePerRow":F
    int-to-float v6, v2

    mul-float/2addr v6, v0

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getStartAfterPadding()I

    move-result v7

    .line 53
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v8

    .line 52
    sub-int/2addr v7, v8

    int-to-float v7, v7

    add-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    return v6
.end method

.method static computeScrollRange(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;Landroid/view/View;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Z)I
    .locals 4
    .param p0, "state"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;
    .param p1, "orientation"    # Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;
    .param p2, "startChild"    # Landroid/view/View;
    .param p3, "endChild"    # Landroid/view/View;
    .param p4, "lm"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;
    .param p5, "smoothScrollbarEnabled"    # Z

    .prologue
    const/4 v3, 0x0

    .line 82
    invoke-virtual {p4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getChildCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 84
    :cond_0
    return v3

    .line 82
    :cond_1
    if-eqz p2, :cond_0

    .line 83
    if-eqz p3, :cond_0

    .line 86
    if-nez p5, :cond_2

    .line 87
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v2

    return v2

    .line 90
    :cond_2
    invoke-virtual {p1, p3}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedEnd(Landroid/view/View;)I

    move-result v2

    .line 91
    invoke-virtual {p1, p2}, Lcom/oneplus/lib/widget/recyclerview/OrientationHelper;->getDecoratedStart(Landroid/view/View;)I

    move-result v3

    .line 90
    sub-int v0, v2, v3

    .line 92
    .local v0, "laidOutArea":I
    invoke-virtual {p4, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v2

    .line 93
    invoke-virtual {p4, p3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 92
    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int/lit8 v1, v2, 0x1

    .line 96
    .local v1, "laidOutRange":I
    int-to-float v2, v0

    int-to-float v3, v1

    div-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->getItemCount()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    return v2
.end method
