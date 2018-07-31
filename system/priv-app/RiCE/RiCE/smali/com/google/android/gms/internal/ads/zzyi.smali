.class public final Lcom/google/android/gms/internal/ads/zzyi;
.super Lcom/google/android/gms/internal/ads/zzlp;


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private volatile zzbuq:Lcom/google/android/gms/internal/ads/zzlr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzlp;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->mLock:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getAspectRatio()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final getPlaybackState()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final isClickToExpandEnabled()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final isCustomControlsEnabled()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final isMuted()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final mute(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final pause()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final play()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzlr;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzim()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final zzin()F
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance p0, Landroid/os/RemoteException;

    invoke-direct/range {p0 .. p0}, Landroid/os/RemoteException;-><init>()V

    throw p0
.end method

.method public final zzio()Lcom/google/android/gms/internal/ads/zzlr;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzyi;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyi;->zzbuq:Lcom/google/android/gms/internal/ads/zzlr;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
