.class final Lcom/google/android/gms/internal/ads/zzbeq;
.super Lcom/google/android/gms/internal/ads/zzben;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzben;-><init>()V

    return-void
.end method

.method private static zza([BIJI)I
    .locals 2

    packed-switch p4, :pswitch_data_0

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :pswitch_0
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result p4

    const-wide/16 v0, 0x1

    add-long/2addr p2, v0

    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result p0

    invoke-static {p1, p4, p0}, Lcom/google/android/gms/internal/ads/zzbem;->zzg(III)I

    move-result p0

    return p0

    :pswitch_1
    invoke-static {p0, p2, p3}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result p0

    invoke-static {p1, p0}, Lcom/google/android/gms/internal/ads/zzbem;->zzaa(II)I

    move-result p0

    return p0

    :pswitch_2
    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbem;->zzdb(I)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method final zzb(I[BII)I
    .locals 17

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    or-int v3, v1, v2

    array-length v4, v0

    sub-int/2addr v4, v2

    or-int/2addr v3, v4

    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x0

    if-ltz v3, :cond_12

    int-to-long v7, v1

    int-to-long v1, v2

    sub-long/2addr v1, v7

    long-to-int v1, v1

    const/16 v2, 0x10

    const-wide/16 v9, 0x1

    if-ge v1, v2, :cond_0

    move v2, v6

    goto :goto_1

    :cond_0
    move v2, v6

    move-wide v11, v7

    :goto_0
    if-ge v2, v1, :cond_2

    add-long v13, v11, v9

    invoke-static {v0, v11, v12}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    move-wide v11, v13

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_1
    sub-int/2addr v1, v2

    int-to-long v2, v2

    add-long/2addr v7, v2

    :cond_3
    :goto_2
    move v2, v6

    :goto_3
    if-lez v1, :cond_5

    add-long v2, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v7

    if-ltz v7, :cond_4

    add-int/lit8 v1, v1, -0x1

    move-wide v15, v2

    move v2, v7

    move-wide v7, v15

    goto :goto_3

    :cond_4
    move-wide v15, v2

    move v2, v7

    move-wide v7, v15

    :cond_5
    if-nez v1, :cond_6

    return v6

    :cond_6
    add-int/lit8 v1, v1, -0x1

    const/16 v3, -0x20

    const/16 v11, -0x41

    const/4 v12, -0x1

    if-ge v2, v3, :cond_a

    if-nez v1, :cond_7

    return v2

    :cond_7
    add-int/lit8 v1, v1, -0x1

    const/16 v3, -0x3e

    if-lt v2, v3, :cond_9

    add-long v2, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v7

    if-le v7, v11, :cond_8

    goto :goto_4

    :cond_8
    move-wide v7, v2

    goto :goto_2

    :cond_9
    :goto_4
    return v12

    :cond_a
    const/16 v13, -0x10

    if-ge v2, v13, :cond_f

    if-ge v1, v4, :cond_b

    invoke-static {v0, v2, v7, v8, v1}, Lcom/google/android/gms/internal/ads/zzbeq;->zza([BIJI)I

    move-result v0

    return v0

    :cond_b
    add-int/lit8 v1, v1, -0x2

    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v7

    if-gt v7, v11, :cond_e

    const/16 v8, -0x60

    if-ne v2, v3, :cond_c

    if-lt v7, v8, :cond_e

    :cond_c
    const/16 v3, -0x13

    if-ne v2, v3, :cond_d

    if-ge v7, v8, :cond_e

    :cond_d
    add-long v7, v13, v9

    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v2

    if-le v2, v11, :cond_3

    :cond_e
    return v12

    :cond_f
    if-ge v1, v5, :cond_10

    invoke-static {v0, v2, v7, v8, v1}, Lcom/google/android/gms/internal/ads/zzbeq;->zza([BIJI)I

    move-result v0

    return v0

    :cond_10
    add-int/lit8 v1, v1, -0x3

    add-long v13, v7, v9

    invoke-static {v0, v7, v8}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v3

    if-gt v3, v11, :cond_11

    shl-int/lit8 v2, v2, 0x1c

    add-int/lit8 v3, v3, 0x70

    add-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1e

    if-nez v2, :cond_11

    add-long v2, v13, v9

    invoke-static {v0, v13, v14}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v7

    if-gt v7, v11, :cond_11

    add-long v7, v2, v9

    invoke-static {v0, v2, v3}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJ)B

    move-result v2

    if-le v2, v11, :cond_3

    :cond_11
    return v12

    :cond_12
    new-instance v3, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-array v5, v5, [Ljava/lang/Object;

    array-length v0, v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v5, v1

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v4

    const-string v0, "Array length=%d, index=%d, limit=%d"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method final zzb(Ljava/lang/CharSequence;[BII)I
    .locals 11

    int-to-long v0, p3

    int-to-long v2, p4

    add-long/2addr v2, v0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-gt p0, p4, :cond_c

    array-length v4, p2

    sub-int/2addr v4, p4

    if-lt v4, p3, :cond_c

    const/4 p3, 0x0

    :goto_0
    const/16 p4, 0x80

    const-wide/16 v4, 0x1

    if-ge p3, p0, :cond_0

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, p4, :cond_0

    add-long/2addr v4, v0

    int-to-byte p4, v6

    invoke-static {p2, v0, v1, p4}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    add-int/lit8 p3, p3, 0x1

    move-wide v0, v4

    goto :goto_0

    :cond_0
    if-ne p3, p0, :cond_1

    long-to-int p0, v0

    return p0

    :cond_1
    :goto_1
    if-ge p3, p0, :cond_b

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ge v6, p4, :cond_2

    cmp-long v7, v0, v2

    if-gez v7, :cond_2

    add-long v7, v0, v4

    :goto_2
    int-to-byte v6, v6

    invoke-static {p2, v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    move-wide v0, v7

    goto/16 :goto_3

    :cond_2
    const/16 v7, 0x800

    if-ge v6, v7, :cond_3

    const-wide/16 v7, 0x2

    sub-long v7, v2, v7

    cmp-long v7, v0, v7

    if-gtz v7, :cond_3

    add-long v7, v0, v4

    ushr-int/lit8 v9, v6, 0x6

    or-int/lit16 v9, v9, 0x3c0

    int-to-byte v9, v9

    invoke-static {p2, v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    add-long v0, v7, v4

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, p4

    int-to-byte v6, v6

    invoke-static {p2, v7, v8, v6}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    goto :goto_3

    :cond_3
    const v7, 0xdfff

    const v8, 0xd800

    if-lt v6, v8, :cond_4

    if-ge v7, v6, :cond_5

    :cond_4
    const-wide/16 v9, 0x3

    sub-long v9, v2, v9

    cmp-long v9, v0, v9

    if-gtz v9, :cond_5

    add-long v7, v0, v4

    ushr-int/lit8 v9, v6, 0xc

    or-int/lit16 v9, v9, 0x1e0

    int-to-byte v9, v9

    invoke-static {p2, v0, v1, v9}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    add-long v0, v7, v4

    ushr-int/lit8 v9, v6, 0x6

    and-int/lit8 v9, v9, 0x3f

    or-int/2addr v9, p4

    int-to-byte v9, v9

    invoke-static {p2, v7, v8, v9}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    add-long v7, v0, v4

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, p4

    goto :goto_2

    :cond_5
    const-wide/16 v9, 0x4

    sub-long v9, v2, v9

    cmp-long v9, v0, v9

    if-gtz v9, :cond_8

    add-int/lit8 v7, p3, 0x1

    if-eq v7, p0, :cond_7

    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    invoke-static {v6, p3}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-static {v6, p3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p3

    add-long v8, v0, v4

    ushr-int/lit8 v6, p3, 0x12

    or-int/lit16 v6, v6, 0xf0

    int-to-byte v6, v6

    invoke-static {p2, v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    add-long v0, v8, v4

    ushr-int/lit8 v6, p3, 0xc

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, p4

    int-to-byte v6, v6

    invoke-static {p2, v8, v9, v6}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    add-long v8, v0, v4

    ushr-int/lit8 v6, p3, 0x6

    and-int/lit8 v6, v6, 0x3f

    or-int/2addr v6, p4

    int-to-byte v6, v6

    invoke-static {p2, v0, v1, v6}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    add-long v0, v8, v4

    and-int/lit8 p3, p3, 0x3f

    or-int/2addr p3, p4

    int-to-byte p3, p3

    invoke-static {p2, v8, v9, p3}, Lcom/google/android/gms/internal/ads/zzbek;->zza([BJB)V

    move p3, v7

    :goto_3
    add-int/lit8 p3, p3, 0x1

    goto/16 :goto_1

    :cond_6
    move p3, v7

    :cond_7
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbep;

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/zzbep;-><init>(II)V

    throw p1

    :cond_8
    if-gt v8, v6, :cond_a

    if-gt v6, v7, :cond_a

    add-int/lit8 p2, p3, 0x1

    if-eq p2, p0, :cond_9

    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p1

    invoke-static {v6, p1}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result p1

    if-nez p1, :cond_a

    :cond_9
    new-instance p1, Lcom/google/android/gms/internal/ads/zzbep;

    invoke-direct {p1, p3, p0}, Lcom/google/android/gms/internal/ads/zzbep;-><init>(II)V

    throw p1

    :cond_a
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const/16 p1, 0x2e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed writing "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p1, " at index "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_b
    long-to-int p0, v0

    return p0

    :cond_c
    new-instance p2, Ljava/lang/ArrayIndexOutOfBoundsException;

    add-int/lit8 p0, p0, -0x1

    invoke-interface {p1, p0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    add-int/2addr p3, p4

    const/16 p1, 0x25

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Failed writing "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string p0, " at index "

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {p4 .. p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
