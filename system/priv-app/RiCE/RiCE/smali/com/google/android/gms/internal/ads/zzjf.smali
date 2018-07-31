.class public final Lcom/google/android/gms/internal/ads/zzjf;
.super Lcom/google/android/gms/internal/ads/zzki;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzapu:Lcom/google/android/gms/ads/AdListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/AdListener;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzki;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    return-void
.end method


# virtual methods
.method public final getAdListener()Lcom/google/android/gms/ads/AdListener;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    return-object p0
.end method

.method public final onAdClicked()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;->onAdClicked()V

    return-void
.end method

.method public final onAdClosed()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;->onAdClosed()V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/AdListener;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;->onAdImpression()V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;->onAdLeftApplication()V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;->onAdLoaded()V

    return-void
.end method

.method public final onAdOpened()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjf;->zzapu:Lcom/google/android/gms/ads/AdListener;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/AdListener;->onAdOpened()V

    return-void
.end method
