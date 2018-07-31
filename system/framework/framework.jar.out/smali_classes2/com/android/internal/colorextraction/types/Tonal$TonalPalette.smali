.class Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;
.super Ljava/lang/Object;
.source "Tonal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/colorextraction/types/Tonal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TonalPalette"
.end annotation


# instance fields
.field final h:[F

.field final l:[F

.field final maxHue:F

.field final minHue:F

.field final s:[F


# direct methods
.method constructor <init>([F[F[F)V
    .locals 6
    .param p1, "h"    # [F
    .param p2, "s"    # [F
    .param p3, "l"    # [F

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    array-length v3, p1

    array-length v4, p2

    if-ne v3, v4, :cond_0

    array-length v3, p2

    array-length v4, p3

    if-eq v3, v4, :cond_1

    .line 420
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "All arrays should have the same size. h: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    invoke-static {p1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    const-string/jumbo v5, " s: "

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 421
    const-string/jumbo v5, " l: "

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 422
    invoke-static {p3}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v5

    .line 420
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 424
    :cond_1
    iput-object p1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->h:[F

    .line 425
    iput-object p2, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->s:[F

    .line 426
    iput-object p3, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->l:[F

    .line 428
    const/high16 v1, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 429
    .local v1, "minHue":F
    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    .line 431
    .local v0, "maxHue":F
    const/4 v3, 0x0

    array-length v4, p1

    :goto_0
    if-ge v3, v4, :cond_2

    aget v2, p1, v3

    .line 432
    .local v2, "v":F
    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 433
    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 431
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 436
    .end local v2    # "v":F
    :cond_2
    iput v1, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->minHue:F

    .line 437
    iput v0, p0, Lcom/android/internal/colorextraction/types/Tonal$TonalPalette;->maxHue:F

    .line 438
    return-void
.end method
