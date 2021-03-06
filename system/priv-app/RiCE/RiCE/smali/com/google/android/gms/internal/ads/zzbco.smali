.class public final Lcom/google/android/gms/internal/ads/zzbco;
.super Ljava/util/LinkedHashMap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/LinkedHashMap<",
        "TK;TV;>;"
    }
.end annotation


# static fields
.field private static final zzdwc:Lcom/google/android/gms/internal/ads/zzbco;


# instance fields
.field private zzdpi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbco;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbco;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzbco;->zzdwc:Lcom/google/android/gms/internal/ads/zzbco;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/android/gms/internal/ads/zzbco;->zzdpi:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzdpi:Z

    return-void
.end method

.method private constructor <init>(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzdpi:Z

    return-void
.end method

.method public static zzaeb()Lcom/google/android/gms/internal/ads/zzbco;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/google/android/gms/internal/ads/zzbco<",
            "TK;TV;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/android/gms/internal/ads/zzbco;->zzdwc:Lcom/google/android/gms/internal/ads/zzbco;

    return-object v0
.end method

.method private final zzaed()V
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzdpi:Z

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private static zzr(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    check-cast p0, [B

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbbq;->hashCode([B)I

    move-result p0

    return p0

    :cond_0
    instance-of v0, p0, Lcom/google/android/gms/internal/ads/zzbbr;

    if-nez v0, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final clear()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->zzaed()V

    invoke-super/range {p0 .. p0}, Ljava/util/LinkedHashMap;->clear()V

    return-void
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-super/range {p0 .. p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Ljava/util/Map;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    check-cast p1, Ljava/util/Map;

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->size()I

    move-result v2

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v2, v3, :cond_0

    :goto_0
    move p0, v1

    goto :goto_2

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface/range {v2 .. v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface/range {v2 .. v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface/range {v2 .. v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v4, v3, [B

    if-eqz v4, :cond_3

    instance-of v4, v2, [B

    if-eqz v4, :cond_3

    check-cast v3, [B

    check-cast v2, [B

    invoke-static {v3, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    goto :goto_1

    :cond_3
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    :goto_1
    if-nez v2, :cond_1

    goto :goto_0

    :cond_4
    move p0, v0

    :goto_2
    if-eqz p0, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method public final hashCode()I
    .locals 3

    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface/range {v1 .. v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzbco;->zzr(Ljava/lang/Object;)I

    move-result v2

    invoke-interface/range {v1 .. v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzbco;->zzr(Ljava/lang/Object;)I

    move-result v1

    xor-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final isMutable()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzdpi:Z

    return p0
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->zzaed()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/internal/ads/zzbbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-super/range {p0 .. p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->zzaed()V

    invoke-interface/range {p1 .. p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface/range {v0 .. v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzbbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzbbq;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-super/range {p0 .. p1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    return-void
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->zzaed()V

    invoke-super/range {p0 .. p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbco;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zzbco<",
            "TK;TV;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->zzaed()V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbco;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbco;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method public final zzaaz()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/zzbco;->zzdpi:Z

    return-void
.end method

.method public final zzaec()Lcom/google/android/gms/internal/ads/zzbco;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/zzbco<",
            "TK;TV;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/ads/zzbco;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbco;-><init>()V

    return-object p0

    :cond_0
    new-instance v0, Lcom/google/android/gms/internal/ads/zzbco;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zzbco;-><init>(Ljava/util/Map;)V

    return-object v0
.end method
