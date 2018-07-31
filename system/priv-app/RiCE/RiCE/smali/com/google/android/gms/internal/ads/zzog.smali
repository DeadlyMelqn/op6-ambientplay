.class public final Lcom/google/android/gms/internal/ads/zzog;
.super Lcom/google/android/gms/internal/ads/zzoe;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzoe;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzog;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzoa;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzog;->zzasz:Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;

    new-instance v0, Lcom/google/android/gms/internal/ads/zznz;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zznz;-><init>(Lcom/google/android/gms/internal/ads/zzoa;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/doubleclick/OnCustomRenderedAdLoadedListener;->onCustomRenderedAdLoaded(Lcom/google/android/gms/ads/doubleclick/CustomRenderedAd;)V

    return-void
.end method
