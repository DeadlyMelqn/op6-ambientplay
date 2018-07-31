.class final Lcom/google/android/gms/common/api/internal/zzbh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/BackgroundDetector$BackgroundStateChangeListener;


# instance fields
.field private final synthetic zzjy:Lcom/google/android/gms/common/api/internal/GoogleApiManager;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbh;->zzjy:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onBackgroundStateChanged(Z)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/common/api/internal/zzbh;->zzjy:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbh;->zzjy:Lcom/google/android/gms/common/api/internal/GoogleApiManager;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/GoogleApiManager;->zza(Lcom/google/android/gms/common/api/internal/GoogleApiManager;)Landroid/os/Handler;

    move-result-object p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
