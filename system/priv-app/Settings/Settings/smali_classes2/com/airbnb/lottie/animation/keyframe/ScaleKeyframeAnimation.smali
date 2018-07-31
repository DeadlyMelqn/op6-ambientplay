.class public Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;
.super Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;
.source "ScaleKeyframeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation",
        "<",
        "Lcom/airbnb/lottie/model/ScaleXY;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<",
            "Lcom/airbnb/lottie/model/ScaleXY;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 11
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/ScaleXY;>;>;"
    invoke-direct {p0, p1}, Lcom/airbnb/lottie/animation/keyframe/KeyframeAnimation;-><init>(Ljava/util/List;)V

    .line 12
    return-void
.end method


# virtual methods
.method public getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Lcom/airbnb/lottie/model/ScaleXY;
    .locals 6
    .param p2, "keyframeProgress"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<",
            "Lcom/airbnb/lottie/model/ScaleXY;",
            ">;F)",
            "Lcom/airbnb/lottie/model/ScaleXY;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, "keyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Lcom/airbnb/lottie/model/ScaleXY;>;"
    iget-object v2, p1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 16
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string/jumbo v3, "Missing values for keyframe."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 15
    :cond_1
    iget-object v2, p1, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 18
    iget-object v1, p1, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/ScaleXY;

    .line 19
    .local v1, "startTransform":Lcom/airbnb/lottie/model/ScaleXY;
    iget-object v0, p1, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v0, Lcom/airbnb/lottie/model/ScaleXY;

    .line 20
    .local v0, "endTransform":Lcom/airbnb/lottie/model/ScaleXY;
    new-instance v2, Lcom/airbnb/lottie/model/ScaleXY;

    .line 21
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/ScaleXY;->getScaleX()F

    move-result v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/ScaleXY;->getScaleX()F

    move-result v4

    invoke-static {v3, v4, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v3

    .line 22
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/ScaleXY;->getScaleY()F

    move-result v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/ScaleXY;->getScaleY()F

    move-result v5

    invoke-static {v4, v5, p2}, Lcom/airbnb/lottie/utils/MiscUtils;->lerp(FFF)F

    move-result v4

    invoke-direct {v2, v3, v4}, Lcom/airbnb/lottie/model/ScaleXY;-><init>(FF)V

    .line 20
    return-object v2
.end method

.method public bridge synthetic getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/airbnb/lottie/animation/keyframe/ScaleKeyframeAnimation;->getValue(Lcom/airbnb/lottie/animation/Keyframe;F)Lcom/airbnb/lottie/model/ScaleXY;

    move-result-object v0

    return-object v0
.end method
