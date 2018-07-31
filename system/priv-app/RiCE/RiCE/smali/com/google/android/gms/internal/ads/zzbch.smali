.class final Lcom/google/android/gms/internal/ads/zzbch;
.super Lcom/google/android/gms/internal/ads/zzbce;


# direct methods
.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzbce;-><init>(Lcom/google/android/gms/internal/ads/zzbcf;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbcf;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbch;-><init>()V

    return-void
.end method

.method private static zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzbbt;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Lcom/google/android/gms/internal/ads/zzbbt<",
            "TE;>;"
        }
    .end annotation

    invoke-static/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzbek;->zzp(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbbt;

    return-object p0
.end method


# virtual methods
.method final zza(Ljava/lang/Object;J)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L:Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J)",
            "Ljava/util/List<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    invoke-static/range {p1 .. p3}, Lcom/google/android/gms/internal/ads/zzbch;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbt;->zzaay()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbt;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xa

    goto :goto_0

    :cond_0
    shl-int/lit8 v0, v0, 0x1

    :goto_0
    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzbbt;->zzbm(I)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object p0

    invoke-static {p1, p2, p3, p0}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    return-object p0
.end method

.method final zza(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "J)V"
        }
    .end annotation

    invoke-static {p1, p3, p4}, Lcom/google/android/gms/internal/ads/zzbch;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object p0

    invoke-static/range {p2 .. p4}, Lcom/google/android/gms/internal/ads/zzbch;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object p2

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbt;->size()I

    move-result v0

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbt;->size()I

    move-result v1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbt;->zzaay()Z

    move-result v2

    if-nez v2, :cond_0

    add-int/2addr v1, v0

    invoke-interface {p0, v1}, Lcom/google/android/gms/internal/ads/zzbbt;->zzbm(I)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object p0

    :cond_0
    invoke-interface {p0, p2}, Lcom/google/android/gms/internal/ads/zzbbt;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-lez v0, :cond_2

    goto :goto_0

    :cond_2
    move-object p0, p2

    :goto_0
    invoke-static {p1, p3, p4, p0}, Lcom/google/android/gms/internal/ads/zzbek;->zza(Ljava/lang/Object;JLjava/lang/Object;)V

    return-void
.end method

.method final zzb(Ljava/lang/Object;J)V
    .locals 0

    invoke-static/range {p1 .. p3}, Lcom/google/android/gms/internal/ads/zzbch;->zzd(Ljava/lang/Object;J)Lcom/google/android/gms/internal/ads/zzbbt;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbt;->zzaaz()V

    return-void
.end method
