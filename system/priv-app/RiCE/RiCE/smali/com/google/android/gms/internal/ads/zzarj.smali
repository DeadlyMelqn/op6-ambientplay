.class final Lcom/google/android/gms/internal/ads/zzarj;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzdec:Lcom/google/android/gms/internal/ads/zzari;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzari;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzdec:Lcom/google/android/gms/internal/ads/zzari;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 1

    if-eqz p2, :cond_1

    const-string p1, "height"

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzdec:Lcom/google/android/gms/internal/ads/zzari;

    monitor-enter p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzdec:Lcom/google/android/gms/internal/ads/zzari;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzari;->zza(Lcom/google/android/gms/internal/ads/zzari;)I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzdec:Lcom/google/android/gms/internal/ads/zzari;

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzari;->zza(Lcom/google/android/gms/internal/ads/zzari;I)I

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzarj;->zzdec:Lcom/google/android/gms/internal/ads/zzari;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzari;->requestLayout()V

    :cond_0
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "Exception occurred while getting webview content height"

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzakb;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method