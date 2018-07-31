.class final Lcom/google/android/gms/internal/ads/zzayl;
.super Lcom/google/android/gms/internal/ads/zzazn;


# static fields
.field private static final zzdnb:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x10

    new-array v0, v0, [B

    sput-object v0, Lcom/google/android/gms/internal/ads/zzayl;->zzdnb:[B

    return-void
.end method

.method constructor <init>([BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidKeyException;
        }
    .end annotation

    invoke-direct/range {p0 .. p2}, Lcom/google/android/gms/internal/ads/zzazn;-><init>([BI)V

    return-void
.end method

.method private static zza([IIIII)V
    .locals 2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget v1, p0, p1

    xor-int/2addr v0, v1

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzayl;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p4

    aget v0, p0, p3

    aget v1, p0, p4

    add-int/2addr v0, v1

    aput v0, p0, p3

    aget v0, p0, p2

    aget v1, p0, p3

    xor-int/2addr v0, v1

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/zzayl;->rotateLeft(II)I

    move-result v0

    aput v0, p0, p2

    aget v0, p0, p1

    aget v1, p0, p2

    add-int/2addr v0, v1

    aput v0, p0, p1

    aget v0, p0, p4

    aget p1, p0, p1

    xor-int/2addr p1, v0

    const/16 v0, 0x8

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzayl;->rotateLeft(II)I

    move-result p1

    aput p1, p0, p4

    aget p1, p0, p3

    aget p4, p0, p4

    add-int/2addr p1, p4

    aput p1, p0, p3

    aget p1, p0, p2

    aget p3, p0, p3

    xor-int/2addr p1, p3

    const/4 p3, 0x7

    invoke-static {p1, p3}, Lcom/google/android/gms/internal/ads/zzayl;->rotateLeft(II)I

    move-result p1

    aput p1, p0, p2

    return-void
.end method


# virtual methods
.method final zzaao()I
    .locals 0

    const/16 p0, 0xc

    return p0
.end method

.method final zzb([BI)Ljava/nio/ByteBuffer;
    .locals 16

    const/16 v0, 0x10

    new-array v1, v0, [I

    sget-object v2, Lcom/google/android/gms/internal/ads/zzazn;->zzdoo:[I

    sget-object v3, Lcom/google/android/gms/internal/ads/zzayl;->zzdoo:[I

    array-length v3, v3

    const/4 v4, 0x0

    invoke-static {v2, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v2, p0

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzayl;->zzdop:Lcom/google/android/gms/internal/ads/zzazh;

    invoke-virtual/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzazh;->getBytes()[B

    move-result-object v2

    invoke-static/range {v2 .. v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzayl;->zza(Ljava/nio/ByteBuffer;)[I

    move-result-object v2

    array-length v3, v2

    const/4 v5, 0x4

    invoke-static {v2, v4, v1, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, 0xc

    aput p2, v1, v2

    invoke-static/range {p1 .. p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzayl;->zza(Ljava/nio/ByteBuffer;)[I

    move-result-object v3

    const/4 v6, 0x3

    const/16 v7, 0xd

    invoke-static {v3, v4, v1, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual/range {v1 .. v1}, [I->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    move v8, v4

    :goto_0
    const/16 v9, 0xa

    if-ge v8, v9, :cond_0

    const/16 v10, 0x8

    invoke-static {v3, v4, v5, v10, v2}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    const/16 v11, 0x9

    const/4 v12, 0x5

    const/4 v13, 0x1

    invoke-static {v3, v13, v12, v11, v7}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    const/16 v14, 0xe

    const/4 v15, 0x6

    const/4 v0, 0x2

    invoke-static {v3, v0, v15, v9, v14}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    const/16 v5, 0xb

    const/16 v11, 0xf

    const/4 v14, 0x7

    invoke-static {v3, v6, v14, v5, v11}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    const/16 v5, 0xf

    invoke-static {v3, v4, v12, v9, v5}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    const/16 v5, 0xb

    invoke-static {v3, v13, v15, v5, v2}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    invoke-static {v3, v0, v14, v10, v7}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    const/4 v0, 0x4

    const/16 v5, 0x9

    const/16 v9, 0xe

    invoke-static {v3, v6, v0, v5, v9}, Lcom/google/android/gms/internal/ads/zzayl;->zza([IIIII)V

    add-int/lit8 v8, v8, 0x1

    move v5, v0

    const/16 v0, 0x10

    goto :goto_0

    :cond_0
    move v2, v0

    move v0, v4

    :goto_1
    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    aget v5, v3, v0

    add-int/2addr v2, v5

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    const/16 v2, 0x10

    goto :goto_1

    :cond_1
    const/16 v0, 0x40

    invoke-static/range {v0 .. v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v1, v4, v3}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    return-object v0
.end method
