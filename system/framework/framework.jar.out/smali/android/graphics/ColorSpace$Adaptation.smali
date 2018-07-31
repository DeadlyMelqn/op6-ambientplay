.class public final enum Landroid/graphics/ColorSpace$Adaptation;
.super Ljava/lang/Enum;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Adaptation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/graphics/ColorSpace$Adaptation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/graphics/ColorSpace$Adaptation;

.field public static final enum BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

.field public static final enum CIECAT02:Landroid/graphics/ColorSpace$Adaptation;

.field public static final enum VON_KRIES:Landroid/graphics/ColorSpace$Adaptation;


# instance fields
.field final mTransform:[F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x9

    .line 781
    new-instance v0, Landroid/graphics/ColorSpace$Adaptation;

    const-string/jumbo v1, "BRADFORD"

    .line 785
    new-array v2, v3, [F

    fill-array-data v2, :array_0

    .line 781
    invoke-direct {v0, v1, v4, v2}, Landroid/graphics/ColorSpace$Adaptation;-><init>(Ljava/lang/String;I[F)V

    .line 785
    sput-object v0, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    .line 790
    new-instance v0, Landroid/graphics/ColorSpace$Adaptation;

    const-string/jumbo v1, "VON_KRIES"

    .line 793
    new-array v2, v3, [F

    fill-array-data v2, :array_1

    .line 790
    invoke-direct {v0, v1, v5, v2}, Landroid/graphics/ColorSpace$Adaptation;-><init>(Ljava/lang/String;I[F)V

    .line 793
    sput-object v0, Landroid/graphics/ColorSpace$Adaptation;->VON_KRIES:Landroid/graphics/ColorSpace$Adaptation;

    .line 798
    new-instance v0, Landroid/graphics/ColorSpace$Adaptation;

    const-string/jumbo v1, "CIECAT02"

    .line 802
    new-array v2, v3, [F

    fill-array-data v2, :array_2

    .line 798
    invoke-direct {v0, v1, v6, v2}, Landroid/graphics/ColorSpace$Adaptation;-><init>(Ljava/lang/String;I[F)V

    .line 802
    sput-object v0, Landroid/graphics/ColorSpace$Adaptation;->CIECAT02:Landroid/graphics/ColorSpace$Adaptation;

    .line 780
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/graphics/ColorSpace$Adaptation;

    sget-object v1, Landroid/graphics/ColorSpace$Adaptation;->BRADFORD:Landroid/graphics/ColorSpace$Adaptation;

    aput-object v1, v0, v4

    sget-object v1, Landroid/graphics/ColorSpace$Adaptation;->VON_KRIES:Landroid/graphics/ColorSpace$Adaptation;

    aput-object v1, v0, v5

    sget-object v1, Landroid/graphics/ColorSpace$Adaptation;->CIECAT02:Landroid/graphics/ColorSpace$Adaptation;

    aput-object v1, v0, v6

    sput-object v0, Landroid/graphics/ColorSpace$Adaptation;->$VALUES:[Landroid/graphics/ColorSpace$Adaptation;

    return-void

    .line 785
    :array_0
    .array-data 4
        0x3f652546    # 0.8951f
        -0x40bff2e5    # -0.7502f
        0x3d1f559b    # 0.0389f
        0x3e886595    # 0.2664f
        0x3fdb53f8    # 1.7135f
        -0x4273b646    # -0.0685f
        -0x41dab9f5    # -0.1614f
        0x3d1652bd    # 0.0367f
        0x3f83c9ef    # 1.0296f
    .end array-data

    .line 793
    :array_1
    .array-data 4
        0x3eccec42    # 0.40024f
        -0x419844d0    # -0.2263f
        0x0
        0x3f352546    # 0.7076f
        0x3f952935
        0x0
        -0x425a8049    # -0.08081f
        0x3d3b2fec    # 0.0457f
        0x3f6b1077
    .end array-data

    .line 802
    :array_2
    .array-data 4
        0x3f3b98c8    # 0.7328f
        -0x40cbe0df    # -0.7036f
        0x3b449ba6    # 0.003f
        0x3edbf488    # 0.4296f
        0x3fd947ae    # 1.6975f
        0x3c5ed289    # 0.0136f
        -0x41d9b3d0    # -0.1624f
        0x3bc7e282    # 0.0061f
        0x3f7bc01a    # 0.9834f
    .end array-data
.end method

.method private constructor <init>(Ljava/lang/String;I[F)V
    .locals 0
    .param p3, "transform"    # [F

    .prologue
    .line 810
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 811
    iput-object p3, p0, Landroid/graphics/ColorSpace$Adaptation;->mTransform:[F

    .line 812
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/graphics/ColorSpace$Adaptation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 780
    const-class v0, Landroid/graphics/ColorSpace$Adaptation;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/graphics/ColorSpace$Adaptation;

    return-object v0
.end method

.method public static values()[Landroid/graphics/ColorSpace$Adaptation;
    .locals 1

    .prologue
    .line 780
    sget-object v0, Landroid/graphics/ColorSpace$Adaptation;->$VALUES:[Landroid/graphics/ColorSpace$Adaptation;

    return-object v0
.end method
