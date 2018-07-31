.class final Lcom/google/android/gms/common/api/internal/zzbn;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzkl:Lcom/google/android/gms/common/ConnectionResult;

.field private final synthetic zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    iput-object p2, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/common/ConnectionResult;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;Z)Z

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/common/api/Api$Client;->requiresSignIn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zzb(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)Lcom/google/android/gms/common/api/Api$Client;

    move-result-object p0

    const/4 v0, 0x0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/Api$Client;->getRemoteService(Lcom/google/android/gms/common/internal/IAccountAccessor;Ljava/util/Set;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    iget-object v0, v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zzjy:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zzj(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkr:Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;->zzc(Lcom/google/android/gms/common/api/internal/GoogleApiManager$zzc;)Lcom/google/android/gms/common/api/internal/zzh;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbn;->zzkl:Lcom/google/android/gms/common/ConnectionResult;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager$zza;->onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
