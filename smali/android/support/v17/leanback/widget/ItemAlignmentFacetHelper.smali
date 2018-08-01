.class Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;
.super Ljava/lang/Object;
.source "ItemAlignmentFacetHelper.java"


# static fields
.field private static sRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    .line 27
    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getAlignmentPosition(Landroid/view/View;Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;I)I
    .locals 8
    .param p0, "itemView"    # Landroid/view/View;
    .param p1, "facet"    # Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;
    .param p2, "orientation"    # I

    .prologue
    const/4 v7, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v5, 0x42c80000    # 100.0f

    .line 36
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;

    .line 37
    .local v1, "p":Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;
    move-object v2, p0

    .line 38
    .local v2, "view":Landroid/view/View;
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    if-eqz v3, :cond_0

    .line 39
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mViewId:I

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 40
    if-nez v2, :cond_0

    .line 41
    move-object v2, p0

    .line 44
    :cond_0
    iget v0, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffset:I

    .line 45
    .local v0, "alignPos":I
    if-nez p2, :cond_c

    .line 46
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_7

    .line 47
    if-ne v2, p0, :cond_4

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_0
    sub-int v0, v3, v0

    .line 49
    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_1

    .line 50
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_5

    .line 51
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    .line 56
    :cond_1
    :goto_1
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_2

    .line 57
    if-ne v2, p0, :cond_6

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_2
    int-to-float v3, v3

    .line 58
    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 57
    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    sub-int/2addr v0, v3

    .line 60
    :cond_2
    if-eq p0, v2, :cond_3

    .line 61
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->right:I

    .line 62
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "itemView":Landroid/view/View;
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 63
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalRightInset()I

    move-result v4

    add-int v0, v3, v4

    .line 104
    :cond_3
    :goto_3
    return v0

    .line 48
    .restart local p0    # "itemView":Landroid/view/View;
    :cond_4
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_0

    .line 52
    :cond_5
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_1

    .line 53
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_1

    .line 58
    :cond_6
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_2

    .line 66
    :cond_7
    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_8

    .line 67
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_a

    .line 68
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v3

    add-int/2addr v0, v3

    .line 73
    :cond_8
    :goto_4
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_9

    .line 74
    if-ne v2, p0, :cond_b

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalWidth(Landroid/view/View;)I

    move-result v3

    :goto_5
    int-to-float v3, v3

    .line 75
    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 74
    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    .line 77
    :cond_9
    if-eq p0, v2, :cond_3

    .line 78
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->left:I

    .line 79
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "itemView":Landroid/view/View;
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 80
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalLeftInset()I

    move-result v4

    sub-int v0, v3, v4

    goto :goto_3

    .line 69
    .restart local p0    # "itemView":Landroid/view/View;
    :cond_a
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_8

    .line 70
    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_4

    .line 75
    :cond_b
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    goto :goto_5

    .line 84
    :cond_c
    iget-boolean v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetWithPadding:Z

    if-eqz v3, :cond_d

    .line 85
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v7

    if-nez v3, :cond_10

    .line 86
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    add-int/2addr v0, v3

    .line 91
    :cond_d
    :goto_6
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v6

    if-eqz v3, :cond_e

    .line 92
    if-ne v2, p0, :cond_11

    invoke-virtual {v1, v2}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalHeight(Landroid/view/View;)I

    move-result v3

    :goto_7
    int-to-float v3, v3

    .line 93
    iget v4, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    .line 92
    mul-float/2addr v3, v4

    div-float/2addr v3, v5

    float-to-int v3, v3

    add-int/2addr v0, v3

    .line 95
    :cond_e
    if-eq p0, v2, :cond_f

    .line 96
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iput v0, v3, Landroid/graphics/Rect;->top:I

    .line 97
    check-cast p0, Landroid/view/ViewGroup;

    .end local p0    # "itemView":Landroid/view/View;
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v2, v3}, Landroid/view/ViewGroup;->offsetDescendantRectToMyCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 98
    sget-object v3, Landroid/support/v17/leanback/widget/ItemAlignmentFacetHelper;->sRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1}, Landroid/support/v17/leanback/widget/GridLayoutManager$LayoutParams;->getOpticalTopInset()I

    move-result v4

    sub-int v0, v3, v4

    .line 100
    :cond_f
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->isAlignedToTextViewBaseLine()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getBaseline()I

    move-result v3

    add-int/2addr v0, v3

    goto/16 :goto_3

    .line 87
    .restart local p0    # "itemView":Landroid/view/View;
    :cond_10
    iget v3, p1, Landroid/support/v17/leanback/widget/ItemAlignmentFacet$ItemAlignmentDef;->mOffsetPercent:F

    cmpl-float v3, v3, v5

    if-nez v3, :cond_d

    .line 88
    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_6

    .line 92
    :cond_11
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_7
.end method
