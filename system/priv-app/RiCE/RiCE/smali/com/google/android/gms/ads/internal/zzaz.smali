.class final synthetic Lcom/google/android/gms/ads/internal/zzaz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzxi:Ljava/lang/Runnable;

.field private final zzzx:Lcom/google/android/gms/ads/internal/zzay;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzay;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzaz;->zzzx:Lcom/google/android/gms/ads/internal/zzay;

    iput-object p2, p0, Lcom/google/android/gms/ads/internal/zzaz;->zzxi:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzaz;->zzzx:Lcom/google/android/gms/ads/internal/zzay;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzaz;->zzxi:Ljava/lang/Runnable;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzaoe;->zzcvy:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/android/gms/ads/internal/zzba;

    invoke-direct {v2, v0, p0}, Lcom/google/android/gms/ads/internal/zzba;-><init>(Lcom/google/android/gms/ads/internal/zzay;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
