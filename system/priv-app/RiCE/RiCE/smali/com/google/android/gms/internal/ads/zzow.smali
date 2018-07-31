.class final Lcom/google/android/gms/internal/ads/zzow;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbis:Lcom/google/android/gms/internal/ads/zzov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzov;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzow;->zzbis:Lcom/google/android/gms/internal/ads/zzov;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzow;->zzbis:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzow;->zzbis:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkq()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzow;->zzbis:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzkp()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzow;->zzbis:Lcom/google/android/gms/internal/ads/zzov;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzov;->zzb(Lcom/google/android/gms/internal/ads/zzov;)Lcom/google/android/gms/internal/ads/zzoz;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzoz;->zzcs()V

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzow;->zzbis:Lcom/google/android/gms/internal/ads/zzov;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzov;->zza(Lcom/google/android/gms/internal/ads/zzov;Lcom/google/android/gms/internal/ads/zzoz;)Lcom/google/android/gms/internal/ads/zzoz;

    return-void
.end method
