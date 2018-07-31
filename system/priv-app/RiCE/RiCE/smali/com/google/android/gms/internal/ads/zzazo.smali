.class abstract Lcom/google/android/gms/internal/ads/zzazo;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzatz;


# instance fields
.field private final key:[B

.field private final zzdor:Lcom/google/android/gms/internal/ads/zzazn;

.field private final zzdos:Lcom/google/android/gms/internal/ads/zzazn;


# direct methods
.method constructor <init>([B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual/range {p1 .. p1}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->key:[B

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzazo;->zzc([BI)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdor:Lcom/google/android/gms/internal/ads/zzazn;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzazo;->zzc([BI)Lcom/google/android/gms/internal/ads/zzazn;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdos:Lcom/google/android/gms/internal/ads/zzazn;

    return-void
.end method


# virtual methods
.method abstract zzc([BI)Lcom/google/android/gms/internal/ads/zzazn;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation
.end method

.method public zzc([B[B)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdor:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzazn;->zzaao()I

    const v1, 0x7fffffe3

    if-gt v0, v1, :cond_4

    array-length v0, p1

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdor:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzazn;->zzaao()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x10

    invoke-static/range {v0 .. v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    array-length v2, p1

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdor:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-virtual/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzazn;->zzaao()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x10

    if-lt v1, v2, :cond_3

    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdor:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-virtual {v2, v0, p1}, Lcom/google/android/gms/internal/ads/zzazn;->zza(Ljava/nio/ByteBuffer;[B)V

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdor:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzazn;->zzaao()I

    move-result p1

    new-array p1, p1, [B

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, -0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    const/4 v1, 0x0

    if-nez p2, :cond_0

    new-array p2, v1, [B

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzazo;->zzdos:Lcom/google/android/gms/internal/ads/zzazn;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/internal/ads/zzazn;->zzb([BI)Ljava/nio/ByteBuffer;

    move-result-object p0

    const/16 p1, 0x20

    new-array p1, p1, [B

    invoke-virtual {p0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    array-length p0, p2

    rem-int/lit8 p0, p0, 0x10

    if-nez p0, :cond_1

    array-length p0, p2

    goto :goto_0

    :cond_1
    array-length p0, p2

    add-int/lit8 p0, p0, 0x10

    array-length v1, p2

    rem-int/lit8 v1, v1, 0x10

    sub-int/2addr p0, v1

    :goto_0
    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    rem-int/lit8 v2, v1, 0x10

    if-nez v2, :cond_2

    move v2, v1

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v1, 0x10

    sub-int v2, v3, v2

    :goto_1
    add-int/2addr v2, p0

    add-int/lit8 v3, v2, 0x10

    invoke-static/range {v3 .. v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v3, v0}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    array-length p0, p2

    int-to-long v4, p0

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    int-to-long v1, v1

    invoke-virtual {v3, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v3 .. v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzazk;->zze([B[B)[B

    move-result-object p0

    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    add-int/lit8 p1, p1, 0x10

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Given ByteBuffer output is too small"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "plaintext too long"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
