.class Landroid/graphics/ColorSpace$Connector$Rgb;
.super Landroid/graphics/ColorSpace$Connector;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace$Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Rgb"
.end annotation


# instance fields
.field private final mDestination:Landroid/graphics/ColorSpace$Rgb;

.field private final mSource:Landroid/graphics/ColorSpace$Rgb;

.field private final mTransform:[F


# direct methods
.method constructor <init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V
    .locals 8
    .param p1, "source"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "destination"    # Landroid/graphics/ColorSpace$Rgb;
    .param p3, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .prologue
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v7, v6

    .line 3597
    invoke-direct/range {v0 .. v7}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;[FLandroid/graphics/ColorSpace$Connector;)V

    .line 3598
    iput-object p1, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    .line 3599
    iput-object p2, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    .line 3600
    invoke-static {p1, p2, p3}, Landroid/graphics/ColorSpace$Connector$Rgb;->computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    .line 3601
    return-void
.end method

.method private static computeTransform(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)[F
    .locals 12
    .param p0, "source"    # Landroid/graphics/ColorSpace$Rgb;
    .param p1, "destination"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .prologue
    const/4 v8, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3637
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/ColorSpace;->-wrap0([F[F)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3639
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-get2(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v7

    invoke-static {v6, v7}, Landroid/graphics/ColorSpace;->-wrap9([F[F)[F

    move-result-object v6

    return-object v6

    .line 3642
    :cond_0
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    .line 3643
    .local v5, "transform":[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-get2(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v2

    .line 3645
    .local v2, "inverseTransform":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/ColorSpace;->-wrap10([F)[F

    move-result-object v4

    .line 3646
    .local v4, "srcXYZ":[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/ColorSpace;->-wrap10([F)[F

    move-result-object v1

    .line 3648
    .local v1, "dstXYZ":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {v6, v7}, Landroid/graphics/ColorSpace;->-wrap0([F[F)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3650
    sget-object v6, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v6, v6, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 3651
    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    .line 3649
    invoke-static {v6, v4, v7}, Landroid/graphics/ColorSpace;->-wrap5([F[F[F)[F

    move-result-object v3

    .line 3652
    .local v3, "srcAdaptation":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v3, v6}, Landroid/graphics/ColorSpace;->-wrap9([F[F)[F

    move-result-object v5

    .line 3655
    .end local v3    # "srcAdaptation":[F
    :cond_1
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    sget-object v7, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    invoke-static {v6, v7}, Landroid/graphics/ColorSpace;->-wrap0([F[F)Z

    move-result v6

    if-nez v6, :cond_2

    .line 3657
    sget-object v6, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    iget-object v6, v6, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 3658
    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v7

    invoke-static {v7, v8}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v7

    .line 3656
    invoke-static {v6, v1, v7}, Landroid/graphics/ColorSpace;->-wrap5([F[F[F)[F

    move-result-object v0

    .line 3659
    .local v0, "dstAdaptation":[F
    invoke-static {p1}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v6

    invoke-static {v0, v6}, Landroid/graphics/ColorSpace;->-wrap9([F[F)[F

    move-result-object v6

    invoke-static {v6}, Landroid/graphics/ColorSpace;->-wrap6([F)[F

    move-result-object v2

    .line 3662
    .end local v0    # "dstAdaptation":[F
    :cond_2
    sget-object v6, Landroid/graphics/ColorSpace$RenderIntent;->ABSOLUTE:Landroid/graphics/ColorSpace$RenderIntent;

    if-ne p2, v6, :cond_3

    .line 3664
    new-array v6, v8, [F

    .line 3665
    aget v7, v4, v9

    aget v8, v1, v9

    div-float/2addr v7, v8

    aput v7, v6, v9

    .line 3666
    aget v7, v4, v10

    aget v8, v1, v10

    div-float/2addr v7, v8

    aput v7, v6, v10

    .line 3667
    aget v7, v4, v11

    aget v8, v1, v11

    div-float/2addr v7, v8

    aput v7, v6, v11

    .line 3663
    invoke-static {v6, v5}, Landroid/graphics/ColorSpace;->-wrap7([F[F)[F

    move-result-object v5

    .line 3671
    :cond_3
    invoke-static {v2, v5}, Landroid/graphics/ColorSpace;->-wrap9([F[F)[F

    move-result-object v6

    return-object v6
.end method


# virtual methods
.method public transform([F)[F
    .locals 7
    .param p1, "rgb"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3605
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-get0(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 3606
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-get0(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 3607
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mSource:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-get0(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 3608
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    .line 3609
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-get1(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 3610
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-get1(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 3611
    iget-object v0, p0, Landroid/graphics/ColorSpace$Connector$Rgb;->mDestination:Landroid/graphics/ColorSpace$Rgb;

    invoke-static {v0}, Landroid/graphics/ColorSpace$Rgb;->-get1(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v0

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 3612
    return-object p1
.end method
