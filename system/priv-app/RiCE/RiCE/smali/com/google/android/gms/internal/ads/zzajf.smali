.class final Lcom/google/android/gms/internal/ads/zzajf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic val$context:Landroid/content/Context;

.field private final synthetic zzcoa:Lcom/google/android/gms/internal/ads/zzaoj;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaje;Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzaoj;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzajf;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzcoa:Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzajf;->val$context:Landroid/content/Context;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getAdvertisingIdInfo(Landroid/content/Context;)Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzcoa:Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/zzaoj;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/gms/common/GooglePlayServicesRepairableException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzajf;->zzcoa:Lcom/google/android/gms/internal/ads/zzaoj;

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzaoj;->setException(Ljava/lang/Throwable;)V

    const-string p0, "Exception while getting advertising Id info"

    invoke-static {p0, v0}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
