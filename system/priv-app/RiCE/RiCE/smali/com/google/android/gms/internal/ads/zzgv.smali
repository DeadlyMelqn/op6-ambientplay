.class public final Lcom/google/android/gms/internal/ads/zzgv;
.super Lcom/google/android/gms/internal/ads/zzgq;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private zzaje:Ljava/security/MessageDigest;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgq;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzx(Ljava/lang/String;)[B
    .locals 8

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    aget-object p1, p1, v2

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzgu;->zzz(Ljava/lang/String;)I

    move-result p1

    invoke-static/range {v1 .. v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    move-object v0, p1

    goto :goto_2

    :cond_0
    array-length v0, p1

    const/4 v4, 0x5

    if-ge v0, v4, :cond_1

    array-length v0, p1

    shl-int/2addr v0, v3

    new-array v0, v0, [B

    move v4, v2

    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_2

    aget-object v5, p1, v4

    invoke-static/range {v5 .. v5}, Lcom/google/android/gms/internal/ads/zzgu;->zzz(Ljava/lang/String;)I

    move-result v5

    const v6, 0xffff

    and-int/2addr v6, v5

    shr-int/lit8 v5, v5, 0x10

    xor-int/2addr v5, v6

    const/4 v6, 0x2

    new-array v6, v6, [B

    int-to-byte v7, v5

    aput-byte v7, v6, v2

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    aput-byte v5, v6, v3

    shl-int/lit8 v5, v4, 0x1

    aget-byte v7, v6, v2

    aput-byte v7, v0, v5

    add-int/2addr v5, v3

    aget-byte v6, v6, v3

    aput-byte v6, v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    new-array v0, v0, [B

    move v3, v2

    :goto_1
    array-length v4, p1

    if-ge v3, v4, :cond_2

    aget-object v4, p1, v3

    invoke-static/range {v4 .. v4}, Lcom/google/android/gms/internal/ads/zzgu;->zzz(Ljava/lang/String;)I

    move-result v4

    and-int/lit16 v5, v4, 0xff

    shr-int/lit8 v6, v4, 0x8

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    shr-int/lit8 v6, v4, 0x10

    and-int/lit16 v6, v6, 0xff

    xor-int/2addr v5, v6

    shr-int/lit8 v4, v4, 0x18

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzgq;->zzhg()Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzaje:Ljava/security/MessageDigest;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgv;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzaje:Ljava/security/MessageDigest;

    if-nez v3, :cond_3

    new-array p0, v2, [B

    monitor-exit p1

    return-object p0

    :cond_3
    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzaje:Ljava/security/MessageDigest;

    invoke-virtual/range {v3 .. v3}, Ljava/security/MessageDigest;->reset()V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzaje:Ljava/security/MessageDigest;

    invoke-virtual {v3, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzgv;->zzaje:Ljava/security/MessageDigest;

    invoke-virtual/range {p0 .. p0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    array-length v0, p0

    if-le v0, v1, :cond_4

    goto :goto_3

    :cond_4
    array-length v1, p0

    :goto_3
    new-array v0, v1, [B

    array-length v1, v0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
