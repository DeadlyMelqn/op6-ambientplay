.class final Lcom/google/android/gms/tasks/zzj;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzafn:Lcom/google/android/gms/tasks/Task;

.field private final synthetic zzaft:Lcom/google/android/gms/tasks/zzi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/tasks/zzi;Lcom/google/android/gms/tasks/Task;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/tasks/zzj;->zzaft:Lcom/google/android/gms/tasks/zzi;

    iput-object p2, p0, Lcom/google/android/gms/tasks/zzj;->zzafn:Lcom/google/android/gms/tasks/Task;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/tasks/zzj;->zzaft:Lcom/google/android/gms/tasks/zzi;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/tasks/zzi;->zza(Lcom/google/android/gms/tasks/zzi;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/tasks/zzj;->zzaft:Lcom/google/android/gms/tasks/zzi;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/tasks/zzi;->zzb(Lcom/google/android/gms/tasks/zzi;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/tasks/zzj;->zzaft:Lcom/google/android/gms/tasks/zzi;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/tasks/zzi;->zzb(Lcom/google/android/gms/tasks/zzi;)Lcom/google/android/gms/tasks/OnCompleteListener;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/tasks/zzj;->zzafn:Lcom/google/android/gms/tasks/Task;

    invoke-interface {v1, p0}, Lcom/google/android/gms/tasks/OnCompleteListener;->onComplete(Lcom/google/android/gms/tasks/Task;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
