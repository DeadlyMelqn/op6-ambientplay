.class Lcom/airbnb/lottie/model/content/GradientStroke$Factory;
.super Ljava/lang/Object;
.source "GradientStroke.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/GradientStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/GradientStroke;
    .locals 25
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 107
    const-string/jumbo v2, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 108
    .local v3, "name":Ljava/lang/String;
    const-string/jumbo v2, "g"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    .line 109
    .local v19, "jsonColor":Lorg/json/JSONObject;
    if-nez v19, :cond_2

    .line 112
    :cond_0
    :goto_0
    const/4 v5, 0x0

    .line 113
    .local v5, "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    if-nez v19, :cond_3

    .line 117
    .end local v5    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    :goto_1
    const-string/jumbo v2, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v21

    .line 118
    .local v21, "jsonOpacity":Lorg/json/JSONObject;
    const/4 v6, 0x0

    .line 119
    .local v6, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    if-nez v21, :cond_4

    .line 123
    .end local v6    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :goto_2
    const-string/jumbo v2, "t"

    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 124
    .local v17, "gradientTypeInt":I
    const/4 v2, 0x1

    move/from16 v0, v17

    if-eq v0, v2, :cond_5

    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Radial:Lcom/airbnb/lottie/model/content/GradientType;

    .line 126
    .local v4, "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    :goto_3
    const-string/jumbo v2, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v22

    .line 127
    .local v22, "jsonStartPoint":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 128
    .local v7, "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-nez v22, :cond_6

    .line 132
    .end local v7    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :goto_4
    const-string/jumbo v2, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v20

    .line 133
    .local v20, "jsonEndPoint":Lorg/json/JSONObject;
    const/4 v8, 0x0

    .line 134
    .local v8, "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    if-nez v20, :cond_7

    .line 137
    .end local v8    # "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    :goto_5
    const-string/jumbo v2, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-static {v2, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v9

    .line 141
    .local v9, "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;

    move-result-object v2

    const-string/jumbo v14, "lc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v10, v2, v14

    .line 142
    .local v10, "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    invoke-static {}, Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;->values()[Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;

    move-result-object v2

    const-string/jumbo v14, "lj"

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v14, v14, -0x1

    aget-object v11, v2, v14

    .line 144
    .local v11, "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    const/4 v13, 0x0

    .line 145
    .local v13, "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v12, "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    const-string/jumbo v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 165
    .end local v13    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_1
    :goto_6
    new-instance v2, Lcom/airbnb/lottie/model/content/GradientStroke;

    const/4 v14, 0x0

    invoke-direct/range {v2 .. v14}, Lcom/airbnb/lottie/model/content/GradientStroke;-><init>(Ljava/lang/String;Lcom/airbnb/lottie/model/content/GradientType;Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/content/GradientStroke$1;)V

    return-object v2

    .line 109
    .end local v4    # "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    .end local v9    # "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .end local v10    # "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .end local v11    # "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .end local v12    # "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    .end local v17    # "gradientTypeInt":I
    .end local v20    # "jsonEndPoint":Lorg/json/JSONObject;
    .end local v21    # "jsonOpacity":Lorg/json/JSONObject;
    .end local v22    # "jsonStartPoint":Lorg/json/JSONObject;
    :cond_2
    const-string/jumbo v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string/jumbo v2, "k"

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v19

    goto/16 :goto_0

    .line 114
    .restart local v5    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    :cond_3
    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;

    move-result-object v5

    goto/16 :goto_1

    .line 120
    .end local v5    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableGradientColorValue;
    .restart local v6    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .restart local v21    # "jsonOpacity":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v6

    goto/16 :goto_2

    .line 124
    .end local v6    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .restart local v17    # "gradientTypeInt":I
    :cond_5
    sget-object v4, Lcom/airbnb/lottie/model/content/GradientType;->Linear:Lcom/airbnb/lottie/model/content/GradientType;

    goto/16 :goto_3

    .line 129
    .restart local v4    # "gradientType":Lcom/airbnb/lottie/model/content/GradientType;
    .restart local v7    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .restart local v22    # "jsonStartPoint":Lorg/json/JSONObject;
    :cond_6
    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v7

    goto/16 :goto_4

    .line 135
    .end local v7    # "startPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .restart local v8    # "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .restart local v20    # "jsonEndPoint":Lorg/json/JSONObject;
    :cond_7
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatablePointValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;

    move-result-object v8

    goto/16 :goto_5

    .line 147
    .end local v8    # "endPoint":Lcom/airbnb/lottie/model/animatable/AnimatablePointValue;
    .restart local v9    # "width":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v10    # "capType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineCapType;
    .restart local v11    # "joinType":Lcom/airbnb/lottie/model/content/ShapeStroke$LineJoinType;
    .restart local v12    # "lineDashPattern":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;>;"
    .restart local v13    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_8
    const-string/jumbo v2, "d"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 148
    .local v16, "dashesJson":Lorg/json/JSONArray;
    const/16 v18, 0x0

    .end local v13    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .local v18, "i":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONArray;->length()I

    move-result v2

    move/from16 v0, v18

    if-lt v0, v2, :cond_9

    .line 159
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    const/4 v14, 0x1

    if-ne v2, v14, :cond_1

    .line 161
    const/4 v2, 0x0

    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 149
    :cond_9
    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    .line 150
    .local v15, "dashJson":Lorg/json/JSONObject;
    const-string/jumbo v2, "n"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 151
    .local v23, "n":Ljava/lang/String;
    const-string/jumbo v2, "o"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    .line 154
    const-string/jumbo v2, "d"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 155
    :cond_a
    const-string/jumbo v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 156
    .local v24, "value":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v2

    invoke-interface {v12, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    .end local v24    # "value":Lorg/json/JSONObject;
    :goto_8
    add-int/lit8 v18, v18, 0x1

    goto :goto_7

    .line 152
    :cond_b
    const-string/jumbo v2, "v"

    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v24

    .line 153
    .restart local v24    # "value":Lorg/json/JSONObject;
    move-object/from16 v0, v24

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v13

    .restart local v13    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    goto :goto_8

    .line 154
    .end local v13    # "offset":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .end local v24    # "value":Lorg/json/JSONObject;
    :cond_c
    const-string/jumbo v2, "g"

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a

    goto :goto_8
.end method
