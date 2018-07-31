.class public Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$Factory;
.super Ljava/lang/Object;
.source "PathKeyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    .locals 17
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
            "<",
            "Landroid/graphics/PointF;",
            ">;)",
            "Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;"
        }
    .end annotation

    .prologue
    .line 33
    .local p2, "valueFactory":Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<Landroid/graphics/PointF;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    .line 32
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-static {v0, v1, v4, v2}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;

    move-result-object v14

    .line 34
    .local v14, "keyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Landroid/graphics/PointF;>;"
    const/4 v11, 0x0

    .line 35
    .local v11, "cp1":Landroid/graphics/PointF;
    const/4 v12, 0x0

    .line 36
    .local v12, "cp2":Landroid/graphics/PointF;
    const-string/jumbo v4, "ti"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    .line 37
    .local v15, "tiJson":Lorg/json/JSONArray;
    const-string/jumbo v4, "to"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 38
    .local v16, "toJson":Lorg/json/JSONArray;
    if-nez v15, :cond_3

    .line 43
    .end local v11    # "cp1":Landroid/graphics/PointF;
    .end local v12    # "cp2":Landroid/graphics/PointF;
    :cond_0
    :goto_0
    new-instance v3, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;

    iget-object v5, v14, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget-object v6, v14, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v6, Landroid/graphics/PointF;

    iget-object v7, v14, Lcom/airbnb/lottie/animation/Keyframe;->interpolator:Landroid/view/animation/Interpolator;

    iget v8, v14, Lcom/airbnb/lottie/animation/Keyframe;->startFrame:F

    iget-object v9, v14, Lcom/airbnb/lottie/animation/Keyframe;->endFrame:Ljava/lang/Float;

    const/4 v10, 0x0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v10}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/view/animation/Interpolator;FLjava/lang/Float;Lcom/airbnb/lottie/animation/keyframe/PathKeyframe$1;)V

    .line 48
    .local v3, "pathKeyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    iget-object v4, v14, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_4

    .line 49
    :cond_1
    const/4 v13, 0x0

    .line 51
    .local v13, "equals":Z
    :goto_1
    iget-object v4, v3, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->endValue:Ljava/lang/Object;

    if-nez v4, :cond_5

    .line 54
    :cond_2
    :goto_2
    return-object v3

    .line 38
    .end local v3    # "pathKeyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    .end local v13    # "equals":Z
    .restart local v11    # "cp1":Landroid/graphics/PointF;
    .restart local v12    # "cp2":Landroid/graphics/PointF;
    :cond_3
    if-eqz v16, :cond_0

    .line 39
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v11

    .line 40
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v4

    invoke-static {v15, v4}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;

    move-result-object v12

    goto :goto_0

    .line 48
    .end local v11    # "cp1":Landroid/graphics/PointF;
    .end local v12    # "cp2":Landroid/graphics/PointF;
    .restart local v3    # "pathKeyframe":Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;
    :cond_4
    iget-object v4, v14, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    if-eqz v4, :cond_1

    iget-object v4, v14, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, v14, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget v6, v5, Landroid/graphics/PointF;->x:F

    iget-object v5, v14, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    .line 49
    invoke-virtual {v4, v6, v5}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v13, 0x1

    goto :goto_1

    .line 51
    .restart local v13    # "equals":Z
    :cond_5
    if-nez v13, :cond_2

    .line 52
    iget-object v4, v14, Lcom/airbnb/lottie/animation/Keyframe;->startValue:Ljava/lang/Object;

    check-cast v4, Landroid/graphics/PointF;

    iget-object v5, v14, Lcom/airbnb/lottie/animation/Keyframe;->endValue:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/PointF;

    invoke-static {v4, v5, v11, v12}, Lcom/airbnb/lottie/utils/Utils;->createPath(Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/Path;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;->access$102(Lcom/airbnb/lottie/animation/keyframe/PathKeyframe;Landroid/graphics/Path;)Landroid/graphics/Path;

    goto :goto_2
.end method
