.class public final Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$Factory;
.super Ljava/lang/Object;
.source "AnimatableTextFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;
    .locals 4
    .param p0, "json"    # Lorg/json/JSONObject;
    .param p1, "composition"    # Lcom/airbnb/lottie/LottieComposition;

    .prologue
    .line 27
    if-nez p0, :cond_1

    .line 30
    :cond_0
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 31
    invoke-static {}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$ValueFactory;->access$000()Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame$ValueFactory;

    move-result-object v2

    invoke-static {p0, v1, p1, v2}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v1

    .line 32
    invoke-virtual {v1}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v0

    .line 33
    .local v0, "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Lcom/airbnb/lottie/model/DocumentData;>;"
    new-instance v2, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;

    iget-object v3, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v1, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v1, Lcom/airbnb/lottie/model/DocumentData;

    invoke-direct {v2, v3, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableTextFrame;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/DocumentData;)V

    return-object v2

    .line 27
    .end local v0    # "result":Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;, "Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result<Lcom/airbnb/lottie/model/DocumentData;>;"
    :cond_1
    const-string/jumbo v1, "x"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    const-string/jumbo v1, "Lottie doesn\'t support expressions."

    invoke-virtual {p1, v1}, Lcom/airbnb/lottie/LottieComposition;->addWarning(Ljava/lang/String;)V

    goto :goto_0
.end method
