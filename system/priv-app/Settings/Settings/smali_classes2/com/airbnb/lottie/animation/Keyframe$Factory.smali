.class public Lcom/airbnb/lottie/animation/Keyframe$Factory;
.super Ljava/lang/Object;
.source "Keyframe.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/animation/Keyframe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# static fields
.field private static pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    return-void
.end method

.method private static getInterpolator(I)Ljava/lang/ref/WeakReference;
    .locals 3
    .param p0, "hash"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    const-class v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    .local v0, "-l_1_R":Ljava/lang/Object;
    const-class v2, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    monitor-enter v2

    .line 128
    :try_start_0
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/support/v4/util/SparseArrayCompat;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    monitor-exit v0

    return-object v2

    .line 129
    :catchall_0
    move-exception v1

    .local v1, "-l_2_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;
    .locals 22
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
            "<TT;>;)",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 145
    .local p3, "valueFactory":Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    const/4 v11, 0x0

    .line 146
    .local v11, "cp1":Landroid/graphics/PointF;
    const/4 v13, 0x0

    .line 147
    .local v13, "cp2":Landroid/graphics/PointF;
    const/4 v9, 0x0

    .line 148
    .local v9, "startFrame":F
    const/4 v6, 0x0

    .line 149
    .local v6, "startValue":Ljava/lang/Object;, "TT;"
    const/4 v7, 0x0

    .line 150
    .local v7, "endValue":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x0

    .line 152
    .local v8, "interpolator":Landroid/view/animation/Interpolator;
    const-string/jumbo v4, "t"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 204
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v6

    .line 205
    move-object v7, v6

    .line 207
    .end local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .end local v7    # "endValue":Ljava/lang/Object;, "TT;"
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .end local v11    # "cp1":Landroid/graphics/PointF;
    .end local v13    # "cp2":Landroid/graphics/PointF;
    :goto_0
    new-instance v4, Lcom/airbnb/lottie/animation/Keyframe;

    const/4 v10, 0x0

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/airbnb/lottie/animation/Keyframe;-><init>(Lcom/airbnb/lottie/LottieComposition;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    return-object v4

    .line 153
    .restart local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v7    # "endValue":Ljava/lang/Object;, "TT;"
    .restart local v8    # "interpolator":Landroid/view/animation/Interpolator;
    .restart local v11    # "cp1":Landroid/graphics/PointF;
    .restart local v13    # "cp2":Landroid/graphics/PointF;
    :cond_0
    const-string/jumbo v4, "t"

    const-wide/16 v20, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    invoke-virtual {v0, v4, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v4

    double-to-float v9, v4

    .line 154
    const-string/jumbo v4, "s"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v19

    .line 155
    .local v19, "startValueJson":Ljava/lang/Object;
    if-nez v19, :cond_2

    .line 159
    .end local v6    # "startValue":Ljava/lang/Object;, "TT;"
    :goto_1
    const-string/jumbo v4, "e"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    .line 160
    .local v15, "endValueJson":Ljava/lang/Object;
    if-nez v15, :cond_3

    .line 164
    .end local v7    # "endValue":Ljava/lang/Object;, "TT;"
    :goto_2
    const-string/jumbo v4, "o"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v12

    .line 165
    .local v12, "cp1Json":Lorg/json/JSONObject;
    const-string/jumbo v4, "i"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    .line 166
    .local v14, "cp2Json":Lorg/json/JSONObject;
    if-nez v12, :cond_4

    .line 171
    .end local v11    # "cp1":Landroid/graphics/PointF;
    .end local v13    # "cp2":Landroid/graphics/PointF;
    :cond_1
    :goto_3
    const-string/jumbo v4, "h"

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_5

    const/16 v17, 0x0

    .line 173
    .local v17, "hold":Z
    :goto_4
    if-nez v17, :cond_6

    .line 177
    if-nez v11, :cond_7

    .line 201
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    goto :goto_0

    .line 156
    .end local v12    # "cp1Json":Lorg/json/JSONObject;
    .end local v14    # "cp2Json":Lorg/json/JSONObject;
    .end local v15    # "endValueJson":Ljava/lang/Object;
    .end local v17    # "hold":Z
    .restart local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v7    # "endValue":Ljava/lang/Object;, "TT;"
    .restart local v11    # "cp1":Landroid/graphics/PointF;
    .restart local v13    # "cp2":Landroid/graphics/PointF;
    :cond_2
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, p2

    invoke-interface {v0, v1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 161
    .end local v6    # "startValue":Ljava/lang/Object;, "TT;"
    .restart local v15    # "endValueJson":Ljava/lang/Object;
    :cond_3
    move-object/from16 v0, p3

    move/from16 v1, p2

    invoke-interface {v0, v15, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;->valueFromObject(Ljava/lang/Object;F)Ljava/lang/Object;

    move-result-object v7

    goto :goto_2

    .line 166
    .end local v7    # "endValue":Ljava/lang/Object;, "TT;"
    .restart local v12    # "cp1Json":Lorg/json/JSONObject;
    .restart local v14    # "cp2Json":Lorg/json/JSONObject;
    :cond_4
    if-eqz v14, :cond_1

    .line 167
    move/from16 v0, p2

    invoke-static {v12, v0}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v11

    .line 168
    move/from16 v0, p2

    invoke-static {v14, v0}, Lcom/airbnb/lottie/utils/JsonUtils;->pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;

    move-result-object v13

    goto :goto_3

    .line 171
    .end local v11    # "cp1":Landroid/graphics/PointF;
    .end local v13    # "cp2":Landroid/graphics/PointF;
    :cond_5
    const/16 v17, 0x1

    goto :goto_4

    .line 174
    .restart local v17    # "hold":Z
    :cond_6
    move-object v7, v6

    .line 176
    .restart local v7    # "endValue":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/airbnb/lottie/animation/Keyframe;->access$000()Landroid/view/animation/Interpolator;

    move-result-object v8

    goto/16 :goto_0

    .line 178
    .end local v7    # "endValue":Ljava/lang/Object;, "TT;"
    :cond_7
    iget v4, v11, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->x:F

    .line 179
    iget v4, v11, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v11, Landroid/graphics/PointF;->y:F

    .line 180
    iget v4, v13, Landroid/graphics/PointF;->x:F

    move/from16 v0, p2

    neg-float v5, v0

    move/from16 v0, p2

    invoke-static {v4, v5, v0}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->x:F

    .line 181
    iget v4, v13, Landroid/graphics/PointF;->y:F

    const/high16 v5, -0x3d380000    # -100.0f

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v4, v5, v10}, Lcom/airbnb/lottie/utils/MiscUtils;->clamp(FFF)F

    move-result v4

    iput v4, v13, Landroid/graphics/PointF;->y:F

    .line 182
    iget v4, v11, Landroid/graphics/PointF;->x:F

    iget v5, v11, Landroid/graphics/PointF;->y:F

    iget v10, v13, Landroid/graphics/PointF;->x:F

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    move/from16 v0, v20

    invoke-static {v4, v5, v10, v0}, Lcom/airbnb/lottie/utils/Utils;->hashFor(FFFF)I

    move-result v16

    .line 183
    .local v16, "hash":I
    invoke-static/range {v16 .. v16}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->getInterpolator(I)Ljava/lang/ref/WeakReference;

    move-result-object v18

    .line 184
    .local v18, "interpolatorRef":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    if-nez v18, :cond_9

    .line 187
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    :goto_5
    if-nez v18, :cond_a

    .line 188
    :cond_8
    iget v4, v11, Landroid/graphics/PointF;->x:F

    div-float v4, v4, p2

    iget v5, v11, Landroid/graphics/PointF;->y:F

    div-float v5, v5, p2

    iget v10, v13, Landroid/graphics/PointF;->x:F

    div-float v10, v10, p2

    iget v0, v13, Landroid/graphics/PointF;->y:F

    move/from16 v20, v0

    div-float v20, v20, p2

    move/from16 v0, v20

    invoke-static {v4, v5, v10, v0}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v8

    .line 191
    .restart local v8    # "interpolator":Landroid/view/animation/Interpolator;
    :try_start_0
    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v8}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move/from16 v0, v16

    invoke-static {v0, v4}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->putInterpolator(ILjava/lang/ref/WeakReference;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 192
    :catch_0
    move-exception v4

    goto/16 :goto_0

    .line 185
    :cond_9
    invoke-virtual/range {v18 .. v18}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    check-cast v8, Landroid/view/animation/Interpolator;

    .restart local v8    # "interpolator":Landroid/view/animation/Interpolator;
    goto :goto_5

    .line 187
    .end local v8    # "interpolator":Landroid/view/animation/Interpolator;
    :cond_a
    if-eqz v8, :cond_8

    goto/16 :goto_0
.end method

.method public static parseKeyframes(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Ljava/util/List;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONArray;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;
    .param p2, "scale"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Lcom/airbnb/lottie/LottieComposition;",
            "F",
            "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory",
            "<TT;>;)",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 213
    .local p3, "valueFactory":Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;, "Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory<TT;>;"
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 214
    .local v2, "length":I
    if-eqz v2, :cond_0

    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v2, :cond_1

    .line 223
    invoke-static {v1}, Lcom/airbnb/lottie/animation/Keyframe;->setEndFrames(Ljava/util/List;)V

    .line 224
    return-object v1

    .line 215
    .end local v0    # "i":I
    .end local v1    # "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    return-object v3

    .line 219
    .restart local v0    # "i":I
    .restart local v1    # "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TT;>;>;"
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1, p2, p3}, Lcom/airbnb/lottie/animation/Keyframe$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;FLcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/animation/Keyframe;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private static pathInterpolatorCache()Landroid/support/v4/util/SparseArrayCompat;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/util/SparseArrayCompat",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 117
    sget-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    if-eqz v0, :cond_0

    .line 120
    :goto_0
    sget-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Landroid/support/v4/util/SparseArrayCompat;

    invoke-direct {v0}, Landroid/support/v4/util/SparseArrayCompat;-><init>()V

    sput-object v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    goto :goto_0
.end method

.method private static putInterpolator(ILjava/lang/ref/WeakReference;)V
    .locals 3
    .param p0, "hash"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/animation/Interpolator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p1, "interpolator":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/view/animation/Interpolator;>;"
    const-class v0, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    .local v0, "-l_2_R":Ljava/lang/Object;
    const-class v2, Lcom/airbnb/lottie/animation/Keyframe$Factory;

    monitor-enter v2

    .line 136
    :try_start_0
    sget-object v2, Lcom/airbnb/lottie/animation/Keyframe$Factory;->pathInterpolatorCache:Landroid/support/v4/util/SparseArrayCompat;

    invoke-virtual {v2, p0, p1}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 137
    monitor-exit v0

    .line 138
    return-void

    .line 137
    :catchall_0
    move-exception v1

    .local v1, "-l_3_R":Ljava/lang/Object;
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
