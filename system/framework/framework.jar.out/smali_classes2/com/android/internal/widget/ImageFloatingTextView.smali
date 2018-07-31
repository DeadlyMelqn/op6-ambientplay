.class public Lcom/android/internal/widget/ImageFloatingTextView;
.super Landroid/widget/TextView;
.source "ImageFloatingTextView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mBlockLayouts:Z

.field private mFirstMeasure:Z

.field private mIndentLines:I

.field private mLayoutMaxLines:I

.field private mMaxLinesForHeight:I

.field private mResolvedDirection:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/ImageFloatingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, -0x1

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 46
    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 47
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mFirstMeasure:Z

    .line 48
    iput v1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 66
    return-void
.end method


# virtual methods
.method public getLayoutHeight()I
    .locals 1

    .prologue
    .line 180
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    return v0
.end method

.method protected makeSingleLayout(ILandroid/text/BoringLayout$Metrics;ILandroid/text/Layout$Alignment;ZLandroid/text/TextUtils$TruncateAt;Z)Landroid/text/Layout;
    .locals 11
    .param p1, "wantWidth"    # I
    .param p2, "boring"    # Landroid/text/BoringLayout$Metrics;
    .param p3, "ellipsisWidth"    # I
    .param p4, "alignment"    # Landroid/text/Layout$Alignment;
    .param p5, "shouldEllipsize"    # Z
    .param p6, "effectiveEllipsize"    # Landroid/text/TextUtils$TruncateAt;
    .param p7, "useSaved"    # Z

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v7

    .line 73
    .local v7, "transformationMethod":Landroid/text/method/TransformationMethod;
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    .line 74
    .local v6, "text":Ljava/lang/CharSequence;
    if-eqz v7, :cond_0

    .line 75
    invoke-interface {v7, v6, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 77
    :cond_0
    if-nez v6, :cond_1

    const-string/jumbo v6, ""

    .line 78
    :cond_1
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v8

    .line 79
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v9

    .line 78
    const/4 v10, 0x0

    invoke-static {v6, v10, v8, v9, p1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    invoke-virtual {v8, p4}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 81
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getTextDirectionHeuristic()Landroid/text/TextDirectionHeuristic;

    move-result-object v9

    .line 78
    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setTextDirection(Landroid/text/TextDirectionHeuristic;)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingExtra()F

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineSpacingMultiplier()F

    move-result v10

    .line 78
    invoke-virtual {v8, v9, v10}, Landroid/text/StaticLayout$Builder;->setLineSpacing(FF)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getIncludeFontPadding()Z

    move-result v9

    .line 78
    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 84
    const/4 v9, 0x1

    .line 78
    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    .line 85
    const/4 v9, 0x2

    .line 78
    invoke-virtual {v8, v9}, Landroid/text/StaticLayout$Builder;->setHyphenationFrequency(I)Landroid/text/StaticLayout$Builder;

    move-result-object v1

    .line 87
    .local v1, "builder":Landroid/text/StaticLayout$Builder;
    iget v8, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-lez v8, :cond_3

    .line 88
    iget v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 92
    .local v5, "maxLines":I
    :goto_0
    invoke-virtual {v1, v5}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    .line 93
    iput v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    .line 94
    if-eqz p5, :cond_2

    .line 95
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Landroid/text/StaticLayout$Builder;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)Landroid/text/StaticLayout$Builder;

    move-result-object v8

    invoke-virtual {v8, p3}, Landroid/text/StaticLayout$Builder;->setEllipsizedWidth(I)Landroid/text/StaticLayout$Builder;

    .line 100
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 101
    const v9, 0x1050107

    .line 100
    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 102
    .local v2, "endMargin":I
    const/4 v4, 0x0

    .line 103
    .local v4, "margins":[I
    iget v8, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v8, :cond_5

    .line 104
    iget v8, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    add-int/lit8 v8, v8, 0x1

    new-array v4, v8, [I

    .line 105
    .local v4, "margins":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    iget v8, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-ge v3, v8, :cond_5

    .line 106
    aput v2, v4, v3

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 90
    .end local v2    # "endMargin":I
    .end local v3    # "i":I
    .end local v4    # "margins":[I
    .end local v5    # "maxLines":I
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v8

    if-ltz v8, :cond_4

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v5

    .restart local v5    # "maxLines":I
    goto :goto_0

    .end local v5    # "maxLines":I
    :cond_4
    const v5, 0x7fffffff

    .restart local v5    # "maxLines":I
    goto :goto_0

    .line 109
    .restart local v2    # "endMargin":I
    :cond_5
    iget v8, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    const/4 v9, 0x1

    if-ne v8, v9, :cond_6

    .line 110
    const/4 v8, 0x0

    invoke-virtual {v1, v4, v8}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    .line 115
    :goto_2
    invoke-virtual {v1}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object v8

    return-object v8

    .line 112
    :cond_6
    const/4 v8, 0x0

    invoke-virtual {v1, v8, v4}, Landroid/text/StaticLayout$Builder;->setIndents([I[I)Landroid/text/StaticLayout$Builder;

    goto :goto_2
.end method

.method protected onMeasure(II)V
    .locals 7
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 120
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 122
    .local v1, "height":I
    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingTop:I

    sub-int v3, v1, v3

    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mPaddingBottom:I

    sub-int v0, v3, v4

    .line 123
    .local v0, "availableHeight":I
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLineHeight()I

    move-result v3

    div-int v2, v0, v3

    .line 124
    .local v2, "maxLines":I
    invoke-static {v6, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    if-lez v3, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getMaxLines()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 128
    :cond_0
    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    if-eq v2, v3, :cond_1

    .line 129
    iput v2, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    .line 130
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mMaxLinesForHeight:I

    iget v4, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mLayoutMaxLines:I

    if-eq v3, v4, :cond_1

    .line 132
    iput-boolean v6, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    .line 133
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 134
    iput-boolean v5, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    .line 137
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 138
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .param p1, "layoutDirection"    # I

    .prologue
    .line 149
    invoke-super {p0, p1}, Landroid/widget/TextView;->onRtlPropertiesChanged(I)V

    .line 151
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->isLayoutDirectionResolved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mResolvedDirection:I

    .line 153
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-lez v0, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 158
    :cond_0
    return-void
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 142
    iget-boolean v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mBlockLayouts:Z

    if-nez v0, :cond_0

    .line 143
    invoke-super {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 145
    :cond_0
    return-void
.end method

.method public setHasImage(Z)V
    .locals 1
    .param p1, "hasImage"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 162
    if-eqz p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setNumIndentLines(I)Z

    .line 163
    return-void

    .line 162
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setNumIndentLines(I)Z
    .locals 1
    .param p1, "lines"    # I

    .prologue
    .line 170
    iget v0, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    if-eq v0, p1, :cond_0

    .line 171
    iput p1, p0, Lcom/android/internal/widget/ImageFloatingTextView;->mIndentLines:I

    .line 173
    invoke-virtual {p0}, Lcom/android/internal/widget/ImageFloatingTextView;->getHint()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/ImageFloatingTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 174
    const/4 v0, 0x1

    return v0

    .line 176
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
