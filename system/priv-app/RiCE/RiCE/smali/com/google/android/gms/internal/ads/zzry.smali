.class public final Lcom/google/android/gms/internal/ads/zzry;
.super Lcom/google/android/gms/internal/ads/zzra;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzblc:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzra;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzry;->zzblc:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzqo;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzry;->zzblc:Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzqr;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzqr;-><init>(Lcom/google/android/gms/internal/ads/zzqo;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/formats/NativeContentAd$OnContentAdLoadedListener;->onContentAdLoaded(Lcom/google/android/gms/ads/formats/NativeContentAd;)V

    return-void
.end method
