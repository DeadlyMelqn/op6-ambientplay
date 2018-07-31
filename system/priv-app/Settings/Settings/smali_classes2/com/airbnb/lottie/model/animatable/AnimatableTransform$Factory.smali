.class public Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;
.super Ljava/lang/Object;
.source "AnimatableTransform.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method

.method public static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 9

    .prologue
    .line 87
    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    .line 88
    .local v1, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v2}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    .line 89
    .local v2, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v3

    .line 90
    .local v3, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v4

    .line 91
    .local v4, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v5

    .line 92
    .local v5, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    .line 93
    .local v6, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    .line 94
    .local v7, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    const/4 v8, 0x0

    invoke-direct/range {v0 .. v8}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .locals 18
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 100
    const/4 v4, 0x0

    .line 102
    .local v4, "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    const/4 v6, 0x0

    .line 104
    .local v6, "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v8, 0x0

    .line 105
    .local v8, "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const/4 v9, 0x0

    .line 106
    .local v9, "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string/jumbo v2, "a"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v11

    .line 107
    .local v11, "anchorJson":Lorg/json/JSONObject;
    if-nez v11, :cond_0

    .line 112
    const-string/jumbo v2, "LOTTIE"

    const-string/jumbo v10, "Layer has no transform property. You may be using an unsupported layer type such as a camera."

    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    invoke-direct {v3}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>()V

    .line 117
    .local v3, "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    :goto_0
    const-string/jumbo v2, "p"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 118
    .local v14, "positionJson":Lorg/json/JSONObject;
    if-nez v14, :cond_1

    .line 122
    const-string/jumbo v2, "position"

    invoke-static {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    .line 125
    .end local v4    # "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    :goto_1
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 126
    .local v16, "scaleJson":Lorg/json/JSONObject;
    if-nez v16, :cond_2

    .line 130
    new-instance v5, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    new-instance v10, Lcom/airbnb/lottie/model/ScaleXY;

    invoke-direct {v10}, Lcom/airbnb/lottie/model/ScaleXY;-><init>()V

    invoke-direct {v5, v2, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/ScaleXY;)V

    .line 133
    .local v5, "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    :goto_2
    const-string/jumbo v2, "r"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 134
    .local v15, "rotationJson":Lorg/json/JSONObject;
    if-eqz v15, :cond_3

    .line 137
    :goto_3
    if-nez v15, :cond_4

    .line 140
    const-string/jumbo v2, "rotation"

    invoke-static {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->throwMissingTransform(Ljava/lang/String;)V

    .line 143
    .end local v6    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_4
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v13

    .line 144
    .local v13, "opacityJson":Lorg/json/JSONObject;
    if-nez v13, :cond_5

    .line 148
    new-instance v7, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    const/16 v10, 0x64

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v7, v2, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    .line 151
    .local v7, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :goto_5
    const-string/jumbo v2, "so"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 152
    .local v17, "startOpacityJson":Lorg/json/JSONObject;
    if-nez v17, :cond_6

    .line 157
    .end local v8    # "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_6
    const-string/jumbo v2, "eo"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 158
    .local v12, "endOpacityJson":Lorg/json/JSONObject;
    if-nez v12, :cond_7

    .line 163
    .end local v9    # "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_7
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    const/4 v10, 0x0

    invoke-direct/range {v2 .. v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;Lcom/airbnb/lottie/model/animatable/AnimatableValue;Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableTransform$1;)V

    return-object v2

    .line 108
    .end local v3    # "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    .end local v5    # "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .end local v7    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .end local v12    # "endOpacityJson":Lorg/json/JSONObject;
    .end local v13    # "opacityJson":Lorg/json/JSONObject;
    .end local v14    # "positionJson":Lorg/json/JSONObject;
    .end local v15    # "rotationJson":Lorg/json/JSONObject;
    .end local v16    # "scaleJson":Lorg/json/JSONObject;
    .end local v17    # "startOpacityJson":Lorg/json/JSONObject;
    .restart local v4    # "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .restart local v6    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v8    # "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v9    # "endOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_0
    new-instance v3, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;

    const-string/jumbo v2, "k"

    invoke-virtual {v11, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-direct {v3, v2, v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;-><init>(Ljava/lang/Object;Lcom/airbnb/lottie/LottieComposition;)V

    .restart local v3    # "anchorPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;
    goto/16 :goto_0

    .line 120
    .restart local v14    # "positionJson":Lorg/json/JSONObject;
    :cond_1
    move-object/from16 v0, p1

    invoke-static {v14, v0}, Lcom/airbnb/lottie/model/animatable/AnimatablePathValue;->createAnimatablePathOrSplitDimensionPath(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableValue;

    move-result-object v4

    goto :goto_1

    .line 127
    .end local v4    # "position":Lcom/airbnb/lottie/model/animatable/AnimatableValue;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue<Landroid/graphics/PointF;Landroid/graphics/PointF;>;"
    .restart local v16    # "scaleJson":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    move-result-object v5

    .restart local v5    # "scale":Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    goto :goto_2

    .line 135
    .restart local v15    # "rotationJson":Lorg/json/JSONObject;
    :cond_3
    const-string/jumbo v2, "rz"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    goto :goto_3

    .line 138
    :cond_4
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v15, v0, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v6

    goto :goto_4

    .line 145
    .end local v6    # "rotation":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v13    # "opacityJson":Lorg/json/JSONObject;
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v13, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    .restart local v7    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    goto :goto_5

    .line 154
    .restart local v17    # "startOpacityJson":Lorg/json/JSONObject;
    :cond_6
    const/4 v2, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v8

    goto :goto_6

    .line 160
    .end local v8    # "startOpacity":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v12    # "endOpacityJson":Lorg/json/JSONObject;
    :cond_7
    const/4 v2, 0x0

    move-object/from16 v0, p1

    invoke-static {v12, v0, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    goto :goto_7
.end method

.method private static throwMissingTransform(Ljava/lang/String;)V
    .locals 3
    .param p0, "missingProperty"    # Ljava/lang/String;

    .prologue
    .line 168
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Missing transform for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
