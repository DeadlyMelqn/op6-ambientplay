.class public final Lcom/google/android/gms/ads/formats/NativeContentAdView;
.super Lcom/google/android/gms/ads/formats/NativeAdView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct/range {p0 .. p3}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct/range {p0 .. p4}, Lcom/google/android/gms/ads/formats/NativeAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public final getAdvertiserView()Landroid/view/View;
    .locals 1

    const-string v0, "1004"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getBodyView()Landroid/view/View;
    .locals 1

    const-string v0, "1002"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getCallToActionView()Landroid/view/View;
    .locals 1

    const-string v0, "1003"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getHeadlineView()Landroid/view/View;
    .locals 1

    const-string v0, "1001"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getImageView()Landroid/view/View;
    .locals 1

    const-string v0, "1005"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getLogoView()Landroid/view/View;
    .locals 1

    const-string v0, "1006"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final getMediaView()Lcom/google/android/gms/ads/formats/MediaView;
    .locals 1

    const-string v0, "1009"

    invoke-super {p0, v0}, Lcom/google/android/gms/ads/formats/NativeAdView;->zzp(Ljava/lang/String;)Landroid/view/View;

    move-result-object p0

    instance-of v0, p0, Lcom/google/android/gms/ads/formats/MediaView;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/google/android/gms/ads/formats/MediaView;

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    const-string p0, "View is not an instance of MediaView"

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzane;->zzck(Ljava/lang/String;)V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final setAdvertiserView(Landroid/view/View;)V
    .locals 1

    const-string v0, "1004"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setBodyView(Landroid/view/View;)V
    .locals 1

    const-string v0, "1002"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setCallToActionView(Landroid/view/View;)V
    .locals 1

    const-string v0, "1003"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .locals 1

    const-string v0, "1001"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setImageView(Landroid/view/View;)V
    .locals 1

    const-string v0, "1005"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setLogoView(Landroid/view/View;)V
    .locals 1

    const-string v0, "1006"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public final setMediaView(Lcom/google/android/gms/ads/formats/MediaView;)V
    .locals 1

    const-string v0, "1009"

    invoke-super {p0, v0, p1}, Lcom/google/android/gms/ads/formats/NativeAdView;->zza(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method