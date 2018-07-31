.class public Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;
.super Lcom/android/systemui/recents/views/TaskViewThumbnail;
.source "GridTaskViewThumbnail.java"


# instance fields
.field private final mRestBackgroundOutline:Landroid/graphics/Path;

.field private final mThumbnailOutline:Landroid/graphics/Path;

.field private mUpdateThumbnailOutline:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/recents/views/TaskViewThumbnail;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 29
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    .line 30
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 51
    const v1, 0x7f0703bd

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    .line 52
    return-void
.end method

.method private createThumbnailPath(IIIILandroid/graphics/Path;)V
    .locals 8
    .param p1, "outerLeft"    # I
    .param p2, "outerTop"    # I
    .param p3, "outerRight"    # I
    .param p4, "outerBottom"    # I
    .param p5, "outPath"    # Landroid/graphics/Path;

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    .line 146
    invoke-virtual {p5}, Landroid/graphics/Path;->reset()V

    .line 147
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 148
    int-to-float v0, p3

    int-to-float v1, p2

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 149
    int-to-float v0, p3

    iget v1, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v1, p4, v1

    int-to-float v1, v1

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 150
    iget v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p3, v0

    int-to-float v1, v0

    iget v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p4, v0

    int-to-float v2, v0

    int-to-float v3, p3

    .line 151
    int-to-float v4, p4

    const/4 v5, 0x0

    move-object v0, p5

    .line 150
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 152
    iget v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/2addr v0, p1

    int-to-float v0, v0

    int-to-float v1, p4

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 153
    int-to-float v1, p1

    iget v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v0, v0, 0x2

    sub-int v0, p4, v0

    int-to-float v2, v0

    iget v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p1

    int-to-float v3, v0

    .line 154
    int-to-float v4, p4

    move-object v0, p5

    move v5, v6

    .line 153
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 155
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-virtual {p5, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 156
    invoke-virtual {p5}, Landroid/graphics/Path;->close()V

    .line 157
    return-void
.end method

.method private updateThumbnailOutline()V
    .locals 25

    .prologue
    .line 72
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 73
    const v3, 0x7f0703bc

    .line 72
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    .line 74
    .local v23, "titleHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v10

    .line 75
    .local v10, "viewWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    sub-int v24, v2, v23

    .line 77
    .local v24, "viewHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 76
    invoke-static {v10, v2}, Ljava/lang/Math;->min(II)I

    move-result v22

    .line 79
    .local v22, "thumbnailWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 78
    move/from16 v0, v24

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v21

    .line 81
    .local v21, "thumbnailHeight":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v2, :cond_2

    if-lez v22, :cond_2

    if-lez v21, :cond_2

    .line 100
    const/16 v17, 0x0

    .line 101
    .local v17, "outerLeft":I
    const/16 v18, 0x0

    .line 102
    .local v18, "outerTop":I
    add-int/lit8 v5, v22, 0x0

    .line 103
    .local v5, "outerRight":I
    add-int/lit8 v6, v21, 0x0

    .line 104
    .local v6, "outerBottom":I
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->createThumbnailPath(IIIILandroid/graphics/Path;)V

    .line 106
    move/from16 v0, v22

    if-ge v0, v10, :cond_0

    .line 107
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v5, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v16

    .line 108
    .local v16, "l":I
    move/from16 v19, v5

    .line 109
    .local v19, "r":I
    const/16 v20, 0x0

    .line 110
    .local v20, "t":I
    move v15, v6

    .line 111
    .local v15, "b":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 112
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 113
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v5

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 114
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v6, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 115
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v6, v2

    int-to-float v9, v2

    int-to-float v10, v5

    int-to-float v11, v6

    .line 116
    const/4 v12, 0x0

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x0

    .line 115
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 117
    .end local v10    # "viewWidth":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move/from16 v0, v16

    int-to-float v3, v0

    int-to-float v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 118
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move/from16 v0, v16

    int-to-float v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 122
    .end local v15    # "b":I
    .end local v16    # "l":I
    .end local v19    # "r":I
    .end local v20    # "t":I
    :cond_0
    move/from16 v0, v21

    move/from16 v1, v24

    if-ge v0, v1, :cond_1

    .line 123
    const/16 v16, 0x0

    .line 124
    .restart local v16    # "l":I
    move/from16 v19, v5

    .line 125
    .restart local v19    # "r":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v2, v21, v2

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v20

    .line 126
    .restart local v20    # "t":I
    move v15, v6

    .line 127
    .restart local v15    # "b":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 128
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v20

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 129
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v5

    move/from16 v0, v20

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 130
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    int-to-float v3, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    sub-int v4, v6, v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 131
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v5, v2

    int-to-float v8, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v6, v2

    int-to-float v9, v2

    int-to-float v10, v5

    int-to-float v11, v6

    .line 132
    const/4 v12, 0x0

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x0

    .line 131
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    add-int/lit8 v3, v3, 0x0

    int-to-float v3, v3

    int-to-float v4, v6

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 134
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v6, v2

    int-to-float v9, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mCornerRadius:I

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x0

    int-to-float v10, v2

    int-to-float v11, v6

    .line 135
    const/high16 v12, 0x42b40000    # 90.0f

    const/high16 v13, 0x42b40000    # 90.0f

    const/4 v14, 0x0

    .line 134
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    .line 136
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    const/4 v3, 0x0

    move/from16 v0, v20

    int-to-float v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 137
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 142
    .end local v5    # "outerRight":I
    .end local v6    # "outerBottom":I
    .end local v15    # "b":I
    .end local v16    # "l":I
    .end local v17    # "outerLeft":I
    .end local v18    # "outerTop":I
    .end local v19    # "r":I
    .end local v20    # "t":I
    :cond_1
    :goto_0
    return-void

    .line 140
    .restart local v10    # "viewWidth":I
    :cond_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v7, p0

    move/from16 v11, v24

    invoke-direct/range {v7 .. v12}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->createThumbnailPath(IIIILandroid/graphics/Path;)V

    goto :goto_0
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v7, 0x0

    .line 161
    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 162
    const v6, 0x7f0703bc

    .line 161
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 163
    .local v2, "titleHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v4

    .line 164
    .local v4, "viewWidth":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mTaskViewRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    sub-int v3, v5, v2

    .line 166
    .local v3, "viewHeight":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 165
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 168
    .local v1, "thumbnailWidth":I
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    iget v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailScale:F

    mul-float/2addr v5, v6

    float-to-int v5, v5

    .line 167
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 170
    .local v0, "thumbnailHeight":I
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    if-eqz v5, :cond_0

    .line 171
    invoke-direct {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->updateThumbnailOutline()V

    .line 172
    iput-boolean v7, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 175
    :cond_0
    iget-boolean v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUserLocked:Z

    if-eqz v5, :cond_1

    .line 176
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mLockedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 191
    :goto_0
    return-void

    .line 177
    :cond_1
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBitmapShader:Landroid/graphics/BitmapShader;

    if-eqz v5, :cond_4

    if-lez v1, :cond_4

    if-lez v0, :cond_4

    .line 179
    if-ge v1, v4, :cond_2

    .line 181
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 183
    :cond_2
    if-ge v0, v3, :cond_3

    .line 185
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mRestBackgroundOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 187
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->getDrawPaint()Landroid/graphics/Paint;

    move-result-object v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 189
    :cond_4
    iget-object v5, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mThumbnailOutline:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mBgFillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public onTaskViewSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 59
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 60
    invoke-super {p0, p1, p2}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->onTaskViewSizeChanged(II)V

    .line 61
    return-void
.end method

.method public updateThumbnailMatrix()V
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/recents/views/grid/GridTaskViewThumbnail;->mUpdateThumbnailOutline:Z

    .line 68
    invoke-super {p0}, Lcom/android/systemui/recents/views/TaskViewThumbnail;->updateThumbnailMatrix()V

    .line 69
    return-void
.end method
