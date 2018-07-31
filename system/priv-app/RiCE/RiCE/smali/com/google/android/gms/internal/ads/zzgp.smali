.class public final Lcom/google/android/gms/internal/ads/zzgp;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# instance fields
.field private final zzais:F

.field private final zzait:F

.field private final zzaiu:F

.field private final zzaiv:F

.field private final zzaiw:I


# direct methods
.method public constructor <init>(FFFFI)V
    .locals 0
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzais:F

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzait:F

    add-float/2addr p1, p3

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzaiu:F

    add-float/2addr p2, p4

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzaiv:F

    iput p5, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzaiw:I

    return-void
.end method


# virtual methods
.method final zzhb()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzais:F

    return p0
.end method

.method final zzhc()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzait:F

    return p0
.end method

.method final zzhd()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzaiu:F

    return p0
.end method

.method final zzhe()F
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzaiv:F

    return p0
.end method

.method final zzhf()I
    .locals 0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzgp;->zzaiw:I

    return p0
.end method
