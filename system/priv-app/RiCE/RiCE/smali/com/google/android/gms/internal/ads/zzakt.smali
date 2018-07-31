.class public Lcom/google/android/gms/internal/ads/zzakt;
.super Lcom/google/android/gms/internal/ads/zzaks;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzaks;-><init>()V

    return-void
.end method


# virtual methods
.method public zza(Lcom/google/android/gms/internal/ads/zzaqw;Z)Lcom/google/android/gms/internal/ads/zzaqx;
    .locals 0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzart;

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzart;-><init>(Lcom/google/android/gms/internal/ads/zzaqw;Z)V

    return-object p0
.end method

.method public final zza(Landroid/app/DownloadManager$Request;)Z
    .locals 0

    invoke-virtual/range {p1 .. p1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    return p0
.end method

.method public zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 1

    invoke-super/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzaks;->zza(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    new-instance v0, Lcom/google/android/gms/internal/ads/zzaku;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzaku;-><init>(Lcom/google/android/gms/internal/ads/zzakt;Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzaml;->zza(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final zza(Landroid/view/Window;)Z
    .locals 0

    const/high16 p0, 0x1000000

    invoke-virtual {p1, p0, p0}, Landroid/view/Window;->setFlags(II)V

    const/4 p0, 0x1

    return p0
.end method

.method public final zzh(Landroid/net/Uri;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final zzy(Landroid/view/View;)Z
    .locals 1

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final zzz(Landroid/view/View;)Z
    .locals 1

    const/4 p0, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return p0
.end method
