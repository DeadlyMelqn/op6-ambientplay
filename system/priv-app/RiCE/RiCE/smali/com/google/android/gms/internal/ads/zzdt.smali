.class public final Lcom/google/android/gms/internal/ads/zzdt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final zzps:Lcom/google/android/gms/internal/ads/zzcz;

.field private final zztq:Lcom/google/android/gms/internal/ads/zzba;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Lcom/google/android/gms/internal/ads/zzba;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzdt;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzdt;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    return-void
.end method

.method private final zzat()Ljava/lang/Void;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdt;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzak()Ljava/util/concurrent/Future;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdt;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzak()Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzdt;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzaj()Lcom/google/android/gms/internal/ads/zzba;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzdt;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    monitor-enter v1
    :try_end_0
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzdt;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zzb(Lcom/google/android/gms/internal/ads/zzbfi;)[B

    move-result-object v0

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zza(Lcom/google/android/gms/internal/ads/zzbfi;[B)Lcom/google/android/gms/internal/ads/zzbfi;

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lcom/google/android/gms/internal/ads/zzbfh; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzdt;->zzat()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method
