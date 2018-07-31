.class final synthetic Lcom/google/android/gms/internal/ads/zzans;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final zzbnu:Lcom/google/android/gms/internal/ads/zzaoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaoj;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzans;->zzbnu:Lcom/google/android/gms/internal/ads/zzaoj;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzans;->zzbnu:Lcom/google/android/gms/internal/ads/zzaoj;

    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct/range {v0 .. v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaoj;->setException(Ljava/lang/Throwable;)V

    return-void
.end method
