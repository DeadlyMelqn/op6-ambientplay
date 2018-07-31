.class final Lcom/google/android/gms/internal/ads/zzazv;
.super Lcom/google/android/gms/internal/ads/zzazs;


# instance fields
.field private final zzdpb:Lcom/google/android/gms/internal/ads/zzazt;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzazs;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzazt;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzazt;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazv;->zzdpb:Lcom/google/android/gms/internal/ads/zzazt;

    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/Throwable;Ljava/io/PrintWriter;)V
    .locals 2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzazv;->zzdpb:Lcom/google/android/gms/internal/ads/zzazt;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzazt;->zza(Ljava/lang/Throwable;Z)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    const-string v1, "Suppressed: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
