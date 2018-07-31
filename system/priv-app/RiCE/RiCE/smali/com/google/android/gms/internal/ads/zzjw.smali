.class final Lcom/google/android/gms/internal/ads/zzjw;
.super Lcom/google/android/gms/internal/ads/zzjr$zza;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzjr$zza<",
        "Lcom/google/android/gms/internal/ads/zzlj;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzart:Lcom/google/android/gms/internal/ads/zzjr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzjw;->val$context:Landroid/content/Context;

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzjr$zza;-><init>(Lcom/google/android/gms/internal/ads/zzjr;)V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzld;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjw;->val$context:Landroid/content/Context;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/dynamic/ObjectWrapper;->wrap(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    const v0, 0xbdfcb8

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzld;->getMobileAdsSettingsManagerWithClientJarVersion(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Lcom/google/android/gms/internal/ads/zzlj;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic zzib()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzjr;->zzd(Lcom/google/android/gms/internal/ads/zzjr;)Lcom/google/android/gms/internal/ads/zzme;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzjw;->val$context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzme;->zzg(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/zzlj;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzjw;->zzart:Lcom/google/android/gms/internal/ads/zzjr;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzjw;->val$context:Landroid/content/Context;

    const-string v1, "mobile_ads_settings"

    invoke-static {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzjr;->zza(Lcom/google/android/gms/internal/ads/zzjr;Landroid/content/Context;Ljava/lang/String;)V

    new-instance p0, Lcom/google/android/gms/internal/ads/zzml;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzml;-><init>()V

    return-object p0
.end method
