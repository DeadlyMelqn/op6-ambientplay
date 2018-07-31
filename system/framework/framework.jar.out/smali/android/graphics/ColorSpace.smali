.class public abstract Landroid/graphics/ColorSpace;
.super Ljava/lang/Object;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/ColorSpace$Adaptation;,
        Landroid/graphics/ColorSpace$Connector;,
        Landroid/graphics/ColorSpace$Lab;,
        Landroid/graphics/ColorSpace$Model;,
        Landroid/graphics/ColorSpace$Named;,
        Landroid/graphics/ColorSpace$RenderIntent;,
        Landroid/graphics/ColorSpace$Renderer;,
        Landroid/graphics/ColorSpace$Rgb;,
        Landroid/graphics/ColorSpace$Xyz;
    }
.end annotation


# static fields
.field public static final ILLUMINANT_A:[F

.field public static final ILLUMINANT_B:[F

.field public static final ILLUMINANT_C:[F

.field public static final ILLUMINANT_D50:[F

.field private static final ILLUMINANT_D50_XYZ:[F

.field public static final ILLUMINANT_D55:[F

.field public static final ILLUMINANT_D60:[F

.field public static final ILLUMINANT_D65:[F

.field public static final ILLUMINANT_D75:[F

.field public static final ILLUMINANT_E:[F

.field public static final MAX_ID:I = 0x3f

.field public static final MIN_ID:I = -0x1

.field private static final NTSC_1953_PRIMARIES:[F

.field private static final SRGB_PRIMARIES:[F

.field private static final sNamedColorSpaces:[Landroid/graphics/ColorSpace;


# instance fields
.field private final mId:I

.field private final mModel:Landroid/graphics/ColorSpace$Model;

.field private final mName:Ljava/lang/String;


# direct methods
.method static synthetic -get0()[F
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    return-object v0
.end method

.method static synthetic -get1()[F
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    return-object v0
.end method

.method static synthetic -get2()[F
    .locals 1

    sget-object v0, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    return-object v0
.end method

.method static synthetic -wrap0([F[F)Z
    .locals 1
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(DDDDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .prologue
    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap10([F)[F
    .locals 1
    .param p0, "xyY"    # [F

    .prologue
    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap11([F)V
    .locals 0
    .param p0, "xyY"    # [F

    .prologue
    invoke-static {p0}, Landroid/graphics/ColorSpace;->xyYToUv([F)V

    return-void
.end method

.method static synthetic -wrap2(DDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .prologue
    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap3(DDDDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .prologue
    invoke-static/range {p0 .. p15}, Landroid/graphics/ColorSpace;->response(DDDDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap4(DDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .prologue
    invoke-static/range {p0 .. p11}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic -wrap5([F[F[F)[F
    .locals 1
    .param p0, "matrix"    # [F
    .param p1, "srcWhitePoint"    # [F
    .param p2, "dstWhitePoint"    # [F

    .prologue
    invoke-static {p0, p1, p2}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap6([F)[F
    .locals 1
    .param p0, "m"    # [F

    .prologue
    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap7([F[F)[F
    .locals 1
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap8([F[F)[F
    .locals 1
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap9([F[F)[F
    .locals 1
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .prologue
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 17

    .prologue
    .line 141
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_A:[F

    .line 146
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_1

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_B:[F

    .line 151
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    .line 157
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D55:[F

    .line 167
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_5

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    .line 173
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_6

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 178
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_7

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D75:[F

    .line 183
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_8

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_E:[F

    .line 198
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_9

    sput-object v0, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 199
    const/4 v0, 0x6

    new-array v0, v0, [F

    fill-array-data v0, :array_a

    sput-object v0, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [F

    fill-array-data v0, :array_b

    sput-object v0, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    .line 203
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Landroid/graphics/ColorSpace;

    sput-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    .line 1429
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    .line 1430
    const-string/jumbo v14, "sRGB IEC61966-2.1"

    .line 1431
    sget-object v15, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 1432
    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1433
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 1434
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    .line 1429
    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    .line 1436
    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1437
    const-string/jumbo v1, "sRGB IEC61966-2.1 (Linear)"

    .line 1438
    sget-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 1439
    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1442
    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    .line 1440
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1441
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1436
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    .line 1444
    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1445
    const-string/jumbo v1, "scRGB-nl IEC 61966-2-2:2003"

    .line 1446
    sget-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 1447
    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    sget-object v4, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$INST$0:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    sget-object v5, Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;->$INST$1:Landroid/graphics/-$Lambda$ZrP-zejiEXAqfwV-MyP5lE9mYC8;

    .line 1451
    sget-object v6, Landroid/graphics/ColorSpace$Named;->EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v6}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    .line 1450
    const v6, -0x40b374bc    # -0.799f

    const v7, 0x40198937    # 2.399f

    .line 1444
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLjava/util/function/DoubleUnaryOperator;Ljava/util/function/DoubleUnaryOperator;FFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    .line 1453
    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1454
    const-string/jumbo v1, "scRGB IEC 61966-2-2:2003"

    .line 1455
    sget-object v2, Landroid/graphics/ColorSpace;->SRGB_PRIMARIES:[F

    .line 1456
    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1459
    sget-object v4, Landroid/graphics/ColorSpace$Named;->LINEAR_EXTENDED_SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    .line 1457
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1458
    const/high16 v6, -0x41000000    # -0.5f

    const v7, 0x40eff7cf    # 7.499f

    .line 1453
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    .line 1461
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    .line 1462
    const-string/jumbo v14, "Rec. ITU-R BT.709-5"

    .line 1463
    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_c

    .line 1464
    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1465
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v4, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 1466
    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT709:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    .line 1461
    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    .line 1468
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    .line 1469
    const-string/jumbo v14, "Rec. ITU-R BT.2020-1"

    .line 1470
    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_d

    .line 1471
    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1472
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1c03d1b450c3L    # 0.9096697898662786

    const-wide v4, 0x3fb71fe1725d79e9L    # 0.09033021013372146

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4d9e83e425aeeL    # 0.08145

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 1473
    sget-object v2, Landroid/graphics/ColorSpace$Named;->BT2020:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    .line 1468
    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    .line 1475
    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1476
    const-string/jumbo v1, "SMPTE RP 431-2-2007 DCI (P3)"

    .line 1477
    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_e

    .line 1478
    const/4 v3, 0x2

    new-array v3, v3, [F

    fill-array-data v3, :array_f

    .line 1481
    sget-object v4, Landroid/graphics/ColorSpace$Named;->DCI_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    .line 1479
    const-wide v4, 0x4004cccccccccccdL    # 2.6

    .line 1480
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1475
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    .line 1483
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    .line 1484
    const-string/jumbo v14, "Display P3"

    .line 1485
    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_10

    .line 1486
    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1487
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa3f7ced916872bL    # 0.039

    const-wide v10, 0x4003333333333333L    # 2.4

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 1488
    sget-object v2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    .line 1483
    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    .line 1490
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    .line 1491
    const-string/jumbo v14, "NTSC (1953)"

    .line 1492
    sget-object v15, Landroid/graphics/ColorSpace;->NTSC_1953_PRIMARIES:[F

    .line 1493
    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_C:[F

    .line 1494
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v4, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 1495
    sget-object v2, Landroid/graphics/ColorSpace$Named;->NTSC_1953:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    .line 1490
    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    .line 1497
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    .line 1498
    const-string/jumbo v14, "SMPTE-C RGB"

    .line 1499
    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_11

    .line 1500
    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1501
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide v2, 0x3fed1e0c942633b7L    # 0.9099181073703367

    const-wide v4, 0x3fb70f9b5ece624dL    # 0.09008189262966333

    const-wide v6, 0x3fcc71c71c71c71cL    # 0.2222222222222222

    const-wide v8, 0x3fb4bc6a7ef9db23L    # 0.081

    const-wide v10, 0x4001c71c71c71c72L    # 2.2222222222222223

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 1502
    sget-object v2, Landroid/graphics/ColorSpace$Named;->SMPTE_C:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    .line 1497
    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    .line 1504
    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1505
    const-string/jumbo v1, "Adobe RGB (1998)"

    .line 1506
    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_12

    .line 1507
    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D65:[F

    .line 1510
    sget-object v4, Landroid/graphics/ColorSpace$Named;->ADOBE_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    .line 1508
    const-wide v4, 0x400199999999999aL    # 2.2

    .line 1509
    const/4 v6, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1504
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    .line 1512
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v12

    new-instance v13, Landroid/graphics/ColorSpace$Rgb;

    .line 1513
    const-string/jumbo v14, "ROMM RGB ISO 22028-2:2013"

    .line 1514
    const/4 v1, 0x6

    new-array v15, v1, [F

    fill-array-data v15, :array_13

    .line 1515
    sget-object v16, Landroid/graphics/ColorSpace;->ILLUMINANT_D50:[F

    .line 1516
    new-instance v1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3fb0000000000000L    # 0.0625

    const-wide v8, 0x3f9fff79c842fa51L    # 0.031248

    const-wide v10, 0x3ffccccccccccccdL    # 1.8

    invoke-direct/range {v1 .. v11}, Landroid/graphics/ColorSpace$Rgb$TransferParameters;-><init>(DDDDD)V

    .line 1517
    sget-object v2, Landroid/graphics/ColorSpace$Named;->PRO_PHOTO_RGB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v7

    .line 1512
    const/4 v8, 0x0

    move-object v2, v13

    move-object v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FLandroid/graphics/ColorSpace$Rgb$TransferParameters;ILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v13, v0, v12

    .line 1519
    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1520
    const-string/jumbo v1, "SMPTE ST 2065-1:2012 ACES"

    .line 1521
    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_14

    .line 1522
    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    .line 1525
    sget-object v4, Landroid/graphics/ColorSpace$Named;->ACES:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    .line 1523
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1524
    const v6, -0x38802000    # -65504.0f

    const v7, 0x477fe000    # 65504.0f

    .line 1519
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    .line 1527
    sget-object v10, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v0, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v11

    new-instance v0, Landroid/graphics/ColorSpace$Rgb;

    .line 1528
    const-string/jumbo v1, "Academy S-2014-004 ACEScg"

    .line 1529
    const/4 v2, 0x6

    new-array v2, v2, [F

    fill-array-data v2, :array_15

    .line 1530
    sget-object v3, Landroid/graphics/ColorSpace;->ILLUMINANT_D60:[F

    .line 1533
    sget-object v4, Landroid/graphics/ColorSpace$Named;->ACESCG:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v8

    .line 1531
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 1532
    const v6, -0x38802000    # -65504.0f

    const v7, 0x477fe000    # 65504.0f

    .line 1527
    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Landroid/graphics/ColorSpace$Rgb;-><init>(Ljava/lang/String;[F[FDFFILandroid/graphics/ColorSpace$Rgb;)V

    aput-object v0, v10, v11

    .line 1535
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    new-instance v2, Landroid/graphics/ColorSpace$Xyz;

    .line 1536
    const-string/jumbo v3, "Generic XYZ"

    .line 1537
    sget-object v4, Landroid/graphics/ColorSpace$Named;->CIE_XYZ:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v4

    .line 1535
    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Xyz;)V

    aput-object v2, v0, v1

    .line 1539
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    new-instance v2, Landroid/graphics/ColorSpace$Lab;

    .line 1540
    const-string/jumbo v3, "Generic L*a*b*"

    .line 1541
    sget-object v4, Landroid/graphics/ColorSpace$Named;->CIE_LAB:Landroid/graphics/ColorSpace$Named;

    invoke-virtual {v4}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v4

    .line 1539
    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Lab;)V

    aput-object v2, v0, v1

    .line 136
    return-void

    .line 141
    nop

    :array_0
    .array-data 4
        0x3ee527e5    # 0.44757f
        0x3ed09d49    # 0.40745f
    .end array-data

    .line 146
    :array_1
    .array-data 4
        0x3eb2641b    # 0.34842f
        0x3eb4063a    # 0.35161f
    .end array-data

    .line 151
    :array_2
    .array-data 4
        0x3e9ec02f    # 0.31006f
        0x3ea1dfb9    # 0.31616f
    .end array-data

    .line 157
    :array_3
    .array-data 4
        0x3eb0fba9
        0x3eb78d50    # 0.3585f
    .end array-data

    .line 162
    :array_4
    .array-data 4
        0x3eaa32f4    # 0.33242f
        0x3eb1e258    # 0.34743f
    .end array-data

    .line 167
    :array_5
    .array-data 4
        0x3ea4b33e    # 0.32168f
        0x3eace315    # 0.33767f
    .end array-data

    .line 173
    :array_6
    .array-data 4
        0x3ea01b86
        0x3ea8754f    # 0.32902f
    .end array-data

    .line 178
    :array_7
    .array-data 4
        0x3e991926    # 0.29902f
        0x3ea13405    # 0.31485f
    .end array-data

    .line 183
    :array_8
    .array-data 4
        0x3eaaaa3b    # 0.33333f
        0x3eaaaa3b    # 0.33333f
    .end array-data

    .line 198
    :array_9
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 199
    :array_a
    .array-data 4
        0x3f2b851f    # 0.67f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e0f5c29    # 0.14f
        0x3da3d70a    # 0.08f
    .end array-data

    .line 200
    :array_b
    .array-data 4
        0x3f76d699    # 0.964212f
        0x3f800000    # 1.0f
        0x3f533f85
    .end array-data

    .line 1463
    :array_c
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e99999a    # 0.3f
        0x3f19999a    # 0.6f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 1470
    :array_d
    .array-data 4
        0x3f353f7d    # 0.708f
        0x3e958106    # 0.292f
        0x3e2e147b    # 0.17f
        0x3f4c0831    # 0.797f
        0x3e0624dd    # 0.131f
        0x3d3c6a7f    # 0.046f
    .end array-data

    .line 1477
    :array_e
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 1478
    :array_f
    .array-data 4
        0x3ea0c49c    # 0.314f
        0x3eb3b646    # 0.351f
    .end array-data

    .line 1485
    :array_10
    .array-data 4
        0x3f2e147b    # 0.68f
        0x3ea3d70a    # 0.32f
        0x3e87ae14    # 0.265f
        0x3f30a3d7    # 0.69f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 1499
    :array_11
    .array-data 4
        0x3f2147ae    # 0.63f
        0x3eae147b    # 0.34f
        0x3e9eb852    # 0.31f
        0x3f1851ec    # 0.595f
        0x3e1eb852    # 0.155f
        0x3d8f5c29    # 0.07f
    .end array-data

    .line 1506
    :array_12
    .array-data 4
        0x3f23d70a    # 0.64f
        0x3ea8f5c3    # 0.33f
        0x3e570a3d    # 0.21f
        0x3f35c28f    # 0.71f
        0x3e19999a    # 0.15f
        0x3d75c28f    # 0.06f
    .end array-data

    .line 1514
    :array_13
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x3e236e2f    # 0.1596f
        0x3f572474    # 0.8404f
        0x3d15e9e2    # 0.0366f
        0x38d1b717    # 1.0E-4f
    .end array-data

    .line 1521
    :array_14
    .array-data 4
        0x3f3c154d    # 0.7347f
        0x3e87d567    # 0.2653f
        0x0
        0x3f800000    # 1.0f
        0x38d1b717    # 1.0E-4f
        -0x42624dd3    # -0.077f
    .end array-data

    .line 1529
    :array_15
    .array-data 4
        0x3f36872b    # 0.713f
        0x3e960419    # 0.293f
        0x3e28f5c3    # 0.165f
        0x3f547ae1    # 0.83f
        0x3e03126f    # 0.128f
        0x3d343958    # 0.044f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Landroid/graphics/ColorSpace$Model;
    .param p3, "id"    # I

    .prologue
    .line 865
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 870
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 871
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The name of a color space cannot be null and must contain at least 1 character"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 875
    :cond_1
    if-nez p2, :cond_2

    .line 876
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "A color space must have a model"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 879
    :cond_2
    const/4 v0, -0x1

    if-lt p3, v0, :cond_3

    const/16 v0, 0x3f

    if-le p3, v0, :cond_4

    .line 880
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The id must be between -1 and 63"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 884
    :cond_4
    iput-object p1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    .line 885
    iput-object p2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    .line 886
    iput p3, p0, Landroid/graphics/ColorSpace;->mId:I

    .line 887
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "model"    # Landroid/graphics/ColorSpace$Model;
    .param p3, "id"    # I
    .param p4, "-this3"    # Landroid/graphics/ColorSpace;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;I)V

    return-void
.end method

.method private static absRcpResponse(DDDDDD)D
    .locals 12
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .prologue
    .line 1571
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    neg-double v0, p0

    :goto_0
    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->rcpResponse(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method private static absResponse(DDDDDD)D
    .locals 12
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .prologue
    .line 1578
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    neg-double v0, p0

    :goto_0
    move-wide v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move-wide/from16 v10, p10

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->response(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->copySign(DD)D

    move-result-wide v0

    return-wide v0

    :cond_0
    move-wide v0, p0

    goto :goto_0
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;
    .locals 1
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p1, "whitePoint"    # [F

    .prologue
    .line 1297
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public static adapt(Landroid/graphics/ColorSpace;[FLandroid/graphics/ColorSpace$Adaptation;)Landroid/graphics/ColorSpace;
    .locals 7
    .param p0, "colorSpace"    # Landroid/graphics/ColorSpace;
    .param p1, "whitePoint"    # [F
    .param p2, "adaptation"    # Landroid/graphics/ColorSpace$Adaptation;

    .prologue
    const/4 v6, 0x3

    .line 1327
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v4

    sget-object v5, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v4, v5, :cond_2

    move-object v1, p0

    .line 1328
    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    .line 1329
    .local v1, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get5(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    invoke-static {v4, p1}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object p0

    .line 1331
    :cond_0
    array-length v4, p1

    if-ne v4, v6, :cond_1

    .line 1332
    invoke-static {p1, v6}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v3

    .line 1333
    .local v3, "xyz":[F
    :goto_0
    iget-object v4, p2, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 1334
    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Rgb;->getWhitePoint()[F

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v5

    .line 1333
    invoke-static {v4, v5, v3}, Landroid/graphics/ColorSpace;->chromaticAdaptation([F[F[F)[F

    move-result-object v0

    .line 1335
    .local v0, "adaptationTransform":[F
    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v4

    invoke-static {v0, v4}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v2

    .line 1337
    .local v2, "transform":[F
    new-instance v4, Landroid/graphics/ColorSpace$Rgb;

    const/4 v5, 0x0

    invoke-direct {v4, v1, v2, p1, v5}, Landroid/graphics/ColorSpace$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;[F[FLandroid/graphics/ColorSpace$Rgb;)V

    return-object v4

    .line 1332
    .end local v0    # "adaptationTransform":[F
    .end local v2    # "transform":[F
    .end local v3    # "xyz":[F
    :cond_1
    invoke-static {p1}, Landroid/graphics/ColorSpace;->xyYToXyz([F)[F

    move-result-object v3

    .restart local v3    # "xyz":[F
    goto :goto_0

    .line 1339
    .end local v1    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    .end local v3    # "xyz":[F
    :cond_2
    return-object p0
.end method

.method private static chromaticAdaptation([F[F[F)[F
    .locals 8
    .param p0, "matrix"    # [F
    .param p1, "srcWhitePoint"    # [F
    .param p2, "dstWhitePoint"    # [F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1774
    invoke-static {p0, p1}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v2

    .line 1775
    .local v2, "srcLMS":[F
    invoke-static {p0, p2}, Landroid/graphics/ColorSpace;->mul3x3Float3([F[F)[F

    move-result-object v1

    .line 1777
    .local v1, "dstLMS":[F
    const/4 v3, 0x3

    new-array v0, v3, [F

    aget v3, v1, v5

    aget v4, v2, v5

    div-float/2addr v3, v4

    aput v3, v0, v5

    aget v3, v1, v6

    aget v4, v2, v6

    div-float/2addr v3, v4

    aput v3, v0, v6

    aget v3, v1, v7

    aget v4, v2, v7

    div-float/2addr v3, v4

    aput v3, v0, v7

    .line 1778
    .local v0, "LMS":[F
    invoke-static {p0}, Landroid/graphics/ColorSpace;->inverse3x3([F)[F

    move-result-object v3

    invoke-static {v0, p0}, Landroid/graphics/ColorSpace;->mul3x3Diag([F[F)[F

    move-result-object v4

    invoke-static {v3, v4}, Landroid/graphics/ColorSpace;->mul3x3([F[F)[F

    move-result-object v3

    return-object v3
.end method

.method private static compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z
    .locals 8
    .param p0, "a"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;
    .param p1, "b"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide v6, 0x3f50624dd2f1a9fcL    # 0.001

    .line 1592
    if-nez p0, :cond_0

    if-nez p1, :cond_0

    return v0

    .line 1593
    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 1594
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->a:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    .line 1595
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->b:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    .line 1596
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->c:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    .line 1597
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->d:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v4, 0x3f60624dd2f1a9fcL    # 0.002

    cmpg-double v2, v2, v4

    if-gez v2, :cond_2

    .line 1598
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->e:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    .line 1599
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->f:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_2

    .line 1600
    iget-wide v2, p0, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    iget-wide v4, p1, Landroid/graphics/ColorSpace$Rgb$TransferParameters;->g:D

    sub-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpg-double v2, v2, v6

    if-gez v2, :cond_1

    .line 1593
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 1600
    goto :goto_0

    :cond_2
    move v0, v1

    .line 1593
    goto :goto_0
.end method

.method private static compare([F[F)Z
    .locals 5
    .param p0, "a"    # [F
    .param p1, "b"    # [F

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1611
    if-ne p0, p1, :cond_0

    return v4

    .line 1612
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    .line 1613
    aget v1, p0, v0

    aget v2, p1, v0

    invoke-static {v1, v2}, Ljava/lang/Float;->compare(FF)I

    move-result v1

    if-eqz v1, :cond_1

    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3a83126f    # 0.001f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_1

    return v3

    .line 1612
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1615
    :cond_2
    return v4
.end method

.method public static connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 1
    .param p0, "source"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 1245
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .locals 2
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .prologue
    .line 1267
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    .line 1269
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    .line 1270
    new-instance v1, Landroid/graphics/ColorSpace$Connector$Rgb;

    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    .end local p0    # "source":Landroid/graphics/ColorSpace;
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Rgb;

    invoke-direct {v1, p0, v0, p1}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v1

    .line 1273
    .restart local p0    # "source":Landroid/graphics/ColorSpace;
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    sget-object v1, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;
    .locals 1
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 1189
    sget-object v0, Landroid/graphics/ColorSpace$RenderIntent;->PERCEPTUAL:Landroid/graphics/ColorSpace$RenderIntent;

    invoke-static {p0, p1, v0}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0
.end method

.method public static connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)Landroid/graphics/ColorSpace$Connector;
    .locals 2
    .param p0, "source"    # Landroid/graphics/ColorSpace;
    .param p1, "destination"    # Landroid/graphics/ColorSpace;
    .param p2, "intent"    # Landroid/graphics/ColorSpace$RenderIntent;

    .prologue
    .line 1215
    invoke-virtual {p0, p1}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/graphics/ColorSpace$Connector;->identity(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v0

    return-object v0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    sget-object v1, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v0, v1, :cond_1

    .line 1218
    new-instance v0, Landroid/graphics/ColorSpace$Connector$Rgb;

    check-cast p0, Landroid/graphics/ColorSpace$Rgb;

    .end local p0    # "source":Landroid/graphics/ColorSpace;
    check-cast p1, Landroid/graphics/ColorSpace$Rgb;

    .end local p1    # "destination":Landroid/graphics/ColorSpace;
    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector$Rgb;-><init>(Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$Rgb;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0

    .line 1221
    .restart local p0    # "source":Landroid/graphics/ColorSpace;
    .restart local p1    # "destination":Landroid/graphics/ColorSpace;
    :cond_1
    new-instance v0, Landroid/graphics/ColorSpace$Connector;

    invoke-direct {v0, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;-><init>(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace$RenderIntent;)V

    return-object v0
.end method

.method public static createRenderer()Landroid/graphics/ColorSpace$Renderer;
    .locals 2

    .prologue
    .line 1425
    new-instance v0, Landroid/graphics/ColorSpace$Renderer;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/ColorSpace$Renderer;-><init>(Landroid/graphics/ColorSpace$Renderer;)V

    return-object v0
.end method

.method static get(I)Landroid/graphics/ColorSpace;
    .locals 3
    .param p0, "index"    # I

    .prologue
    .line 1357
    if-ltz p0, :cond_0

    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v0

    array-length v0, v0

    if-le p0, v0, :cond_1

    .line 1358
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid ID, must be in the range [0.."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1359
    invoke-static {}, Landroid/graphics/ColorSpace$Named;->values()[Landroid/graphics/ColorSpace$Named;

    move-result-object v2

    array-length v2, v2

    .line 1358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1359
    const-string/jumbo v2, "]"

    .line 1358
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1361
    :cond_1
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;
    .locals 2
    .param p0, "name"    # Landroid/graphics/ColorSpace$Named;

    .prologue
    .line 1378
    sget-object v0, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    invoke-virtual {p0}, Landroid/graphics/ColorSpace$Named;->ordinal()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method private static inverse3x3([F)[F
    .locals 17
    .param p0, "m"    # [F

    .prologue
    .line 1627
    const/4 v15, 0x0

    aget v4, p0, v15

    .line 1628
    .local v4, "a":F
    const/4 v15, 0x3

    aget v5, p0, v15

    .line 1629
    .local v5, "b":F
    const/4 v15, 0x6

    aget v6, p0, v15

    .line 1630
    .local v6, "c":F
    const/4 v15, 0x1

    aget v7, p0, v15

    .line 1631
    .local v7, "d":F
    const/4 v15, 0x4

    aget v9, p0, v15

    .line 1632
    .local v9, "e":F
    const/4 v15, 0x7

    aget v10, p0, v15

    .line 1633
    .local v10, "f":F
    const/4 v15, 0x2

    aget v11, p0, v15

    .line 1634
    .local v11, "g":F
    const/4 v15, 0x5

    aget v12, p0, v15

    .line 1635
    .local v12, "h":F
    const/16 v15, 0x8

    aget v13, p0, v15

    .line 1637
    .local v13, "i":F
    mul-float v15, v9, v13

    mul-float v16, v10, v12

    sub-float v1, v15, v16

    .line 1638
    .local v1, "A":F
    mul-float v15, v10, v11

    mul-float v16, v7, v13

    sub-float v2, v15, v16

    .line 1639
    .local v2, "B":F
    mul-float v15, v7, v12

    mul-float v16, v9, v11

    sub-float v3, v15, v16

    .line 1641
    .local v3, "C":F
    mul-float v15, v4, v1

    mul-float v16, v5, v2

    add-float v15, v15, v16

    mul-float v16, v6, v3

    add-float v8, v15, v16

    .line 1643
    .local v8, "det":F
    move-object/from16 v0, p0

    array-length v15, v0

    new-array v14, v15, [F

    .line 1644
    .local v14, "inverted":[F
    div-float v15, v1, v8

    const/16 v16, 0x0

    aput v15, v14, v16

    .line 1645
    div-float v15, v2, v8

    const/16 v16, 0x1

    aput v15, v14, v16

    .line 1646
    div-float v15, v3, v8

    const/16 v16, 0x2

    aput v15, v14, v16

    .line 1647
    mul-float v15, v6, v12

    mul-float v16, v5, v13

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x3

    aput v15, v14, v16

    .line 1648
    mul-float v15, v4, v13

    mul-float v16, v6, v11

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x4

    aput v15, v14, v16

    .line 1649
    mul-float v15, v5, v11

    mul-float v16, v4, v12

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x5

    aput v15, v14, v16

    .line 1650
    mul-float v15, v5, v10

    mul-float v16, v6, v9

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x6

    aput v15, v14, v16

    .line 1651
    mul-float v15, v6, v7

    mul-float v16, v4, v10

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x7

    aput v15, v14, v16

    .line 1652
    mul-float v15, v4, v9

    mul-float v16, v5, v7

    sub-float v15, v15, v16

    div-float/2addr v15, v8

    const/16 v16, 0x8

    aput v15, v14, v16

    .line 1653
    return-object v14
.end method

.method static synthetic lambda$-android_graphics_ColorSpace_64008(D)D
    .locals 12
    .param p0, "x"    # D

    .prologue
    .line 1448
    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absRcpResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$-android_graphics_ColorSpace_64099(D)D
    .locals 12
    .param p0, "x"    # D

    .prologue
    .line 1449
    const-wide v2, 0x3fee54edcd0aeb60L    # 0.9478672985781991

    const-wide v4, 0x3faab1232f514a03L    # 0.05213270142180095

    const-wide v6, 0x3fb3d0722149b580L    # 0.07739938080495357

    const-wide v8, 0x3fa4b5dcc63f1412L    # 0.04045

    const-wide v10, 0x4003333333333333L    # 2.4

    move-wide v0, p0

    invoke-static/range {v0 .. v11}, Landroid/graphics/ColorSpace;->absResponse(DDDDDD)D

    move-result-wide v0

    return-wide v0
.end method

.method public static match([FLandroid/graphics/ColorSpace$Rgb$TransferParameters;)Landroid/graphics/ColorSpace;
    .locals 7
    .param p0, "toXYZD50"    # [F
    .param p1, "function"    # Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    .prologue
    .line 1399
    sget-object v3, Landroid/graphics/ColorSpace;->sNamedColorSpaces:[Landroid/graphics/ColorSpace;

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 1400
    .local v0, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v5

    sget-object v6, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-ne v5, v6, :cond_0

    .line 1401
    sget-object v5, Landroid/graphics/ColorSpace;->ILLUMINANT_D50_XYZ:[F

    invoke-static {v0, v5}, Landroid/graphics/ColorSpace;->adapt(Landroid/graphics/ColorSpace;[F)Landroid/graphics/ColorSpace;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorSpace$Rgb;

    .line 1402
    .local v1, "rgb":Landroid/graphics/ColorSpace$Rgb;
    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get4(Landroid/graphics/ColorSpace$Rgb;)[F

    move-result-object v5

    invoke-static {p0, v5}, Landroid/graphics/ColorSpace;->compare([F[F)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1403
    invoke-static {v1}, Landroid/graphics/ColorSpace$Rgb;->-get3(Landroid/graphics/ColorSpace$Rgb;)Landroid/graphics/ColorSpace$Rgb$TransferParameters;

    move-result-object v5

    invoke-static {p1, v5}, Landroid/graphics/ColorSpace;->compare(Landroid/graphics/ColorSpace$Rgb$TransferParameters;Landroid/graphics/ColorSpace$Rgb$TransferParameters;)Z

    move-result v5

    .line 1402
    if-eqz v5, :cond_0

    .line 1404
    return-object v0

    .line 1399
    .end local v1    # "rgb":Landroid/graphics/ColorSpace$Rgb;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1409
    .end local v0    # "colorSpace":Landroid/graphics/ColorSpace;
    :cond_1
    const/4 v2, 0x0

    return-object v2
.end method

.method private static mul3x3([F[F)[F
    .locals 9
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1667
    const/16 v1, 0x9

    new-array v0, v1, [F

    .line 1668
    .local v0, "r":[F
    aget v1, p0, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v7

    aget v3, p1, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v4

    .line 1669
    aget v1, p0, v5

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v5

    .line 1670
    aget v1, p0, v6

    aget v2, p1, v4

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v5

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    aget v3, p1, v6

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v6

    .line 1671
    aget v1, p0, v4

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aget v2, p0, v7

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v7

    .line 1672
    aget v1, p0, v5

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aget v2, p0, v8

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    aput v1, v0, v8

    .line 1673
    aget v1, p0, v6

    aget v2, p1, v7

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    aget v3, p1, v8

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/4 v3, 0x5

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 1674
    aget v1, p0, v4

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p0, v7

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aget v2, p0, v2

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    .line 1675
    aget v1, p0, v5

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    aget v2, p0, v8

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aget v2, p0, v2

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    .line 1676
    aget v1, p0, v6

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aget v2, p0, v2

    const/4 v3, 0x7

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aget v2, p0, v2

    const/16 v3, 0x8

    aget v3, p1, v3

    mul-float/2addr v2, v3

    add-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 1677
    return-object v0
.end method

.method private static mul3x3Diag([F[F)[F
    .locals 8
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1714
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 1715
    aget v1, p0, v3

    aget v2, p1, v3

    mul-float/2addr v1, v2

    aput v1, v0, v3

    aget v1, p0, v4

    aget v2, p1, v4

    mul-float/2addr v1, v2

    aput v1, v0, v4

    aget v1, p0, v5

    aget v2, p1, v5

    mul-float/2addr v1, v2

    aput v1, v0, v5

    .line 1716
    aget v1, p0, v3

    aget v2, p1, v6

    mul-float/2addr v1, v2

    aput v1, v0, v6

    aget v1, p0, v4

    aget v2, p1, v7

    mul-float/2addr v1, v2

    aput v1, v0, v7

    aget v1, p0, v5

    const/4 v2, 0x5

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x5

    aput v1, v0, v2

    .line 1717
    aget v1, p0, v3

    const/4 v2, 0x6

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x6

    aput v1, v0, v2

    aget v1, p0, v4

    const/4 v2, 0x7

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/4 v2, 0x7

    aput v1, v0, v2

    aget v1, p0, v5

    const/16 v2, 0x8

    aget v2, p1, v2

    mul-float/2addr v1, v2

    const/16 v2, 0x8

    aput v1, v0, v2

    .line 1714
    return-object v0
.end method

.method private static mul3x3Float3([F[F)[F
    .locals 8
    .param p0, "lhs"    # [F
    .param p1, "rhs"    # [F

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1692
    aget v0, p1, v5

    .line 1693
    .local v0, "r0":F
    aget v1, p1, v6

    .line 1694
    .local v1, "r1":F
    aget v2, p1, v7

    .line 1695
    .local v2, "r2":F
    aget v3, p0, v5

    mul-float/2addr v3, v0

    const/4 v4, 0x3

    aget v4, p0, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/4 v4, 0x6

    aget v4, p0, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p1, v5

    .line 1696
    aget v3, p0, v6

    mul-float/2addr v3, v0

    const/4 v4, 0x4

    aget v4, p0, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/4 v4, 0x7

    aget v4, p0, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p1, v6

    .line 1697
    aget v3, p0, v7

    mul-float/2addr v3, v0

    const/4 v4, 0x5

    aget v4, p0, v4

    mul-float/2addr v4, v1

    add-float/2addr v3, v4

    const/16 v4, 0x8

    aget v4, p0, v4

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    aput v3, p1, v7

    .line 1698
    return-object p1
.end method

.method private static rcpResponse(DDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .prologue
    .line 1547
    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    div-double/2addr v0, p10

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    :goto_0
    return-wide v0

    :cond_0
    div-double v0, p0, p6

    goto :goto_0
.end method

.method private static rcpResponse(DDDDDDDD)D
    .locals 4
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .prologue
    .line 1558
    mul-double v0, p8, p6

    cmpl-double v0, p0, v0

    if-ltz v0, :cond_0

    sub-double v0, p0, p10

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v2, v2, p14

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v0, p4

    div-double/2addr v0, p2

    :goto_0
    return-wide v0

    :cond_0
    sub-double v0, p0, p12

    div-double/2addr v0, p6

    goto :goto_0
.end method

.method private static response(DDDDDD)D
    .locals 2
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "g"    # D

    .prologue
    .line 1552
    cmpl-double v0, p0, p8

    if-ltz v0, :cond_0

    mul-double v0, p2, p0

    add-double/2addr v0, p4

    invoke-static {v0, v1, p10, p11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    mul-double v0, p6, p0

    goto :goto_0
.end method

.method private static response(DDDDDDDD)D
    .locals 4
    .param p0, "x"    # D
    .param p2, "a"    # D
    .param p4, "b"    # D
    .param p6, "c"    # D
    .param p8, "d"    # D
    .param p10, "e"    # D
    .param p12, "f"    # D
    .param p14, "g"    # D

    .prologue
    .line 1564
    cmpl-double v2, p0, p8

    if-ltz v2, :cond_0

    mul-double v2, p2, p0

    add-double/2addr v2, p4

    move-wide/from16 v0, p14

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v2, p10

    :goto_0
    return-wide v2

    :cond_0
    mul-double v2, p6, p0

    add-double v2, v2, p12

    goto :goto_0
.end method

.method private static xyYToUv([F)V
    .locals 8
    .param p0, "xyY"    # [F

    .prologue
    .line 1743
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_0

    .line 1744
    aget v4, p0, v1

    .line 1745
    .local v4, "x":F
    add-int/lit8 v6, v1, 0x1

    aget v5, p0, v6

    .line 1747
    .local v5, "y":F
    const/high16 v6, -0x40000000    # -2.0f

    mul-float/2addr v6, v4

    const/high16 v7, 0x41400000    # 12.0f

    mul-float/2addr v7, v5

    add-float/2addr v6, v7

    const/high16 v7, 0x40400000    # 3.0f

    add-float v0, v6, v7

    .line 1748
    .local v0, "d":F
    const/high16 v6, 0x40800000    # 4.0f

    mul-float/2addr v6, v4

    div-float v2, v6, v0

    .line 1749
    .local v2, "u":F
    const/high16 v6, 0x41100000    # 9.0f

    mul-float/2addr v6, v5

    div-float v3, v6, v0

    .line 1751
    .local v3, "v":F
    aput v2, p0, v1

    .line 1752
    add-int/lit8 v6, v1, 0x1

    aput v3, p0, v6

    .line 1743
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 1754
    .end local v0    # "d":F
    .end local v2    # "u":F
    .end local v3    # "v":F
    .end local v4    # "x":F
    .end local v5    # "y":F
    :cond_0
    return-void
.end method

.method private static xyYToXyz([F)[F
    .locals 6
    .param p0, "xyY"    # [F

    .prologue
    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1731
    const/4 v0, 0x3

    new-array v0, v0, [F

    aget v1, p0, v4

    aget v2, p0, v3

    div-float/2addr v1, v2

    aput v1, v0, v4

    aput v5, v0, v3

    aget v1, p0, v4

    sub-float v1, v5, v1

    aget v2, p0, v3

    sub-float/2addr v1, v2

    aget v2, p0, v3

    div-float/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1146
    if-ne p0, p1, :cond_0

    return v1

    .line 1147
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/ColorSpace;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    :cond_1
    return v2

    :cond_2
    move-object v0, p1

    .line 1149
    check-cast v0, Landroid/graphics/ColorSpace;

    .line 1151
    .local v0, "that":Landroid/graphics/ColorSpace;
    iget v3, p0, Landroid/graphics/ColorSpace;->mId:I

    iget v4, v0, Landroid/graphics/ColorSpace;->mId:I

    if-eq v3, v4, :cond_3

    return v2

    .line 1153
    :cond_3
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    iget-object v4, v0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    .line 1154
    :cond_4
    iget-object v3, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    iget-object v4, v0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    if-ne v3, v4, :cond_5

    :goto_0
    return v1

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public fromXyz(FFF)[F
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "z"    # F

    .prologue
    .line 1092
    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v1

    new-array v0, v1, [F

    .line 1093
    .local v0, "xyz":[F
    const/4 v1, 0x0

    aput p1, v0, v1

    .line 1094
    const/4 v1, 0x1

    aput p2, v0, v1

    .line 1095
    const/4 v1, 0x2

    aput p3, v0, v1

    .line 1096
    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->fromXyz([F)[F

    move-result-object v1

    return-object v1
.end method

.method public abstract fromXyz([F)[F
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 960
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace$Model;->getComponentCount()I

    move-result v0

    return v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 933
    iget v0, p0, Landroid/graphics/ColorSpace;->mId:I

    return v0
.end method

.method public abstract getMaxValue(I)F
.end method

.method public abstract getMinValue(I)F
.end method

.method public getModel()Landroid/graphics/ColorSpace$Model;
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 1160
    iget-object v1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    .line 1161
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Model;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 1162
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/graphics/ColorSpace;->mId:I

    add-int v0, v1, v2

    .line 1163
    return v0
.end method

.method public isSrgb()Z
    .locals 1

    .prologue
    .line 1000
    const/4 v0, 0x0

    return v0
.end method

.method public abstract isWideGamut()Z
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " (id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/graphics/ColorSpace;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", model="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/graphics/ColorSpace;->mModel:Landroid/graphics/ColorSpace$Model;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toXyz(FFF)[F
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F

    .prologue
    .line 1050
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-virtual {p0, v0}, Landroid/graphics/ColorSpace;->toXyz([F)[F

    move-result-object v0

    return-object v0
.end method

.method public abstract toXyz([F)[F
.end method
