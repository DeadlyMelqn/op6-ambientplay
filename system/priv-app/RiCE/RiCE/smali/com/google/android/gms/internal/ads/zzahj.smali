.class public final Lcom/google/android/gms/internal/ads/zzahj;
.super Lcom/google/android/gms/internal/ads/zzahf;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzahf;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method


# virtual methods
.method public final getRewardedVideoAdListener()Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-object p0
.end method

.method public final onRewardedVideoAdClosed()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdClosed()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdFailedToLoad(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface {p0, p1}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdFailedToLoad(I)V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdLeftApplication()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLeftApplication()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdLoaded()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoAdOpened()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoAdOpened()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoCompleted()V

    :cond_0
    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewardedVideoStarted()V

    :cond_0
    return-void
.end method

.method public final setRewardedVideoAdListener(Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    return-void
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzagu;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahj;->zzhc:Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzahh;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzahh;-><init>(Lcom/google/android/gms/internal/ads/zzagu;)V

    invoke-interface {p0, v0}, Lcom/google/android/gms/ads/reward/RewardedVideoAdListener;->onRewarded(Lcom/google/android/gms/ads/reward/RewardItem;)V

    :cond_0
    return-void
.end method
