.class public abstract Landroid/support/v17/leanback/widget/ParallaxEffect;
.super Ljava/lang/Object;
.source "ParallaxEffect.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;
    }
.end annotation


# instance fields
.field final mMarkerValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/Parallax$PropertyMarkerValue;",
            ">;"
        }
    .end annotation
.end field

.field final mTargets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v17/leanback/widget/ParallaxTarget;",
            ">;"
        }
    .end annotation
.end field

.field final mTotalWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field final mWeights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method abstract calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;
.end method

.method abstract calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F
.end method

.method final getFractionWithWeightAdjusted(FI)F
    .locals 5
    .param p1, "fraction"    # F
    .param p2, "markerValueIndex"    # I

    .prologue
    const/4 v4, 0x2

    .line 254
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_0

    .line 255
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    .line 256
    .local v1, "hasWeightsDefined":Z
    :goto_0
    if-eqz v1, :cond_2

    .line 258
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    iget-object v3, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 259
    .local v0, "allWeights":F
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mWeights:Ljava/util/List;

    add-int/lit8 v3, p2, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float/2addr v2, p1

    div-float p1, v2, v0

    .line 260
    if-lt p2, v4, :cond_0

    .line 261
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTotalWeights:Ljava/util/List;

    add-int/lit8 v3, p2, -0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    div-float/2addr v2, v0

    add-float/2addr p1, v2

    .line 272
    .end local v0    # "allWeights":F
    .end local v1    # "hasWeightsDefined":Z
    :cond_0
    :goto_1
    return p1

    .line 255
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "hasWeightsDefined":Z
    goto :goto_0

    .line 265
    :cond_2
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    int-to-float v0, v2

    .line 266
    .restart local v0    # "allWeights":F
    div-float/2addr p1, v0

    .line 267
    if-lt p2, v4, :cond_0

    .line 268
    add-int/lit8 v2, p2, -0x1

    int-to-float v2, v2

    div-float/2addr v2, v0

    add-float/2addr p1, v2

    goto :goto_1
.end method

.method public final performMapping(Landroid/support/v17/leanback/widget/Parallax;)V
    .locals 7
    .param p1, "source"    # Landroid/support/v17/leanback/widget/Parallax;

    .prologue
    .line 200
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mMarkerValues:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    .line 201
    return-void

    .line 203
    :cond_0
    instance-of v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect$IntEffect;

    if-eqz v5, :cond_2

    .line 204
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->verifyIntProperties()V

    .line 208
    :goto_0
    const/4 v2, 0x0

    .line 209
    .local v2, "fractionCalculated":Z
    const/4 v1, 0x0

    .line 210
    .local v1, "fraction":F
    const/4 v0, 0x0

    .line 211
    .local v0, "directValue":Ljava/lang/Number;
    const/4 v3, 0x0

    .end local v0    # "directValue":Ljava/lang/Number;
    .local v3, "i":I
    :goto_1
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_5

    .line 212
    iget-object v5, p0, Landroid/support/v17/leanback/widget/ParallaxEffect;->mTargets:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v17/leanback/widget/ParallaxTarget;

    .line 213
    .local v4, "target":Landroid/support/v17/leanback/widget/ParallaxTarget;
    invoke-virtual {v4}, Landroid/support/v17/leanback/widget/ParallaxTarget;->isDirectMapping()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 214
    if-nez v0, :cond_1

    .line 215
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->calculateDirectValue(Landroid/support/v17/leanback/widget/Parallax;)Ljava/lang/Number;

    move-result-object v0

    .line 217
    :cond_1
    invoke-virtual {v4, v0}, Landroid/support/v17/leanback/widget/ParallaxTarget;->directUpdate(Ljava/lang/Number;)V

    .line 211
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 206
    .end local v1    # "fraction":F
    .end local v2    # "fractionCalculated":Z
    .end local v3    # "i":I
    .end local v4    # "target":Landroid/support/v17/leanback/widget/ParallaxTarget;
    :cond_2
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/Parallax;->verifyFloatProperties()V

    goto :goto_0

    .line 219
    .restart local v1    # "fraction":F
    .restart local v2    # "fractionCalculated":Z
    .restart local v3    # "i":I
    .restart local v4    # "target":Landroid/support/v17/leanback/widget/ParallaxTarget;
    :cond_3
    if-nez v2, :cond_4

    .line 220
    const/4 v2, 0x1

    .line 221
    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/widget/ParallaxEffect;->calculateFraction(Landroid/support/v17/leanback/widget/Parallax;)F

    move-result v1

    .line 223
    :cond_4
    invoke-virtual {v4, v1}, Landroid/support/v17/leanback/widget/ParallaxTarget;->update(F)V

    goto :goto_2

    .line 226
    .end local v4    # "target":Landroid/support/v17/leanback/widget/ParallaxTarget;
    :cond_5
    return-void
.end method
