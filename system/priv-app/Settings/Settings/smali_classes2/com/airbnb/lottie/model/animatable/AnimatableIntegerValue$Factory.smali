.class public final Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableIntegerValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 2

    .prologue
    .line 41
    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$1;)V

    return-object v0
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 46
    if-nez p0, :cond_1

    .line 49
    :cond_0
    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    .line 50
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;->access$100()Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue$ValueFactory;

    move-result-object v3

    invoke-static {p0, v2, p1, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v2

    .line 51
    invoke-virtual {v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v1

    .line 52
    .local v1, "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Integer;>;"
    iget-object v0, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    .line 53
    .local v0, "initialValue":Ljava/lang/Integer;
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;

    iget-object v3, v1, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    invoke-direct {v2, v3, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableIntegerValue;-><init>(Ljava/util/List;Ljava/lang/Integer;)V

    return-object v2

    .line 46
    .end local v0    # "initialValue":Ljava/lang/Integer;
    .end local v1    # "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Ljava/lang/Integer;>;"
    :cond_1
    const-string/jumbo v2, "x"

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 47
    const-string/jumbo v2, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v2}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_0
.end method
