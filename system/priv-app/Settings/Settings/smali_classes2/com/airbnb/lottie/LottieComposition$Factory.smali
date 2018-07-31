.class public Lcom/airbnb/lottie/LottieComposition$Factory;
.super Ljava/lang/Object;
.source "LottieComposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/LottieComposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    return-void
.end method

.method private static addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/model/layer/Layer;)V
    .locals 2
    .param p2, "layer"    # Lcom/airbnb/lottie/model/layer/Layer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Landroid/support/v4/util/LongSparseArray",
            "<",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ">;",
            "Lcom/airbnb/lottie/model/layer/Layer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 380
    .local p0, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .local p1, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 381
    invoke-virtual {p2}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1, p2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 382
    return-void
.end method

.method public static fromAssetFileName(Landroid/content/Context;Ljava/lang/String;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .prologue
    .line 189
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 193
    .local v1, "stream":Ljava/io/InputStream;
    invoke-static {p0, v1, p2}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;

    move-result-object v2

    return-object v2

    .line 190
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 191
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromFileSync(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieComposition;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 213
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 217
    .local v1, "stream":Ljava/io/InputStream;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;

    move-result-object v2

    return-object v2

    .line 214
    .end local v1    # "stream":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 215
    .local v0, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Unable to find file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static fromInputStream(Landroid/content/Context;Ljava/io/InputStream;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "stream"    # Ljava/io/InputStream;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .prologue
    .line 203
    new-instance v0, Lcom/airbnb/lottie/model/FileCompositionLoader;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/airbnb/lottie/model/FileCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 205
    .local v0, "loader":Lcom/airbnb/lottie/model/FileCompositionLoader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/io/InputStream;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/model/FileCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 206
    return-object v0
.end method

.method public static fromInputStream(Landroid/content/res/Resources;Ljava/io/InputStream;)Lcom/airbnb/lottie/LottieComposition;
    .locals 11
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "stream"    # Ljava/io/InputStream;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 235
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 236
    .local v7, "size":I
    new-array v2, v7, [B

    .line 238
    .local v2, "buffer":[B
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    .line 239
    new-instance v5, Ljava/lang/String;

    const-string/jumbo v8, "UTF-8"

    invoke-direct {v5, v2, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 240
    .local v5, "json":Ljava/lang/String;
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 241
    .local v6, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p0, v6}, Lcom/airbnb/lottie/LottieComposition$Factory;->fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 249
    .local v0, "-l_6_R":Ljava/lang/Object;
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 241
    return-object v0

    .line 242
    .end local v0    # "-l_6_R":Ljava/lang/Object;
    .end local v2    # "buffer":[B
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "size":I
    :catch_0
    move-exception v3

    .line 243
    .local v3, "e":Ljava/io/IOException;
    :try_start_1
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Unable to find file."

    invoke-direct {v8, v9, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v9, "LOTTIE"

    const-string/jumbo v10, "Failed to load composition."

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 249
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    .line 251
    .end local v3    # "e":Ljava/io/IOException;
    :goto_0
    const/4 v8, 0x0

    return-object v8

    .line 245
    :catch_1
    move-exception v4

    .line 246
    .local v4, "e":Lorg/json/JSONException;
    :try_start_2
    new-instance v8, Ljava/lang/IllegalStateException;

    const-string/jumbo v9, "Unable to load JSON."

    invoke-direct {v8, v9, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string/jumbo v9, "LOTTIE"

    const-string/jumbo v10, "Failed to load composition."

    invoke-static {v9, v10, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 249
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v4    # "e":Lorg/json/JSONException;
    :catchall_0
    move-exception v1

    .local v1, "-l_7_R":Ljava/lang/Object;
    invoke-static {p1}, Lcom/airbnb/lottie/utils/Utils;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public static fromJson(Landroid/content/res/Resources;Lorg/json/JSONObject;Lcom/airbnb/lottie/OnCompositionLoadedListener;)Lcom/airbnb/lottie/Cancellable;
    .locals 4
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;
    .param p2, "loadedListener"    # Lcom/airbnb/lottie/OnCompositionLoadedListener;

    .prologue
    .line 226
    new-instance v0, Lcom/airbnb/lottie/model/JsonCompositionLoader;

    invoke-direct {v0, p0, p2}, Lcom/airbnb/lottie/model/JsonCompositionLoader;-><init>(Landroid/content/res/Resources;Lcom/airbnb/lottie/OnCompositionLoadedListener;)V

    .line 227
    .local v0, "loader":Lcom/airbnb/lottie/model/JsonCompositionLoader;
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/airbnb/lottie/model/JsonCompositionLoader;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 228
    return-object v0
.end method

.method public static fromJsonSync(Landroid/content/res/Resources;Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieComposition;
    .locals 26
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 255
    const/4 v5, 0x0

    .line 256
    .local v5, "bounds":Landroid/graphics/Rect;
    invoke-virtual/range {p0 .. p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v15

    iget v11, v15, Landroid/util/DisplayMetrics;->density:F

    .line 257
    .local v11, "scale":F
    const-string/jumbo v15, "w"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v22

    .line 258
    .local v22, "width":I
    const-string/jumbo v15, "h"

    const/16 v23, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v15, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v17

    .line 260
    .local v17, "height":I
    const/4 v15, -0x1

    move/from16 v0, v22

    if-ne v0, v15, :cond_1

    .line 266
    .end local v5    # "bounds":Landroid/graphics/Rect;
    :cond_0
    :goto_0
    const-string/jumbo v15, "ip"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v6

    .line 267
    .local v6, "startFrame":J
    const-string/jumbo v15, "op"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;J)J

    move-result-wide v8

    .line 268
    .local v8, "endFrame":J
    const-string/jumbo v15, "fr"

    const-wide/16 v24, 0x0

    move-object/from16 v0, p1

    move-wide/from16 v1, v24

    invoke-virtual {v0, v15, v1, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v24

    move-wide/from16 v0, v24

    double-to-float v10, v0

    .line 269
    .local v10, "frameRate":F
    const-string/jumbo v15, "v"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 270
    .local v20, "version":Ljava/lang/String;
    const-string/jumbo v15, "[.]"

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 271
    .local v21, "versions":[Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 272
    .local v12, "major":I
    const/4 v15, 0x1

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 273
    .local v13, "minor":I
    const/4 v15, 0x2

    aget-object v15, v21, v15

    invoke-static {v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 274
    .local v14, "patch":I
    new-instance v4, Lcom/airbnb/lottie/LottieComposition;

    const/4 v15, 0x0

    invoke-direct/range {v4 .. v15}, Lcom/airbnb/lottie/LottieComposition;-><init>(Landroid/graphics/Rect;JJFFIIILcom/airbnb/lottie/LottieComposition$1;)V

    .line 276
    .local v4, "composition":Lcom/airbnb/lottie/LottieComposition;
    const-string/jumbo v15, "assets"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v16

    .line 277
    .local v16, "assetsJson":Lorg/json/JSONArray;
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 278
    move-object/from16 v0, v16

    invoke-static {v0, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 279
    const-string/jumbo v15, "fonts"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    .line 280
    const-string/jumbo v15, "chars"

    move-object/from16 v0, p1

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v15

    invoke-static {v15, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V

    .line 281
    move-object/from16 v0, p1

    invoke-static {v0, v4}, Lcom/airbnb/lottie/LottieComposition$Factory;->parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V

    .line 282
    return-object v4

    .line 260
    .end local v4    # "composition":Lcom/airbnb/lottie/LottieComposition;
    .end local v6    # "startFrame":J
    .end local v8    # "endFrame":J
    .end local v10    # "frameRate":F
    .end local v12    # "major":I
    .end local v13    # "minor":I
    .end local v14    # "patch":I
    .end local v16    # "assetsJson":Lorg/json/JSONArray;
    .end local v20    # "version":Ljava/lang/String;
    .end local v21    # "versions":[Ljava/lang/String;
    .restart local v5    # "bounds":Landroid/graphics/Rect;
    :cond_1
    const/4 v15, -0x1

    move/from16 v0, v17

    if-eq v0, v15, :cond_0

    .line 261
    move/from16 v0, v22

    int-to-float v15, v0

    mul-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 v19, v0

    .line 262
    .local v19, "scaledWidth":I
    move/from16 v0, v17

    int-to-float v15, v0

    mul-float/2addr v15, v11

    float-to-int v0, v15

    move/from16 v18, v0

    .line 263
    .local v18, "scaledHeight":I
    new-instance v5, Landroid/graphics/Rect;

    .end local v5    # "bounds":Landroid/graphics/Rect;
    const/4 v15, 0x0

    const/16 v23, 0x0

    move/from16 v0, v23

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-direct {v5, v15, v0, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .restart local v5    # "bounds":Landroid/graphics/Rect;
    goto/16 :goto_0
.end method

.method private static parseChars(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 5
    .param p0, "charsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 367
    if-eqz p0, :cond_0

    .line 371
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    .line 372
    .local v2, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v2, :cond_1

    .line 377
    return-void

    .line 368
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_0
    return-void

    .line 374
    .restart local v1    # "i":I
    .restart local v2    # "length":I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    invoke-static {v3, p1}, Lcom/airbnb/lottie/model/FontCharacter$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/FontCharacter;

    move-result-object v0

    .line 375
    .local v0, "character":Lcom/airbnb/lottie/model/FontCharacter;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$600(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/SparseArrayCompat;

    move-result-object v3

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/FontCharacter;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4, v0}, Landroid/support/v4/util/SparseArrayCompat;->put(ILjava/lang/Object;)V

    .line 372
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static parseFonts(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0, "fonts"    # Lorg/json/JSONObject;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 352
    if-eqz p0, :cond_0

    .line 355
    const-string/jumbo v4, "list"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    .line 356
    .local v1, "fontsList":Lorg/json/JSONArray;
    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 360
    .local v3, "length":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-lt v2, v3, :cond_2

    .line 364
    return-void

    .line 353
    .end local v1    # "fontsList":Lorg/json/JSONArray;
    .end local v2    # "i":I
    .end local v3    # "length":I
    :cond_0
    return-void

    .line 357
    .restart local v1    # "fontsList":Lorg/json/JSONArray;
    :cond_1
    return-void

    .line 361
    .restart local v2    # "i":I
    .restart local v3    # "length":I
    :cond_2
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-static {v4}, Lcom/airbnb/lottie/model/Font$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/model/Font;

    move-result-object v0

    .line 362
    .local v0, "font":Lcom/airbnb/lottie/model/Font;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$500(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/Font;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static parseImages(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 6
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 337
    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    .line 341
    .local v3, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v3, :cond_1

    .line 349
    return-void

    .line 338
    .end local v1    # "i":I
    .end local v3    # "length":I
    :cond_0
    return-void

    .line 342
    .restart local v1    # "i":I
    .restart local v3    # "length":I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 343
    .local v0, "assetJson":Lorg/json/JSONObject;
    const-string/jumbo v4, "p"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    invoke-static {v0}, Lcom/airbnb/lottie/LottieImageAsset$Factory;->newInstance(Lorg/json/JSONObject;)Lcom/airbnb/lottie/LottieImageAsset;

    move-result-object v2

    .line 347
    .local v2, "image":Lcom/airbnb/lottie/LottieImageAsset;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$400(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v2}, Lcom/airbnb/lottie/LottieImageAsset;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    .end local v2    # "image":Lcom/airbnb/lottie/LottieImageAsset;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private static parseLayers(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 7
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 286
    const-string/jumbo v5, "layers"

    invoke-virtual {p0, v5}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    .line 291
    .local v2, "jsonLayers":Lorg/json/JSONArray;
    if-eqz v2, :cond_0

    .line 294
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 295
    .local v4, "length":I
    const/4 v1, 0x0

    .line 296
    .local v1, "imageCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-lt v0, v4, :cond_1

    .line 304
    const/4 v5, 0x4

    if-gt v1, v5, :cond_3

    .line 309
    :goto_1
    return-void

    .line 292
    .end local v0    # "i":I
    .end local v1    # "imageCount":I
    .end local v4    # "length":I
    :cond_0
    return-void

    .line 297
    .restart local v0    # "i":I
    .restart local v1    # "imageCount":I
    .restart local v4    # "length":I
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/airbnb/lottie/model/layer/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v3

    .line 298
    .local v3, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v3}, Lcom/airbnb/lottie/model/layer/Layer;->getLayerType()Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    move-result-object v5

    sget-object v6, Lcom/airbnb/lottie/model/layer/Layer$LayerType;->Image:Lcom/airbnb/lottie/model/layer/Layer$LayerType;

    if-eq v5, v6, :cond_2

    .line 301
    :goto_2
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$100(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/List;

    move-result-object v5

    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$200(Lcom/airbnb/lottie/LottieComposition;)Landroid/support/v4/util/LongSparseArray;

    move-result-object v6

    invoke-static {v5, v6, v3}, Lcom/airbnb/lottie/LottieComposition$Factory;->addLayer(Ljava/util/List;Landroid/support/v4/util/LongSparseArray;Lcom/airbnb/lottie/model/layer/Layer;)V

    .line 296
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 305
    .end local v3    # "layer":Lcom/airbnb/lottie/model/layer/Layer;
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "You have "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " images. Lottie should primarily be used with shapes. If you are using Adobe Illustrator, convert the Illustrator layers to shape layers."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_1
.end method

.method private static parsePrecomps(Lorg/json/JSONArray;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 12
    .param p0, "assetsJson"    # Lorg/json/JSONArray;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 313
    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 317
    .local v8, "length":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, v8, :cond_1

    .line 333
    return-void

    .line 314
    .end local v1    # "i":I
    .end local v8    # "length":I
    :cond_0
    return-void

    .line 318
    .restart local v1    # "i":I
    .restart local v8    # "length":I
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    .line 319
    .local v0, "assetJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "layers"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v7

    .line 320
    .local v7, "layersJson":Lorg/json/JSONArray;
    if-eqz v7, :cond_2

    .line 323
    new-instance v6, Ljava/util/ArrayList;

    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    invoke-direct {v6, v9}, Ljava/util/ArrayList;-><init>(I)V

    .line 324
    .local v6, "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    new-instance v5, Landroid/support/v4/util/LongSparseArray;

    invoke-direct {v5}, Landroid/support/v4/util/LongSparseArray;-><init>()V

    .line 325
    .local v5, "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v3, v9, :cond_3

    .line 330
    const-string/jumbo v9, "id"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 331
    .local v2, "id":Ljava/lang/String;
    invoke-static {p1}, Lcom/airbnb/lottie/LottieComposition;->access$300(Lcom/airbnb/lottie/LottieComposition;)Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9, v2, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 317
    .end local v2    # "id":Ljava/lang/String;
    .end local v3    # "j":I
    .end local v5    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .end local v6    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 326
    .restart local v3    # "j":I
    .restart local v5    # "layerMap":Landroid/support/v4/util/LongSparseArray;, "Landroid/support/v4/util/LongSparseArray<Lcom/airbnb/lottie/model/layer/Layer;>;"
    .restart local v6    # "layers":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/model/layer/Layer;>;"
    :cond_3
    invoke-virtual {v7, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    invoke-static {v9, p1}, Lcom/airbnb/lottie/model/layer/Layer$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/layer/Layer;

    move-result-object v4

    .line 327
    .local v4, "layer":Lcom/airbnb/lottie/model/layer/Layer;
    invoke-virtual {v4}, Lcom/airbnb/lottie/model/layer/Layer;->getId()J

    move-result-wide v10

    invoke-virtual {v5, v10, v11, v4}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 328
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method
