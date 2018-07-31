.class public Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;
.super Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;
.source "NotificationCustomViewWrapper.java"


# instance fields
.field private final mGreyPaint:Landroid/graphics/Paint;

.field private final mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

.field private mIsLegacy:Z

.field private mLegacyColor:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V
    .locals 4
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "row"    # Lcom/android/systemui/statusbar/ExpandableNotificationRow;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/statusbar/ExpandableNotificationRow;)V

    .line 37
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Lcom/android/systemui/ViewInvertHelper;

    const-wide/16 v2, 0x2bc

    invoke-direct {v0, p2, v2, v3}, Lcom/android/systemui/ViewInvertHelper;-><init>(Landroid/view/View;J)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    .line 44
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/ExpandableNotificationRow;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f060254

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mLegacyColor:I

    .line 45
    return-void
.end method


# virtual methods
.method protected fadeGrayscale(ZJ)V
    .locals 8
    .param p1, "dark"    # Z
    .param p2, "delay"    # J

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$kbUh6o7p-qtGMUyEvwvvHTaPWcM;

    const/4 v0, 0x0

    invoke-direct {v2, v0, p0}, Lcom/android/systemui/statusbar/notification/-$Lambda$kbUh6o7p-qtGMUyEvwvvHTaPWcM;-><init>(BLjava/lang/Object;)V

    .line 75
    new-instance v6, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;

    invoke-direct {v6, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;Z)V

    move v3, p1

    move-wide v4, p2

    .line 70
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 83
    return-void
.end method

.method public getCustomBackgroundColor()I
    .locals 2

    .prologue
    .line 107
    invoke-super {p0}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->getCustomBackgroundColor()I

    move-result v0

    .line 108
    .local v0, "customBackgroundColor":I
    if-nez v0, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    if-eqz v1, :cond_0

    .line 109
    iget v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mLegacyColor:I

    return v1

    .line 111
    :cond_0
    return v0
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_NotificationCustomViewWrapper_2519(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 71
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    .line 72
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 73
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->getGrayscaleColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 72
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    return-void
.end method

.method public setDark(ZZJ)V
    .locals 3
    .param p1, "dark"    # Z
    .param p2, "fade"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDark:Z

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mDarkInitialized:Z

    if-eqz v0, :cond_0

    .line 50
    return-void

    .line 52
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setDark(ZZJ)V

    .line 53
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mShouldInvertDark:Z

    if-eqz v0, :cond_2

    .line 54
    if-eqz p2, :cond_1

    .line 55
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1, p3, p4}, Lcom/android/systemui/ViewInvertHelper;->fade(ZJ)V

    .line 67
    :goto_0
    return-void

    .line 57
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mInvertHelper:Lcom/android/systemui/ViewInvertHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/ViewInvertHelper;->update(Z)V

    goto :goto_0

    .line 60
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_3

    const/4 v0, 0x2

    :goto_1
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 61
    if-eqz p2, :cond_4

    .line 62
    invoke-virtual {p0, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->fadeGrayscale(ZJ)V

    goto :goto_0

    .line 60
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 64
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->updateGrayscale(Z)V

    goto :goto_0
.end method

.method public setLegacy(Z)V
    .locals 0
    .param p1, "legacy"    # Z

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setLegacy(Z)V

    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mIsLegacy:Z

    .line 117
    return-void
.end method

.method public setVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 96
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationViewWrapper;->setVisible(Z)V

    .line 97
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 98
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldClearBackgroundOnReapply()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method protected updateGrayscale(Z)V
    .locals 3
    .param p1, "dark"    # Z

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    .line 89
    new-instance v1, Landroid/graphics/ColorMatrixColorFilter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->getDozer()Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;->getGrayscaleColorMatrix()Landroid/graphics/ColorMatrix;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 90
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/NotificationCustomViewWrapper;->mGreyPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayerPaint(Landroid/graphics/Paint;)V

    .line 92
    :cond_0
    return-void
.end method
