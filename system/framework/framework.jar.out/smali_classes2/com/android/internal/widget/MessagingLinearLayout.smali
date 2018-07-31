.class public Lcom/android/internal/widget/MessagingLinearLayout;
.super Landroid/view/ViewGroup;
.source "MessagingLinearLayout.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final NOT_MEASURED_BEFORE:I = -0x1


# instance fields
.field private mContractedChildId:I

.field private mIndentLines:I

.field private mLastMeasuredWidth:I

.field private mMaxHeight:I

.field private mSpacing:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v5, 0x0

    .line 63
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v4, -0x1

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 66
    sget-object v4, Lcom/android/internal/R$styleable;->MessagingLinearLayout:[I

    .line 65
    invoke-virtual {p1, p2, v4, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 69
    .local v1, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

    .line 70
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 71
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

    .line 72
    .local v2, "attr":I
    packed-switch v2, :pswitch_data_0

    .line 70
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 74
    :pswitch_0
    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_1

    .line 79
    .end local v2    # "attr":I
    :cond_0
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 80
    return-void

    .line 72
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 259
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 260
    .local v0, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    iget-boolean v1, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v1, :cond_0

    .line 261
    const/4 v1, 0x1

    return v1

    .line 263
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v1

    return v1
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 271
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 273
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 266
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 277
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/MessagingLinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 268
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .locals 3
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 279
    new-instance v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    iget v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {v0, v1, v2}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;-><init>(II)V

    .line 280
    .local v0, "copy":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    instance-of v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v1, :cond_0

    .line 281
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local p1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->copyMarginsFrom(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 283
    :cond_0
    return-object v0
.end method

.method public getContractedChildId()I
    .locals 1

    .prologue
    .line 306
    iget v0, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 15
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 210
    iget v11, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    .line 215
    .local v11, "paddingLeft":I
    sub-int v12, p4, p2

    .line 216
    .local v12, "width":I
    iget v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    sub-int v3, v12, v13

    .line 218
    .local v3, "childRight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getLayoutDirection()I

    move-result v9

    .line 219
    .local v9, "layoutDirection":I
    invoke-virtual {p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v6

    .line 221
    .local v6, "count":I
    iget v4, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    .line 223
    .local v4, "childTop":I
    const/4 v7, 0x1

    .line 225
    .local v7, "first":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_4

    .line 226
    invoke-virtual {p0, v8}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 227
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 229
    .local v10, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v13

    const/16 v14, 0x8

    if-eq v13, v14, :cond_0

    iget-boolean v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v13, :cond_1

    .line 225
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    .line 234
    .local v5, "childWidth":I
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 237
    .local v1, "childHeight":I
    const/4 v13, 0x1

    if-ne v9, v13, :cond_3

    .line 238
    sub-int v13, v3, v5

    iget v14, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    sub-int v2, v13, v14

    .line 243
    .local v2, "childLeft":I
    :goto_2
    if-nez v7, :cond_2

    .line 244
    iget v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    add-int/2addr v4, v13

    .line 247
    :cond_2
    iget v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v13

    .line 248
    add-int v13, v2, v5

    add-int v14, v4, v1

    invoke-virtual {v0, v2, v4, v13, v14}, Landroid/view/View;->layout(IIII)V

    .line 250
    iget v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    add-int/2addr v13, v1

    add-int/2addr v4, v13

    .line 252
    const/4 v7, 0x0

    goto :goto_1

    .line 240
    .end local v2    # "childLeft":I
    :cond_3
    iget v13, v10, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int v2, v11, v13

    .restart local v2    # "childLeft":I
    goto :goto_2

    .line 254
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeight":I
    .end local v2    # "childLeft":I
    .end local v5    # "childWidth":I
    .end local v10    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_4
    const/4 v13, -0x1

    iput v13, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 255
    return-void
.end method

.method protected onMeasure(II)V
    .locals 26
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 87
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v22

    .line 88
    .local v22, "targetHeight":I
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 93
    :goto_0
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v25

    .line 94
    .local v25, "widthSize":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 95
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getMeasuredHeight()I

    move-result v2

    move/from16 v0, v22

    if-eq v2, v0, :cond_1

    .line 94
    :cond_0
    const/16 v20, 0x1

    .line 98
    .local v20, "recalculateVisibility":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildCount()I

    move-result v12

    .line 99
    .local v12, "count":I
    if-eqz v20, :cond_a

    .line 104
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_2
    if-ge v14, v12, :cond_3

    .line 105
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 106
    .local v3, "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 107
    .local v16, "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    const/4 v2, 0x1

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    .line 104
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 90
    .end local v3    # "child":Landroid/view/View;
    .end local v12    # "count":I
    .end local v14    # "i":I
    .end local v16    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v20    # "recalculateVisibility":Z
    .end local v25    # "widthSize":I
    :pswitch_0
    const v22, 0x7fffffff

    .line 91
    goto :goto_0

    .line 96
    .restart local v25    # "widthSize":I
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    move/from16 v0, v25

    if-eq v2, v0, :cond_2

    const/16 v20, 0x1

    .restart local v20    # "recalculateVisibility":Z
    goto :goto_1

    .end local v20    # "recalculateVisibility":Z
    :cond_2
    const/16 v20, 0x0

    .restart local v20    # "recalculateVisibility":Z
    goto :goto_1

    .line 110
    .restart local v12    # "count":I
    .restart local v14    # "i":I
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int v24, v2, v4

    .line 111
    .local v24, "totalHeight":I
    const/4 v13, 0x1

    .line 116
    .local v13, "first":Z
    add-int/lit8 v14, v12, -0x1

    :goto_3
    if-ltz v14, :cond_a

    move/from16 v0, v24

    move/from16 v1, v22

    if-ge v0, v1, :cond_a

    .line 117
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-ne v2, v4, :cond_4

    .line 116
    :goto_4
    add-int/lit8 v14, v14, -0x1

    goto :goto_3

    .line 120
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 121
    .restart local v3    # "child":Landroid/view/View;
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 122
    .restart local v16    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    const/16 v23, 0x0

    .line 123
    .local v23, "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_5

    move-object/from16 v23, v3

    .line 127
    check-cast v23, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 128
    .local v23, "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_7

    const/4 v2, 0x3

    :goto_5
    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    .line 131
    .end local v23    # "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    :cond_5
    if-eqz v13, :cond_8

    const/16 v21, 0x0

    .line 133
    .local v21, "spacing":I
    :goto_6
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    .line 132
    sub-int v2, v24, v2

    .line 133
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    .line 132
    sub-int/2addr v2, v4

    add-int v7, v2, v21

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move/from16 v4, p1

    move/from16 v6, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/widget/MessagingLinearLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 135
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    .line 136
    .local v9, "childHeight":I
    add-int v2, v24, v9

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    add-int/2addr v2, v4

    .line 137
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    .line 136
    add-int/2addr v2, v4

    add-int v2, v2, v21

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v19

    .line 138
    .local v19, "newHeight":I
    const/4 v13, 0x0

    .line 139
    const/16 v17, 0x0

    .line 140
    .local v17, "measuredTooSmall":Z
    if-eqz v23, :cond_6

    .line 141
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayoutHeight()I

    move-result v2

    .line 142
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaddingTop()I

    move-result v4

    .line 141
    add-int/2addr v2, v4

    .line 142
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaddingBottom()I

    move-result v4

    .line 141
    add-int/2addr v2, v4

    if-ge v9, v2, :cond_9

    const/16 v17, 0x1

    .line 145
    :cond_6
    :goto_7
    move/from16 v0, v19

    move/from16 v1, v22

    if-gt v0, v1, :cond_a

    xor-int/lit8 v2, v17, 0x1

    if-eqz v2, :cond_a

    .line 146
    move/from16 v24, v19

    .line 147
    const/4 v2, 0x0

    move-object/from16 v0, v16

    iput-boolean v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    goto/16 :goto_4

    .line 128
    .end local v9    # "childHeight":I
    .end local v17    # "measuredTooSmall":Z
    .end local v19    # "newHeight":I
    .end local v21    # "spacing":I
    .restart local v23    # "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    :cond_7
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    goto :goto_5

    .line 131
    .end local v23    # "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    :cond_8
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    move/from16 v21, v0

    .restart local v21    # "spacing":I
    goto :goto_6

    .line 141
    .restart local v9    # "childHeight":I
    .restart local v17    # "measuredTooSmall":Z
    .restart local v19    # "newHeight":I
    :cond_9
    const/16 v17, 0x0

    goto :goto_7

    .line 155
    .end local v3    # "child":Landroid/view/View;
    .end local v9    # "childHeight":I
    .end local v13    # "first":Z
    .end local v14    # "i":I
    .end local v16    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    .end local v17    # "measuredTooSmall":Z
    .end local v19    # "newHeight":I
    .end local v21    # "spacing":I
    .end local v24    # "totalHeight":I
    :cond_a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int v18, v2, v4

    .line 156
    .local v18, "measuredWidth":I
    move-object/from16 v0, p0

    iget v15, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    .line 158
    .local v15, "imageLines":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingBottom:I

    add-int v24, v2, v4

    .line 159
    .restart local v24    # "totalHeight":I
    const/4 v13, 0x1

    .line 160
    .restart local v13    # "first":Z
    const/4 v14, 0x0

    .restart local v14    # "i":I
    :goto_8
    if-ge v14, v12, :cond_12

    .line 161
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 162
    .restart local v3    # "child":Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;

    .line 164
    .restart local v16    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v4, 0x8

    if-eq v2, v4, :cond_b

    move-object/from16 v0, v16

    iget-boolean v2, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->hide:Z

    if-eqz v2, :cond_c

    .line 160
    :cond_b
    :goto_9
    add-int/lit8 v14, v14, 0x1

    goto :goto_8

    .line 168
    :cond_c
    instance-of v2, v3, Lcom/android/internal/widget/ImageFloatingTextView;

    if-eqz v2, :cond_10

    move-object/from16 v23, v3

    .line 169
    check-cast v23, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 170
    .restart local v23    # "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    const/4 v2, 0x2

    if-ne v15, v2, :cond_d

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineCount()I

    move-result v2

    const/4 v4, 0x2

    if-le v2, v4, :cond_d

    .line 174
    const/4 v15, 0x3

    .line 176
    :cond_d
    const/4 v2, 0x0

    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    move-result v2

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    move-result v8

    .line 177
    .local v8, "changed":Z
    if-nez v8, :cond_e

    xor-int/lit8 v2, v20, 0x1

    if-eqz v2, :cond_f

    .line 179
    :cond_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 180
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->width:I

    .line 178
    move/from16 v0, p1

    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildMeasureSpec(III)I

    move-result v11

    .line 184
    .local v11, "childWidthMeasureSpec":I
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int v2, v22, v2

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->height:I

    .line 183
    move/from16 v0, p2

    invoke-static {v0, v2, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->getChildMeasureSpec(III)I

    move-result v10

    .line 186
    .local v10, "childHeightMeasureSpec":I
    invoke-virtual {v3, v11, v10}, Landroid/view/View;->measure(II)V

    .line 188
    .end local v10    # "childHeightMeasureSpec":I
    .end local v11    # "childWidthMeasureSpec":I
    :cond_f
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineCount()I

    move-result v2

    sub-int/2addr v15, v2

    .line 192
    .end local v8    # "changed":Z
    .end local v23    # "textChild":Lcom/android/internal/widget/ImageFloatingTextView;
    :cond_10
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->leftMargin:I

    add-int/2addr v2, v4

    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->rightMargin:I

    add-int/2addr v2, v4

    .line 193
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingLeft:I

    .line 192
    add-int/2addr v2, v4

    .line 193
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mPaddingRight:I

    .line 192
    add-int/2addr v2, v4

    .line 191
    move/from16 v0, v18

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v18

    .line 194
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    add-int v2, v2, v24

    .line 195
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->topMargin:I

    .line 194
    add-int/2addr v2, v4

    .line 195
    move-object/from16 v0, v16

    iget v4, v0, Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;->bottomMargin:I

    .line 194
    add-int/2addr v4, v2

    .line 195
    if-eqz v13, :cond_11

    const/4 v2, 0x0

    .line 194
    :goto_a
    add-int/2addr v2, v4

    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v24

    .line 196
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 195
    :cond_11
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/widget/MessagingLinearLayout;->mSpacing:I

    goto :goto_a

    .line 201
    .end local v3    # "child":Landroid/view/View;
    .end local v16    # "lp":Lcom/android/internal/widget/MessagingLinearLayout$LayoutParams;
    :cond_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumWidth()I

    move-result v2

    move/from16 v0, v18

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    move/from16 v0, p1

    invoke-static {v2, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v2

    .line 203
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/widget/MessagingLinearLayout;->getSuggestedMinimumHeight()I

    move-result v4

    move/from16 v0, v24

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v4

    move/from16 v0, p2

    invoke-static {v4, v0}, Lcom/android/internal/widget/MessagingLinearLayout;->resolveSize(II)I

    move-result v4

    .line 200
    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/widget/MessagingLinearLayout;->setMeasuredDimension(II)V

    .line 205
    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/widget/MessagingLinearLayout;->mLastMeasuredWidth:I

    .line 206
    return-void

    .line 88
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public setContractedChildId(I)V
    .locals 0
    .param p1, "contractedChildId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 299
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mContractedChildId:I

    .line 300
    return-void
.end method

.method public setNumIndentLines(I)V
    .locals 0
    .param p1, "numberLines"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 291
    iput p1, p0, Lcom/android/internal/widget/MessagingLinearLayout;->mIndentLines:I

    .line 292
    return-void
.end method
