.class final synthetic Lcom/google/android/gms/internal/ads/zzanq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbnu:Lcom/google/android/gms/internal/ads/zzaoj;

.field private final zzcvl:Lcom/google/android/gms/internal/ads/zzank;

.field private final zzcvm:Lcom/google/android/gms/internal/ads/zzanz;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoj;Lcom/google/android/gms/internal/ads/zzank;Lcom/google/android/gms/internal/ads/zzanz;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanq;->zzbnu:Lcom/google/android/gms/internal/ads/zzaoj;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzanq;->zzcvl:Lcom/google/android/gms/internal/ads/zzank;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzanq;->zzcvm:Lcom/google/android/gms/internal/ads/zzanz;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzanq;->zzbnu:Lcom/google/android/gms/internal/ads/zzaoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzanq;->zzcvl:Lcom/google/android/gms/internal/ads/zzank;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanq;->zzcvm:Lcom/google/android/gms/internal/ads/zzanz;

    :try_start_0
    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzanz;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v1, p0}, Lcom/google/android/gms/internal/ads/zzank;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoj;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoj;->setException(Ljava/lang/Throwable;)V

    return-void

    :catch_1
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Thread;->interrupt()V

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoj;->setException(Ljava/lang/Throwable;)V

    return-void

    :catch_2
    move-exception p0

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoj;->setException(Ljava/lang/Throwable;)V

    return-void

    :catch_3
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/google/android/gms/internal/ads/zzaoj;->cancel(Z)Z

    return-void
.end method
