.class public final Lcom/google/android/gms/internal/ads/zzaql;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Lcom/google/android/gms/internal/ads/zzapw;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Integer;"
        }
    .end annotation

    invoke-interface/range {p0 .. p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface/range {p0 .. p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    invoke-interface/range {p0 .. p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x27

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v2 .. v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Precache invalid numeric parameter \'"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/ads/zzapw;

    invoke-static {}, Lcom/google/android/gms/ads/internal/zzbv;->zzff()Lcom/google/android/gms/internal/ads/zzaqg;

    const-string p0, "abort"

    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzb(Lcom/google/android/gms/internal/ads/zzapw;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "Precache abort but no precache task running."

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    :cond_0
    return-void

    :cond_1
    const-string p0, "src"

    invoke-interface {p2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzc(Lcom/google/android/gms/internal/ads/zzapw;)Lcom/google/android/gms/internal/ads/zzaqe;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string p0, "Precache task is already running."

    :goto_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzakb;->zzdk(Ljava/lang/String;)V

    return-void

    :cond_2
    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapw;->zzbi()Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v0

    if-nez v0, :cond_3

    const-string p0, "Precache requires a dependency provider."

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapv;

    const-string v1, "flags"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzapv;-><init>(Ljava/lang/String;)V

    const-string v1, "player"

    invoke-static {p2, v1}, Lcom/google/android/gms/internal/ads/zzaql;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    if-nez v1, :cond_4

    const/4 v1, 0x0

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_4
    invoke-virtual/range {v1 .. v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzapw;->zzbi()Lcom/google/android/gms/ads/internal/zzw;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/gms/ads/internal/zzw;->zzwy:Lcom/google/android/gms/internal/ads/zzaqm;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v1, v3, v0}, Lcom/google/android/gms/internal/ads/zzaqm;->zza(Lcom/google/android/gms/internal/ads/zzapw;ILjava/lang/String;Lcom/google/android/gms/internal/ads/zzapv;)Lcom/google/android/gms/internal/ads/zzaqh;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzaqe;

    invoke-direct {v1, p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzaqe;-><init>(Lcom/google/android/gms/internal/ads/zzapw;Lcom/google/android/gms/internal/ads/zzaqh;Ljava/lang/String;)V

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzajx;->zznt()Ljava/lang/Object;

    goto :goto_1

    :cond_5
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqg;->zzc(Lcom/google/android/gms/internal/ads/zzapw;)Lcom/google/android/gms/internal/ads/zzaqe;

    move-result-object p0

    if-nez p0, :cond_6

    const-string p0, "Precache must specify a source."

    goto :goto_0

    :cond_6
    :goto_1
    const-string p0, "minBufferMs"

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzaql;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    :cond_7
    const-string p0, "maxBufferMs"

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzaql;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    :cond_8
    const-string p0, "bufferForPlaybackMs"

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzaql;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    :cond_9
    const-string p0, "bufferForPlaybackAfterRebufferMs"

    invoke-static {p2, p0}, Lcom/google/android/gms/internal/ads/zzaql;->zze(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    :cond_a
    return-void
.end method
