.class final Landroid/graphics/ColorSpace$Xyz;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Xyz"
.end annotation


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1787
    sget-object v0, Landroid/graphics/ColorSpace$Model;->XYZ:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V

    .line 1788
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Xyz;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "-this2"    # Landroid/graphics/ColorSpace$Xyz;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Xyz;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(F)F
    .locals 3
    .param p0, "x"    # F

    .prologue
    const/high16 v1, 0x40000000    # 2.0f

    const/high16 v0, -0x40000000    # -2.0f

    .line 1822
    cmpg-float v2, p0, v0

    if-gez v2, :cond_1

    move p0, v0

    .end local p0    # "x":F
    :cond_0
    :goto_0
    return p0

    .restart local p0    # "x":F
    :cond_1
    cmpl-float v0, p0, v1

    if-lez v0, :cond_0

    move p0, v1

    goto :goto_0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 4
    .param p1, "v"    # [F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1815
    aget v0, p1, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v1

    .line 1816
    aget v0, p1, v2

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v2

    .line 1817
    aget v0, p1, v3

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v3

    .line 1818
    return-object p1
.end method

.method public getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 1802
    const/high16 v0, 0x40000000    # 2.0f

    return v0
.end method

.method public getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 1797
    const/high16 v0, -0x40000000    # -2.0f

    return v0
.end method

.method public isWideGamut()Z
    .locals 1

    .prologue
    .line 1792
    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .locals 4
    .param p1, "v"    # [F

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1807
    aget v0, p1, v1

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v1

    .line 1808
    aget v0, p1, v2

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v2

    .line 1809
    aget v0, p1, v3

    invoke-static {v0}, Landroid/graphics/ColorSpace$Xyz;->clamp(F)F

    move-result v0

    aput v0, p1, v3

    .line 1810
    return-object p1
.end method
