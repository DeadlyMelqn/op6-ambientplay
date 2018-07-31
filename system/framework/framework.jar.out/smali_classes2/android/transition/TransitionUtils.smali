.class public Landroid/transition/TransitionUtils;
.super Ljava/lang/Object;
.source "TransitionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/transition/TransitionUtils$MatrixEvaluator;
    }
.end annotation


# static fields
.field private static MAX_IMAGE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const/high16 v0, 0x100000

    sput v0, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    .line 40
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copyViewImage(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)Landroid/view/View;
    .locals 14
    .param p0, "sceneRoot"    # Landroid/view/ViewGroup;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/View;

    .prologue
    .line 91
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 92
    .local v6, "matrix":Landroid/graphics/Matrix;
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollX()I

    move-result v10

    neg-int v10, v10

    int-to-float v10, v10

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScrollY()I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    invoke-virtual {v6, v10, v11}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 93
    invoke-virtual {p1, v6}, Landroid/view/View;->transformMatrixToGlobal(Landroid/graphics/Matrix;)V

    .line 94
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->transformMatrixToLocal(Landroid/graphics/Matrix;)V

    .line 95
    new-instance v2, Landroid/graphics/RectF;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v12

    int-to-float v12, v12

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v13

    int-to-float v13, v13

    invoke-direct {v2, v10, v11, v12, v13}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 96
    .local v2, "bounds":Landroid/graphics/RectF;
    invoke-virtual {v6, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 97
    iget v10, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 98
    .local v5, "left":I
    iget v10, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v8

    .line 99
    .local v8, "top":I
    iget v10, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 100
    .local v7, "right":I
    iget v10, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 102
    .local v1, "bottom":I
    new-instance v3, Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v3, v10}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v3, "copy":Landroid/widget/ImageView;
    sget-object v10, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 104
    invoke-static {p1, v6, v2, p0}, Landroid/transition/TransitionUtils;->createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 105
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    :cond_0
    sub-int v10, v7, v5

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    .line 109
    .local v9, "widthSpec":I
    sub-int v10, v1, v8

    const/high16 v11, 0x40000000    # 2.0f

    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 110
    .local v4, "heightSpec":I
    invoke-virtual {v3, v9, v4}, Landroid/widget/ImageView;->measure(II)V

    .line 111
    invoke-virtual {v3, v5, v8, v7, v1}, Landroid/widget/ImageView;->layout(IIII)V

    .line 112
    return-object v3
.end method

