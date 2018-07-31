.class public Lcom/android/internal/widget/MediaNotificationView;
.super Landroid/widget/FrameLayout;
.source "MediaNotificationView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field private mActions:Landroid/view/View;

.field private mHeader:Landroid/view/View;

.field private mImagePushIn:I

.field private mMainColumn:Landroid/view/View;

.field private final mNotificationContentImageMarginEnd:I

.field private final mNotificationContentMarginEnd:I

.field private mRightIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/widget/MediaNotificationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 143
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 144
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 145
    const v1, 0x1050104

    .line 144
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 147
    const v1, 0x1050102

    .line 146
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    .line 148
    return-void
.end method

.method private resetHeaderIndention()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 126
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingEnd()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    if-eq v1, v2, :cond_0

    .line 127
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingStart()I

    move-result v2

    .line 128
    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    .line 129
    iget v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    .line 130
    iget-object v5, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingBottom()I

    move-result v5

    .line 127
    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 133
    :cond_0
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 134
    .local v0, "headerParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 135
    invoke-virtual {v0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v1

    if-eqz v1, :cond_1

    .line 136
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 137
    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    :cond_1
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 152
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 153
    const v0, 0x1020397

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    .line 154
    const v0, 0x10202eb

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    .line 155
    const v0, 0x1020325

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    .line 156
    const v0, 0x1020326

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/MediaNotificationView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    .line 157
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 5
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 118
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 119
    iget v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    if-lez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLeft()I

    move-result v1

    iget v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getTop()I

    move-result v2

    .line 121
    iget-object v3, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getRight()I

    move-result v3

    iget v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    add-int/2addr v3, v4

    iget-object v4, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getBottom()I

    move-result v4

    .line 120
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/ImageView;->layout(IIII)V

    .line 123
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 15
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 58
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getVisibility()I

    move-result v10

    const/16 v11, 0x8

    if-eq v10, v11, :cond_8

    const/4 v1, 0x1

    .line 59
    .local v1, "hasIcon":Z
    :goto_0
    if-nez v1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/internal/widget/MediaNotificationView;->resetHeaderIndention()V

    .line 62
    :cond_0
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 63
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 64
    .local v6, "mode":I
    const/4 v8, 0x0

    .line 65
    .local v8, "reMeasure":Z
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    .line 66
    if-eqz v1, :cond_6

    if-eqz v6, :cond_6

    .line 67
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 68
    .local v9, "size":I
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mActions:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    sub-int/2addr v9, v10

    .line 70
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 71
    .local v4, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v4}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v3

    .line 72
    .local v3, "imageEndMargin":I
    sub-int/2addr v9, v3

    .line 73
    invoke-virtual {p0}, Lcom/android/internal/widget/MediaNotificationView;->getMeasuredHeight()I

    move-result v0

    .line 74
    .local v0, "fullHeight":I
    if-le v9, v0, :cond_9

    .line 75
    move v9, v0

    .line 80
    :cond_1
    :goto_1
    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    if-ne v10, v0, :cond_2

    iget v10, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    if-eq v10, v0, :cond_3

    .line 81
    :cond_2
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 82
    iput v0, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 83
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mRightIcon:Landroid/widget/ImageView;

    invoke-virtual {v10, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    const/4 v8, 0x1

    .line 89
    :cond_3
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 90
    .local v7, "params":Landroid/view/ViewGroup$MarginLayoutParams;
    add-int v10, v9, v3

    iget v11, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentMarginEnd:I

    add-int v5, v10, v11

    .line 91
    .local v5, "marginEnd":I
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    if-eq v5, v10, :cond_4

    .line 92
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 93
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mMainColumn:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    const/4 v8, 0x1

    .line 96
    :cond_4
    add-int v2, v9, v3

    .line 97
    .local v2, "headerMarginEnd":I
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .end local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 98
    .restart local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-virtual {v7}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v10

    if-eq v10, v2, :cond_5

    .line 99
    invoke-virtual {v7, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 100
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v10, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    const/4 v8, 0x1

    .line 103
    :cond_5
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getPaddingEnd()I

    move-result v10

    iget v11, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    if-eq v10, v11, :cond_6

    .line 104
    iget-object v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    iget-object v11, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    move-result v11

    .line 105
    iget-object v12, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getPaddingTop()I

    move-result v12

    .line 106
    iget v13, p0, Lcom/android/internal/widget/MediaNotificationView;->mNotificationContentImageMarginEnd:I

    .line 107
    iget-object v14, p0, Lcom/android/internal/widget/MediaNotificationView;->mHeader:Landroid/view/View;

    invoke-virtual {v14}, Landroid/view/View;->getPaddingBottom()I

    move-result v14

    .line 104
    invoke-virtual {v10, v11, v12, v13, v14}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 108
    const/4 v8, 0x1

    .line 111
    .end local v0    # "fullHeight":I
    .end local v2    # "headerMarginEnd":I
    .end local v3    # "imageEndMargin":I
    .end local v4    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v5    # "marginEnd":I
    .end local v7    # "params":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v9    # "size":I
    :cond_6
    if-eqz v8, :cond_7

    .line 112
    invoke-super/range {p0 .. p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 114
    :cond_7
    return-void

    .line 58
    .end local v1    # "hasIcon":Z
    .end local v6    # "mode":I
    .end local v8    # "reMeasure":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "hasIcon":Z
    goto/16 :goto_0

    .line 76
    .restart local v0    # "fullHeight":I
    .restart local v3    # "imageEndMargin":I
    .restart local v4    # "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    .restart local v6    # "mode":I
    .restart local v8    # "reMeasure":Z
    .restart local v9    # "size":I
    :cond_9
    if-ge v9, v0, :cond_1

    .line 77
    const/4 v10, 0x0

    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 78
    sub-int v10, v0, v9

    iput v10, p0, Lcom/android/internal/widget/MediaNotificationView;->mImagePushIn:I

    goto :goto_1
.end method
