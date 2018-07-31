.class public Lcom/android/systemui/volume/ZenRadioLayout;
.super Landroid/widget/LinearLayout;
.source "ZenRadioLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    return-void
.end method

.method private findFirstClickable(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 71
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    .line 72
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 73
    check-cast v0, Landroid/view/ViewGroup;

    .line 74
    .local v0, "group":Landroid/view/ViewGroup;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 75
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenRadioLayout;->findFirstClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 76
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    return-object v2

    .line 74
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v4
.end method

.method private findLastClickable(Landroid/view/View;)Landroid/view/View;
    .locals 5
    .param p1, "content"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x0

    .line 83
    invoke-virtual {p1}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_0

    return-object p1

    .line 84
    :cond_0
    instance-of v3, p1, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    move-object v0, p1

    .line 85
    check-cast v0, Landroid/view/ViewGroup;

    .line 86
    .local v0, "group":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_2

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/volume/ZenRadioLayout;->findLastClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v2

    .line 88
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_1

    return-object v2

    .line 86
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 91
    .end local v0    # "group":Landroid/view/ViewGroup;
    .end local v1    # "i":I
    .end local v2    # "v":Landroid/view/View;
    :cond_2
    return-object v4
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 40
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 42
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/systemui/volume/ZenRadioLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 43
    .local v7, "radioGroup":Landroid/view/ViewGroup;
    const/4 v9, 0x1

    invoke-virtual {p0, v9}, Lcom/android/systemui/volume/ZenRadioLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 44
    .local v6, "radioContent":Landroid/view/ViewGroup;
    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v8

    .line 45
    .local v8, "size":I
    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v9

    if-eq v8, v9, :cond_0

    .line 46
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string/jumbo v10, "Expected matching children"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    .local v2, "hasChanges":Z
    const/4 v4, 0x0

    .line 50
    .local v4, "lastView":Landroid/view/View;
    const/4 v3, 0x0

    .end local v4    # "lastView":Landroid/view/View;
    .local v3, "i":I
    :goto_0
    if-ge v3, v8, :cond_4

    .line 51
    invoke-virtual {v7, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 52
    .local v5, "radio":Landroid/view/View;
    invoke-virtual {v6, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 53
    .local v0, "content":Landroid/view/View;
    if-eqz v4, :cond_1

    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v5, v9}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 56
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenRadioLayout;->findFirstClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    .line 57
    .local v1, "contentClick":Landroid/view/View;
    if-eqz v1, :cond_2

    invoke-virtual {v5}, Landroid/view/View;->getId()I

    move-result v9

    invoke-virtual {v1, v9}, Landroid/view/View;->setAccessibilityTraversalAfter(I)V

    .line 58
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/systemui/volume/ZenRadioLayout;->findLastClickable(Landroid/view/View;)Landroid/view/View;

    move-result-object v4

    .line 59
    .local v4, "lastView":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    if-eq v9, v10, :cond_3

    .line 60
    const/4 v2, 0x1

    .line 61
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    iput v10, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 50
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    .end local v0    # "content":Landroid/view/View;
    .end local v1    # "contentClick":Landroid/view/View;
    .end local v4    # "lastView":Landroid/view/View;
    .end local v5    # "radio":Landroid/view/View;
    :cond_4
    if-eqz v2, :cond_5

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 68
    :cond_5
    return-void
.end method
