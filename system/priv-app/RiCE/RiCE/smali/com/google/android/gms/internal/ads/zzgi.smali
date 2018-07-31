.class final Lcom/google/android/gms/internal/ads/zzgi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzahx:Lcom/google/android/gms/internal/ads/zzgh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzahx:Lcom/google/android/gms/internal/ads/zzgh;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzahx:Lcom/google/android/gms/internal/ads/zzgh;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzgh;->zza(Lcom/google/android/gms/internal/ads/zzgh;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzahx:Lcom/google/android/gms/internal/ads/zzgh;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzb(Lcom/google/android/gms/internal/ads/zzgh;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzahx:Lcom/google/android/gms/internal/ads/zzgh;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzgh;->zzc(Lcom/google/android/gms/internal/ads/zzgh;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzahx:Lcom/google/android/gms/internal/ads/zzgh;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzgh;->zza(Lcom/google/android/gms/internal/ads/zzgh;Z)Z

    const-string v1, "App went background"

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgi;->zzahx:Lcom/google/android/gms/internal/ads/zzgh;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgh;->zzd(Lcom/google/android/gms/internal/ads/zzgh;)Ljava/util/List;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzgj;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/zzgj;->zzh(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v3, ""

    invoke-static {v3, v1}, Lcom/google/android/gms/internal/ads/zzane;->zzb(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p0, "App is still foreground"

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakb;->zzck(Ljava/lang/String;)V

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