.method public static createDrawableBitmap(Landroid/graphics/drawable/Drawable;Landroid/view/View;)Landroid/graphics/Bitmap;
    .locals 14
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "hostView"    # Landroid/view/View;

    .prologue
    .line 119
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v11

    .line 120
    .local v11, "width":I
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    .line 121
    .local v5, "height":I
    if-lez v11, :cond_0

    if-gtz v5, :cond_1

    .line 122
    :cond_0
    const/4 v12, 0x0

    return-object v12

    .line 124
    :cond_1
    sget v12, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v12, v12

    mul-int v13, v11, v5

    int-to-float v13, v13

    div-float/2addr v12, v13

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v13, v12}, Ljava/lang/Math;->min(FF)F

    move-result v9

    .line 125
    .local v9, "scale":F
    instance-of v12, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v12, :cond_2

    const/high16 v12, 0x3f800000    # 1.0f

    cmpl-float v12, v9, v12

    if-nez v12, :cond_2

    .line 127
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .end local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v12

    return-object v12

    .line 129
    .restart local p0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    int-to-float v12, v11

    mul-float/2addr v12, v9

    float-to-int v1, v12

    .line 130
    .local v1, "bitmapWidth":I
    int-to-float v12, v5

    mul-float/2addr v12, v9

    float-to-int v0, v12

    .line 131
    .local v0, "bitmapHeight":I
    const-string/jumbo v12, "TransitionUtils"

    invoke-static {v12, p1}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v7

    .line 132
    .local v7, "node":Landroid/view/RenderNode;
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v7, v12, v13, v11, v5}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 133
    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 134
    invoke-virtual {v7, v11, v5}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v3

    .line 136
    .local v3, "canvas":Landroid/view/DisplayListCanvas;
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 137
    .local v4, "existingBounds":Landroid/graphics/Rect;
    iget v6, v4, Landroid/graphics/Rect;->left:I

    .line 138
    .local v6, "left":I
    iget v10, v4, Landroid/graphics/Rect;->top:I

    .line 139
    .local v10, "top":I
    iget v8, v4, Landroid/graphics/Rect;->right:I

    .line 140
    .local v8, "right":I
    iget v2, v4, Landroid/graphics/Rect;->bottom:I

    .line 141
    .local v2, "bottom":I
    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {p0, v12, v13, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 142
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 143
    invoke-virtual {p0, v6, v10, v8, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 144
    invoke-virtual {v7, v3}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 145
    invoke-static {v7, v11, v5}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v12

    return-object v12
.end method

.method public static createViewBitmap(Landroid/view/View;Landroid/graphics/Matrix;Landroid/graphics/RectF;Landroid/view/ViewGroup;)Landroid/graphics/Bitmap;
    .locals 10
    .param p0, "view"    # Landroid/view/View;
    .param p1, "matrix"    # Landroid/graphics/Matrix;
    .param p2, "bounds"    # Landroid/graphics/RectF;
    .param p3, "sceneRoot"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 165
    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v7

    xor-int/lit8 v0, v7, 0x1

    .line 166
    .local v0, "addToOverlay":Z
    if-eqz v0, :cond_2

    .line 167
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->isAttachedToWindow()Z

    move-result v7

    xor-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_1

    .line 168
    :cond_0
    return-object v8

    .line 170
    :cond_1
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 172
    :cond_2
    const/4 v1, 0x0

    .line 173
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 174
    .local v3, "bitmapWidth":I
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 175
    .local v2, "bitmapHeight":I
    if-lez v3, :cond_3

    if-lez v2, :cond_3

    .line 176
    sget v7, Landroid/transition/TransitionUtils;->MAX_IMAGE_SIZE:I

    int-to-float v7, v7

    mul-int v8, v3, v2

    int-to-float v8, v8

    div-float/2addr v7, v8

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v8, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 177
    .local v6, "scale":F
    int-to-float v7, v3

    mul-float/2addr v7, v6

    float-to-int v3, v7

    .line 178
    int-to-float v7, v2

    mul-float/2addr v7, v6

    float-to-int v2, v7

    .line 179
    iget v7, p2, Landroid/graphics/RectF;->left:F

    neg-float v7, v7

    iget v8, p2, Landroid/graphics/RectF;->top:F

    neg-float v8, v8

    invoke-virtual {p1, v7, v8}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 180
    invoke-virtual {p1, v6, v6}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 182
    const-string/jumbo v7, "TransitionUtils"

    invoke-static {v7, p0}, Landroid/view/RenderNode;->create(Ljava/lang/String;Landroid/view/View;)Landroid/view/RenderNode;

    move-result-object v5

    .line 183
    .local v5, "node":Landroid/view/RenderNode;
    invoke-virtual {v5, v9, v9, v3, v2}, Landroid/view/RenderNode;->setLeftTopRightBottom(IIII)Z

    .line 184
    invoke-virtual {v5, v9}, Landroid/view/RenderNode;->setClipToBounds(Z)Z

    .line 185
    invoke-virtual {v5, v3, v2}, Landroid/view/RenderNode;->start(II)Landroid/view/DisplayListCanvas;

    move-result-object v4

    .line 186
    .local v4, "canvas":Landroid/view/DisplayListCanvas;
    invoke-virtual {v4, p1}, Landroid/view/DisplayListCanvas;->concat(Landroid/graphics/Matrix;)V

    .line 187
    invoke-virtual {p0, v4}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 188
    invoke-virtual {v5, v4}, Landroid/view/RenderNode;->end(Landroid/view/DisplayListCanvas;)V

    .line 189
    invoke-static {v5, v3, v2}, Landroid/view/ThreadedRenderer;->createHardwareBitmap(Landroid/view/RenderNode;II)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 191
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    .end local v4    # "canvas":Landroid/view/DisplayListCanvas;
    .end local v5    # "node":Landroid/view/RenderNode;
    .end local v6    # "scale":F
    :cond_3
    if-eqz v0, :cond_4

    .line 192
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 194
    :cond_4
    return-object v1
.end method

.method static mergeAnimators(Landroid/animation/Animator;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 3
    .param p0, "animator1"    # Landroid/animation/Animator;
    .param p1, "animator2"    # Landroid/animation/Animator;

    .prologue
    .line 44
    if-nez p0, :cond_0

    .line 45
    return-object p1

    .line 46
    :cond_0
    if-nez p1, :cond_1

    .line 47
    return-object p0

    .line 49
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 50
    .local v0, "animatorSet":Landroid/animation/AnimatorSet;
    const/4 v1, 0x2

    new-array v1, v1, [Landroid/animation/Animator;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 51
    return-object v0
.end method

.method public static varargs mergeTransitions([Landroid/transition/Transition;)Landroid/transition/Transition;
    .locals 6
    .param p0, "transitions"    # [Landroid/transition/Transition;

    .prologue
    const/4 v5, 0x0

    .line 56
    const/4 v0, 0x0

    .line 57
    .local v0, "count":I
    const/4 v2, -0x1

    .line 58
    .local v2, "nonNullIndex":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-ge v1, v4, :cond_1

    .line 59
    aget-object v4, p0, v1

    if-eqz v4, :cond_0

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 61
    move v2, v1

    .line 58
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 65
    :cond_1
    if-nez v0, :cond_2

    .line 66
    return-object v5

    .line 69
    :cond_2
    const/4 v4, 0x1

    if-ne v0, v4, :cond_3

    .line 70
    aget-object v4, p0, v2

    return-object v4

    .line 73
    :cond_3
    new-instance v3, Landroid/transition/TransitionSet;

    invoke-direct {v3}, Landroid/transition/TransitionSet;-><init>()V

    .line 74
    .local v3, "transitionSet":Landroid/transition/TransitionSet;
    const/4 v1, 0x0

    :goto_1
    array-length v4, p0

    if-ge v1, v4, :cond_5

    .line 75
    aget-object v4, p0, v1

    if-eqz v4, :cond_4

    .line 76
    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    .line 74
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    :cond_5
    return-object v3
.end method
