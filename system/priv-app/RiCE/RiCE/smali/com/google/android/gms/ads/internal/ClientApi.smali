.class public Lcom/google/android/gms/ads/internal/ClientApi;
.super Lcom/google/android/gms/internal/ads/zzle;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation

.annotation build Lcom/google/android/gms/common/annotation/KeepForSdkWithMembers;
.end annotation

.annotation build Lcom/google/android/gms/common/util/DynamiteApi;
.end annotation

.annotation build Lcom/google/android/gms/common/util/RetainForClient;
.end annotation

.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzle;-><init>()V

    return-void
.end method


# virtual methods
.method public createAdLoaderBuilder(Lcom/google/android/gms/dynamic/IObjectWrapper;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;I)Lcom/google/android/gms/internal/ads/zzkn;
    .locals 6

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v4, Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzav(Landroid/content/Context;)Z

    move-result p0

    const p1, 0xbdfcb8

    const/4 v0, 0x1

    invoke-direct {v4, p1, p4, v0, p0}, Lcom/google/android/gms/internal/ads/zzang;-><init>(IIZZ)V

    new-instance p0, Lcom/google/android/gms/ads/internal/zzak;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/ads/internal/zzw;->zzc(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v5

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/ads/internal/zzak;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V

    return-object p0
.end method

.method public createAdOverlay(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaap;
    .locals 1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzc(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/app/Activity;)V

    return-object p1

    :cond_0
    iget v0, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->zzbyu:I

    packed-switch v0, :pswitch_data_0

    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzr;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzr;-><init>(Landroid/app/Activity;)V

    return-object p1

    :pswitch_0
    new-instance v0, Lcom/google/android/gms/ads/internal/overlay/zzs;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/ads/internal/overlay/zzs;-><init>(Landroid/app/Activity;Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;)V

    return-object v0

    :pswitch_1
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzy;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzy;-><init>(Landroid/app/Activity;)V

    return-object p1

    :pswitch_2
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzx;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzx;-><init>(Landroid/app/Activity;)V

    return-object p1

    :pswitch_3
    new-instance p1, Lcom/google/android/gms/ads/internal/overlay/zzq;

    invoke-direct {p1, p0}, Lcom/google/android/gms/ads/internal/overlay/zzq;-><init>(Landroid/app/Activity;)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public createBannerAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;I)Lcom/google/android/gms/internal/ads/zzks;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    new-instance v5, Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzav(Landroid/content/Context;)Z

    move-result p0

    const p1, 0xbdfcb8

    const/4 v0, 0x1

    invoke-direct {v5, p1, p5, v0, p0}, Lcom/google/android/gms/internal/ads/zzang;-><init>(IIZZ)V

    new-instance p0, Lcom/google/android/gms/ads/internal/zzy;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/ads/internal/zzw;->zzc(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzy;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V

    return-object p0
.end method

.method public createInAppPurchaseManager(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzaaz;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public createInterstitialAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;I)Lcom/google/android/gms/internal/ads/zzks;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zznk;->initialize(Landroid/content/Context;)V

    new-instance v5, Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzakk;->zzav(Landroid/content/Context;)Z

    move-result p0

    const/4 p1, 0x1

    const v0, 0xbdfcb8

    invoke-direct {v5, v0, p5, p1, p0}, Lcom/google/android/gms/internal/ads/zzang;-><init>(IIZZ)V

    const-string p0, "reward_mb"

    iget-object p5, p2, Lcom/google/android/gms/internal/ads/zzjn;->zzarb:Ljava/lang/String;

    invoke-virtual {p0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p5, Lcom/google/android/gms/internal/ads/zznk;->zzayy:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object v0

    invoke-virtual {v0, p5}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/Boolean;

    invoke-virtual/range {p5 .. p5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p5

    if-nez p5, :cond_2

    :cond_0
    if-eqz p0, :cond_1

    sget-object p0, Lcom/google/android/gms/internal/ads/zznk;->zzayz:Lcom/google/android/gms/internal/ads/zzna;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzkb;->zzik()Lcom/google/android/gms/internal/ads/zzni;

    move-result-object p5

    invoke-virtual {p5, p0}, Lcom/google/android/gms/internal/ads/zzni;->zzd(Lcom/google/android/gms/internal/ads/zzna;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    new-instance p0, Lcom/google/android/gms/internal/ads/zzub;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/ads/internal/zzw;->zzc(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzw;

    move-result-object p1

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, v5

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzub;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V

    return-object p0

    :cond_3
    new-instance p0, Lcom/google/android/gms/ads/internal/zzal;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/ads/internal/zzw;->zzc(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v6

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/ads/internal/zzal;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;Lcom/google/android/gms/ads/internal/zzw;)V

    return-object p0
.end method

.method public createNativeAdViewDelegate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzqa;
    .locals 0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/FrameLayout;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    new-instance p2, Lcom/google/android/gms/internal/ads/zzpn;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/zzpn;-><init>(Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)V

    return-object p2
.end method

.method public createNativeAdViewHolderDelegate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzqf;
    .locals 0

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    invoke-static/range {p3 .. p3}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    new-instance p3, Lcom/google/android/gms/internal/ads/zzpp;

    invoke-direct {p3, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzpp;-><init>(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V

    return-object p3
.end method

.method public createRewardedVideoAd(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzxn;I)Lcom/google/android/gms/internal/ads/zzagz;
    .locals 3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzav(Landroid/content/Context;)Z

    move-result v0

    const v1, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {p1, v1, p3, v2, v0}, Lcom/google/android/gms/internal/ads/zzang;-><init>(IIZZ)V

    new-instance p3, Lcom/google/android/gms/internal/ads/zzagq;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/ads/internal/zzw;->zzc(Landroid/content/Context;)Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v0

    invoke-direct {p3, p0, v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzagq;-><init>(Landroid/content/Context;Lcom/google/android/gms/ads/internal/zzw;Lcom/google/android/gms/internal/ads/zzxn;Lcom/google/android/gms/internal/ads/zzang;)V

    return-object p3
.end method

.method public createSearchAdManager(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;I)Lcom/google/android/gms/internal/ads/zzks;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzav(Landroid/content/Context;)Z

    move-result v0

    const v1, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {p1, v1, p4, v2, v0}, Lcom/google/android/gms/internal/ads/zzang;-><init>(IIZZ)V

    new-instance p4, Lcom/google/android/gms/ads/internal/zzbp;

    invoke-direct {p4, p0, p2, p3, p1}, Lcom/google/android/gms/ads/internal/zzbp;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzjn;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzang;)V

    return-object p4
.end method

.method public getMobileAdsSettingsManager(Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzlj;
    .locals 0
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzlj;
    .locals 3

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->unwrap(Lcom/google/android/gms/dynamic/IObjectWrapper;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    new-instance p1, Lcom/google/android/gms/internal/ads/zzang;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzek()Lcom/google/android/gms/internal/ads/zzakk;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakk;->zzav(Landroid/content/Context;)Z

    move-result v0

    const v1, 0xbdfcb8

    const/4 v2, 0x1

    invoke-direct {p1, v1, p2, v2, v0}, Lcom/google/android/gms/internal/ads/zzang;-><init>(IIZZ)V

    invoke-static {p0, p1}, Lcom/google/android/gms/ads/internal/zzay;->zza(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzang;)Lcom/google/android/gms/ads/internal/zzay;

    move-result-object p0

    return-object p0
.end method
