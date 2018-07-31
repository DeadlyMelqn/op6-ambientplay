.class final synthetic Lcom/google/android/gms/internal/ads/zzanp;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzcvj:Lcom/google/android/gms/internal/ads/zzanl;

.field private final zzcvk:Lcom/google/android/gms/internal/ads/zzanz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzanl;Lcom/google/android/gms/internal/ads/zzanz;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzcvj:Lcom/google/android/gms/internal/ads/zzanl;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzcvk:Lcom/google/android/gms/internal/ads/zzanz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzcvj:Lcom/google/android/gms/internal/ads/zzanl;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanp;->zzcvk:Lcom/google/android/gms/internal/ads/zzanz;

    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanz;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzanl;->zzh(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    :goto_0
    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzanl;->zzb(Ljava/lang/Throwable;)V

    return-void
.end method
