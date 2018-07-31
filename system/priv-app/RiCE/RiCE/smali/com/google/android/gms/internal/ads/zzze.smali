.class public final Lcom/google/android/gms/internal/ads/zzze;
.super Lcom/google/android/gms/internal/ads/zzyg;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyg;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    return-void
.end method


# virtual methods
.method public final getAdvertiser()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdvertiser()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getBody()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getBody()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getCallToAction()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getCallToAction()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getExtras()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadline()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getHeadline()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getImages()Ljava/util/List;
    .locals 7

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getImages()Ljava/util/List;

    move-result-object p0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/ads/formats/NativeAd$Image;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzon;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getScale()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/google/android/gms/internal/ads/zzon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getOverrideClickHandling()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideClickHandling()Z

    move-result p0

    return p0
.end method

.method public final getOverrideImpressionRecording()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getOverrideImpressionRecording()Z

    move-result p0

    return p0
.end method

.method public final getPrice()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getPrice()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getStarRating()D
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStarRating()Ljava/lang/Double;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStarRating()Ljava/lang/Double;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    return-wide v0
.end method

.method public final getStore()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getStore()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzlo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getVideoController()Lcom/google/android/gms/ads/VideoController;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/VideoController;->zzbc()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final recordImpression()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->recordImpression()V

    return-void
.end method

.method public final zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/HashMap;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->trackViews(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;)V

    return-void
.end method

.method public final zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->handleClick(Landroid/view/View;)V

    return-void
.end method

.method public final zzjz()Lcom/google/android/gms/internal/ads/zzpw;
    .locals 5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getIcon()Lcom/google/android/gms/ads/formats/NativeAd$Image;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzon;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/formats/NativeAd$Image;->getScale()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/internal/ads/zzon;-><init>(Landroid/graphics/drawable/Drawable;Landroid/net/Uri;D)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzbh()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzkf()Lcom/google/android/gms/internal/ads/zzps;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->untrackView(Landroid/view/View;)V

    return-void
.end method

.method public final zzmv()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->getAdChoicesContent()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method

.method public final zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzze;->zzbvh:Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/ads/mediation/UnifiedNativeAdMapper;->zzvy()Landroid/view/View;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    return-object p0
.end method
