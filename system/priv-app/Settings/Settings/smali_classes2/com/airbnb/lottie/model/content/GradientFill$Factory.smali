.class Lcom/airbnb/lottie/model/content/GradientFill$Factory;
.super Ljava/lang/Object;
.source "GradientFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/GradientFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientFill;
    .locals 20
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 92
    const-string/jumbo v2, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 94
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v2, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 95
    .local v15, "jsonColor":Lorg/json/JSONObject;
    if-nez v15, :cond_1

    .line 106
    :cond_0
    :goto_0
    const/4 v6, 0x0

    .line 107
    .local v6, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    if-nez v15, :cond_2

    .line 111
    .end local v6    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    :goto_1
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v17

    .line 112
    .local v17, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 113
    .local v7, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    if-nez v17, :cond_3

    .line 117
    .end local v7    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :goto_2
    const-string/jumbo v2, "r"

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v13

    .line 118
    .local v13, "fillTypeInt":I
    const/4 v2, 0x1

    if-eq v13, v2, :cond_4

    sget-object v5, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 120
    .local v5, "fillType":Landroid/graphics/Path$FillType;
    :goto_3
    const-string/jumbo v2, "t"

    const/4 v10, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v14

    .line 121
    .local v14, "gradientTypeInt":I
    const/4 v2, 0x1

    if-eq v14, v2, :cond_5

    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    .line 123
    .local v4, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    :goto_4
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v18

    .line 124
    .local v18, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 125
    .local v8, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-nez v18, :cond_6

    .line 129
    .end local v8    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :goto_5
    const-string/jumbo v2, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v16

    .line 130
    .local v16, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v9, 0x0

    .line 131
    .local v9, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-nez v16, :cond_7

    .line 135
    .end local v9    # "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :goto_6
    new-instance v2, Lcom/airbnb/lottie/model/content/GradientFill;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct/range {v2 .. v12}, Lcom/airbnb/lottie/model/content/GradientFill;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Landroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/GradientFill$1;)V

    return-object v2

    .line 95
    .end local v4    # "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    .end local v5    # "fillType":Landroid/graphics/Path$FillType;
    .end local v13    # "fillTypeInt":I
    .end local v14    # "gradientTypeInt":I
    .end local v16    # "jsonEndPoint":Lorg/json/JSONObject;
    .end local v17    # "jsonOpacity":Lorg/json/JSONObject;
    .end local v18    # "jsonStartPoint":Lorg/json/JSONObject;
    :cond_1
    const-string/jumbo v2, "k"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    const-string/jumbo v2, "p"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v19

    .line 99
    .local v19, "points":I
    const-string/jumbo v2, "k"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    .line 101
    :try_start_0
    const-string/jumbo v2, "p"

    move/from16 v0, v19

    invoke-virtual {v15, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 102
    :catch_0
    move-exception v2

    goto :goto_0

    .line 108
    .end local v19    # "points":I
    .restart local v6    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    :cond_2
    move-object/from16 v0, p1

    invoke-static {v15, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v6

    goto :goto_1

    .line 114
    .end local v6    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .restart local v7    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .restart local v17    # "jsonOpacity":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v7

    goto :goto_2

    .line 118
    .end local v7    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .restart local v13    # "fillTypeInt":I
    :cond_4
    sget-object v5, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_3

    .line 121
    .restart local v5    # "fillType":Landroid/graphics/Path$FillType;
    .restart local v14    # "gradientTypeInt":I
    :cond_5
    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    goto :goto_4

    .line 126
    .restart local v4    # "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    .restart local v8    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .restart local v18    # "jsonStartPoint":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v8

    goto :goto_5

    .line 132
    .end local v8    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .restart local v9    # "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .restart local v16    # "jsonEndPoint":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v9

    goto :goto_6
.end method
