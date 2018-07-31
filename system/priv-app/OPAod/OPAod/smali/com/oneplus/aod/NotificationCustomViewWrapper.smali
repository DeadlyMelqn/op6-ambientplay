.class public Lcom/oneplus/aod/NotificationCustomViewWrapper;
.super Lcom/oneplus/aod/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# static fields
.field private static final CUSTOM_BACKGROUND_TAG:I = 0x7f0e0007


# instance fields
.field private mBackgroundColor:I

.field private final mGreyPaint:Landroid/graphics/Paint;

.field private final mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

.field private mShouldInvertDark:Z

.field private mShowingLegacyBackground:Z


# direct methods
.method static synthetic -get0(Lcom/oneplus/aod/NotificationCustomViewWrapper;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "-this"    # Lcom/oneplus/aod/NotificationCustomViewWrapper;

    .prologue
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method protected constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/oneplus/aod/NotificationViewWrapper;-><init>(Landroid/view/View;)V

    .line 38
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 46
    new-instance v0, Lcom/oneplus/aod/ViewInvertHelper;

    const-wide/16 v2, 0x0

    invoke-direct {v0, p1, v2, v3}, Lcom/oneplus/aod/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

    .line 47
    return-void
.end method

.method private isColorLight(I)Z
    .locals 6
    .param p1, "backgroundColor"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 114
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    invoke-static {p1}, Landroid/support/v4/graphics/ColorUtils;->calculateLuminance(I)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 115
    goto :goto_0
.end method


# virtual methods
.method protected fadeGrayscale(ZJ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 72
    new-instance v2, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/NotificationCustomViewWrapper$1;-><init>(Lcom/oneplus/aod/NotificationCustomViewWrapper;)V

    .line 79
    new-instance v6, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;

    invoke-direct {v6, p0, p1}, Lcom/oneplus/aod/NotificationCustomViewWrapper$2;-><init>(Lcom/oneplus/aod/NotificationCustomViewWrapper;Z)V

    move-object v1, p0

    move v3, p1

    move-wide v4, p2

    .line 72
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 87
    return-void
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    return v0
.end method

.method public notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V
    .locals 5
    .param p1, "notification"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const v3, 0x7f0e0007

    .line 100
    invoke-super {p0, p1}, Lcom/oneplus/aod/NotificationViewWrapper;->notifyContentUpdated(Landroid/service/notification/StatusBarNotification;)V

    .line 101
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 102
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    iput v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 103
    instance-of v1, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v1, :cond_1

    .line 104
    check-cast v0, Landroid/graphics/drawable/ColorDrawable;

    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    .line 105
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 106
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 110
    :cond_0
    :goto_0
    iget v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    if-eqz v1, :cond_2

    iget v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    invoke-direct {p0, v1}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->isColorLight(I)Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    .line 111
    return-void

    .line 107
    .restart local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mBackgroundColor:I

    goto :goto_0

    .line 110
    .end local v0    # "background":Landroid/graphics/drawable/Drawable;
    :cond_2
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 52
    return-void

    .line 54
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/aod/NotificationViewWrapper;->setDark(ZZJ)V

    .line 55
    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShowingLegacyBackground:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    if-eqz v0, :cond_2

    .line 56
    if-eqz p2, :cond_1

    .line 57
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/oneplus/aod/ViewInvertHelper;->fade(ZJ)V

    .line 69
    :goto_0
    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mInvertHelper:Lcom/oneplus/aod/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/ViewInvertHelper;->update(Z)V

    goto :goto_0

    .line 62
    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 63
    if-eqz p2, :cond_4

    .line 64
    invoke-virtual {p0, p1, p3, p4}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V

    goto :goto_0

    .line 62
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 66
    :cond_4
    invoke-virtual {p0, p1}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->updateGrayscale(Z)V

    goto :goto_0
.end method

.method public setShowingLegacyBackground(Z)V
    .locals 0
    .param p1, "showing"    # Z

    .prologue
    .line 126
    invoke-super {p0, p1}, Lcom/oneplus/aod/NotificationViewWrapper;->setShowingLegacyBackground(Z)V

    .line 127
    iput-boolean p1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mShowingLegacyBackground:Z

    .line 128
    return-void
.end method

.method protected updateGrayscale(Z)V
    .locals 3
    .param p1, "dark"    # Z

    .prologue
    .line 90
    if-eqz p1, :cond_0

    .line 91
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/NotificationCustomViewWrapper;->updateGrayscaleMatrix(F)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 93
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v2, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 94
    iget-object v0, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/oneplus/aod/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 96
    :cond_0
    return-void
.end method
