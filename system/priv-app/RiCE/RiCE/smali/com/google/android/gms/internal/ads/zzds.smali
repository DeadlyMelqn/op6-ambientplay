.class public final Lcom/google/android/gms/internal/ads/zzds;
.super Lcom/google/android/gms/internal/ads/zzei;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzba;II)V
    .locals 7

    const/16 v6, 0x18

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzei;-><init>(Lcom/google/android/gms/internal/ads/zzcz;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzba;II)V

    return-void
.end method

.method private final zzau()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzan()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient;->getInfo()Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzdg;->zzn(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzds;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    monitor-enter v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzds;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    iput-object v1, v3, Lcom/google/android/gms/internal/ads/zzba;->zzfi:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/google/android/gms/internal/ads/zzba;->zzfk:Ljava/lang/Boolean;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzds;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    const/4 v0, 0x5

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzba;->zzfj:Ljava/lang/Integer;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_1
    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzei;->zzat()Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method protected final zzar()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzaf()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzds;->zzau()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzds;->zztq:Lcom/google/android/gms/internal/ads/zzba;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzds;->zztz:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzds;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzcz;->getContext()Landroid/content/Context;

    move-result-object p0

    aput-object p0, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v1, Lcom/google/android/gms/internal/ads/zzba;->zzfi:Ljava/lang/String;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final zzat()Ljava/lang/Void;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzcz;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzei;->zzat()Ljava/lang/Void;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzds;->zzps:Lcom/google/android/gms/internal/ads/zzcz;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzcz;->zzaf()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzds;->zzau()V

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
