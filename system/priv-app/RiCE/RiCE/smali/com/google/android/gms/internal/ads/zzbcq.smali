.class final Lcom/google/android/gms/internal/ads/zzbcq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzbcp;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(ILjava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbco;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbco;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    return p1

    :cond_0
    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbco;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    return p1

    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface/range {p0 .. p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    invoke-interface/range {p0 .. p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method

.method public final zzb(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbco;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzbco;

    invoke-virtual/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbco;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbco;->isMutable()Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbco;->zzaec()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object p1

    :cond_0
    invoke-virtual {p1, p2}, Lcom/google/android/gms/internal/ads/zzbco;->zza(Lcom/google/android/gms/internal/ads/zzbco;)V

    :cond_1
    return-object p1
.end method

.method public final zzs(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbco;

    return-object p1
.end method

.method public final zzt(Ljava/lang/Object;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map<",
            "**>;"
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbco;

    return-object p1
.end method

.method public final zzu(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbco;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbco;->isMutable()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final zzv(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    move-object p0, p1

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbco;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->zzaaz()V

    return-object p1
.end method

.method public final zzw(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbco;->zzaeb()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->zzaec()Lcom/google/android/gms/internal/ads/zzbco;

    move-result-object p0

    return-object p0
.end method

.method public final zzx(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzbcn;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/google/android/gms/internal/ads/zzbcn<",
            "**>;"
        }
    .end annotation

    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method
