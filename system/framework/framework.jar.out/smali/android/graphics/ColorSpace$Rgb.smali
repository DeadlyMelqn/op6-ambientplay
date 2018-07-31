.class public Landroid/graphics/ColorSpace$Rgb;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rgb"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    }
.end annotation


# instance fields
.field private final mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mEotf:Ljava/util/function/DoubleUnaryOperator;

.field private final mInverseTransform:[F

.field private final mIsSrgb:Z

.field private final mIsWideGamut:Z

.field private final mMax:F

.field private final mMin:F

.field private final mOetf:Ljava/util/function/DoubleUnaryOperator;

.field private final mPrimaries:[F

.field private mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

.field private final mTransform:[F

.field private final mWhitePoint:[F


# direct methods
.method static synthetic -get0(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1
    .param p0, "-this"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method static synthetic -get1(Landroid/graphics/ColorSpace$Rgb;)Ljava/util/function/DoubleUnaryOperator;
    .locals 1
    .param p0, "-this"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method static synthetic -get2(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 1
    .param p0, "-this"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    return-object v0
.end method

.method static synthetic -get3(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 1
    .param p0, "-this"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method static synthetic -get4(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 1
    .param p0, "-this"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    return-object v0
.end method

.method static synthetic -get5(Landroid/graphics/ColorSpace$Rgb;)[F
    .locals 1
    .param p0, "-this"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    return-object v0
.end method

.method private constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V
    .locals 4
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "transform"    # [F
    .param p3, "whitePoint"    # [F

    .prologue
    .line 2633
    invoke-virtual {p1}, Landroid/graphics/ColorSpace$Rgb;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V

    .line 2635
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 2636
    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 2638
    iput-object p2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 2639
    invoke-static {p2}, Landroid/graphics/ColorSpace;->-wrap6([F)[F

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 2641
    iget v0, p1, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iput v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 2642
    iget v0, p1, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iput v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 2644
    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2645
    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2647
    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2648
    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2650
    iget-boolean v0, p1, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 2651
    iget-boolean v0, p1, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    iput-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    .line 2653
    iget-object v0, p1, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iput-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2654
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$Rgb;)V
    .locals 0
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace$Rgb;
    .param p2, "transform"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "-this3"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FD)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "gamma"    # D

    .prologue
    .line 2434
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2435
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .prologue
    .line 2312
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2313
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "toXYZ"    # [F
    .param p3, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p4, "eotf"    # Ljava/util/function/DoubleUnaryOperator;

    .prologue
    .line 2234
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computePrimaries([F)[F

    move-result-object v2

    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->computeWhitePoint([F)[F

    move-result-object v3

    .line 2235
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    .line 2234
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    .line 2236
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FD)V
    .locals 10
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "gamma"    # D

    .prologue
    .line 2474
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    .line 2475
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FDFFI)V
    .locals 14
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "gamma"    # D
    .param p6, "min"    # F
    .param p7, "max"    # F
    .param p8, "id"    # I

    .prologue
    .line 2523
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_0

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v6

    .line 2525
    :goto_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/function/DoubleUnaryOperator;->identity()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v7

    :goto_1
    move-object v2, p0

    move-object v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    .line 2522
    invoke-direct/range {v2 .. v10}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    .line 2528
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p4, v2

    if-nez v2, :cond_2

    .line 2529
    new-instance v3, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Ljava/lang/Math;->ulp(F)F

    move-result v2

    float-to-double v4, v2

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double v10, v6, v4

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v12, p4

    invoke-direct/range {v3 .. v13}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 2528
    :goto_2
    iput-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2531
    return-void

    .line 2524
    :cond_0
    new-instance v6, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;

    const/4 v2, 0x0

    move-wide/from16 v0, p4

    invoke-direct {v6, v2, v0, v1}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;-><init>(BD)V

    goto :goto_0

    .line 2526
    :cond_1
    new-instance v7, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;

    const/4 v2, 0x1

    move-wide/from16 v0, p4

    invoke-direct {v7, v2, v0, v1}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$2;-><init>(BD)V

    goto :goto_1

    .line 2530
    :cond_2
    new-instance v3, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const-wide/16 v6, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide/from16 v12, p4

    invoke-direct/range {v3 .. v13}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    goto :goto_2
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "gamma"    # D
    .param p6, "min"    # F
    .param p7, "max"    # F
    .param p8, "id"    # I
    .param p9, "-this7"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .prologue
    .line 2352
    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    .line 2353
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p5, "id"    # I

    .prologue
    const-wide/16 v2, 0x0

    .line 2396
    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 2397
    new-instance v4, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;-><init>(BLjava/lang/Object;)V

    .line 2401
    :goto_0
    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    iget-wide v0, p4, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1

    .line 2402
    new-instance v5, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;

    const/4 v0, 0x2

    invoke-direct {v5, v0, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;-><init>(BLjava/lang/Object;)V

    .line 2406
    :goto_1
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v8, p5

    .line 2395
    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    .line 2407
    iput-object p4, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .line 2408
    return-void

    .line 2399
    :cond_0
    new-instance v4, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;

    const/4 v0, 0x1

    invoke-direct {v4, v0, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;-><init>(BLjava/lang/Object;)V

    goto :goto_0

    .line 2404
    :cond_1
    new-instance v5, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;

    const/4 v0, 0x3

    invoke-direct {v5, v0, p4}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;-><init>(BLjava/lang/Object;)V

    goto :goto_1
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p5, "id"    # I
    .param p6, "-this5"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    invoke-direct/range {p0 .. p5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FF)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p5, "eotf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p6, "min"    # F
    .param p7, "max"    # F

    .prologue
    .line 2285
    const/4 v8, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    .line 2286
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p5, "eotf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p6, "min"    # F
    .param p7, "max"    # F
    .param p8, "id"    # I

    .prologue
    .line 2581
    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    const/4 v2, 0x0

    move/from16 v0, p8

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V

    .line 2583
    if-eqz p2, :cond_0

    array-length v1, p2

    const/4 v2, 0x6

    if-eq v1, v2, :cond_1

    array-length v1, p2

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    .line 2584
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The color space\'s primaries must be defined as an array of 6 floats in xyY or 9 floats in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2588
    :cond_1
    if-eqz p3, :cond_2

    array-length v1, p3

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    array-length v1, p3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    .line 2589
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The color space\'s white point must be defined as an array of 2 floats in xyY or 3 float in XYZ"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2593
    :cond_3
    if-eqz p4, :cond_4

    if-nez p5, :cond_5

    .line 2594
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "The transfer functions of a color space cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2598
    :cond_5
    cmpl-float v1, p6, p7

    if-ltz v1, :cond_6

    .line 2599
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid range: min="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", max="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2600
    const-string/jumbo v3, "; min must be strictly < max"

    .line 2599
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2603
    :cond_6
    invoke-static {p3}, Landroid/graphics/ColorSpace$Rgb;->xyWhitePoint([F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    .line 2604
    invoke-static {p2}, Landroid/graphics/ColorSpace$Rgb;->xyPrimaries([F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    .line 2606
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v1, v2}, Landroid/graphics/ColorSpace$Rgb;->computeXYZMatrix([F[F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    .line 2607
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v1}, Landroid/graphics/ColorSpace;->-wrap6([F)[F

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    .line 2609
    iput-object p4, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2610
    iput-object p5, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2612
    iput p6, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    .line 2613
    move/from16 v0, p7

    iput v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    .line 2615
    new-instance v8, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;

    const/4 v1, 0x4

    invoke-direct {v8, v1, p0}, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8$1;-><init>(BLjava/lang/Object;)V

    .line 2616
    .local v8, "clamp":Ljava/util/function/DoubleUnaryOperator;
    invoke-interface {p4, v8}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    .line 2617
    invoke-interface {v8, p5}, Ljava/util/function/DoubleUnaryOperator;->andThen(Ljava/util/function/DoubleUnaryOperator;)Ljava/util/function/DoubleUnaryOperator;

    move-result-object v1

    iput-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    .line 2621
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    move/from16 v0, p7

    invoke-static {v1, p6, v0}, Landroid/graphics/ColorSpace$Rgb;->isWideGamut([FFF)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    .line 2622
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    move-object v3, p4

    move-object v4, p5

    move v5, p6

    move/from16 v6, p7

    move/from16 v7, p8

    invoke-static/range {v1 .. v7}, Landroid/graphics/ColorSpace$Rgb;->isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z

    move-result v1

    iput-boolean v1, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    .line 2623
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$Rgb;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "primaries"    # [F
    .param p3, "whitePoint"    # [F
    .param p4, "oetf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p5, "eotf"    # Ljava/util/function/DoubleUnaryOperator;
    .param p6, "min"    # F
    .param p7, "max"    # F
    .param p8, "id"    # I
    .param p9, "-this8"    # Landroid/graphics/ColorSpace$Rgb;

    .prologue
    invoke-direct/range {p0 .. p8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)V

    return-void
.end method

.method private static area([F)F
    .locals 10
    .param p0, "primaries"    # [F

    .prologue
    .line 3130
    const/4 v8, 0x0

    aget v4, p0, v8

    .line 3131
    .local v4, "Rx":F
    const/4 v8, 0x1

    aget v5, p0, v8

    .line 3132
    .local v5, "Ry":F
    const/4 v8, 0x2

    aget v2, p0, v8

    .line 3133
    .local v2, "Gx":F
    const/4 v8, 0x3

    aget v3, p0, v8

    .line 3134
    .local v3, "Gy":F
    const/4 v8, 0x4

    aget v0, p0, v8

    .line 3135
    .local v0, "Bx":F
    const/4 v8, 0x5

    aget v1, p0, v8

    .line 3136
    .local v1, "By":F
    mul-float v8, v4, v3

    mul-float v9, v5, v0

    add-float/2addr v8, v9

    mul-float v9, v2, v1

    add-float/2addr v8, v9

    mul-float v9, v3, v0

    sub-float/2addr v8, v9

    mul-float v9, v5, v2

    sub-float/2addr v8, v9

    mul-float v9, v4, v1

    sub-float v6, v8, v9

    .line 3137
    .local v6, "det":F
    const/high16 v8, 0x3f000000    # 0.5f

    mul-float v7, v8, v6

    .line 3138
    .local v7, "r":F
    const/4 v8, 0x0

    cmpg-float v8, v7, v8

    if-gez v8, :cond_0

    neg-float v7, v7

    .end local v7    # "r":F
    :cond_0
    return v7
.end method

.method private clamp(D)D
    .locals 3
    .param p1, "x"    # D

    .prologue
    .line 3020
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    float-to-double v0, v0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    :goto_0
    float-to-double p1, v0

    .end local p1    # "x":D
    :cond_0
    return-wide p1

    .restart local p1    # "x":D
    :cond_1
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    float-to-double v0, v0

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    goto :goto_0
.end method

.method private static computePrimaries([F)[F
    .locals 12
    .param p0, "toXYZ"    # [F

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 3252
    new-array v6, v11, [F

    fill-array-data v6, :array_0

    invoke-static {p0, v6}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v4

    .line 3253
    .local v4, "r":[F
    new-array v6, v11, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v6}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v2

    .line 3254
    .local v2, "g":[F
    new-array v6, v11, [F

    fill-array-data v6, :array_2

    invoke-static {p0, v6}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v0

    .line 3256
    .local v0, "b":[F
    aget v6, v4, v8

    aget v7, v4, v9

    add-float/2addr v6, v7

    aget v7, v4, v10

    add-float v5, v6, v7

    .line 3257
    .local v5, "rSum":F
    aget v6, v2, v8

    aget v7, v2, v9

    add-float/2addr v6, v7

    aget v7, v2, v10

    add-float v3, v6, v7

    .line 3258
    .local v3, "gSum":F
    aget v6, v0, v8

    aget v7, v0, v9

    add-float/2addr v6, v7

    aget v7, v0, v10

    add-float v1, v6, v7

    .line 3260
    .local v1, "bSum":F
    const/4 v6, 0x6

    new-array v6, v6, [F

    .line 3261
    aget v7, v4, v8

    div-float/2addr v7, v5

    aput v7, v6, v8

    aget v7, v4, v9

    div-float/2addr v7, v5

    aput v7, v6, v9

    .line 3262
    aget v7, v2, v8

    div-float/2addr v7, v3

    aput v7, v6, v10

    aget v7, v2, v9

    div-float/2addr v7, v3

    aput v7, v6, v11

    .line 3263
    aget v7, v0, v8

    div-float/2addr v7, v1

    const/4 v8, 0x4

    aput v7, v6, v8

    aget v7, v0, v9

    div-float/2addr v7, v1

    const/4 v8, 0x5

    aput v7, v6, v8

    .line 3260
    return-object v6

    .line 3252
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
    .end array-data

    .line 3253
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 3254
    :array_2
    .array-data 4
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeWhitePoint([F)[F
    .locals 7
    .param p0, "toXYZ"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3279
    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {p0, v2}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v1

    .line 3280
    .local v1, "w":[F
    aget v2, v1, v4

    aget v3, v1, v5

    add-float/2addr v2, v3

    aget v3, v1, v6

    add-float v0, v2, v3

    .line 3281
    .local v0, "sum":F
    new-array v2, v6, [F

    aget v3, v1, v4

    div-float/2addr v3, v0

    aput v3, v2, v4

    aget v3, v1, v5

    div-float/2addr v3, v0

    aput v3, v2, v5

    return-object v2

    .line 3279
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private static computeXYZMatrix([F[F)[F
    .locals 27
    .param p0, "primaries"    # [F
    .param p1, "whitePoint"    # [F

    .prologue
    .line 3358
    const/16 v23, 0x0

    aget v13, p0, v23

    .line 3359
    .local v13, "Rx":F
    const/16 v23, 0x1

    aget v15, p0, v23

    .line 3360
    .local v15, "Ry":F
    const/16 v23, 0x2

    aget v8, p0, v23

    .line 3361
    .local v8, "Gx":F
    const/16 v23, 0x3

    aget v10, p0, v23

    .line 3362
    .local v10, "Gy":F
    const/16 v23, 0x4

    aget v3, p0, v23

    .line 3363
    .local v3, "Bx":F
    const/16 v23, 0x5

    aget v5, p0, v23

    .line 3364
    .local v5, "By":F
    const/16 v23, 0x0

    aget v16, p1, v23

    .line 3365
    .local v16, "Wx":F
    const/16 v23, 0x1

    aget v18, p1, v23

    .line 3367
    .local v18, "Wy":F
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v13

    div-float v21, v23, v15

    .line 3368
    .local v21, "oneRxRy":F
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v8

    div-float v20, v23, v10

    .line 3369
    .local v20, "oneGxGy":F
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v3

    div-float v19, v23, v5

    .line 3370
    .local v19, "oneBxBy":F
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v16

    div-float v22, v23, v18

    .line 3372
    .local v22, "oneWxWy":F
    div-float v14, v13, v15

    .line 3373
    .local v14, "RxRy":F
    div-float v9, v8, v10

    .line 3374
    .local v9, "GxGy":F
    div-float v4, v3, v5

    .line 3375
    .local v4, "BxBy":F
    div-float v17, v16, v18

    .line 3378
    .local v17, "WxWy":F
    sub-float v23, v22, v21

    sub-float v24, v9, v14

    mul-float v23, v23, v24

    sub-float v24, v17, v14

    sub-float v25, v20, v21

    mul-float v24, v24, v25

    sub-float v23, v23, v24

    .line 3379
    sub-float v24, v19, v21

    sub-float v25, v9, v14

    mul-float v24, v24, v25

    sub-float v25, v4, v14

    sub-float v26, v20, v21

    mul-float v25, v25, v26

    sub-float v24, v24, v25

    .line 3378
    div-float v1, v23, v24

    .line 3380
    .local v1, "BY":F
    sub-float v23, v17, v14

    sub-float v24, v4, v14

    mul-float v24, v24, v1

    sub-float v23, v23, v24

    sub-float v24, v9, v14

    div-float v6, v23, v24

    .line 3381
    .local v6, "GY":F
    const/high16 v23, 0x3f800000    # 1.0f

    sub-float v23, v23, v6

    sub-float v11, v23, v1

    .line 3383
    .local v11, "RY":F
    div-float v12, v11, v15

    .line 3384
    .local v12, "RYRy":F
    div-float v7, v6, v10

    .line 3385
    .local v7, "GYGy":F
    div-float v2, v1, v5

    .line 3387
    .local v2, "BYBy":F
    const/16 v23, 0x9

    move/from16 v0, v23

    new-array v0, v0, [F

    move-object/from16 v23, v0

    .line 3388
    mul-float v24, v12, v13

    const/16 v25, 0x0

    aput v24, v23, v25

    const/16 v24, 0x1

    aput v11, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v13

    sub-float v24, v24, v15

    mul-float v24, v24, v12

    const/16 v25, 0x2

    aput v24, v23, v25

    .line 3389
    mul-float v24, v7, v8

    const/16 v25, 0x3

    aput v24, v23, v25

    const/16 v24, 0x4

    aput v6, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v8

    sub-float v24, v24, v10

    mul-float v24, v24, v7

    const/16 v25, 0x5

    aput v24, v23, v25

    .line 3390
    mul-float v24, v2, v3

    const/16 v25, 0x6

    aput v24, v23, v25

    const/16 v24, 0x7

    aput v1, v23, v24

    const/high16 v24, 0x3f800000    # 1.0f

    sub-float v24, v24, v3

    sub-float v24, v24, v5

    mul-float v24, v24, v2

    const/16 v25, 0x8

    aput v24, v23, v25

    .line 3387
    return-object v23
.end method

.method private static contains([F[F)Z
    .locals 11
    .param p0, "p1"    # [F
    .param p1, "p2"    # [F

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 3217
    const/4 v1, 0x6

    new-array v0, v1, [F

    .line 3218
    aget v1, p0, v6

    aget v2, p1, v6

    sub-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v7

    aget v2, p1, v7

    sub-float/2addr v1, v2

    aput v1, v0, v7

    .line 3219
    aget v1, p0, v8

    aget v2, p1, v8

    sub-float/2addr v1, v2

    aput v1, v0, v8

    aget v1, p0, v9

    aget v2, p1, v9

    sub-float/2addr v1, v2

    aput v1, v0, v9

    .line 3220
    aget v1, p0, v10

    aget v2, p1, v10

    sub-float/2addr v1, v2

    aput v1, v0, v10

    const/4 v1, 0x5

    aget v1, p0, v1

    const/4 v2, 0x5

    aget v2, p1, v2

    sub-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 3223
    .local v0, "p0":[F
    aget v1, v0, v6

    aget v2, v0, v7

    aget v3, p1, v6

    aget v4, p1, v10

    sub-float/2addr v3, v4

    aget v4, p1, v7

    const/4 v5, 0x5

    aget v5, p1, v5

    sub-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_0

    .line 3224
    aget v1, p1, v6

    aget v2, p1, v8

    sub-float/2addr v1, v2

    aget v2, p1, v7

    aget v3, p1, v9

    sub-float/2addr v2, v3

    aget v3, v0, v6

    aget v4, v0, v7

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    .line 3225
    :cond_0
    return v6

    .line 3228
    :cond_1
    aget v1, v0, v8

    aget v2, v0, v9

    aget v3, p1, v8

    aget v4, p1, v6

    sub-float/2addr v3, v4

    aget v4, p1, v9

    aget v5, p1, v7

    sub-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_2

    .line 3229
    aget v1, p1, v8

    aget v2, p1, v10

    sub-float/2addr v1, v2

    aget v2, p1, v9

    const/4 v3, 0x5

    aget v3, p1, v3

    sub-float/2addr v2, v3

    aget v3, v0, v8

    aget v4, v0, v9

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_3

    .line 3230
    :cond_2
    return v6

    .line 3233
    :cond_3
    aget v1, v0, v10

    const/4 v2, 0x5

    aget v2, v0, v2

    aget v3, p1, v10

    aget v4, p1, v8

    sub-float/2addr v3, v4

    const/4 v4, 0x5

    aget v4, p1, v4

    aget v5, p1, v9

    sub-float/2addr v4, v5

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-ltz v1, :cond_4

    .line 3234
    aget v1, p1, v10

    aget v2, p1, v6

    sub-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p1, v2

    aget v3, p1, v7

    sub-float/2addr v2, v3

    aget v3, v0, v10

    const/4 v4, 0x5

    aget v4, v0, v4

    invoke-static {v1, v2, v3, v4}, Landroid/graphics/ColorSpace$Rgb;->cross(FFFF)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gez v1, :cond_5

    .line 3235
    :cond_4
    return v6

    .line 3237
    :cond_5
    return v7
.end method

.method private static cross(FFFF)F
    .locals 2
    .param p0, "ax"    # F
    .param p1, "ay"    # F
    .param p2, "bx"    # F
    .param p3, "by"    # F

    .prologue
    .line 3151
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method private static isSrgb([F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFI)Z
    .locals 8
    .param p0, "primaries"    # [F
    .param p1, "whitePoint"    # [F
    .param p2, "OETF"    # Ljava/util/function/DoubleUnaryOperator;
    .param p3, "EOTF"    # Ljava/util/function/DoubleUnaryOperator;
    .param p4, "min"    # F
    .param p5, "max"    # F
    .param p6, "id"    # I

    .prologue
    const/4 v3, 0x1

    const-wide v6, 0x3fe000d1b71758e2L    # 0.5001

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v2, 0x0

    .line 3085
    if-nez p6, :cond_0

    return v3

    .line 3086
    :cond_0
    invoke-static {}, Landroid/graphics/ColorSpace;->-get2()[F

    move-result-object v0

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->-wrap0([F[F)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3087
    return v2

    .line 3089
    :cond_1
    sget-object v0, Landroid/graphics/ColorSpace$Rgb;->ILLUMINANT_D65:[F

    invoke-static {p1, v0}, Landroid/graphics/ColorSpace;->-wrap0([F[F)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3090
    return v2

    .line 3092
    :cond_2
    invoke-interface {p2, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_3

    return v2

    .line 3093
    :cond_3
    invoke-interface {p3, v4, v5}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    cmpl-double v0, v0, v6

    if-lez v0, :cond_4

    return v2

    .line 3094
    :cond_4
    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_5

    return v2

    .line 3095
    :cond_5
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p5, v0

    if-eqz v0, :cond_6

    return v2

    .line 3096
    :cond_6
    return v3
.end method

.method private static isWideGamut([FFF)Z
    .locals 4
    .param p0, "primaries"    # [F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3116
    invoke-static {p0}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v2

    invoke-static {}, Landroid/graphics/ColorSpace;->-get1()[F

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/ColorSpace$Rgb;->area([F)F

    move-result v3

    div-float/2addr v2, v3

    const v3, 0x3f666666    # 0.9f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    .line 3117
    invoke-static {}, Landroid/graphics/ColorSpace;->-get2()[F

    move-result-object v2

    invoke-static {p0, v2}, Landroid/graphics/ColorSpace$Rgb;->contains([F[F)Z

    move-result v2

    .line 3116
    if-nez v2, :cond_1

    .line 3117
    :cond_0
    const/4 v2, 0x0

    cmpg-float v2, p1, v2

    if-gez v2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v2, p2, v2

    if-lez v2, :cond_2

    .line 3116
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 3117
    goto :goto_0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_106776(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 13
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .prologue
    .line 2397
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    .line 2398
    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    .line 2397
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-wrap2(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_106922(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 19
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .prologue
    .line 2399
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    .line 2400
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    .line 2399
    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-wrap1(DDDDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_107152(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 13
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .prologue
    .line 2402
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    .line 2403
    iget-wide v6, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v8, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v10, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide v0, p1

    .line 2402
    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->-wrap4(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_107295(Landroid/graphics/ColorSpace$Rgb$TransferParameters;D)D
    .locals 19
    .param p0, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "x"    # D

    .prologue
    .line 2404
    move-object/from16 v0, p0

    iget-wide v4, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    move-object/from16 v0, p0

    iget-wide v6, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    .line 2405
    move-object/from16 v0, p0

    iget-wide v10, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    move-object/from16 v0, p0

    iget-wide v14, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    move-wide/from16 v16, v0

    move-wide/from16 v2, p1

    .line 2404
    invoke-static/range {v2 .. v17}, Landroid/graphics/ColorSpace;->-wrap3(DDDDDDDD)D

    move-result-wide v2

    return-wide v2
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_113213(DD)D
    .locals 4
    .param p0, "gamma"    # D
    .param p2, "x"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 2524
    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .end local p2    # "x":D
    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p0

    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace$Rgb_113354(DD)D
    .locals 4
    .param p0, "gamma"    # D
    .param p2, "x"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 2526
    cmpg-double v2, p2, v0

    if-gez v2, :cond_0

    move-wide p2, v0

    .end local p2    # "x":D
    :cond_0
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method private static xyPrimaries([F)[F
    .locals 9
    .param p0, "primaries"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x6

    const/4 v4, 0x0

    .line 3295
    new-array v1, v5, [F

    .line 3298
    .local v1, "xyPrimaries":[F
    array-length v2, p0

    const/16 v3, 0x9

    if-ne v2, v3, :cond_0

    .line 3301
    aget v2, p0, v4

    aget v3, p0, v6

    add-float/2addr v2, v3

    const/4 v3, 0x2

    aget v3, p0, v3

    add-float v0, v2, v3

    .line 3302
    .local v0, "sum":F
    aget v2, p0, v4

    div-float/2addr v2, v0

    aput v2, v1, v4

    .line 3303
    aget v2, p0, v6

    div-float/2addr v2, v0

    aput v2, v1, v6

    .line 3305
    aget v2, p0, v7

    aget v3, p0, v8

    add-float/2addr v2, v3

    const/4 v3, 0x5

    aget v3, p0, v3

    add-float v0, v2, v3

    .line 3306
    aget v2, p0, v7

    div-float/2addr v2, v0

    const/4 v3, 0x2

    aput v2, v1, v3

    .line 3307
    aget v2, p0, v8

    div-float/2addr v2, v0

    aput v2, v1, v7

    .line 3309
    aget v2, p0, v5

    const/4 v3, 0x7

    aget v3, p0, v3

    add-float/2addr v2, v3

    const/16 v3, 0x8

    aget v3, p0, v3

    add-float v0, v2, v3

    .line 3310
    aget v2, p0, v5

    div-float/2addr v2, v0

    aput v2, v1, v8

    .line 3311
    const/4 v2, 0x7

    aget v2, p0, v2

    div-float/2addr v2, v0

    const/4 v3, 0x5

    aput v2, v1, v3

    .line 3316
    .end local v0    # "sum":F
    :goto_0
    return-object v1

    .line 3313
    :cond_0
    invoke-static {p0, v4, v1, v4, v5}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_0
.end method

.method private static xyWhitePoint([F)[F
    .locals 7
    .param p0, "whitePoint"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3330
    new-array v1, v6, [F

    .line 3333
    .local v1, "xyWhitePoint":[F
    array-length v2, p0

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 3334
    aget v2, p0, v4

    aget v3, p0, v5

    add-float/2addr v2, v3

    aget v3, p0, v6

    add-float v0, v2, v3

    .line 3335
    .local v0, "sum":F
    aget v2, p0, v4

    div-float/2addr v2, v0

    aput v2, v1, v4

    .line 3336
    aget v2, p0, v5

    div-float/2addr v2, v0

    aput v2, v1, v5

    .line 3341
    .end local v0    # "sum":F
    :goto_0
    return-object v1

    .line 3338
    :cond_0
    invoke-static {p0, v4, v1, v4, v6}, Ljava/lang/System;->arraycopy([FI[FII)V

    goto :goto_0
.end method


# virtual methods
.method synthetic -android_graphics_ColorSpace$Rgb-mthref-0(D)D
    .locals 3

    .prologue
    .line 2615
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Rgb;->clamp(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3025
    if-ne p0, p1, :cond_0

    return v4

    .line 3026
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Rgb;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    .line 3027
    :cond_2
    invoke-super {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    :cond_3
    move-object v0, p1

    .line 3029
    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    .line 3031
    .local v0, "rgb":Landroid/graphics/ColorSpace$Rgb;
    iget v1, v0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_4

    return v3

    .line 3032
    :cond_4
    iget v1, v0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    iget v2, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_5

    return v3

    .line 3033
    :cond_5
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_6

    return v3

    .line 3034
    :cond_6
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_7

    return v3

    .line 3035
    :cond_7
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v1, :cond_8

    .line 3036
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3037
    :cond_8
    iget-object v1, v0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v1, :cond_9

    .line 3038
    return v4

    .line 3041
    :cond_9
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    return v3

    .line 3042
    :cond_a
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    iget-object v2, v0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public fromLinear(FFF)[F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 2969
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->fromLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public fromLinear([F)[F
    .locals 7
    .param p1, "v"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2992
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 2993
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 2994
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 2995
    return-object p1
.end method

.method public fromXyz([F)[F
    .locals 7
    .param p1, "v"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3012
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    .line 3013
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 3014
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 3015
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 3016
    return-object p1
.end method

.method public getEotf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    .prologue
    .line 2859
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getInverseTransform()[F
    .locals 2

    .prologue
    .line 2810
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getInverseTransform([F)[F
    .locals 3
    .param p1, "inverseTransform"    # [F

    .prologue
    const/4 v2, 0x0

    .line 2790
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mInverseTransform:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 2791
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 2897
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    return v0
.end method

.method public getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 2892
    iget v0, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    return v0
.end method

.method public getOetf()Ljava/util/function/DoubleUnaryOperator;
    .locals 1

    .prologue
    .line 2835
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedOetf:Ljava/util/function/DoubleUnaryOperator;

    return-object v0
.end method

.method public getPrimaries()[F
    .locals 2

    .prologue
    .line 2726
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getPrimaries([F)[F
    .locals 3
    .param p1, "primaries"    # [F

    .prologue
    const/4 v2, 0x0

    .line 2709
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 2710
    return-object p1
.end method

.method public getTransferParameters()Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .locals 1

    .prologue
    .line 2877
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    return-object v0
.end method

.method public getTransform()[F
    .locals 2

    .prologue
    .line 2768
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getTransform([F)[F
    .locals 3
    .param p1, "transform"    # [F

    .prologue
    const/4 v2, 0x0

    .line 2748
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 2749
    return-object p1
.end method

.method public getWhitePoint()[F
    .locals 2

    .prologue
    .line 2690
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getWhitePoint([F)[F
    .locals 3
    .param p1, "whitePoint"    # [F

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 2672
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    aget v0, v0, v1

    aput v0, p1, v1

    .line 2673
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    aget v0, v0, v2

    aput v0, p1, v2

    .line 2674
    return-object p1
.end method

.method public hashCode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3047
    invoke-super {p0}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v0

    .line 3048
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mWhitePoint:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int v0, v1, v3

    .line 3049
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mPrimaries:[F

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([F)I

    move-result v3

    add-int v0, v1, v3

    .line 3050
    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_2

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMin:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 3051
    mul-int/lit8 v3, v0, 0x1f

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_3

    iget v1, p0, Landroid/graphics/ColorSpace$Rgb;->mMax:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    :goto_1
    add-int v0, v3, v1

    .line 3052
    mul-int/lit8 v1, v0, 0x1f

    .line 3053
    iget-object v3, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-eqz v3, :cond_0

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->hashCode()I

    move-result v2

    .line 3052
    :cond_0
    add-int v0, v1, v2

    .line 3054
    iget-object v1, p0, Landroid/graphics/ColorSpace$Rgb;->mTransferParameters:Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    if-nez v1, :cond_1

    .line 3055
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mOetf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 3056
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace$Rgb;->mEotf:Ljava/util/function/DoubleUnaryOperator;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 3058
    :cond_1
    return v0

    :cond_2
    move v1, v2

    .line 3050
    goto :goto_0

    :cond_3
    move v1, v2

    .line 3051
    goto :goto_1
.end method

.method public isSrgb()Z
    .locals 1

    .prologue
    .line 2882
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsSrgb:Z

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .prologue
    .line 2887
    iget-boolean v0, p0, Landroid/graphics/ColorSpace$Rgb;->mIsWideGamut:Z

    return v0
.end method

.method public toLinear(FFF)[F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 2920
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace$Rgb;->toLinear([F)[F

    move-result-object v0

    return-object v0
.end method

.method public toLinear([F)[F
    .locals 7
    .param p1, "v"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2943
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 2944
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 2945
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 2946
    return-object p1
.end method

.method public toXyz([F)[F
    .locals 7
    .param p1, "v"    # [F

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3002
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v4

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v4

    .line 3003
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v5

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v5

    .line 3004
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mClampedEotf:Ljava/util/function/DoubleUnaryOperator;

    aget v1, p1, v6

    float-to-double v2, v1

    invoke-interface {v0, v2, v3}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p1, v6

    .line 3005
    iget-object v0, p0, Landroid/graphics/ColorSpace$Rgb;->mTransform:[F

    invoke-static {v0, p1}, Landroid/graphics/ColorSpace;->-wrap8([F[F)[F

    move-result-object v0

    return-object v0
.end method
