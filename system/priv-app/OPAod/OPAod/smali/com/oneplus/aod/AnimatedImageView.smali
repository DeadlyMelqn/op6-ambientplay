.class public Lcom/oneplus/aod/AnimatedImageView;
.super Landroid/widget/ImageView;
.source "AnimatedImageView.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# instance fields
.field mAnim:Landroid/graphics/drawable/AnimationDrawable;

.field mAttached:Z

.field mDrawableId:I

.field private final mHasOverlappingRendering:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/aod/AnimatedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 46
    sget-object v2, Lcom/oneplus/aod/R$styleable;->AnimatedImageView:[I

    .line 45
    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 51
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 50
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/aod/AnimatedImageView;->mHasOverlappingRendering:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 55
    return-void

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    throw v1
.end method

.method private updateAnim()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 58
    invoke-virtual {p0}, Lcom/oneplus/aod/AnimatedImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 59
    .local v0, "drawable":Landroid/graphics/drawable/Drawable;
    iget-boolean v1, p0, Lcom/oneplus/aod/AnimatedImageView;->mAttached:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_0

    .line 60
    iget-object v1, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 62
    :cond_0
    instance-of v1, v0, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v1, :cond_2

    .line 63
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .end local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    iput-object v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    invoke-virtual {p0}, Lcom/oneplus/aod/AnimatedImageView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    iget-object v1, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 70
    :cond_1
    :goto_0
    return-void

    .line 68
    .restart local v0    # "drawable":Landroid/graphics/drawable/Drawable;
    :cond_2
    iput-object v2, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    goto :goto_0
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mHasOverlappingRendering:Z

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 98
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAttached:Z

    .line 99
    invoke-direct {p0}, Lcom/oneplus/aod/AnimatedImageView;->updateAnim()V

    .line 100
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 104
    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    .line 105
    iget-object v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAttached:Z

    .line 109
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1
    .param p1, "changedView"    # Landroid/view/View;
    .param p2, "vis"    # I

    .prologue
    .line 113
    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onVisibilityChanged(Landroid/view/View;I)V

    .line 114
    iget-object v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/aod/AnimatedImageView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    iget-object v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 118
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mAnim:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    goto :goto_0
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 74
    if-eqz p1, :cond_1

    .line 75
    iget v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mDrawableId:I

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    .line 77
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->hashCode()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mDrawableId:I

    .line 81
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 82
    invoke-direct {p0}, Lcom/oneplus/aod/AnimatedImageView;->updateAnim()V

    .line 83
    return-void

    .line 79
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mDrawableId:I

    goto :goto_0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resid"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 88
    iget v0, p0, Lcom/oneplus/aod/AnimatedImageView;->mDrawableId:I

    if-ne v0, p1, :cond_0

    return-void

    .line 90
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/AnimatedImageView;->mDrawableId:I

    .line 91
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 92
    invoke-direct {p0}, Lcom/oneplus/aod/AnimatedImageView;->updateAnim()V

    .line 93
    return-void
.end method
