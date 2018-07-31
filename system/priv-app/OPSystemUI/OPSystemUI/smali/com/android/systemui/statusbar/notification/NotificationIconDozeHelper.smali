.class public Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;
.super Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;
.source "NotificationIconDozeHelper.java"


# instance fields
.field private mColor:I

.field private final mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

.field private final mImageDarkAlpha:I

.field private final mImageDarkColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/NotificationDozeHelper;-><init>()V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkColor:I

    .line 32
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 33
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    .line 32
    invoke-direct {v0, v2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 35
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0021

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    .line 39
    return-void
.end method

.method private fadeImageAlpha(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 71
    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;

    const/4 v0, 0x0

    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 74
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 71
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 75
    return-void
.end method

.method private fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 65
    new-instance v2, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;

    const/4 v0, 0x1

    invoke-direct {v2, v0, p0, p1}, Lcom/android/systemui/statusbar/notification/-$Lambda$Sc7qwEXzLMFEpUxWj_a1qYn-XGQ;-><init>(BLjava/lang/Object;Ljava/lang/Object;)V

    .line 67
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 65
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 68
    return-void
.end method

.method private updateImageAlpha(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 98
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageAlpha(I)V

    .line 99
    return-void

    .line 98
    :cond_0
    const/16 v0, 0xff

    goto :goto_0
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;F)V
    .locals 6
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "intensity"    # F

    .prologue
    const/4 v5, 0x0

    .line 82
    iget v3, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    const/4 v4, -0x1

    invoke-static {v3, v4, p2}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolateColors(IIF)I

    move-result v0

    .line 83
    .local v0, "color":I
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v3, v0}, Landroid/graphics/PorterDuffColorFilter;->setColor(I)V

    .line 84
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 88
    .local v2, "imageDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 89
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 92
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v5}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 93
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageColorFilter:Landroid/graphics/PorterDuffColorFilter;

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 95
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    :cond_0
    return-void
.end method

.method private updateImageColorFilter(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 78
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    .line 79
    return-void

    .line 78
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method synthetic lambda$-com_android_systemui_statusbar_notification_NotificationIconDozeHelper_2231(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 66
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;F)V

    return-void
.end method

.method synthetic lambda$-com_android_systemui_statusbar_notification_NotificationIconDozeHelper_2497(Landroid/widget/ImageView;Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 72
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 73
    .local v0, "t":F
    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mImageDarkAlpha:I

    int-to-float v2, v2

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setImageAlpha(I)V

    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->mColor:I

    .line 43
    return-void
.end method

.method public setImageDark(Landroid/widget/ImageView;ZZJZ)V
    .locals 0
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "fade"    # Z
    .param p4, "delay"    # J
    .param p6, "useGrayscale"    # Z

    .prologue
    .line 47
    if-eqz p3, :cond_1

    .line 48
    if-nez p6, :cond_0

    .line 49
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeImageColorFilter(Landroid/widget/ImageView;ZJ)V

    .line 50
    invoke-direct {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeImageAlpha(Landroid/widget/ImageView;ZJ)V

    .line 62
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2, p4, p5}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->fadeGrayscale(Landroid/widget/ImageView;ZJ)V

    goto :goto_0

    .line 55
    :cond_1
    if-nez p6, :cond_2

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageColorFilter(Landroid/widget/ImageView;Z)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateImageAlpha(Landroid/widget/ImageView;Z)V

    goto :goto_0

    .line 59
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationIconDozeHelper;->updateGrayscale(Landroid/widget/ImageView;Z)V

    goto :goto_0
.end method
