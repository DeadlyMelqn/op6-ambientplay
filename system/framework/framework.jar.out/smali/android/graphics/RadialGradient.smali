.class public Landroid/graphics/RadialGradient;
.super Landroid/graphics/Shader;
.source "RadialGradient.java"


# static fields
.field private static final TYPE_COLORS_AND_POSITIONS:I = 0x1

.field private static final TYPE_COLOR_CENTER_AND_COLOR_EDGE:I = 0x2


# instance fields
.field private mCenterColor:I

.field private mColors:[I

.field private mEdgeColor:I

.field private mPositions:[F

.field private mRadius:F

.field private mTileMode:Landroid/graphics/Shader$TileMode;

.field private mType:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(FFFIILandroid/graphics/Shader$TileMode;)V
    .locals 2
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "centerColor"    # I
    .param p5, "edgeColor"    # I
    .param p6, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .prologue
    .line 88
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 90
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "radius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 94
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 95
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 96
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 97
    iput p4, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    .line 98
    iput p5, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    .line 99
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 100
    return-void
.end method

.method public constructor <init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V
    .locals 3
    .param p1, "centerX"    # F
    .param p2, "centerY"    # F
    .param p3, "radius"    # F
    .param p4, "colors"    # [I
    .param p5, "stops"    # [F
    .param p6, "tileMode"    # Landroid/graphics/Shader$TileMode;

    .prologue
    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/graphics/Shader;-><init>()V

    .line 60
    const/4 v0, 0x0

    cmpg-float v0, p3, v0

    if-gtz v0, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "radius must be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    array-length v0, p4

    const/4 v2, 0x2

    if-ge v0, v2, :cond_1

    .line 64
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "needs >= 2 number of colors"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    if-eqz p5, :cond_2

    array-length v0, p4

    array-length v2, p5

    if-eq v0, v2, :cond_2

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "color and position arrays must be of equal length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Landroid/graphics/RadialGradient;->mType:I

    .line 70
    iput p1, p0, Landroid/graphics/RadialGradient;->mX:F

    .line 71
    iput p2, p0, Landroid/graphics/RadialGradient;->mY:F

    .line 72
    iput p3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 73
    invoke-virtual {p4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Landroid/graphics/RadialGradient;->mColors:[I

    .line 74
    if-eqz p5, :cond_3

    invoke-virtual {p5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    :goto_0
    iput-object v0, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    .line 75
    iput-object p6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 76
    return-void

    :cond_3
    move-object v0, v1

    .line 74
    goto :goto_0
.end method

.method private static native nativeCreate1(JFFF[I[FI)J
.end method

.method private static native nativeCreate2(JFFFIII)J
.end method


# virtual methods
.method protected copy()Landroid/graphics/Shader;
    .locals 7

    .prologue
    const/4 v5, 0x0

    .line 119
    iget v1, p0, Landroid/graphics/RadialGradient;->mType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 120
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v2, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget-object v4, p0, Landroid/graphics/RadialGradient;->mColors:[I

    invoke-virtual {v4}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 121
    iget-object v6, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    if-eqz v6, :cond_0

    iget-object v5, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    invoke-virtual {v5}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [F

    :cond_0
    iget-object v6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    .line 120
    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 125
    .local v0, "copy":Landroid/graphics/RadialGradient;
    :goto_0
    invoke-virtual {p0, v0}, Landroid/graphics/RadialGradient;->copyLocalMatrix(Landroid/graphics/Shader;)V

    .line 126
    return-object v0

    .line 123
    .end local v0    # "copy":Landroid/graphics/RadialGradient;
    :cond_1
    new-instance v0, Landroid/graphics/RadialGradient;

    iget v1, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v2, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mRadius:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    iget v5, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    iget-object v6, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v6}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    .restart local v0    # "copy":Landroid/graphics/RadialGradient;
    goto :goto_0
.end method

.method createNativeInstance(J)J
    .locals 9
    .param p1, "nativeMatrix"    # J

    .prologue
    .line 104
    iget v0, p0, Landroid/graphics/RadialGradient;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 105
    iget v2, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 106
    iget-object v5, p0, Landroid/graphics/RadialGradient;->mColors:[I

    iget-object v6, p0, Landroid/graphics/RadialGradient;->mPositions:[F

    iget-object v0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v7, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-wide v0, p1

    .line 105
    invoke-static/range {v0 .. v7}, Landroid/graphics/RadialGradient;->nativeCreate1(JFFF[I[FI)J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_0
    iget v2, p0, Landroid/graphics/RadialGradient;->mX:F

    iget v3, p0, Landroid/graphics/RadialGradient;->mY:F

    iget v4, p0, Landroid/graphics/RadialGradient;->mRadius:F

    .line 109
    iget v5, p0, Landroid/graphics/RadialGradient;->mCenterColor:I

    iget v6, p0, Landroid/graphics/RadialGradient;->mEdgeColor:I

    iget-object v0, p0, Landroid/graphics/RadialGradient;->mTileMode:Landroid/graphics/Shader$TileMode;

    iget v7, v0, Landroid/graphics/Shader$TileMode;->nativeInt:I

    move-wide v0, p1

    .line 108
    invoke-static/range {v0 .. v7}, Landroid/graphics/RadialGradient;->nativeCreate2(JFFFIII)J

    move-result-wide v0

    return-wide v0
.end method
