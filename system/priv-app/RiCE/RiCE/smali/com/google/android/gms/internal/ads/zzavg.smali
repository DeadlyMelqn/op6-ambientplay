.class final Lcom/google/android/gms/internal/ads/zzavg;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzauf;


# instance fields
.field private final synthetic zzdhy:Lcom/google/android/gms/internal/ads/zzaum;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaum;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdhy:Lcom/google/android/gms/internal/ads/zzaum;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzc([B[B)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x2

    new-array v0, v0, [[B

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdhy:Lcom/google/android/gms/internal/ads/zzaum;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzaum;->zzwh()Lcom/google/android/gms/internal/ads/zzaun;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzaun;->zzwj()[B

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzavg;->zzdhy:Lcom/google/android/gms/internal/ads/zzaum;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaum;->zzwh()Lcom/google/android/gms/internal/ads/zzaun;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaun;->zzwi()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzauf;

    invoke-interface {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzauf;->zzc([B[B)[B

    move-result-object p0

    const/4 p1, 0x1

    aput-object p0, v0, p1

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzayk;->zza([[B)[B

    move-result-object p0

    return-object p0
.end method
