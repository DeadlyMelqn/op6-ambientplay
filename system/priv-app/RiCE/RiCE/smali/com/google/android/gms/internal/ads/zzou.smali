.class final Lcom/google/android/gms/internal/ads/zzou;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbir:Lcom/google/android/gms/internal/ads/zzos;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzos;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzou;->zzbir:Lcom/google/android/gms/internal/ads/zzos;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzou;->zzbir:Lcom/google/android/gms/internal/ads/zzos;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzos;->zza(Lcom/google/android/gms/internal/ads/zzos;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzou;->zzbir:Lcom/google/android/gms/internal/ads/zzos;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzos;->zza(Lcom/google/android/gms/internal/ads/zzos;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzou;->zzbir:Lcom/google/android/gms/internal/ads/zzos;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzos;->zza(Lcom/google/android/gms/internal/ads/zzos;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkp()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzou;->zzbir:Lcom/google/android/gms/internal/ads/zzos;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzos;->zza(Lcom/google/android/gms/internal/ads/zzos;Lcom/google/android/gms/internal/ads/zzoz;)Lcom/google/android/gms/internal/ads/zzoz;

    return-void
.end method
