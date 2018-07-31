.class public Landroid/graphics/ColorMatrixColorFilter;
.super Landroid/graphics/ColorFilter;
.source "ColorMatrixColorFilter.java"


# instance fields
.field private final mMatrix:Landroid/graphics/ColorMatrix;


# direct methods
.method public constructor <init>(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 39
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 40
    return-void
.end method

.method public constructor <init>([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/graphics/ColorFilter;-><init>()V

    .line 29
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    .line 50
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    .line 51
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 53
    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    .line 54
    return-void
.end method

.method private static native nativeColorMatrixFilter([F)J
.end method


# virtual methods
.method createNativeInstance()J
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->getArray()[F

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/ColorMatrixColorFilter;->nativeColorMatrixFilter([F)J

    move-result-wide v0

    return-wide v0
.end method

.method public getColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .param p1, "colorMatrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 62
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {p1, v0}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    .line 63
    return-void
.end method

.method public setColorMatrix(Landroid/graphics/ColorMatrix;)V
    .locals 1
    .param p1, "matrix"    # Landroid/graphics/ColorMatrix;

    .prologue
    .line 80
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    .line 81
    if-nez p1, :cond_0

    .line 82
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 86
    :goto_0
    return-void

    .line 84
    :cond_0
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set(Landroid/graphics/ColorMatrix;)V

    goto :goto_0
.end method

.method public setColorMatrixArray([F)V
    .locals 2
    .param p1, "array"    # [F

    .prologue
    .line 109
    invoke-virtual {p0}, Landroid/graphics/ColorMatrixColorFilter;->discardNativeInstance()V

    .line 110
    if-nez p1, :cond_0

    .line 111
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 118
    :goto_0
    return-void

    .line 113
    :cond_0
    array-length v0, p1

    const/16 v1, 0x14

    if-ge v0, v1, :cond_1

    .line 114
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 116
    :cond_1
    iget-object v0, p0, Landroid/graphics/ColorMatrixColorFilter;->mMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0, p1}, Landroid/graphics/ColorMatrix;->set([F)V

    goto :goto_0
.end method
