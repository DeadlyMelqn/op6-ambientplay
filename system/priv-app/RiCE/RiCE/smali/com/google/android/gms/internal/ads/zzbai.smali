.class final Lcom/google/android/gms/internal/ads/zzbai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# instance fields
.field private final limit:I

.field private position:I

.field private final synthetic zzdps:Lcom/google/android/gms/internal/ads/zzbah;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbah;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzdps:Lcom/google/android/gms/internal/ads/zzbah;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->position:I

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzdps:Lcom/google/android/gms/internal/ads/zzbah;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    iput p1, p0, Lcom/google/android/gms/internal/ads/zzbai;->limit:I

    return-void
.end method

.method private final nextByte()B
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->zzdps:Lcom/google/android/gms/internal/ads/zzbah;

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzbai;->position:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/android/gms/internal/ads/zzbai;->position:I

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzbah;->zzbn(I)B

    move-result p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final hasNext()Z
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/ads/zzbai;->position:I

    iget p0, p0, Lcom/google/android/gms/internal/ads/zzbai;->limit:I

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbai;->nextByte()B

    move-result p0

    invoke-static/range {p0 .. p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
