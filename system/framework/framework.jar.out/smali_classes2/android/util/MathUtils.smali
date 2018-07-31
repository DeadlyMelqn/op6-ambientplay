.class public final Landroid/util/MathUtils;
.super Ljava/lang/Object;
.source "MathUtils.java"


# static fields
.field private static final DEG_TO_RAD:F = 0.017453292f

.field private static final RAD_TO_DEG:F = 57.295784f


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method public static abs(F)F
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 32
    const/4 v0, 0x0

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .end local p0    # "v":F
    :goto_0
    return p0

    .restart local p0    # "v":F
    :cond_0
    neg-float p0, p0

    goto :goto_0
.end method

.method public static acos(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 133
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static addOrThrow(II)I
    .locals 3
    .param p0, "a"    # I
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    return p0

    .line 195
    :cond_0
    if-lez p1, :cond_1

    const v0, 0x7fffffff

    sub-int/2addr v0, p1

    if-gt p0, v0, :cond_1

    .line 196
    add-int v0, p0, p1

    return v0

    .line 199
    :cond_1
    if-gez p1, :cond_2

    const/high16 v0, -0x80000000

    sub-int/2addr v0, p1

    if-lt p0, v0, :cond_2

    .line 200
    add-int v0, p0, p1

    return v0

    .line 202
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Addition overflow: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " + "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static asin(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 137
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->asin(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan(F)F
    .locals 2
    .param p0, "value"    # F

    .prologue
    .line 141
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->atan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static atan2(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 145
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static constrain(FFF)F
    .locals 1
    .param p0, "amount"    # F
    .param p1, "low"    # F
    .param p2, "high"    # F

    .prologue
    .line 44
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p1    # "low":F
    :goto_0
    return p1

    .restart local p1    # "low":F
    :cond_0
    cmpl-float v0, p0, p2

    if-lez v0, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static constrain(III)I
    .locals 0
    .param p0, "amount"    # I
    .param p1, "low"    # I
    .param p2, "high"    # I

    .prologue
    .line 36
    if-ge p0, p1, :cond_0

    .end local p1    # "low":I
    :goto_0
    return p1

    .restart local p1    # "low":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    goto :goto_0

    :cond_1
    move p1, p0

    goto :goto_0
.end method

.method public static constrain(JJJ)J
    .locals 2
    .param p0, "amount"    # J
    .param p2, "low"    # J
    .param p4, "high"    # J

    .prologue
    .line 40
    cmp-long v0, p0, p2

    if-gez v0, :cond_0

    .end local p2    # "low":J
    :goto_0
    return-wide p2

    .restart local p2    # "low":J
    :cond_0
    cmp-long v0, p0, p4

    if-lez v0, :cond_1

    move-wide p2, p4

    goto :goto_0

    :cond_1
    move-wide p2, p0

    goto :goto_0
.end method

.method public static cross(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .prologue
    .line 121
    mul-float v0, p0, p3

    mul-float v1, p1, p2

    sub-float/2addr v0, v1

    return v0
.end method

.method public static degrees(F)F
    .locals 1
    .param p0, "radians"    # F

    .prologue
    .line 129
    const v0, 0x42652ee2

    mul-float/2addr v0, p0

    return v0
.end method

.method public static dist(FFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "x2"    # F
    .param p3, "y2"    # F

    .prologue
    .line 92
    sub-float v0, p2, p0

    .line 93
    .local v0, "x":F
    sub-float v1, p3, p1

    .line 94
    .local v1, "y":F
    float-to-double v2, v0

    float-to-double v4, v1

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    return v2
.end method

.method public static dist(FFFFFF)F
    .locals 6
    .param p0, "x1"    # F
    .param p1, "y1"    # F
    .param p2, "z1"    # F
    .param p3, "x2"    # F
    .param p4, "y2"    # F
    .param p5, "z2"    # F

    .prologue
    .line 98
    sub-float v0, p3, p0

    .line 99
    .local v0, "x":F
    sub-float v1, p4, p1

    .line 100
    .local v1, "y":F
    sub-float v2, p5, p2

    .line 101
    .local v2, "z":F
    mul-float v3, v0, v0

    mul-float v4, v1, v1

    add-float/2addr v3, v4

    mul-float v4, v2, v2

    add-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v3, v4

    return v3
.end method

.method public static dot(FFFF)F
    .locals 2
    .param p0, "v1x"    # F
    .param p1, "v1y"    # F
    .param p2, "v2x"    # F
    .param p3, "v2y"    # F

    .prologue
    .line 117
    mul-float v0, p0, p2

    mul-float v1, p1, p3

    add-float/2addr v0, v1

    return v0
.end method

.method public static exp(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 52
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static lerp(FFF)F
    .locals 1
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "amount"    # F

    .prologue
    .line 153
    sub-float v0, p1, p0

    mul-float/2addr v0, p2

    add-float/2addr v0, p0

    return v0
.end method

.method public static lerpDeg(FFF)F
    .locals 4
    .param p0, "start"    # F
    .param p1, "end"    # F
    .param p2, "amount"    # F

    .prologue
    const/high16 v3, 0x43340000    # 180.0f

    .line 173
    sub-float v1, p1, p0

    add-float/2addr v1, v3

    const/high16 v2, 0x43b40000    # 360.0f

    rem-float/2addr v1, v2

    sub-float v0, v1, v3

    .line 174
    .local v0, "minAngle":F
    mul-float v1, v0, p2

    add-float/2addr v1, p0

    return v1
.end method

.method public static log(F)F
    .locals 2
    .param p0, "a"    # F

    .prologue
    .line 48
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 105
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static mag(FFF)F
    .locals 2
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 109
    mul-float v0, p0, p0

    mul-float v1, p1, p1

    add-float/2addr v0, v1

    mul-float v1, p2, p2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static map(FFFFF)F
    .locals 3
    .param p0, "minStart"    # F
    .param p1, "minStop"    # F
    .param p2, "maxStart"    # F
    .param p3, "maxStop"    # F
    .param p4, "value"    # F

    .prologue
    .line 182
    sub-float v0, p3, p2

    sub-float v1, p4, p0

    sub-float v2, p1, p0

    div-float/2addr v1, v2

    mul-float/2addr v0, v1

    add-float/2addr v0, p2

    return v0
.end method

.method public static max(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 60
    cmpl-float v0, p0, p1

    if-lez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 68
    cmpl-float v0, p0, p1

    if-lez v0, :cond_1

    cmpl-float v0, p0, p2

    if-lez v0, :cond_0

    move p2, p0

    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "c":F
    :cond_1
    cmpl-float v0, p1, p2

    if-lez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static max(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 64
    if-le p0, p1, :cond_0

    .end local p0    # "a":I
    :goto_0
    int-to-float v0, p0

    return v0

    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static max(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 72
    if-le p0, p1, :cond_1

    if-le p0, p2, :cond_0

    move p2, p0

    .end local p2    # "c":I
    :cond_0
    :goto_0
    int-to-float v0, p2

    return v0

    .restart local p2    # "c":I
    :cond_1
    if-le p1, p2, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static min(FF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 76
    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    .end local p0    # "a":F
    :goto_0
    return p0

    .restart local p0    # "a":F
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(FFF)F
    .locals 1
    .param p0, "a"    # F
    .param p1, "b"    # F
    .param p2, "c"    # F

    .prologue
    .line 84
    cmpg-float v0, p0, p1

    if-gez v0, :cond_1

    cmpg-float v0, p0, p2

    if-gez v0, :cond_0

    move p2, p0

    .end local p2    # "c":F
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "c":F
    :cond_1
    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static min(II)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I

    .prologue
    .line 80
    if-ge p0, p1, :cond_0

    .end local p0    # "a":I
    :goto_0
    int-to-float v0, p0

    return v0

    .restart local p0    # "a":I
    :cond_0
    move p0, p1

    goto :goto_0
.end method

.method public static min(III)F
    .locals 1
    .param p0, "a"    # I
    .param p1, "b"    # I
    .param p2, "c"    # I

    .prologue
    .line 88
    if-ge p0, p1, :cond_1

    if-ge p0, p2, :cond_0

    move p2, p0

    .end local p2    # "c":I
    :cond_0
    :goto_0
    int-to-float v0, p2

    return v0

    .restart local p2    # "c":I
    :cond_1
    if-ge p1, p2, :cond_0

    move p2, p1

    goto :goto_0
.end method

.method public static norm(FFF)F
    .locals 2
    .param p0, "start"    # F
    .param p1, "stop"    # F
    .param p2, "value"    # F

    .prologue
    .line 178
    sub-float v0, p2, p0

    sub-float v1, p1, p0

    div-float/2addr v0, v1

    return v0
.end method

.method public static pow(FF)F
    .locals 4
    .param p0, "a"    # F
    .param p1, "b"    # F

    .prologue
    .line 56
    float-to-double v0, p0

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public static radians(F)F
    .locals 1
    .param p0, "degrees"    # F

    .prologue
    .line 125
    const v0, 0x3c8efa35

    mul-float/2addr v0, p0

    return v0
.end method

.method public static sq(F)F
    .locals 1
    .param p0, "v"    # F

    .prologue
    .line 113
    mul-float v0, p0, p0

    return v0
.end method

.method public static tan(F)F
    .locals 2
    .param p0, "angle"    # F

    .prologue
    .line 149
    float-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->tan(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
