.class Landroid/animation/IntKeyframeSet;
.super Landroid/animation/KeyframeSet;
.source "IntKeyframeSet.java"

# interfaces
.implements Landroid/animation/Keyframes$IntKeyframes;


# direct methods
.method public varargs constructor <init>([Landroid/animation/Keyframe$IntKeyframe;)V
    .locals 0
    .param p1, "keyframes"    # [Landroid/animation/Keyframe$IntKeyframe;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Landroid/animation/KeyframeSet;-><init>([Landroid/animation/Keyframe;)V

    .line 36
    return-void
.end method


# virtual methods
.method public clone()Landroid/animation/IntKeyframeSet;
    .locals 6

    .prologue
    .line 45
    iget-object v1, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    .line 46
    .local v1, "keyframes":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Keyframe;>;"
    iget-object v5, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 47
    .local v4, "numKeyframes":I
    new-array v2, v4, [Landroid/animation/Keyframe$IntKeyframe;

    .line 48
    .local v2, "newKeyframes":[Landroid/animation/Keyframe$IntKeyframe;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 49
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe;

    invoke-virtual {v5}, Landroid/animation/Keyframe;->clone()Landroid/animation/Keyframe;

    move-result-object v5

    check-cast v5, Landroid/animation/Keyframe$IntKeyframe;

    aput-object v5, v2, v0

    .line 48
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 51
    :cond_0
    new-instance v3, Landroid/animation/IntKeyframeSet;

    invoke-direct {v3, v2}, Landroid/animation/IntKeyframeSet;-><init>([Landroid/animation/Keyframe$IntKeyframe;)V

    .line 52
    .local v3, "newSet":Landroid/animation/IntKeyframeSet;
    return-object v3
.end method

.method public bridge synthetic clone()Landroid/animation/KeyframeSet;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/animation/Keyframes;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 43
    invoke-virtual {p0}, Landroid/animation/IntKeyframeSet;->clone()Landroid/animation/IntKeyframeSet;

    move-result-object v0

    return-object v0
.end method

.method public getIntValue(F)I
    .locals 12
    .param p1, "fraction"    # F

    .prologue
    const/4 v10, 0x0

    .line 57
    const/4 v9, 0x0

    cmpg-float v9, p1, v9

    if-gtz v9, :cond_2

    .line 58
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    .line 59
    .local v7, "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    const/4 v10, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    .line 60
    .local v4, "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    .line 61
    .local v8, "prevValue":I
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    .line 62
    .local v5, "nextValue":I
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v6

    .line 63
    .local v6, "prevFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    .line 64
    .local v3, "nextFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 65
    .local v1, "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_0

    .line 66
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 68
    :cond_0
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    .line 69
    .local v2, "intervalFraction":F
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_1

    .line 70
    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    .line 69
    :goto_0
    return v9

    .line 71
    :cond_1
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_0

    .line 73
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v5    # "nextValue":I
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v8    # "prevValue":I
    :cond_2
    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v9, p1, v9

    if-ltz v9, :cond_5

    .line 74
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x2

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    .line 75
    .restart local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    .line 76
    .restart local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    .line 77
    .restart local v8    # "prevValue":I
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    .line 78
    .restart local v5    # "nextValue":I
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v6

    .line 79
    .restart local v6    # "prevFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v3

    .line 80
    .restart local v3    # "nextFraction":F
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 81
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    if-eqz v1, :cond_3

    .line 82
    invoke-interface {v1, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result p1

    .line 84
    :cond_3
    sub-float v9, p1, v6

    sub-float v10, v3, v6

    div-float v2, v9, v10

    .line 85
    .restart local v2    # "intervalFraction":F
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_4

    .line 86
    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    .line 85
    :goto_1
    return v9

    .line 87
    :cond_4
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_1

    .line 89
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v3    # "nextFraction":F
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v5    # "nextValue":I
    .end local v6    # "prevFraction":F
    .end local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    .end local v8    # "prevValue":I
    :cond_5
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Keyframe$IntKeyframe;

    .line 90
    .restart local v7    # "prevKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_2
    iget v9, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    if-ge v0, v9, :cond_9

    .line 91
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/animation/Keyframe$IntKeyframe;

    .line 92
    .restart local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v9

    cmpg-float v9, p1, v9

    if-gez v9, :cond_8

    .line 93
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getInterpolator()Landroid/animation/TimeInterpolator;

    move-result-object v1

    .line 94
    .restart local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v9

    sub-float v9, p1, v9

    .line 95
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v10

    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getFraction()F

    move-result v11

    sub-float/2addr v10, v11

    .line 94
    div-float v2, v9, v10

    .line 96
    .restart local v2    # "intervalFraction":F
    invoke-virtual {v7}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v8

    .line 97
    .restart local v8    # "prevValue":I
    invoke-virtual {v4}, Landroid/animation/Keyframe$IntKeyframe;->getIntValue()I

    move-result v5

    .line 99
    .restart local v5    # "nextValue":I
    if-eqz v1, :cond_6

    .line 100
    invoke-interface {v1, v2}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v2

    .line 102
    :cond_6
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    if-nez v9, :cond_7

    .line 103
    sub-int v9, v5, v8

    int-to-float v9, v9

    mul-float/2addr v9, v2

    float-to-int v9, v9

    add-int/2addr v9, v8

    .line 102
    :goto_3
    return v9

    .line 104
    :cond_7
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mEvaluator:Landroid/animation/TypeEvaluator;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v9, v2, v10, v11}, Landroid/animation/TypeEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    goto :goto_3

    .line 107
    .end local v1    # "interpolator":Landroid/animation/TimeInterpolator;
    .end local v2    # "intervalFraction":F
    .end local v5    # "nextValue":I
    .end local v8    # "prevValue":I
    :cond_8
    move-object v7, v4

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 110
    .end local v4    # "nextKeyframe":Landroid/animation/Keyframe$IntKeyframe;
    :cond_9
    iget-object v9, p0, Landroid/animation/IntKeyframeSet;->mKeyframes:Ljava/util/List;

    iget v10, p0, Landroid/animation/IntKeyframeSet;->mNumKeyframes:I

    add-int/lit8 v10, v10, -0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/animation/Keyframe;

    invoke-virtual {v9}, Landroid/animation/Keyframe;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Number;

    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    move-result v9

    return v9
.end method

.method public getType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 115
    const-class v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getValue(F)Ljava/lang/Object;
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Landroid/animation/IntKeyframeSet;->getIntValue(F)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
