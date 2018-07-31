.class public Lcom/airbnb/lottie/model/content/Mask$Factory;
.super Ljava/lang/Object;
.source "Mask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/content/Mask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static newMask(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/content/Mask;
    .locals 8
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 33
    const-string/jumbo v6, "mode"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, "-l_3_R":Ljava/lang/Object;
    const/4 v1, -0x1

    .local v1, "-l_4_I":I
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 44
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeUnknown:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .line 47
    .local v2, "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    :goto_1
    const-string/jumbo v6, "pt"

    .line 48
    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 47
    invoke-static {v6, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;

    move-result-object v3

    .line 49
    .local v3, "maskPath":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    const-string/jumbo v6, "o"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 51
    .local v5, "opacityJson":Lorg/json/JSONObject;
    invoke-static {v5, p1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;->newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    move-result-object v4

    .line 52
    .local v4, "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    new-instance v6, Lcom/airbnb/lottie/model/content/Mask;

    const/4 v7, 0x0

    invoke-direct {v6, v2, v3, v4, v7}, Lcom/airbnb/lottie/model/content/Mask;-><init>(Lcom/airbnb/lottie/model/content/Mask$MaskMode;Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;Lcom/airbnb/lottie/model/content/Mask$1;)V

    return-object v6

    .line 33
    .end local v2    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    .end local v3    # "maskPath":Lcom/airbnb/lottie/model/animatable/AnimatableShapeValue;
    .end local v4    # "opacity":Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .end local v5    # "opacityJson":Lorg/json/JSONObject;
    :sswitch_0
    const-string/jumbo v6, "a"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string/jumbo v6, "s"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v6, "i"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    .line 35
    :pswitch_0
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeAdd:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .restart local v2    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    goto :goto_1

    .line 38
    .end local v2    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    :pswitch_1
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeSubtract:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .restart local v2    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    goto :goto_1

    .line 41
    .end local v2    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    :pswitch_2
    sget-object v2, Lcom/airbnb/lottie/model/content/Mask$MaskMode;->MaskModeIntersect:Lcom/airbnb/lottie/model/content/Mask$MaskMode;

    .restart local v2    # "maskMode":Lcom/airbnb/lottie/model/content/Mask$MaskMode;
    goto :goto_1

    .line 33
    nop

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_0
        0x69 -> :sswitch_2
        0x73 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
