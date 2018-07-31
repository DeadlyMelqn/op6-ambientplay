.class final Lcom/google/android/gms/internal/ads/zzbdx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field private pos:I

.field private zzdyp:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private final synthetic zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

.field private zzdyu:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/internal/ads/zzbdq;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbdx;-><init>(Lcom/google/android/gms/internal/ads/zzbdp;)V

    return-void
.end method

.method private final zzafx()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyp:Ljava/util/Iterator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbdp;->zzc(Lcom/google/android/gms/internal/ads/zzbdp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyp:Ljava/util/Iterator;

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyp:Ljava/util/Iterator;

    return-object p0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 3

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzbdp;->zzb(Lcom/google/android/gms/internal/ads/zzbdp;)Ljava/util/List;

    move-result-object v2

    invoke-interface/range {v2 .. v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbdp;->zzc(Lcom/google/android/gms/internal/ads/zzbdp;)Ljava/util/Map;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzafx()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyu:Z

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbdp;->zzb(Lcom/google/android/gms/internal/ads/zzbdp;)Ljava/util/List;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbdp;->zzb(Lcom/google/android/gms/internal/ads/zzbdp;)Ljava/util/List;

    move-result-object v0

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    :goto_0
    check-cast p0, Ljava/util/Map$Entry;

    return-object p0

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzafx()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0
.end method

.method public final remove()V
    .locals 3

    iget-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyu:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyu:Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbdp;->zza(Lcom/google/android/gms/internal/ads/zzbdp;)V

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzbdp;->zzb(Lcom/google/android/gms/internal/ads/zzbdp;)Ljava/util/List;

    move-result-object v1

    invoke-interface/range {v1 .. v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbdx;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbdx;->pos:I

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzbdp;->zza(Lcom/google/android/gms/internal/ads/zzbdp;I)Ljava/lang/Object;

    return-void

    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbdx;->zzafx()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->remove()V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "remove() was called before next()"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
