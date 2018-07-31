.class final Lcom/android/server/display/HysteresisLevels;
.super Ljava/lang/Object;
.source "HysteresisLevels.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_BRIGHTENING_HYSTERESIS:F = 0.1f

.field private static final DEFAULT_DARKENING_HYSTERESIS:F = 0.2f

.field private static final TAG:Ljava/lang/String; = "HysteresisLevels"


# instance fields
.field private final mBrightLevels:[F

.field private final mDarkLevels:[F

.field private final mLuxLevels:[F


# direct methods
.method public constructor <init>([I[I[I)V
    .locals 3
    .param p1, "brightLevels"    # [I
    .param p2, "darkLevels"    # [I
    .param p3, "luxLevels"    # [I

    .prologue
    const/high16 v2, 0x447a0000    # 1000.0f

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    array-length v0, p2

    array-length v1, p3

    add-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_1

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Mismatch between hysteresis array lengths."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_1
    invoke-direct {p0, p1, v2}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mBrightLevels:[F

    .line 52
    invoke-direct {p0, p2, v2}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mDarkLevels:[F

    .line 53
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p3, v0}, Lcom/android/server/display/HysteresisLevels;->setArrayFormat([IF)[F

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    .line 54
    return-void
.end method

.method private getReferenceLevel(F[F)F
    .locals 2
    .param p1, "lux"    # F
    .param p2, "referenceLevels"    # [F

    .prologue
    .line 87
    const/4 v0, 0x0

    .line 88
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    array-length v1, v1

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/display/HysteresisLevels;->mLuxLevels:[F

    aget v1, v1, v0

    cmpl-float v1, p1, v1

    if-ltz v1, :cond_0

    .line 89
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 91
    :cond_0
    aget v1, p2, v0

    return v1
.end method

.method private setArrayFormat([IF)[F
    .locals 3
    .param p1, "configArray"    # [I
    .param p2, "divideFactor"    # F

    .prologue
    .line 98
    array-length v2, p1

    new-array v1, v2, [F

    .line 99
    .local v1, "levelArray":[F
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    array-length v2, v1

    if-le v2, v0, :cond_0

    .line 100
    aget v2, p1, v0

    int-to-float v2, v2

    div-float/2addr v2, p2

    aput v2, v1, v0

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-object v1
.end method


# virtual methods
.method public getBrighteningThreshold(F)F
    .locals 3
    .param p1, "lux"    # F

    .prologue
    .line 60
    iget-object v2, p0, Lcom/android/server/display/HysteresisLevels;->mBrightLevels:[F

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 61
    .local v0, "brightConstant":F
    const/high16 v2, 0x3f800000    # 1.0f

    add-float/2addr v2, v0

    mul-float v1, p1, v2

    .line 66
    .local v1, "brightThreshold":F
    return v1
.end method

.method public getDarkeningThreshold(F)F
    .locals 3
    .param p1, "lux"    # F

    .prologue
    .line 73
    iget-object v2, p0, Lcom/android/server/display/HysteresisLevels;->mDarkLevels:[F

    invoke-direct {p0, p1, v2}, Lcom/android/server/display/HysteresisLevels;->getReferenceLevel(F[F)F

    move-result v0

    .line 74
    .local v0, "darkConstant":F
    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v0

    mul-float v1, p1, v2

    .line 79
    .local v1, "darkThreshold":F
    return v1
.end method
