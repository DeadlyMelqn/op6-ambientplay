.class public final Lcom/google/android/gms/internal/ads/zzmt;
.super Lcom/google/android/gms/internal/ads/zzls;


# instance fields
.field private final zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzls;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    return-void
.end method


# virtual methods
.method public final onVideoEnd()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoEnd()V

    return-void
.end method

.method public final onVideoMute(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoMute(Z)V

    return-void
.end method

.method public final onVideoPause()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPause()V

    return-void
.end method

.method public final onVideoPlay()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoPlay()V

    return-void
.end method

.method public final onVideoStart()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmt;->zzuy:Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/VideoController$VideoLifecycleCallbacks;->onVideoStart()V

    return-void
.end method
