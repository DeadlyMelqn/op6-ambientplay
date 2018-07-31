.class Landroid/widget/DayPickerViewPager;
.super Lcom/android/internal/widget/ViewPager;
.source "DayPickerViewPager.java"


# instance fields
.field private final mMatchParentChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/DayPickerViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/widget/ViewPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    .line 50
    return-void
.end method


# virtual methods
.method protected findViewByPredicateTraversal(Ljava/util/function/Predicate;Landroid/view/View;)Landroid/view/View;
    .locals 8
    .param p2, "childToSkip"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/view/View;",
            ">(",
            "Ljava/util/function/Predicate",
            "<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "predicate":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Landroid/view/View;>;"
    const/4 v7, 0x0

    .line 142
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 143
    return-object p0

    .line 147
    :cond_0
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getAdapter()Lcom/android/internal/widget/PagerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/DayPickerPagerAdapter;

    .line 148
    .local v0, "adapter":Landroid/widget/DayPickerPagerAdapter;
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getCurrent()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/DayPickerPagerAdapter;->getView(Ljava/lang/Object;)Landroid/widget/SimpleMonthView;

    move-result-object v2

    .line 149
    .local v2, "current":Landroid/widget/SimpleMonthView;
    if-eq v2, p2, :cond_1

    if-eqz v2, :cond_1

    .line 150
    invoke-virtual {v2, p1}, Landroid/widget/SimpleMonthView;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 151
    .local v5, "v":Landroid/view/View;
    if-eqz v5, :cond_1

    .line 152
    return-object v5

    .line 156
    .end local v5    # "v":Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v4

    .line 157
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_3

    .line 158
    invoke-virtual {p0, v3}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 160
    .local v1, "child":Landroid/view/View;
    if-eq v1, p2, :cond_2

    if-eq v1, v2, :cond_2

    .line 161
    invoke-virtual {v1, p1}, Landroid/view/View;->findViewByPredicate(Ljava/util/function/Predicate;)Landroid/view/View;

    move-result-object v5

    .line 163
    .restart local v5    # "v":Landroid/view/View;
    if-eqz v5, :cond_2

    .line 164
    return-object v5

    .line 157
    .end local v5    # "v":Landroid/view/View;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 169
    .end local v1    # "child":Landroid/view/View;
    :cond_3
    return-object v7
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 54
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->populate()V

    .line 57
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getChildCount()I

    move-result v4

    .line 60
    .local v4, "count":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-ne v11, v12, :cond_2

    .line 61
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v11

    const/high16 v12, 0x40000000    # 2.0f

    if-eq v11, v12, :cond_3

    const/4 v10, 0x1

    .line 63
    .local v10, "measureMatchParentChildren":Z
    :goto_0
    const/4 v8, 0x0

    .line 64
    .local v8, "maxHeight":I
    const/4 v9, 0x0

    .line 65
    .local v9, "maxWidth":I
    const/4 v2, 0x0

    .line 67
    .local v2, "childState":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    if-ge v6, v4, :cond_4

    .line 68
    invoke-virtual {p0, v6}, Landroid/widget/DayPickerViewPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v11

    const/16 v12, 0x8

    if-eq v11, v12, :cond_1

    .line 70
    invoke-virtual {p0, v0, p1, p2}, Landroid/widget/DayPickerViewPager;->measureChild(Landroid/view/View;II)V

    .line 71
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 72
    .local v7, "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 73
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 74
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v11

    invoke-static {v2, v11}, Landroid/widget/DayPickerViewPager;->combineMeasuredStates(II)I

    move-result v2

    .line 75
    if-eqz v10, :cond_1

    .line 76
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v12, -0x1

    if-eq v11, v12, :cond_0

    .line 77
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 78
    :cond_0
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 60
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childState":I
    .end local v6    # "i":I
    .end local v8    # "maxHeight":I
    .end local v9    # "maxWidth":I
    .end local v10    # "measureMatchParentChildren":Z
    :cond_2
    const/4 v10, 0x1

    .restart local v10    # "measureMatchParentChildren":Z
    goto :goto_0

    .line 61
    .end local v10    # "measureMatchParentChildren":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "measureMatchParentChildren":Z
    goto :goto_0

    .line 85
    .restart local v2    # "childState":I
    .restart local v6    # "i":I
    .restart local v8    # "maxHeight":I
    .restart local v9    # "maxWidth":I
    :cond_4
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v9, v11

    .line 86
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    add-int/2addr v8, v11

    .line 89
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 90
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getSuggestedMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 93
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 94
    .local v5, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz v5, :cond_5

    .line 95
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 96
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 99
    :cond_5
    invoke-static {v9, p1, v2}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v11

    .line 101
    shl-int/lit8 v12, v2, 0x10

    .line 100
    invoke-static {v8, p2, v12}, Landroid/widget/DayPickerViewPager;->resolveSizeAndState(III)I

    move-result v12

    .line 99
    invoke-virtual {p0, v11, v12}, Landroid/widget/DayPickerViewPager;->setMeasuredDimension(II)V

    .line 103
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 104
    const/4 v11, 0x1

    if-le v4, v11, :cond_8

    .line 105
    const/4 v6, 0x0

    :goto_2
    if-ge v6, v4, :cond_8

    .line 106
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 108
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager$LayoutParams;

    .line 112
    .restart local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_6

    .line 114
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredWidth()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    sub-int/2addr v11, v12

    .line 115
    const/high16 v12, 0x40000000    # 2.0f

    .line 113
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 122
    .local v3, "childWidthMeasureSpec":I
    :goto_3
    iget v11, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    const/4 v12, -0x1

    if-ne v11, v12, :cond_7

    .line 124
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v12

    sub-int/2addr v11, v12

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    sub-int/2addr v11, v12

    .line 125
    const/high16 v12, 0x40000000    # 2.0f

    .line 123
    invoke-static {v11, v12}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 132
    .local v1, "childHeightMeasureSpec":I
    :goto_4
    invoke-virtual {v0, v3, v1}, Landroid/view/View;->measure(II)V

    .line 105
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 118
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    :cond_6
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingLeft()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingRight()I

    move-result v12

    add-int/2addr v11, v12

    .line 119
    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->width:I

    .line 117
    invoke-static {p1, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v3

    .restart local v3    # "childWidthMeasureSpec":I
    goto :goto_3

    .line 128
    :cond_7
    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingTop()I

    move-result v11

    invoke-virtual {p0}, Landroid/widget/DayPickerViewPager;->getPaddingBottom()I

    move-result v12

    add-int/2addr v11, v12

    .line 129
    iget v12, v7, Lcom/android/internal/widget/ViewPager$LayoutParams;->height:I

    .line 127
    invoke-static {p2, v11, v12}, Landroid/widget/DayPickerViewPager;->getChildMeasureSpec(III)I

    move-result v1

    .restart local v1    # "childHeightMeasureSpec":I
    goto :goto_4

    .line 136
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v3    # "childWidthMeasureSpec":I
    .end local v7    # "lp":Lcom/android/internal/widget/ViewPager$LayoutParams;
    :cond_8
    iget-object v11, p0, Landroid/widget/DayPickerViewPager;->mMatchParentChildren:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 137
    return-void
.end method
