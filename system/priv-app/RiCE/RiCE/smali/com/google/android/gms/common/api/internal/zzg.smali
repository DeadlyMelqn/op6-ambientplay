.class public final Lcom/google/android/gms/common/api/internal/zzg;
.super Lcom/google/android/gms/common/api/internal/zzc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/api/internal/zzc<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final zzea:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey<",
            "*>;",
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x4

    invoke-direct {p0, v0, p2}, Lcom/google/android/gms/common/api/internal/zzc;-><init>(ILcom/google/android/gms/tasks/TaskCompletionSource;)V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzea:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    return-void
.end method


# virtual methods
.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/Status;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/Status;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/common/api/internal/zzc;->zza(Lcom/google/android/gms/common/api/Status;)V

    return-void
.end method

.method public final bridge synthetic zza(Lcom/google/android/gms/common/api/internal/zzaa;Z)V
    .locals 0
    .param p1    # Lcom/google/android/gms/common/api/internal/zzaa;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public final bridge synthetic zza(Ljava/lang/RuntimeException;)V
    .locals 0
    .param p1    # Ljava/lang/RuntimeException;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/common/api/internal/zzc;->zza(Ljava/lang/RuntimeException;)V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzbn()Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzea:Lcom/google/android/gms/common/api/internal/ListenerHolder$ListenerKey;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzbv;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/gms/common/api/internal/zzbv;->zzlu:Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->zzae()Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzdu:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {v1, p1, p0}, Lcom/google/android/gms/common/api/internal/UnregisterListenerMethod;->unregisterListener(Lcom/google/android/gms/common/api/Api$AnyClient;Lcom/google/android/gms/tasks/TaskCompletionSource;)V

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zzbv;->zzlt:Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/RegisterListenerMethod;->clearListener()V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzg;->zzdu:Lcom/google/android/gms/tasks/TaskCompletionSource;

    const/4 p1, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetResult(Ljava/lang/Object;)Z

    return-void
.end method
