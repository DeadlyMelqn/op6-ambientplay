.class public Lcom/airbnb/lottie/utils/JsonUtils;
.super Ljava/lang/Object;
.source "JsonUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
.end method

.method public static pointFromJsonArray(Lorg/json/JSONArray;F)Landroid/graphics/PointF;
    .locals 6
    .param p0, "values"    # Lorg/json/JSONArray;
    .param p1, "scale"    # F

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 19
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 22
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v1, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v1, p1

    const/4 v2, 0x1

    .line 24
    invoke-virtual {p0, v2, v4, v5}, Lorg/json/JSONArray;->optDouble(ID)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 22
    return-object v0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Unable to parse point for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static pointFromJsonObject(Lorg/json/JSONObject;F)Landroid/graphics/PointF;
    .locals 3
    .param p0, "values"    # Lorg/json/JSONObject;
    .param p1, "scale"    # F

    .prologue
    .line 13
    new-instance v0, Landroid/graphics/PointF;

    const-string/jumbo v1, "x"

    .line 14
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/airbnb/lottie/utils/JsonUtils;->valueFromObject(Ljava/lang/Object;)F

    move-result v1

    mul-float/2addr v1, p1

    const-string/jumbo v2, "y"

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/airbnb/lottie/utils/JsonUtils;->valueFromObject(Ljava/lang/Object;)F

    move-result v2

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 13
    return-object v0
.end method

.method public static valueFromObject(Ljava/lang/Object;)F
    .locals 2
    .param p0, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 28
    instance-of v0, p0, Ljava/lang/Float;

    if-nez v0, :cond_0

    .line 30
    instance-of v0, p0, Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 32
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_2

    .line 34
    instance-of v0, p0, Lorg/json/JSONArray;

    if-nez v0, :cond_3

    .line 37
    const/4 v0, 0x0

    return v0

    .line 29
    :cond_0
    check-cast p0, Ljava/lang/Float;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0

    .line 31
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_1
    check-cast p0, Ljava/lang/Integer;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0

    .line 33
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_2
    check-cast p0, Ljava/lang/Double;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    .line 35
    .restart local p0    # "object":Ljava/lang/Object;
    :cond_3
    check-cast p0, Lorg/json/JSONArray;

    .end local p0    # "object":Ljava/lang/Object;
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optDouble(I)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
