.class final Landroid/graphics/ColorSpace$Lab;
.super Landroid/graphics/ColorSpace;
.source "ColorSpace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/graphics/ColorSpace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Lab"
.end annotation


# static fields
.field private static final A:F = 0.008856452f

.field private static final B:F = 7.787037f

.field private static final C:F = 0.13793103f

.field private static final D:F = 0.20689656f


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I

    .prologue
    .line 1838
    sget-object v0, Landroid/graphics/ColorSpace$Model;->LAB:Landroid/graphics/ColorSpace$Model;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Landroid/graphics/ColorSpace;-><init>(Ljava/lang/String;Landroid/graphics/ColorSpace$Model;ILandroid/graphics/ColorSpace;)V

    .line 1839
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILandroid/graphics/ColorSpace$Lab;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "-this2"    # Landroid/graphics/ColorSpace$Lab;

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/graphics/ColorSpace$Lab;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static clamp(FFF)F
    .locals 1
    .param p0, "x"    # F
    .param p1, "min"    # F
    .param p2, "max"    # F

    .prologue
    .line 1898
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "min":F
    :goto_0
    return p1

    .restart local p1    # "min":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method


# virtual methods
.method public fromXyz([F)[F
    .locals 14
    .param p1, "v"    # [F

    .prologue
    .line 1878
    const/4 v9, 0x0

    aget v9, p1, v9

    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v10

    const/4 v11, 0x0

    aget v10, v10, v11

    div-float v1, v9, v10

    .line 1879
    .local v1, "X":F
    const/4 v9, 0x1

    aget v9, p1, v9

    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v10

    const/4 v11, 0x1

    aget v10, v10, v11

    div-float v2, v9, v10

    .line 1880
    .local v2, "Y":F
    const/4 v9, 0x2

    aget v9, p1, v9

    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v10

    const/4 v11, 0x2

    aget v10, v10, v11

    div-float v3, v9, v10

    .line 1882
    .local v3, "Z":F
    const v9, 0x3c111aa7

    cmpl-float v9, v1, v9

    if-lez v9, :cond_0

    float-to-double v10, v1

    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v6, v10

    .line 1883
    .local v6, "fx":F
    :goto_0
    const v9, 0x3c111aa7

    cmpl-float v9, v2, v9

    if-lez v9, :cond_1

    float-to-double v10, v2

    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v7, v10

    .line 1884
    .local v7, "fy":F
    :goto_1
    const v9, 0x3c111aa7

    cmpl-float v9, v3, v9

    if-lez v9, :cond_2

    float-to-double v10, v3

    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    double-to-float v8, v10

    .line 1886
    .local v8, "fz":F
    :goto_2
    const/high16 v9, 0x42e80000    # 116.0f

    mul-float/2addr v9, v7

    const/high16 v10, 0x41800000    # 16.0f

    sub-float v0, v9, v10

    .line 1887
    .local v0, "L":F
    sub-float v9, v6, v7

    const/high16 v10, 0x43fa0000    # 500.0f

    mul-float v4, v10, v9

    .line 1888
    .local v4, "a":F
    sub-float v9, v7, v8

    const/high16 v10, 0x43480000    # 200.0f

    mul-float v5, v10, v9

    .line 1890
    .local v5, "b":F
    const/4 v9, 0x0

    const/high16 v10, 0x42c80000    # 100.0f

    invoke-static {v0, v9, v10}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v9

    const/4 v10, 0x0

    aput v9, p1, v10

    .line 1891
    const/high16 v9, -0x3d000000    # -128.0f

    const/high16 v10, 0x43000000    # 128.0f

    invoke-static {v4, v9, v10}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v9

    const/4 v10, 0x1

    aput v9, p1, v10

    .line 1892
    const/high16 v9, -0x3d000000    # -128.0f

    const/high16 v10, 0x43000000    # 128.0f

    invoke-static {v5, v9, v10}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v9

    const/4 v10, 0x2

    aput v9, p1, v10

    .line 1894
    return-object p1

    .line 1882
    .end local v0    # "L":F
    .end local v4    # "a":F
    .end local v5    # "b":F
    .end local v6    # "fx":F
    .end local v7    # "fy":F
    .end local v8    # "fz":F
    :cond_0
    const v9, 0x40f92f68

    mul-float/2addr v9, v1

    const v10, 0x3e0d3dcb

    add-float v6, v9, v10

    .restart local v6    # "fx":F
    goto :goto_0

    .line 1883
    :cond_1
    const v9, 0x40f92f68

    mul-float/2addr v9, v2

    const v10, 0x3e0d3dcb

    add-float v7, v9, v10

    .restart local v7    # "fy":F
    goto :goto_1

    .line 1884
    :cond_2
    const v9, 0x40f92f68

    mul-float/2addr v9, v3

    const v10, 0x3e0d3dcb

    add-float v8, v9, v10

    .restart local v8    # "fz":F
    goto :goto_2
.end method

.method public getMaxValue(I)F
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 1853
    if-nez p1, :cond_0

    const/high16 v0, 0x42c80000    # 100.0f

    :goto_0
    return v0

    :cond_0
    const/high16 v0, 0x43000000    # 128.0f

    goto :goto_0
.end method

.method public getMinValue(I)F
    .locals 1
    .param p1, "component"    # I

    .prologue
    .line 1848
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/high16 v0, -0x3d000000    # -128.0f

    goto :goto_0
.end method

.method public isWideGamut()Z
    .locals 1

    .prologue
    .line 1843
    const/4 v0, 0x1

    return v0
.end method

.method public toXyz([F)[F
    .locals 14
    .param p1, "v"    # [F

    .prologue
    const v13, 0x3e0d3dcb

    const v12, 0x3e038027

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1858
    aget v6, p1, v9

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    invoke-static {v6, v7, v8}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v6

    aput v6, p1, v9

    .line 1859
    aget v6, p1, v10

    const/high16 v7, -0x3d000000    # -128.0f

    const/high16 v8, 0x43000000    # 128.0f

    invoke-static {v6, v7, v8}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v6

    aput v6, p1, v10

    .line 1860
    aget v6, p1, v11

    const/high16 v7, -0x3d000000    # -128.0f

    const/high16 v8, 0x43000000    # 128.0f

    invoke-static {v6, v7, v8}, Landroid/graphics/ColorSpace$Lab;->clamp(FFF)F

    move-result v6

    aput v6, p1, v11

    .line 1862
    aget v6, p1, v9

    const/high16 v7, 0x41800000    # 16.0f

    add-float/2addr v6, v7

    const/high16 v7, 0x42e80000    # 116.0f

    div-float v4, v6, v7

    .line 1863
    .local v4, "fy":F
    aget v6, p1, v10

    const v7, 0x3b03126f    # 0.002f

    mul-float/2addr v6, v7

    add-float v3, v4, v6

    .line 1864
    .local v3, "fx":F
    aget v6, p1, v11

    const v7, 0x3ba3d70a    # 0.005f

    mul-float/2addr v6, v7

    sub-float v5, v4, v6

    .line 1865
    .local v5, "fz":F
    const v6, 0x3e53dcb1

    cmpl-float v6, v3, v6

    if-lez v6, :cond_0

    mul-float v6, v3, v3

    mul-float v0, v6, v3

    .line 1866
    .local v0, "X":F
    :goto_0
    const v6, 0x3e53dcb1

    cmpl-float v6, v4, v6

    if-lez v6, :cond_1

    mul-float v6, v4, v4

    mul-float v1, v6, v4

    .line 1867
    .local v1, "Y":F
    :goto_1
    const v6, 0x3e53dcb1

    cmpl-float v6, v5, v6

    if-lez v6, :cond_2

    mul-float v6, v5, v5

    mul-float v2, v6, v5

    .line 1869
    .local v2, "Z":F
    :goto_2
    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v6

    aget v6, v6, v9

    mul-float/2addr v6, v0

    aput v6, p1, v9

    .line 1870
    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v6

    aget v6, v6, v10

    mul-float/2addr v6, v1

    aput v6, p1, v10

    .line 1871
    invoke-static {}, Landroid/graphics/ColorSpace;->-get0()[F

    move-result-object v6

    aget v6, v6, v11

    mul-float/2addr v6, v2

    aput v6, p1, v11

    .line 1873
    return-object p1

    .line 1865
    .end local v0    # "X":F
    .end local v1    # "Y":F
    .end local v2    # "Z":F
    :cond_0
    sub-float v6, v3, v13

    mul-float v0, v12, v6

    .restart local v0    # "X":F
    goto :goto_0

    .line 1866
    :cond_1
    sub-float v6, v4, v13

    mul-float v1, v12, v6

    .restart local v1    # "Y":F
    goto :goto_1

    .line 1867
    :cond_2
    sub-float v6, v5, v13

    mul-float v2, v12, v6

    .restart local v2    # "Z":F
    goto :goto_2
.end method
