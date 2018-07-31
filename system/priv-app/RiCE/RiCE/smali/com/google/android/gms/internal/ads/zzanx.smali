.class final Lcom/google/android/gms/internal/ads/zzanx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanz;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzanz<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final cause:Ljava/lang/Throwable;

.field private final zzcvt:Lcom/google/android/gms/internal/ads/zzaoa;


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->cause:Ljava/lang/Throwable;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-direct/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaoa;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzcvt:Lcom/google/android/gms/internal/ads/zzaoa;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzcvt:Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaoa;->zzsm()V

    return-void
.end method


# virtual methods
.method public final cancel(Z)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance v0, Ljava/util/concurrent/ExecutionException;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanx;->cause:Ljava/lang/Throwable;

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public final get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    new-instance p1, Ljava/util/concurrent/ExecutionException;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanx;->cause:Ljava/lang/Throwable;

    invoke-direct {p1, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final isCancelled()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final isDone()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzanx;->zzcvt:Lcom/google/android/gms/internal/ads/zzaoa;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaoa;->zza(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method
