.class final Lcom/google/android/gms/common/api/internal/zzci;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzmk:Lcom/google/android/gms/common/api/Result;

.field private final synthetic zzml:Lcom/google/android/gms/common/api/internal/zzch;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static/range {v0 .. v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/common/api/internal/zzch;->zzc(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/ResultTransform;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-virtual {v2, v3}, Lcom/google/android/gms/common/api/ResultTransform;->onSuccess(Lcom/google/android/gms/common/api/Result;)Lcom/google/android/gms/common/api/PendingResult;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v4 .. v4}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Lcom/google/android/gms/common/api/internal/zzcj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/gms/common/api/internal/zzcj;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/zzch;->zze(Lcom/google/android/gms/common/api/internal/zzch;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzch;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v3

    iget-object v4, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v4 .. v4}, Lcom/google/android/gms/common/api/internal/zzch;->zzd(Lcom/google/android/gms/common/api/internal/zzch;)Lcom/google/android/gms/common/api/internal/zzcj;

    move-result-object v4

    invoke-virtual {v4, v0, v2}, Lcom/google/android/gms/common/api/internal/zzcj;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/google/android/gms/common/api/internal/zzcj;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-object v0, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/zzch;->zze(Lcom/google/android/gms/common/api/internal/zzch;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzch;)V

    :cond_1
    return-void

    :goto_0
    sget-object v2, Lcom/google/android/gms/common/api/internal/BasePendingResult;->zzez:Ljava/lang/ThreadLocal;

    invoke-static/range {v1 .. v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzmk:Lcom/google/android/gms/common/api/Result;

    invoke-static {v1, v2}, Lcom/google/android/gms/common/api/internal/zzch;->zza(Lcom/google/android/gms/common/api/internal/zzch;Lcom/google/android/gms/common/api/Result;)V

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/common/api/internal/zzch;->zze(Lcom/google/android/gms/common/api/internal/zzch;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual/range {v1 .. v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/api/GoogleApiClient;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzci;->zzml:Lcom/google/android/gms/common/api/internal/zzch;

    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/GoogleApiClient;->zzb(Lcom/google/android/gms/common/api/internal/zzch;)V

    :cond_2
    throw v0
.end method
