.class final Lcom/google/android/gms/internal/ads/zzads;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzccn:Lcom/google/android/gms/internal/ads/zzadk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzadk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzadk;->zza(Lcom/google/android/gms/internal/ads/zzadk;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    iget-object v1, v1, Lcom/google/android/gms/internal/ads/zzadk;->zzccj:Lcom/google/android/gms/internal/ads/zzalc;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzajx;->onStop()V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzads;->zzccn:Lcom/google/android/gms/internal/ads/zzadk;

    const/4 v1, 0x2

    const-string v2, "Timed out waiting for ad response."

    invoke-static {p0, v1, v2}, Lcom/google/android/gms/internal/ads/zzadk;->zza(Lcom/google/android/gms/internal/ads/zzadk;ILjava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
