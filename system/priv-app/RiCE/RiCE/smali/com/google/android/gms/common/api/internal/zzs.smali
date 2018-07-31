.class final Lcom/google/android/gms/common/api/internal/zzs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzgc:Lcom/google/android/gms/common/api/internal/zzr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzr;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/zzr;->zzb(Lcom/google/android/gms/common/api/internal/zzr;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzs;->zzgc:Lcom/google/android/gms/common/api/internal/zzr;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzr;->zza(Lcom/google/android/gms/common/api/internal/zzr;)Ljava/util/concurrent/locks/Lock;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v0
.end method
