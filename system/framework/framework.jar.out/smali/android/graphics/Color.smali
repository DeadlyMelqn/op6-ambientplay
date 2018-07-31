.class public Landroid/graphics/Color;
.super Ljava/lang/Object;
.source "Color.java"


# static fields
.field public static final BLACK:I = -0x1000000

.field public static final BLUE:I = -0xffff01

.field public static final CYAN:I = -0xff0001

.field public static final DKGRAY:I = -0xbbbbbc

.field public static final GRAY:I = -0x777778

.field public static final GREEN:I = -0xff0100

.field public static final LTGRAY:I = -0x333334

.field public static final MAGENTA:I = -0xff01

.field public static final RED:I = -0x10000

.field public static final TRANSPARENT:I = 0x0

.field public static final WHITE:I = -0x1

.field public static final YELLOW:I = -0x100

.field private static final sColorNameMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mColorSpace:Landroid/graphics/ColorSpace;

.field private final mComponents:[F


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const v7, -0x333334

    const v6, -0x777778

    const v5, -0xbbbbbc

    const v4, -0xff0001

    const v3, -0xff0100

    .line 1504
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    .line 1505
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "black"

    const/high16 v2, -0x1000000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1506
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgray"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1507
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "gray"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1508
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgray"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1509
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "white"

    const/4 v2, -0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1510
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "red"

    const/high16 v2, -0x10000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "green"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1512
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "blue"

    const v2, -0xffff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1513
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "yellow"

    const/16 v2, -0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1514
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "cyan"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1515
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "magenta"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1516
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "aqua"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1517
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "fuchsia"

    const v2, -0xff01

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1518
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "darkgrey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1519
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "grey"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1520
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lightgrey"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1521
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "lime"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1522
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "maroon"

    const/high16 v2, -0x800000    # Float.NEGATIVE_INFINITY

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1523
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "navy"

    const v2, -0xffff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1524
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "olive"

    const v2, -0x7f8000

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1525
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "purple"

    const v2, -0x7fff80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1526
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "silver"

    const v2, -0x3f3f40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1527
    sget-object v0, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    const-string/jumbo v1, "teal"

    const v2, -0xff7f80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 325
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 327
    const/4 v0, 0x4

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    .line 328
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 329
    return-void

    .line 327
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>(FFFF)V
    .locals 6
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F

    .prologue
    .line 341
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    .line 342
    return-void
.end method

.method private constructor <init>(FFFFLandroid/graphics/ColorSpace;)V
    .locals 2
    .param p1, "r"    # F
    .param p2, "g"    # F
    .param p3, "b"    # F
    .param p4, "a"    # F
    .param p5, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 354
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 355
    const/4 v0, 0x4

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput p4, v0, v1

    iput-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    .line 356
    iput-object p5, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 357
    return-void
.end method

.method private constructor <init>([FLandroid/graphics/ColorSpace;)V
    .locals 0
    .param p1, "components"    # [F
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 365
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 366
    iput-object p1, p0, Landroid/graphics/Color;->mComponents:[F

    .line 367
    iput-object p2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    .line 368
    return-void
.end method

.method public static HSVToColor(I[F)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "hsv"    # [F

    .prologue
    .line 1470
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1471
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1473
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Color;->nativeHSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static HSVToColor([F)I
    .locals 1
    .param p0, "hsv"    # [F

    .prologue
    .line 1452
    const/16 v0, 0xff

    invoke-static {v0, p0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public static RGBToHSV(III[F)V
    .locals 2
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsv"    # [F

    .prologue
    .line 1419
    array-length v0, p3

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 1420
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "3 components required for hsv"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_0
    invoke-static {p0, p1, p2, p3}, Landroid/graphics/Color;->nativeRGBToHSV(III[F)V

    .line 1423
    return-void
.end method

.method public static alpha(J)F
    .locals 4
    .param p0, "color"    # J

    .prologue
    .line 780
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x38

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 781
    :cond_0
    const/4 v0, 0x6

    shr-long v0, p0, v0

    const-wide/16 v2, 0x3ff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x447fc000    # 1023.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public static alpha(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 1241
    ushr-int/lit8 v0, p0, 0x18

    return v0
.end method

.method public static argb(FFFF)I
    .locals 4
    .param p0, "alpha"    # F
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1339
    mul-float v0, p0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x18

    .line 1340
    mul-float v1, p1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x10

    .line 1339
    or-int/2addr v0, v1

    .line 1341
    mul-float v1, p2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    .line 1339
    or-int/2addr v0, v1

    .line 1342
    mul-float v1, p3, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1339
    or-int/2addr v0, v1

    return v0
.end method

.method public static argb(IIII)I
    .locals 2
    .param p0, "alpha"    # I
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 1324
    shl-int/lit8 v0, p0, 0x18

    shl-int/lit8 v1, p1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p3

    return v0
.end method

.method public static blue(J)F
    .locals 4
    .param p0, "color"    # J

    .prologue
    .line 763
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 764
    :cond_0
    const/16 v0, 0x10

    shr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static blue(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 1268
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static colorSpace(J)Landroid/graphics/ColorSpace;
    .locals 2
    .param p0, "color"    # J

    .prologue
    .line 704
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(I)Landroid/graphics/ColorSpace;

    move-result-object v0

    return-object v0
.end method

.method public static colorToHSV(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .prologue
    .line 1436
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    shr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 1437
    return-void
.end method

.method public static convert(FFFFLandroid/graphics/ColorSpace$Connector;)J
    .locals 5
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F
    .param p4, "connector"    # Landroid/graphics/ColorSpace$Connector;

    .prologue
    .line 1201
    invoke-virtual {p4, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v0

    .line 1202
    .local v0, "c":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-virtual {p4}, Landroid/graphics/ColorSpace$Connector;->getDestination()Landroid/graphics/ColorSpace;

    move-result-object v4

    invoke-static {v1, v2, v3, p3, v4}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J
    .locals 4
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F
    .param p4, "source"    # Landroid/graphics/ColorSpace;
    .param p5, "destination"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 1145
    invoke-static {p4, p5}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v1

    invoke-virtual {v1, p0, p1, p2}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v0

    .line 1146
    .local v0, "c":[F
    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v3, v0, v3

    invoke-static {v1, v2, v3, p3, p5}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v2

    return-wide v2
.end method

.method public static convert(ILandroid/graphics/ColorSpace;)J
    .locals 8
    .param p0, "color"    # I
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    const/high16 v6, 0x437f0000    # 255.0f

    .line 1087
    shr-int/lit8 v5, p0, 0x10

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float v0, v5, v6

    .line 1088
    .local v0, "r":F
    shr-int/lit8 v5, p0, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float v1, v5, v6

    .line 1089
    .local v1, "g":F
    and-int/lit16 v5, p0, 0xff

    int-to-float v5, v5

    div-float v2, v5, v6

    .line 1090
    .local v2, "b":F
    shr-int/lit8 v5, p0, 0x18

    and-int/lit16 v5, v5, 0xff

    int-to-float v5, v5

    div-float v3, v5, v6

    .line 1091
    .local v3, "a":F
    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v4

    .local v4, "source":Landroid/graphics/ColorSpace;
    move-object v5, p1

    .line 1092
    invoke-static/range {v0 .. v5}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J

    move-result-wide v6

    return-wide v6
.end method

.method public static convert(JLandroid/graphics/ColorSpace$Connector;)J
    .locals 6
    .param p0, "color"    # J
    .param p2, "connector"    # Landroid/graphics/ColorSpace$Connector;

    .prologue
    .line 1168
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v3

    .line 1169
    .local v3, "r":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v2

    .line 1170
    .local v2, "g":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v1

    .line 1171
    .local v1, "b":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v0

    .line 1172
    .local v0, "a":F
    invoke-static {v3, v2, v1, v0, p2}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace$Connector;)J

    move-result-wide v4

    return-wide v4
.end method

.method public static convert(JLandroid/graphics/ColorSpace;)J
    .locals 8
    .param p0, "color"    # J
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 1111
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v0

    .line 1112
    .local v0, "r":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v1

    .line 1113
    .local v1, "g":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v2

    .line 1114
    .local v2, "b":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v3

    .line 1115
    .local v3, "a":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v4

    .local v4, "source":Landroid/graphics/ColorSpace;
    move-object v5, p2

    .line 1116
    invoke-static/range {v0 .. v5}, Landroid/graphics/Color;->convert(FFFFLandroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)J

    move-result-wide v6

    return-wide v6
.end method

.method public static getHtmlColor(Ljava/lang/String;)I
    .locals 5
    .param p0, "color"    # Ljava/lang/String;

    .prologue
    const/4 v4, -0x1

    .line 1490
    sget-object v2, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1491
    .local v0, "i":Ljava/lang/Integer;
    if-eqz v0, :cond_0

    .line 1492
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    .line 1495
    :cond_0
    const/4 v2, -0x1

    :try_start_0
    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->convertValueToInt(Ljava/lang/CharSequence;I)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 1496
    :catch_0
    move-exception v1

    .line 1497
    .local v1, "nfe":Ljava/lang/NumberFormatException;
    return v4
.end method

.method public static green(J)F
    .locals 4
    .param p0, "color"    # J

    .prologue
    .line 743
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/16 v0, 0x28

    shr-long v0, p0, v0

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 744
    :cond_0
    const/16 v0, 0x20

    shr-long v0, p0, v0

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static green(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 1259
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static isInColorSpace(JLandroid/graphics/ColorSpace;)Z
    .locals 2
    .param p0, "color"    # J
    .param p2, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 827
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    long-to-int v0, v0

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->getId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSrgb(J)Z
    .locals 2
    .param p0, "color"    # J

    .prologue
    .line 796
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    return v0
.end method

.method public static isWideGamut(J)Z
    .locals 2
    .param p0, "color"    # J

    .prologue
    .line 813
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    return v0
.end method

.method public static luminance(I)F
    .locals 12
    .param p0, "color"    # I

    .prologue
    const-wide v10, 0x406fe00000000000L    # 255.0

    .line 1354
    sget-object v8, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v8}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v2

    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    .line 1355
    .local v2, "cs":Landroid/graphics/ColorSpace$Rgb;
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v3

    .line 1357
    .local v3, "eotf":Ljava/util/function/DoubleUnaryOperator;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-interface {v3, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v6

    .line 1358
    .local v6, "r":D
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-interface {v3, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    .line 1359
    .local v4, "g":D
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    int-to-double v8, v8

    div-double/2addr v8, v10

    invoke-interface {v3, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    .line 1361
    .local v0, "b":D
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v6

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    double-to-float v8, v8

    return v8
.end method

.method public static luminance(J)F
    .locals 12
    .param p0, "color"    # J

    .prologue
    .line 1217
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v2

    .line 1218
    .local v2, "colorSpace":Landroid/graphics/ColorSpace;
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v8

    sget-object v9, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-eq v8, v9, :cond_0

    .line 1219
    new-instance v8, Ljava/lang/IllegalArgumentException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1220
    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v10

    .line 1219
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1223
    :cond_0
    check-cast v2, Landroid/graphics/ColorSpace$Rgb;

    .end local v2    # "colorSpace":Landroid/graphics/ColorSpace;
    invoke-virtual {v2}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v3

    .line 1224
    .local v3, "eotf":Ljava/util/function/DoubleUnaryOperator;
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v8

    float-to-double v8, v8

    invoke-interface {v3, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v6

    .line 1225
    .local v6, "r":D
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v8

    float-to-double v8, v8

    invoke-interface {v3, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    .line 1226
    .local v4, "g":D
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v8

    float-to-double v8, v8

    invoke-interface {v3, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    .line 1228
    .local v0, "b":D
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v6

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    double-to-float v8, v8

    invoke-static {v8}, Landroid/graphics/Color;->saturate(F)F

    move-result v8

    return v8
.end method

.method private static native nativeHSVToColor(I[F)I
.end method

.method private static native nativeRGBToHSV(III[F)V
.end method

.method public static pack(FFF)J
    .locals 2
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F

    .prologue
    .line 1000
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, p1, p2, v1, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static pack(FFFF)J
    .locals 2
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F
    .param p3, "alpha"    # F

    .prologue
    .line 1017
    sget-object v0, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v0}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-static {p0, p1, p2, p3, v0}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static pack(FFFFLandroid/graphics/ColorSpace;)J
    .locals 12
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F
    .param p3, "alpha"    # F
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 1042
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1044
    const/high16 v6, 0x437f0000    # 255.0f

    mul-float/2addr v6, p3

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x18

    .line 1045
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, p0

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    shl-int/lit8 v7, v7, 0x10

    .line 1044
    or-int/2addr v6, v7

    .line 1046
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, p1

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    shl-int/lit8 v7, v7, 0x8

    .line 1044
    or-int/2addr v6, v7

    .line 1047
    const/high16 v7, 0x437f0000    # 255.0f

    mul-float/2addr v7, p2

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v7, v8

    float-to-int v7, v7

    .line 1044
    or-int v1, v6, v7

    .line 1048
    .local v1, "argb":I
    int-to-long v6, v1

    const-wide v8, 0xffffffffL

    and-long/2addr v6, v8

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    return-wide v6

    .line 1051
    .end local v1    # "argb":I
    :cond_0
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/ColorSpace;->getId()I

    move-result v4

    .line 1052
    .local v4, "id":I
    const/4 v6, -0x1

    if-ne v4, v6, :cond_1

    .line 1053
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 1054
    const-string/jumbo v7, "Unknown color space, please use a color space returned by ColorSpace.get()"

    .line 1053
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1056
    :cond_1
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v6

    const/4 v7, 0x3

    if-le v6, v7, :cond_2

    .line 1057
    new-instance v6, Ljava/lang/IllegalArgumentException;

    .line 1058
    const-string/jumbo v7, "The color space must use a color model with at most 3 components"

    .line 1057
    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1061
    :cond_2
    invoke-static {p0}, Landroid/util/Half;->toHalf(F)S

    move-result v5

    .line 1062
    .local v5, "r":S
    invoke-static {p1}, Landroid/util/Half;->toHalf(F)S

    move-result v3

    .line 1063
    .local v3, "g":S
    invoke-static {p2}, Landroid/util/Half;->toHalf(F)S

    move-result v2

    .line 1065
    .local v2, "b":S
    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {p3, v6}, Ljava/lang/Math;->min(FF)F

    move-result v6

    const/4 v7, 0x0

    invoke-static {v7, v6}, Ljava/lang/Math;->max(FF)F

    move-result v6

    const v7, 0x447fc000    # 1023.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v0, v6

    .line 1068
    .local v0, "a":I
    int-to-long v6, v5

    const-wide/32 v8, 0xffff

    and-long/2addr v6, v8

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    .line 1069
    int-to-long v8, v3

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x20

    shl-long/2addr v8, v10

    .line 1068
    or-long/2addr v6, v8

    .line 1070
    int-to-long v8, v2

    const-wide/32 v10, 0xffff

    and-long/2addr v8, v10

    const/16 v10, 0x10

    shl-long/2addr v8, v10

    .line 1068
    or-long/2addr v6, v8

    .line 1071
    int-to-long v8, v0

    const-wide/16 v10, 0x3ff

    and-long/2addr v8, v10

    const/4 v10, 0x6

    shl-long/2addr v8, v10

    .line 1068
    or-long/2addr v6, v8

    .line 1072
    int-to-long v8, v4

    const-wide/16 v10, 0x3f

    and-long/2addr v8, v10

    .line 1068
    or-long/2addr v6, v8

    return-wide v6
.end method

.method public static pack(I)J
    .locals 4
    .param p0, "color"    # I

    .prologue
    .line 983
    int-to-long v0, p0

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    return-wide v0
.end method

.method public static parseColor(Ljava/lang/String;)I
    .locals 6
    .param p0, "colorString"    # Ljava/lang/String;

    .prologue
    .line 1384
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_2

    .line 1386
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    .line 1387
    .local v0, "color":J
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x7

    if-ne v3, v4, :cond_1

    .line 1389
    const-wide/32 v4, -0x1000000

    or-long/2addr v0, v4

    .line 1393
    :cond_0
    long-to-int v3, v0

    return v3

    .line 1390
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 1391
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown color"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1395
    .end local v0    # "color":J
    :cond_2
    sget-object v3, Landroid/graphics/Color;->sColorNameMap:Ljava/util/HashMap;

    sget-object v4, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 1396
    .local v2, "color":Ljava/lang/Integer;
    if-eqz v2, :cond_3

    .line 1397
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    return v3

    .line 1400
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Unknown color"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static red(J)F
    .locals 6
    .param p0, "color"    # J

    .prologue
    const/16 v4, 0x30

    .line 723
    const-wide/16 v0, 0x3f

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    shr-long v0, p0, v4

    const-wide/16 v2, 0xff

    and-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr v0, v1

    return v0

    .line 724
    :cond_0
    shr-long v0, p0, v4

    const-wide/32 v2, 0xffff

    and-long/2addr v0, v2

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0}, Landroid/util/Half;->toFloat(S)F

    move-result v0

    return v0
.end method

.method public static red(I)I
    .locals 1
    .param p0, "color"    # I

    .prologue
    .line 1250
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static rgb(FFF)I
    .locals 4
    .param p0, "red"    # F
    .param p1, "green"    # F
    .param p2, "blue"    # F

    .prologue
    const/high16 v3, 0x437f0000    # 255.0f

    const/high16 v2, 0x3f000000    # 0.5f

    .line 1303
    mul-float v0, p0, v3

    add-float/2addr v0, v2

    float-to-int v0, v0

    shl-int/lit8 v0, v0, 0x10

    .line 1302
    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    .line 1304
    mul-float v1, p1, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x8

    .line 1302
    or-int/2addr v0, v1

    .line 1305
    mul-float v1, p2, v3

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 1302
    or-int/2addr v0, v1

    return v0
.end method

.method public static rgb(III)I
    .locals 2
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I

    .prologue
    .line 1287
    shl-int/lit8 v0, p0, 0x10

    const/high16 v1, -0x1000000

    or-int/2addr v0, v1

    shl-int/lit8 v1, p1, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p2

    return v0
.end method

.method private static saturate(F)F
    .locals 3
    .param p0, "v"    # F

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1232
    cmpg-float v2, p0, v0

    if-gtz v2, :cond_1

    move p0, v0

    .end local p0    # "v":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "v":F
    :cond_1
    cmpl-float v0, p0, v1

    if-ltz v0, :cond_0

    move p0, v1

    goto :goto_0
.end method

.method public static toArgb(J)I
    .locals 12
    .param p0, "color"    # J

    .prologue
    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v10, 0x3f000000    # 0.5f

    .line 840
    const-wide/16 v6, 0x3f

    and-long/2addr v6, p0

    const-wide/16 v8, 0x0

    cmp-long v5, v6, v8

    if-nez v5, :cond_0

    const/16 v5, 0x20

    shr-long v6, p0, v5

    long-to-int v5, v6

    return v5

    .line 842
    :cond_0
    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v4

    .line 843
    .local v4, "r":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v3

    .line 844
    .local v3, "g":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v1

    .line 845
    .local v1, "b":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v0

    .line 848
    .local v0, "a":F
    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-static {v5}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v5

    invoke-virtual {v5, v4, v3, v1}, Landroid/graphics/ColorSpace$Connector;->transform(FFF)[F

    move-result-object v2

    .line 850
    .local v2, "c":[F
    mul-float v5, v0, v11

    add-float/2addr v5, v10

    float-to-int v5, v5

    shl-int/lit8 v5, v5, 0x18

    .line 851
    const/4 v6, 0x0

    aget v6, v2, v6

    mul-float/2addr v6, v11

    add-float/2addr v6, v10

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x10

    .line 850
    or-int/2addr v5, v6

    .line 852
    const/4 v6, 0x1

    aget v6, v2, v6

    mul-float/2addr v6, v11

    add-float/2addr v6, v10

    float-to-int v6, v6

    shl-int/lit8 v6, v6, 0x8

    .line 850
    or-int/2addr v5, v6

    .line 853
    const/4 v6, 0x2

    aget v6, v2, v6

    mul-float/2addr v6, v11

    add-float/2addr v6, v10

    float-to-int v6, v6

    .line 850
    or-int/2addr v5, v6

    return v5
.end method

.method public static valueOf(FFF)Landroid/graphics/Color;
    .locals 2
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F

    .prologue
    .line 898
    new-instance v0, Landroid/graphics/Color;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static valueOf(FFFF)Landroid/graphics/Color;
    .locals 5
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F

    .prologue
    .line 914
    new-instance v0, Landroid/graphics/Color;

    invoke-static {p0}, Landroid/graphics/Color;->saturate(F)F

    move-result v1

    invoke-static {p1}, Landroid/graphics/Color;->saturate(F)F

    move-result v2

    invoke-static {p2}, Landroid/graphics/Color;->saturate(F)F

    move-result v3

    invoke-static {p3}, Landroid/graphics/Color;->saturate(F)F

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/graphics/Color;-><init>(FFFF)V

    return-object v0
.end method

.method public static valueOf(FFFFLandroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .locals 6
    .param p0, "r"    # F
    .param p1, "g"    # F
    .param p2, "b"    # F
    .param p3, "a"    # F
    .param p4, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 936
    invoke-virtual {p4}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    .line 937
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The specified color space must use a color model with at most 3 color components"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 940
    :cond_0
    new-instance v0, Landroid/graphics/Color;

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v0
.end method

.method public static valueOf(I)Landroid/graphics/Color;
    .locals 6
    .param p0, "color"    # I

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    .line 866
    shr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v1, v0, v5

    .line 867
    .local v1, "r":F
    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v2, v0, v5

    .line 868
    .local v2, "g":F
    and-int/lit16 v0, p0, 0xff

    int-to-float v0, v0

    div-float v3, v0, v5

    .line 869
    .local v3, "b":F
    shr-int/lit8 v0, p0, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-float v0, v0

    div-float v4, v0, v5

    .line 870
    .local v4, "a":F
    new-instance v0, Landroid/graphics/Color;

    sget-object v5, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    invoke-static {v5}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v0
.end method

.method public static valueOf(J)Landroid/graphics/Color;
    .locals 6
    .param p0, "color"    # J

    .prologue
    .line 883
    new-instance v0, Landroid/graphics/Color;

    invoke-static {p0, p1}, Landroid/graphics/Color;->red(J)F

    move-result v1

    invoke-static {p0, p1}, Landroid/graphics/Color;->green(J)F

    move-result v2

    invoke-static {p0, p1}, Landroid/graphics/Color;->blue(J)F

    move-result v3

    invoke-static {p0, p1}, Landroid/graphics/Color;->alpha(J)F

    move-result v4

    invoke-static {p0, p1}, Landroid/graphics/Color;->colorSpace(J)Landroid/graphics/ColorSpace;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Color;-><init>(FFFFLandroid/graphics/ColorSpace;)V

    return-object v0
.end method

.method public static valueOf([FLandroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .locals 3
    .param p0, "components"    # [F
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    .line 964
    array-length v0, p0

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    if-ge v0, v1, :cond_0

    .line 965
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received a component array of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 966
    array-length v2, p0

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 966
    const-string/jumbo v2, " but the color model requires "

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 967
    const-string/jumbo v2, " (including alpha)"

    .line 965
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 969
    :cond_0
    new-instance v0, Landroid/graphics/Color;

    invoke-virtual {p1}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/Color;-><init>([FLandroid/graphics/ColorSpace;)V

    return-object v0
.end method


# virtual methods
.method public alpha()F
    .locals 2

    .prologue
    .line 551
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0
.end method

.method public blue()F
    .locals 2

    .prologue
    .line 536
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public convert(Landroid/graphics/ColorSpace;)Landroid/graphics/Color;
    .locals 7
    .param p1, "colorSpace"    # Landroid/graphics/ColorSpace;

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 452
    iget-object v2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v2, p1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v1

    .line 453
    .local v1, "connector":Landroid/graphics/ColorSpace$Connector;
    const/4 v2, 0x4

    new-array v0, v2, [F

    .line 454
    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    aget v2, v2, v3

    aput v2, v0, v3

    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    aget v2, v2, v4

    aput v2, v0, v4

    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    aget v2, v2, v5

    aput v2, v0, v5

    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    aget v2, v2, v6

    aput v2, v0, v6

    .line 456
    .local v0, "color":[F
    invoke-virtual {v1, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    .line 457
    new-instance v2, Landroid/graphics/Color;

    invoke-direct {v2, v0, p1}, Landroid/graphics/Color;-><init>([FLandroid/graphics/ColorSpace;)V

    return-object v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 643
    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 644
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/graphics/Color;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-eq v1, v2, :cond_2

    :cond_1
    return v3

    :cond_2
    move-object v0, p1

    .line 646
    check-cast v0, Landroid/graphics/Color;

    .line 649
    .local v0, "color":Landroid/graphics/Color;
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v2, v0, Landroid/graphics/Color;->mComponents:[F

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v1

    if-nez v1, :cond_3

    return v3

    .line 650
    :cond_3
    iget-object v1, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    iget-object v2, v0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1, v2}, Landroid/graphics/ColorSpace;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getColorSpace()Landroid/graphics/ColorSpace;
    .locals 1

    .prologue
    .line 377
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    return-object v0
.end method

.method public getComponent(I)F
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 613
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    aget v0, v0, p1

    return v0
.end method

.method public getComponentCount()I
    .locals 1

    .prologue
    .line 424
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getComponentCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getComponents()[F
    .locals 2

    .prologue
    .line 565
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public getComponents([F)[F
    .locals 3
    .param p1, "components"    # [F

    .prologue
    const/4 v2, 0x0

    .line 585
    if-nez p1, :cond_0

    .line 586
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0

    .line 589
    :cond_0
    array-length v0, p1

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 590
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The specified array\'s length must be at least "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 591
    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v2, v2

    .line 590
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 594
    :cond_1
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    array-length v1, v1

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 595
    return-object p1
.end method

.method public getModel()Landroid/graphics/ColorSpace$Model;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v0

    return-object v0
.end method

.method public green()F
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 655
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([F)I

    move-result v0

    .line 656
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 657
    return v0
.end method

.method public isSrgb()Z
    .locals 1

    .prologue
    .line 412
    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v0

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .prologue
    .line 400
    invoke-virtual {p0}, Landroid/graphics/Color;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result v0

    return v0
.end method

.method public luminance()F
    .locals 12

    .prologue
    .line 628
    iget-object v3, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v3

    sget-object v8, Landroid/graphics/ColorSpace$Model;->RGB:Landroid/graphics/ColorSpace$Model;

    if-eq v3, v8, :cond_0

    .line 629
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "The specified color must be encoded in an RGB color space. The supplied color space is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 630
    iget-object v9, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v9}, Landroid/graphics/ColorSpace;->getModel()Landroid/graphics/ColorSpace$Model;

    move-result-object v9

    .line 629
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 633
    :cond_0
    iget-object v3, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    check-cast v3, Landroid/graphics/ColorSpace$Rgb;

    invoke-virtual {v3}, Landroid/graphics/ColorSpace$Rgb;->getEotf()Ljava/util/function/DoubleUnaryOperator;

    move-result-object v2

    .line 634
    .local v2, "eotf":Ljava/util/function/DoubleUnaryOperator;
    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v8, 0x0

    aget v3, v3, v8

    float-to-double v8, v3

    invoke-interface {v2, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v6

    .line 635
    .local v6, "r":D
    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v8, 0x1

    aget v3, v3, v8

    float-to-double v8, v3

    invoke-interface {v2, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v4

    .line 636
    .local v4, "g":D
    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v8, 0x2

    aget v3, v3, v8

    float-to-double v8, v3

    invoke-interface {v2, v8, v9}, Ljava/util/function/DoubleUnaryOperator;->applyAsDouble(D)D

    move-result-wide v0

    .line 638
    .local v0, "b":D
    const-wide v8, 0x3fcb367a0f9096bcL    # 0.2126

    mul-double/2addr v8, v6

    const-wide v10, 0x3fe6e2eb1c432ca5L    # 0.7152

    mul-double/2addr v10, v4

    add-double/2addr v8, v10

    const-wide v10, 0x3fb27bb2fec56d5dL    # 0.0722

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    double-to-float v3, v8

    invoke-static {v3}, Landroid/graphics/Color;->saturate(F)F

    move-result v3

    return v3
.end method

.method public pack()J
    .locals 5

    .prologue
    .line 438
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v4, 0x3

    aget v3, v3, v4

    iget-object v4, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Color;->pack(FFFFLandroid/graphics/ColorSpace;)J

    move-result-wide v0

    return-wide v0
.end method

.method public red()F
    .locals 2

    .prologue
    .line 502
    iget-object v0, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public toArgb()I
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    const/high16 v3, 0x3f000000    # 0.5f

    .line 469
    iget-object v1, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v1}, Landroid/graphics/ColorSpace;->isSrgb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 470
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    .line 471
    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    aget v2, v2, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    .line 470
    or-int/2addr v1, v2

    .line 472
    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    aget v2, v2, v6

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    .line 470
    or-int/2addr v1, v2

    .line 473
    iget-object v2, p0, Landroid/graphics/Color;->mComponents:[F

    aget v2, v2, v7

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 470
    or-int/2addr v1, v2

    return v1

    .line 476
    :cond_0
    const/4 v1, 0x4

    new-array v0, v1, [F

    .line 477
    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    aget v1, v1, v5

    aput v1, v0, v5

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    aget v1, v1, v6

    aput v1, v0, v6

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    aget v1, v1, v7

    aput v1, v0, v7

    iget-object v1, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x3

    aget v1, v1, v2

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 480
    .local v0, "color":[F
    iget-object v1, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-static {v1}, Landroid/graphics/ColorSpace;->connect(Landroid/graphics/ColorSpace;)Landroid/graphics/ColorSpace$Connector;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/graphics/ColorSpace$Connector;->transform([F)[F

    .line 482
    const/4 v1, 0x3

    aget v1, v0, v1

    mul-float/2addr v1, v4

    add-float/2addr v1, v3

    float-to-int v1, v1

    shl-int/lit8 v1, v1, 0x18

    .line 483
    aget v2, v0, v5

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x10

    .line 482
    or-int/2addr v1, v2

    .line 484
    aget v2, v0, v6

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    shl-int/lit8 v2, v2, 0x8

    .line 482
    or-int/2addr v1, v2

    .line 485
    aget v2, v0, v7

    mul-float/2addr v2, v4

    add-float/2addr v2, v3

    float-to-int v2, v2

    .line 482
    or-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .prologue
    .line 681
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Color("

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 682
    .local v0, "b":Ljava/lang/StringBuilder;
    iget-object v3, p0, Landroid/graphics/Color;->mComponents:[F

    const/4 v2, 0x0

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget v1, v3, v2

    .line 683
    .local v1, "c":F
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 682
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 685
    .end local v1    # "c":F
    :cond_0
    iget-object v2, p0, Landroid/graphics/Color;->mColorSpace:Landroid/graphics/ColorSpace;

    invoke-virtual {v2}, Landroid/graphics/ColorSpace;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 686
    const/16 v2, 0x29

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 687
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
