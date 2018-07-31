.class final Lcom/google/android/gms/common/api/internal/zzbz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzlx:Lcom/google/android/gms/common/api/internal/zzby;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zzby;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zzbz;->zzlx:Lcom/google/android/gms/common/api/internal/zzby;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zzbz;->zzlx:Lcom/google/android/gms/common/api/internal/zzby;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/api/internal/zzby;->zza(Lcom/google/android/gms/common/api/internal/zzby;)Lcom/google/android/gms/common/api/internal/zzcb;

    move-result-object p0

    new-instance v0, Lcom/google/android/gms/common/ConnectionResult;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/android/gms/common/ConnectionResult;-><init>(I)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/common/api/internal/zzcb;->zzg(Lcom/google/android/gms/common/ConnectionResult;)V

    return-void
.end method
