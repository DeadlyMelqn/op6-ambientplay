.class final Lcom/google/android/gms/internal/ads/zzjy;
.super Lcom/google/android/gms/internal/ads/zzjr$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzjr$zza<",
        "Lcom/google/android/gms/internal/ads/zzqf;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzart:Lcom/google/android/gms/internal/ads/zzjr;

.field private final synthetic zzarw:Landroid/view/View;

.field private final synthetic zzarx:Ljava/util/HashMap;

.field private final synthetic zzary:Ljava/util/HashMap;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzarw:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzarx:Ljava/util/HashMap;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzary:Ljava/util/HashMap;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzjr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzjr;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzld;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzarw:Landroid/view/View;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzarx:Ljava/util/HashMap;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object v1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzary:Ljava/util/HashMap;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    invoke-interface {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzld;->createNativeAdViewHolderDelegate(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzib()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzjr;->zzf(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzrw;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzarw:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzarx:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzary:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzrw;->zzb(Landroid/view/View;Ljava/util/HashMap;Ljava/util/HashMap;)Lcom/google/android/gms/internal/ads/zzqf;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjy;->zzarw:Landroid/view/View;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "native_ad_view_holder_delegate"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzmn;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzmn;-><init>()V

    return-object p0
.end method
