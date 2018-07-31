.class final Lcom/google/android/gms/internal/ads/zzapc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcxf:Lcom/google/android/gms/internal/ads/zzaov;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaov;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzapc;->zzcxf:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapc;->zzcxf:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Lcom/google/android/gms/internal/ads/zzaov;)Lcom/google/android/gms/internal/ads/zzapf;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzapc;->zzcxf:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Lcom/google/android/gms/internal/ads/zzaov;)Lcom/google/android/gms/internal/ads/zzapf;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzapf;->onPaused()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzapc;->zzcxf:Lcom/google/android/gms/internal/ads/zzaov;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaov;->zza(Lcom/google/android/gms/internal/ads/zzaov;)Lcom/google/android/gms/internal/ads/zzapf;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzapf;->zzsy()V

    :cond_0
    return-void
.end method
