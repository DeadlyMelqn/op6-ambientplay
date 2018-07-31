.class public final Lcom/google/android/gms/internal/ads/zzauh;
.super Ljava/lang/Object;


# instance fields
.field private zzdhi:Lcom/google/android/gms/internal/ads/zzaxr;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzaxr;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzdhi:Lcom/google/android/gms/internal/ads/zzaxr;

    return-void
.end method

.method static final zza(Lcom/google/android/gms/internal/ads/zzaxr;)Lcom/google/android/gms/internal/ads/zzauh;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaxr;->zzzm()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzauh;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzauh;-><init>(Lcom/google/android/gms/internal/ads/zzaxr;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzdhi:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaup;->zzb(Lcom/google/android/gms/internal/ads/zzaxr;)Lcom/google/android/gms/internal/ads/zzaxt;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbo;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method final zzwg()Lcom/google/android/gms/internal/ads/zzaxr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzauh;->zzdhi:Lcom/google/android/gms/internal/ads/zzaxr;

    return-object p0
.end method
