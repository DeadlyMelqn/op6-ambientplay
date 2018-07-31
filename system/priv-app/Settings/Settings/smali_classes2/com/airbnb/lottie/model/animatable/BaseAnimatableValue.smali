.class public abstract Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;
.super Ljava/lang/Object;
.source "BaseAnimatableValue.java"

# interfaces
.implements Lcom/airbnb/lottie/model/animatable/AnimatableValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/model/animatable/AnimatableValue",
        "<TV;TO;>;"
    }
.end annotation


# instance fields
.field final initialValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final keyframes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TV;>;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    .local p1, "initialValue":Ljava/lang/Object;, "TV;"
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;-><init>(Ljava/util/List;Ljava/lang/Object;)V

    .line 18
    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/airbnb/lottie/animation/Keyframe",
            "<TV;>;>;TV;)V"
        }
    .end annotation

    .prologue
    .line 20
    .local p0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    .local p1, "keyframes":Ljava/util/List;, "Ljava/util/List<Lcom/airbnb/lottie/animation/Keyframe<TV;>;>;"
    .local p2, "initialValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    .line 22
    iput-object p2, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->initialValue:Ljava/lang/Object;

    .line 23
    return-void
.end method


# virtual methods
.method convertType(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)TO;"
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    .local p1, "value":Ljava/lang/Object;, "TV;"
    return-object p1
.end method

.method public getInitialValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TO;"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    iget-object v0, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->initialValue:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->convertType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasAnimation()Z
    .locals 2

    .prologue
    .local p0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    const/4 v0, 0x0

    .line 36
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    .local p0, "this":Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;, "Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue<TV;TO;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "parseInitialValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->initialValue:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v1, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 47
    :cond_0
    const-string/jumbo v1, ", values="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/airbnb/lottie/model/animatable/BaseAnimatableValue;->keyframes:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method
