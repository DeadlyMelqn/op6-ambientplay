.class Lcom/airbnb/lottie/model/content/ShapeFill$Factory;
.super Ljava/lang/Object;
.source "ShapeFill.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/ShapeFill;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/ShapeFill;
    .locals 11
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    const/4 v10, 0x1

    const/4 v6, 0x0

    .line 37
    const/4 v4, 0x0

    .line 39
    .local v4, "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    const/4 v5, 0x0

    .line 40
    .local v5, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    const-string/jumbo v0, "nm"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 42
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v0, "c"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    .line 43
    .local v8, "jsonColor":Lorg/json/JSONObject;
    if-nez v8, :cond_0

    .line 47
    .end local v4    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    :goto_0
    const-string/jumbo v0, "o"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v9

    .line 48
    .local v9, "jsonOpacity":Lorg/json/JSONObject;
    if-nez v9, :cond_1

    .line 51
    .end local v5    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :goto_1
    const-string/jumbo v0, "fillEnabled"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 53
    .local v2, "fillEnabled":Z
    const-string/jumbo v0, "r"

    invoke-virtual {p0, v0, v10}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v7

    .line 54
    .local v7, "fillTypeInt":I
    if-eq v7, v10, :cond_2

    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    .line 56
    .local v3, "fillType":Landroid/graphics/Path$FillType;
    :goto_2
    new-instance v0, Lcom/airbnb/lottie/model/content/ShapeFill;

    invoke-direct/range {v0 .. v6}, Lcom/airbnb/lottie/model/content/ShapeFill;-><init>(Ljava/lang/String;ZLandroid/graphics/Path$FillType;Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/content/ShapeFill$1;)V

    return-object v0

    .line 44
    .end local v2    # "fillEnabled":Z
    .end local v3    # "fillType":Landroid/graphics/Path$FillType;
    .end local v7    # "fillTypeInt":I
    .end local v9    # "jsonOpacity":Lorg/json/JSONObject;
    .restart local v4    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .restart local v5    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    :cond_0
    invoke-static {v8, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableColorValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;

    move-result-object v4

    goto :goto_0

    .line 49
    .end local v4    # "color":Lcom/airbnb/lottie/model/animatable/AnimatableColorValue;
    .restart local v9    # "jsonOpacity":Lorg/json/JSONObject;
    :cond_1
    invoke-static {v9, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v5

    goto :goto_1

    .line 54
    .end local v5    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .restart local v2    # "fillEnabled":Z
    .restart local v7    # "fillTypeInt":I
    :cond_2
    sget-object v3, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    goto :goto_2
.end method
