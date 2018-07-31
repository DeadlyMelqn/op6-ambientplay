.class public final Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties$Factory;
.super Ljava/lang/Object;
.source "AnimatableTextProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
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

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    const/4 v10, 0x0

    .line 32
    if-nez p0, :cond_1

    .line 33
    :cond_0
    new-instance v9, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    invoke-direct {v9, v10, v10, v10, v10}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v9

    .line 32
    :cond_1
    const-string/jumbo v9, "a"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 35
    const-string/jumbo v9, "a"

    invoke-virtual {p0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 36
    .local v0, "animatablePropertiesJson":Lorg/json/JSONObject;
    const-string/jumbo v9, "fc"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 37
    .local v2, "colorJson":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 38
    .local v1, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    if-nez v2, :cond_2

    .line 42
    .end local v1    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    :goto_0
    const-string/jumbo v9, "sc"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    .line 43
    .local v4, "strokeJson":Lorg/json/JSONObject;
    const/4 v3, 0x0

    .line 44
    .local v3, "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    if-nez v4, :cond_3

    .line 48
    .end local v3    # "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    :goto_1
    const-string/jumbo v9, "sw"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 49
    .local v6, "strokeWidthJson":Lorg/json/JSONObject;
    const/4 v5, 0x0

    .line 50
    .local v5, "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    if-nez v6, :cond_4

    .line 54
    .end local v5    # "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_2
    const-string/jumbo v9, "t"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 55
    .local v8, "trackingJson":Lorg/json/JSONObject;
    const/4 v7, 0x0

    .line 56
    .local v7, "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    if-nez v8, :cond_5

    .line 60
    .end local v7    # "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    :goto_3
    new-instance v9, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;

    invoke-direct {v9, v1, v3, v5, v7}, Lcom/airbnb/lottie/model/animatable/AnimatableTextProperties;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;)V

    return-object v9

    .line 39
    .end local v4    # "strokeJson":Lorg/json/JSONObject;
    .end local v6    # "strokeWidthJson":Lorg/json/JSONObject;
    .end local v8    # "trackingJson":Lorg/json/JSONObject;
    .restart local v1    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    :cond_2
    invoke-static {v2, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v1

    goto :goto_0

    .line 45
    .end local v1    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .restart local v3    # "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .restart local v4    # "strokeJson":Lorg/json/JSONObject;
    :cond_3
    invoke-static {v4, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v3

    goto :goto_1

    .line 51
    .end local v3    # "stroke":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .restart local v5    # "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v6    # "strokeWidthJson":Lorg/json/JSONObject;
    :cond_4
    invoke-static {v6, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v5

    goto :goto_2

    .line 57
    .end local v5    # "strokeWidth":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v7    # "tracking":Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;
    .restart local v8    # "trackingJson":Lorg/json/JSONObject;
    :cond_5
    invoke-static {v8, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableFloatValue;

    move-result-object v7

    goto :goto_3
.end method
