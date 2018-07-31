.class final Landroid/view/FocusFinder$FocusSorter;
.super Ljava/lang/Object;
.source "FocusFinder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/FocusFinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "FocusSorter"
.end annotation


# instance fields
.field private mLastPoolRect:I

.field private mRectByView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRectPool:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field private mRtlMult:I

.field private mSidesComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTopsComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 783
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    .line 787
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 789
    new-instance v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$1;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$1;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    .line 804
    new-instance v0, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$1;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Landroid/view/-$Lambda$6k_RnLLpNi5zg27ubDxN4lDdBbk$1;-><init>(BLjava/lang/Object;)V

    iput-object v0, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    .line 783
    return-void
.end method


# virtual methods
.method synthetic lambda$-android_view_FocusFinder$FocusSorter_31343(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 790
    if-ne p1, p2, :cond_0

    .line 791
    return v3

    .line 794
    :cond_0
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 795
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 797
    .local v2, "secondRect":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v4, v2, Landroid/graphics/Rect;->top:I

    sub-int v1, v3, v4

    .line 798
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 799
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    return v3

    .line 801
    :cond_1
    return v1
.end method

.method synthetic lambda$-android_view_FocusFinder$FocusSorter_31803(Landroid/view/View;Landroid/view/View;)I
    .locals 5
    .param p1, "first"    # Landroid/view/View;
    .param p2, "second"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 805
    if-ne p1, p2, :cond_0

    .line 806
    return v3

    .line 809
    :cond_0
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    .line 810
    .local v0, "firstRect":Landroid/graphics/Rect;
    iget-object v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    .line 812
    .local v2, "secondRect":Landroid/graphics/Rect;
    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v4, v2, Landroid/graphics/Rect;->left:I

    sub-int v1, v3, v4

    .line 813
    .local v1, "result":I
    if-nez v1, :cond_1

    .line 814
    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v4

    return v3

    .line 816
    :cond_1
    iget v3, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    mul-int/2addr v3, v1

    return v3
.end method

.method public sort([Landroid/view/View;IILandroid/view/ViewGroup;Z)V
    .locals 10
    .param p1, "views"    # [Landroid/view/View;
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "root"    # Landroid/view/ViewGroup;
    .param p5, "isRtl"    # Z

    .prologue
    .line 820
    sub-int v0, p3, p2

    .line 821
    .local v0, "count":I
    const/4 v7, 0x2

    if-ge v0, v7, :cond_0

    .line 822
    return-void

    .line 824
    :cond_0
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    if-nez v7, :cond_1

    .line 825
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    .line 827
    :cond_1
    if-eqz p5, :cond_2

    const/4 v7, -0x1

    :goto_0
    iput v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRtlMult:I

    .line 828
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_3

    .line 829
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 827
    .end local v2    # "i":I
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 831
    .restart local v2    # "i":I
    :cond_3
    move v2, p2

    :goto_2
    if-ge v2, p3, :cond_4

    .line 832
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectPool:Ljava/util/ArrayList;

    iget v8, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Rect;

    .line 833
    .local v3, "next":Landroid/graphics/Rect;
    aget-object v7, p1, v2

    invoke-virtual {v7, v3}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 834
    aget-object v7, p1, v2

    invoke-virtual {p4, v7, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 835
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v8, p1, v2

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 831
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 839
    .end local v3    # "next":Landroid/graphics/Rect;
    :cond_4
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mTopsComparator:Ljava/util/Comparator;

    invoke-static {p1, p2, v0, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 841
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v8, p1, p2

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Rect;

    iget v5, v7, Landroid/graphics/Rect;->bottom:I

    .line 842
    .local v5, "sweepBottom":I
    move v4, p2

    .line 843
    .local v4, "rowStart":I
    add-int/lit8 v6, p2, 0x1

    .line 844
    .local v6, "sweepIdx":I
    :goto_3
    if-ge v6, p3, :cond_7

    .line 845
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    aget-object v8, p1, v6

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 846
    .local v1, "currRect":Landroid/graphics/Rect;
    iget v7, v1, Landroid/graphics/Rect;->top:I

    if-lt v7, v5, :cond_6

    .line 848
    sub-int v7, v6, v4

    const/4 v8, 0x1

    if-le v7, v8, :cond_5

    .line 849
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v4, v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 851
    :cond_5
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 852
    move v4, v6

    .line 844
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 855
    :cond_6
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    goto :goto_4

    .line 859
    .end local v1    # "currRect":Landroid/graphics/Rect;
    :cond_7
    sub-int v7, v6, v4

    const/4 v8, 0x1

    if-le v7, v8, :cond_8

    .line 860
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mSidesComparator:Ljava/util/Comparator;

    invoke-static {p1, v4, v6, v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    .line 863
    :cond_8
    const/4 v7, 0x0

    iput v7, p0, Landroid/view/FocusFinder$FocusSorter;->mLastPoolRect:I

    .line 864
    iget-object v7, p0, Landroid/view/FocusFinder$FocusSorter;->mRectByView:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 865
    return-void
.end method
