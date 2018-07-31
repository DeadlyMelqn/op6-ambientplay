.class public Lcom/oneplus/doze/NotificationDozeHelper;
.super Ljava/lang/Object;
.source "NotificationDozeHelper.java"


# instance fields
.field private final mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/doze/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    .line 27
    return-void
.end method

.method static synthetic lambda$-com_oneplus_doze_NotificationDozeHelper_2967(Ljava/util/function/Consumer;Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "a"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 77
    .local p0, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public fadeGrayscale(Landroid/widget/ImageView;ZJ)V
    .locals 7
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J

    .prologue
    .line 31
    new-instance v2, Lcom/oneplus/doze/NotificationDozeHelper$1;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/doze/NotificationDozeHelper$1;-><init>(Lcom/oneplus/doze/NotificationDozeHelper;Landroid/widget/ImageView;)V

    .line 36
    new-instance v6, Lcom/oneplus/doze/NotificationDozeHelper$2;

    invoke-direct {v6, p0, p2, p1}, Lcom/oneplus/doze/NotificationDozeHelper$2;-><init>(Lcom/oneplus/doze/NotificationDozeHelper;ZLandroid/widget/ImageView;)V

    move-object v1, p0

    move v3, p2

    move-wide v4, p3

    .line 31
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/doze/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 44
    return-void
.end method

.method public getGrayscaleColorMatrix()Landroid/graphics/ColorMatrix;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Lcom/oneplus/doze/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    return-object v0
.end method

.method public setIntensityDark(Ljava/util/function/Consumer;ZZJ)V
    .locals 8
    .param p2, "dark"    # Z
    .param p3, "animate"    # Z
    .param p4, "delay"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer",
            "<",
            "Ljava/lang/Float;",
            ">;ZZJ)V"
        }
    .end annotation

    .prologue
    .line 76
    .local p1, "listener":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Ljava/lang/Float;>;"
    if-eqz p3, :cond_0

    .line 77
    new-instance v2, Lcom/oneplus/doze/-$Lambda$LIpuzc4i484-BWnMpfZe3B4fZlI;

    invoke-direct {v2, p1}, Lcom/oneplus/doze/-$Lambda$LIpuzc4i484-BWnMpfZe3B4fZlI;-><init>(Ljava/lang/Object;)V

    .line 78
    const/4 v6, 0x0

    move-object v1, p0

    move v3, p2

    move-wide v4, p4

    .line 77
    invoke-virtual/range {v1 .. v6}, Lcom/oneplus/doze/NotificationDozeHelper;->startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_0
    if-eqz p2, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_1
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startIntensityAnimation(Landroid/animation/ValueAnimator$AnimatorUpdateListener;ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 7
    .param p1, "updateListener"    # Landroid/animation/ValueAnimator$AnimatorUpdateListener;
    .param p2, "dark"    # Z
    .param p3, "delay"    # J
    .param p5, "listener"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 61
    if-eqz p2, :cond_1

    const/4 v2, 0x0

    .line 62
    .local v2, "startIntensity":F
    :goto_0
    if-eqz p2, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    .line 63
    .local v1, "endIntensity":F
    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v2, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 64
    .local v0, "animator":Landroid/animation/ValueAnimator;
    invoke-virtual {v0, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 65
    const-wide/16 v4, 0x0

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 66
    sget-object v3, Lcom/oneplus/doze/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 67
    invoke-virtual {v0, p3, p4}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 68
    if-eqz p5, :cond_0

    .line 69
    invoke-virtual {v0, p5}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 71
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 72
    return-void

    .line 61
    .end local v0    # "animator":Landroid/animation/ValueAnimator;
    .end local v1    # "endIntensity":F
    .end local v2    # "startIntensity":F
    :cond_1
    const/high16 v2, 0x3f800000    # 1.0f

    .restart local v2    # "startIntensity":F
    goto :goto_0

    .line 62
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "endIntensity":F
    goto :goto_1
.end method

.method public updateGrayscale(Landroid/widget/ImageView;F)V
    .locals 2
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "darkAmount"    # F

    .prologue
    .line 51
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_0

    .line 52
    invoke-virtual {p0, p2}, Lcom/oneplus/doze/NotificationDozeHelper;->updateGrayscaleMatrix(F)V

    .line 53
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/oneplus/doze/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0
.end method

.method public updateGrayscale(Landroid/widget/ImageView;Z)V
    .locals 1
    .param p1, "target"    # Landroid/widget/ImageView;
    .param p2, "dark"    # Z

    .prologue
    .line 47
    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-float v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/doze/NotificationDozeHelper;->updateGrayscale(Landroid/widget/ImageView;F)V

    .line 48
    return-void

    .line 47
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateGrayscaleMatrix(F)V
    .locals 2
    .param p1, "intensity"    # F

    .prologue
    .line 85
    iget-object v0, p0, Lcom/oneplus/doze/NotificationDozeHelper;->mGrayscaleColorMatrix:Landroid/graphics/ColorMatrix;

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 86
    return-void
.end method
