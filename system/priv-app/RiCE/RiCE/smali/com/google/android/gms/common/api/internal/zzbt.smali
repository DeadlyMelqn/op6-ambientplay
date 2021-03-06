.class public Lcom/google/android/gms/common/api/internal/zzbt;
.super Lcom/google/android/gms/common/api/internal/zzk;


# instance fields
.field private zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/tasks/TaskCompletionSource<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V
    .locals 1

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/api/internal/zzk;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    new-instance p1, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct/range {p1 .. p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    iget-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbt;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    const-string v0, "GmsAvailabilityHelper"

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->addCallback(Ljava/lang/String;Lcom/google/android/gms/common/api/internal/LifecycleCallback;)V

    return-void
.end method

.method public static zzd(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/zzbt;
    .locals 2

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzbt;->getFragment(Landroid/app/Activity;)Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    move-result-object p0

    const-string v0, "GmsAvailabilityHelper"

    const-class v1, Lcom/google/android/gms/common/api/internal/zzbt;

    invoke-interface {p0, v0, v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getCallbackOrNull(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/common/api/internal/LifecycleCallback;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/common/api/internal/zzbt;

    if-eqz v0, :cond_1

    iget-object p0, v0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;-><init>()V

    iput-object p0, v0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/gms/common/api/internal/zzbt;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/api/internal/zzbt;-><init>(Lcom/google/android/gms/common/api/internal/LifecycleFragment;)V

    return-object v0
.end method


# virtual methods
.method public final getTask()Lcom/google/android/gms/tasks/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object p0

    return-object p0
.end method

.method public final onDestroy()V
    .locals 2

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzk;->onDestroy()V

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    new-instance v0, Ljava/util/concurrent/CancellationException;

    const-string v1, "Host activity was destroyed before Google Play services could be made available."

    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/tasks/TaskCompletionSource;->trySetException(Ljava/lang/Exception;)Z

    return-void
.end method

.method protected final zza(Lcom/google/android/gms/common/ConnectionResult;I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/ApiExceptionUtil;->fromConnectionResult(Lcom/google/android/gms/common/ConnectionResult;)Lcom/google/android/gms/common/api/ApiException;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method protected final zzr()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbt;->zzdg:Lcom/google/android/gms/common/GoogleApiAvailability;

    iget-object v1, p0, Lcom/google/android/gms/common/api/internal/zzbt;->mLifecycleFragment:Lcom/google/android/gms/common/api/internal/LifecycleFragment;

    invoke-interface/range {v1 .. v1}, Lcom/google/android/gms/common/api/internal/LifecycleFragment;->getLifecycleActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/common/GoogleApiAvailabilityLight;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual {p0, v1}, Lcom/google/android/gms/tasks/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/google/android/gms/common/api/internal/zzbt;->zzln:Lcom/google/android/gms/tasks/TaskCompletionSource;

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/tasks/TaskCompletionSource;->getTask()Lcom/google/android/gms/tasks/Task;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/tasks/Task;->isComplete()Z

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Lcom/google/android/gms/common/ConnectionResult;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(ILandroid/app/PendingIntent;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v2, v0}, Lcom/google/android/gms/common/api/internal/zzk;->zzb(Lcom/google/android/gms/common/ConnectionResult;I)V

    :cond_1
    return-void
.end method
