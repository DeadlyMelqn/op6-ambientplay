.class final Lcom/google/android/gms/internal/ads/zzaff;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzcgj:Lcom/google/android/gms/internal/ads/zzafa;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzafa;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzcgj:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzcgj:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzafa;->zzb(Lcom/google/android/gms/internal/ads/zzafa;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzcgj:Lcom/google/android/gms/internal/ads/zzafa;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzafa;->zzb(Lcom/google/android/gms/internal/ads/zzafa;)Lcom/google/android/gms/internal/ads/zzvs;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzvs;->release()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzaff;->zzcgj:Lcom/google/android/gms/internal/ads/zzafa;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzafa;->zza(Lcom/google/android/gms/internal/ads/zzafa;Lcom/google/android/gms/internal/ads/zzvs;)Lcom/google/android/gms/internal/ads/zzvs;

    :cond_0
    return-void
.end method
