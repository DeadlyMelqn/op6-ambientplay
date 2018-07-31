.class public Lcom/airbnb/lottie/model/layer/Layer$Factory;
.super Ljava/lang/Object;
.source "Layer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/layer/Layer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    return-void
.end method

.method public static newInstance(Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 26
    .param p0, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/airbnb/lottie/LottieComposition;->getBounds()Landroid/graphics/Rect;

    move-result-object v25

    .line 223
    .local v25, "bounds":Landroid/graphics/Rect;
    new-instance v0, Lcom/airbnb/lottie/model/layer/Layer;

    .line 224
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    const-string/jumbo v3, "root"

    const-wide/16 v4, -0x1

    const-wide/16 v7, -0x1

    .line 225
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v10

    .line 226
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    .line 227
    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->width()I

    move-result v17

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v18

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v21

    sget-object v22, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->None:Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    .line 224
    const/4 v9, 0x0

    .line 227
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v2, p0

    invoke-direct/range {v0 .. v24}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/layer/Layer$1;)V

    .line 223
    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;
    .locals 47
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 232
    const-string/jumbo v5, "nm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v35

    .line 233
    .local v35, "layerName":Ljava/lang/String;
    const-string/jumbo v5, "refId"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 235
    .local v15, "refId":Ljava/lang/String;
    const-string/jumbo v5, ".ai"

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 236
    :cond_0
    const-string/jumbo v5, "Convert your Illustrator layers to shape layers."

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    .line 239
    :goto_0
    const-string/jumbo v5, "ind"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v36

    .line 240
    .local v36, "layerId":J
    const/16 v18, 0x0

    .line 241
    .local v18, "solidWidth":I
    const/16 v19, 0x0

    .line 242
    .local v19, "solidHeight":I
    const/16 v20, 0x0

    .line 243
    .local v20, "solidColor":I
    const/16 v23, 0x0

    .line 244
    .local v23, "preCompWidth":I
    const/16 v24, 0x0

    .line 246
    .local v24, "preCompHeight":I
    const-string/jumbo v5, "ty"

    const/4 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v38

    .line 247
    .local v38, "layerTypeInt":I
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    invoke-virtual {v5}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->ordinal()I

    move-result v5

    move/from16 v0, v38

    if-lt v0, v5, :cond_6

    .line 250
    sget-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 253
    .local v12, "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    :goto_1
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Text:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-eq v12, v5, :cond_7

    .line 258
    :cond_1
    :goto_2
    const-string/jumbo v5, "parent"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v13

    .line 260
    .local v13, "parentId":J
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Solid:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-eq v12, v5, :cond_8

    .line 270
    :goto_3
    const-string/jumbo v5, "ks"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTransform$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTransform;

    move-result-object v17

    .line 272
    .local v17, "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$MatteType;->values()[Lcom/airbnb/lottie/model/layer/Layer$MatteType;

    move-result-object v5

    const-string/jumbo v6, "tt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v6

    aget-object v28, v5, v6

    .line 273
    .local v28, "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v16, "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    new-instance v27, Ljava/util/ArrayList;

    invoke-direct/range {v27 .. v27}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v27, "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;>;"
    const-string/jumbo v5, "masksProperties"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v34

    .line 276
    .local v34, "jsonMasks":Lorg/json/JSONArray;
    if-nez v34, :cond_9

    .line 283
    :cond_2
    new-instance v43, Ljava/util/ArrayList;

    invoke-direct/range {v43 .. v43}, Ljava/util/ArrayList;-><init>()V

    .line 284
    .local v43, "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    const-string/jumbo v5, "shapes"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v44

    .line 285
    .local v44, "shapesJson":Lorg/json/JSONArray;
    if-nez v44, :cond_a

    .line 294
    :cond_3
    const/16 v25, 0x0

    .line 295
    .local v25, "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    const/16 v26, 0x0

    .line 296
    .local v26, "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    const-string/jumbo v5, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v46

    .line 297
    .local v46, "textJson":Lorg/json/JSONObject;
    if-nez v46, :cond_c

    .line 303
    .end local v25    # "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .end local v26    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    :goto_4
    const-string/jumbo v5, "ef"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 309
    :goto_5
    const-string/jumbo v5, "sr"

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6, v7}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v21, v0

    .line 310
    .local v21, "timeStretch":F
    const-string/jumbo v5, "st"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v6

    double-to-float v0, v6

    move/from16 v45, v0

    .line 311
    .local v45, "startFrame":F
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDurationFrames()F

    move-result v31

    .line 312
    .local v31, "frames":F
    div-float v22, v45, v31

    .line 314
    .local v22, "startProgress":F
    sget-object v5, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->PreComp:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-eq v12, v5, :cond_e

    .line 322
    :goto_6
    const-string/jumbo v5, "ip"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v33, v5, v21

    .line 323
    .local v33, "inFrame":F
    const-string/jumbo v5, "op"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v6

    long-to-float v5, v6

    div-float v40, v5, v21

    .line 326
    .local v40, "outFrame":F
    const/4 v5, 0x0

    cmpl-float v5, v33, v5

    if-lez v5, :cond_4

    .line 327
    new-instance v2, Lcom/airbnb/lottie/animation/Keyframe;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-static/range {v33 .. v33}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 328
    .local v2, "preKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    .end local v2    # "preKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    :cond_4
    const/4 v5, 0x0

    cmpl-float v5, v40, v5

    if-lez v5, :cond_f

    .line 333
    :goto_7
    new-instance v3, Lcom/airbnb/lottie/animation/Keyframe;

    const/high16 v5, 0x3f800000    # 1.0f

    .line 334
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-static/range {v40 .. v40}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v9

    const/4 v7, 0x0

    move-object/from16 v4, p1

    move/from16 v8, v33

    invoke-direct/range {v3 .. v9}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 335
    .local v3, "visibleKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    new-instance v4, Lcom/airbnb/lottie/animation/Keyframe;

    const/4 v5, 0x0

    .line 338
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    const v5, 0x7f7fffff    # Float.MAX_VALUE

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    const/4 v8, 0x0

    move-object/from16 v5, p1

    move/from16 v9, v40

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    .line 339
    .local v4, "outKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    const/16 v29, 0x0

    .line 342
    .local v29, "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    const-string/jumbo v5, "tm"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 347
    .end local v29    # "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_8
    new-instance v6, Lcom/airbnb/lottie/model/layer/Layer;

    const/16 v30, 0x0

    move-object/from16 v7, v43

    move-object/from16 v8, p1

    move-object/from16 v9, v35

    move-wide/from16 v10, v36

    invoke-direct/range {v6 .. v30}, Lcom/airbnb/lottie/model/layer/Layer;-><init>(Ljava/util/List;Lcom/airbnb/lottie/LottieComposition;Ljava/lang/String;JLcom/airbnb/lottie/model/layer/Layer$LayerType;JLjava/lang/String;Ljava/util/List;Lcom/airbnb/lottie/model/animatable/AnimatableTransform;IIIFFIILcom/airbnb/lottie/model/animatable/AnimatableTextFrame;Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;Ljava/util/List;Lcom/airbnb/lottie/model/layer/Layer$MatteType;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/layer/Layer$1;)V

    return-object v6

    .line 235
    .end local v3    # "visibleKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    .end local v4    # "outKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    .end local v12    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    .end local v13    # "parentId":J
    .end local v16    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .end local v17    # "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .end local v18    # "solidWidth":I
    .end local v19    # "solidHeight":I
    .end local v20    # "solidColor":I
    .end local v21    # "timeStretch":F
    .end local v22    # "startProgress":F
    .end local v23    # "preCompWidth":I
    .end local v24    # "preCompHeight":I
    .end local v27    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;>;"
    .end local v28    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .end local v31    # "frames":F
    .end local v33    # "inFrame":F
    .end local v34    # "jsonMasks":Lorg/json/JSONArray;
    .end local v36    # "layerId":J
    .end local v38    # "layerTypeInt":I
    .end local v40    # "outFrame":F
    .end local v43    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .end local v44    # "shapesJson":Lorg/json/JSONArray;
    .end local v45    # "startFrame":F
    .end local v46    # "textJson":Lorg/json/JSONObject;
    :cond_5
    const-string/jumbo v5, "cl"

    const-string/jumbo v6, ""

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "ai"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_0

    .line 248
    .restart local v18    # "solidWidth":I
    .restart local v19    # "solidHeight":I
    .restart local v20    # "solidColor":I
    .restart local v23    # "preCompWidth":I
    .restart local v24    # "preCompHeight":I
    .restart local v36    # "layerId":J
    .restart local v38    # "layerTypeInt":I
    :cond_6
    invoke-static {}, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->values()[Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    aget-object v12, v5, v38

    .restart local v12    # "layerType":Lcom/airbnb/lottie/model/layer/Layer$LayerType;
    goto/16 :goto_1

    .line 253
    :cond_7
    const/4 v5, 0x4

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object/from16 v0, p1

    invoke-static {v0, v5, v6, v7}, Lcom/airbnb/lottie/utils/Utils;->isAtLeastVersion(Lcom/airbnb/lottie/LottieComposition;III)Z

    move-result v5

    if-nez v5, :cond_1

    .line 254
    sget-object v12, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Unknown:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    .line 255
    const-string/jumbo v5, "Text is only supported on bodymovin >= 4.8.0"

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 261
    .restart local v13    # "parentId":J
    :cond_8
    const-string/jumbo v5, "sw"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v18, v0

    .line 262
    const-string/jumbo v5, "sh"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v19, v0

    .line 263
    const-string/jumbo v5, "sc"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v20

    goto/16 :goto_3

    .line 277
    .restart local v16    # "masks":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/Mask;>;"
    .restart local v17    # "transform":Lcom/airbnb/lottie/model/animatable/AnimatableTransform;
    .restart local v27    # "inOutKeyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;>;"
    .restart local v28    # "matteType":Lcom/airbnb/lottie/model/layer/Layer$MatteType;
    .restart local v34    # "jsonMasks":Lorg/json/JSONArray;
    :cond_9
    const/16 v32, 0x0

    .local v32, "i":I
    :goto_9
    invoke-virtual/range {v34 .. v34}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_2

    .line 278
    move-object/from16 v0, v34

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/content/Mask$Factory;->newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;

    move-result-object v39

    .line 279
    .local v39, "mask":Lcom/airbnb/lottie/model/content/Mask;
    move-object/from16 v0, v16

    move-object/from16 v1, v39

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    add-int/lit8 v32, v32, 0x1

    goto :goto_9

    .line 286
    .end local v32    # "i":I
    .end local v39    # "mask":Lcom/airbnb/lottie/model/content/Mask;
    .restart local v43    # "shapes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/content/ContentModel;>;"
    .restart local v44    # "shapesJson":Lorg/json/JSONArray;
    :cond_a
    const/16 v32, 0x0

    .restart local v32    # "i":I
    :goto_a
    invoke-virtual/range {v44 .. v44}, Lorg/json/JSONArray;->length()I

    move-result v5

    move/from16 v0, v32

    if-ge v0, v5, :cond_3

    .line 287
    move-object/from16 v0, v44

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/content/ShapeGroup;->shapeItemWithJson(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ContentModel;

    move-result-object v42

    .line 288
    .local v42, "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    if-nez v42, :cond_b

    .line 286
    :goto_b
    add-int/lit8 v32, v32, 0x1

    goto :goto_a

    .line 289
    :cond_b
    move-object/from16 v0, v43

    move-object/from16 v1, v42

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 298
    .end local v32    # "i":I
    .end local v42    # "shape":Lcom/airbnb/lottie/model/content/ContentModel;
    .restart local v25    # "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .restart local v26    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .restart local v46    # "textJson":Lorg/json/JSONObject;
    :cond_c
    const-string/jumbo v5, "d"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-static {v5, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    move-result-object v25

    .line 299
    const-string/jumbo v5, "a"

    move-object/from16 v0, v46

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v41

    .line 300
    .local v41, "propertiesJson":Lorg/json/JSONObject;
    move-object/from16 v0, v41

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    move-result-object v26

    goto/16 :goto_4

    .line 304
    .end local v25    # "text":Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .end local v26    # "textProperties":Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .end local v41    # "propertiesJson":Lorg/json/JSONObject;
    :cond_d
    const-string/jumbo v5, "Lottie doesn\'t support layer effects. If you are using them for  fills, strokes, trim paths etc. then try adding them directly as contents  in your shape."

    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto/16 :goto_5

    .line 315
    .restart local v21    # "timeStretch":F
    .restart local v22    # "startProgress":F
    .restart local v31    # "frames":F
    .restart local v45    # "startFrame":F
    :cond_e
    const-string/jumbo v5, "w"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v23, v0

    .line 316
    const-string/jumbo v5, "h"

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getDpScale()F

    move-result v6

    mul-float/2addr v5, v6

    float-to-int v0, v5

    move/from16 v24, v0

    goto/16 :goto_6

    .line 332
    .restart local v33    # "inFrame":F
    .restart local v40    # "outFrame":F
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/airbnb/lottie/LottieComposition;->getEndFrame()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    add-long/2addr v6, v8

    long-to-float v0, v6

    move/from16 v40, v0

    goto/16 :goto_7

    .line 343
    .restart local v3    # "visibleKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    .restart local v4    # "outKeyframe":Lcom/airbnb/lottie/animation/Keyframe;, "Lcom/airbnb/lottie/animation/Keyframe<Ljava/lang/Float;>;"
    .restart local v29    # "timeRemapping":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :cond_10
    const-string/jumbo v5, "tm"

    .line 344
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-static {v5, v0, v6}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;Z)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v29

    goto/16 :goto_8
.end method
