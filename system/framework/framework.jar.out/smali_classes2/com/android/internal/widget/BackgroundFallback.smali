.class public Lcom/android/internal/widget/BackgroundFallback;
.super Ljava/lang/Object;
.source "BackgroundFallback.java"


# instance fields
.field private mBackgroundFallback:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Landroid/view/ViewGroup;Landroid/view/ViewGroup;Landroid/graphics/Canvas;Landroid/view/View;)V
    .locals 14
    .param p1, "boundsView"    # Landroid/view/ViewGroup;
    .param p2, "root"    # Landroid/view/ViewGroup;
    .param p3, "c"    # Landroid/graphics/Canvas;
    .param p4, "content"    # Landroid/view/View;

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/android/internal/widget/BackgroundFallback;->hasFallback()Z

    move-result v11

    if-nez v11, :cond_0

    .line 52
    return-void

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    .line 57
    .local v10, "width":I
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getHeight()I

    move-result v5

    .line 58
    .local v5, "height":I
    move v7, v10

    .line 59
    .local v7, "left":I
    move v9, v5

    .line 60
    .local v9, "top":I
    const/4 v8, 0x0

    .line 61
    .local v8, "right":I
    const/4 v1, 0x0

    .line 63
    .local v1, "bottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    .line 64
    .local v4, "childCount":I
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    if-ge v6, v4, :cond_4

    .line 65
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 66
    .local v2, "child":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 67
    .local v3, "childBg":Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, p4

    if-ne v2, v0, :cond_2

    .line 70
    if-nez v3, :cond_3

    instance-of v11, v2, Landroid/view/ViewGroup;

    if-eqz v11, :cond_3

    move-object v11, v2

    .line 71
    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v11}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v11

    if-nez v11, :cond_3

    .line 64
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 74
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v11

    if-nez v11, :cond_1

    if-eqz v3, :cond_1

    .line 75
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_1

    .line 81
    :cond_3
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v11

    invoke-static {v7, v11}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 82
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v11

    invoke-static {v9, v11}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 83
    invoke-virtual {v2}, Landroid/view/View;->getRight()I

    move-result v11

    invoke-static {v8, v11}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 84
    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_1

    .line 87
    .end local v2    # "child":Landroid/view/View;
    .end local v3    # "childBg":Landroid/graphics/drawable/Drawable;
    :cond_4
    if-ge v7, v8, :cond_5

    if-lt v9, v1, :cond_6

    .line 89
    :cond_5
    return-void

    .line 92
    :cond_6
    if-lez v9, :cond_7

    .line 93
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13, v10, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 94
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 96
    :cond_7
    if-lez v7, :cond_8

    .line 97
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    const/4 v12, 0x0

    invoke-virtual {v11, v12, v9, v7, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 98
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    :cond_8
    if-ge v8, v10, :cond_9

    .line 101
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v8, v9, v10, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 102
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    :cond_9
    if-ge v1, v5, :cond_a

    .line 105
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v11, v7, v1, v8, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 106
    iget-object v11, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 108
    :cond_a
    return-void
.end method

.method public hasFallback()Z
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/internal/widget/BackgroundFallback;->mBackgroundFallback:Landroid/graphics/drawable/Drawable;

    .line 36
    return-void
.end method
