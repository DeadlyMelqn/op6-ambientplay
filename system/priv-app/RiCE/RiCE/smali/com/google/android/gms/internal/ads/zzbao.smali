.class Lcom/google/android/gms/internal/ads/zzbao;
.super Lcom/google/android/gms/internal/ads/zzban;


# instance fields
.field protected final zzdpw:[B


# direct methods
.method constructor <init>([B)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzban;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/internal/ads/zzbah;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v1

    move-object v3, p1

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbah;

    invoke-virtual/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v3

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v1

    if-nez v1, :cond_3

    return v0

    :cond_3
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbao;

    if-eqz v0, :cond_5

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbao;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->zzabg()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->zzabg()I

    move-result v1

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eq v0, v1, :cond_4

    return v2

    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/google/android/gms/internal/ads/zzban;->zza(Lcom/google/android/gms/internal/ads/zzbah;II)Z

    move-result p0

    return p0

    :cond_5
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    array-length p0, p0

    return p0
.end method

.method protected final zza(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    invoke-direct {v0, v1, v2, p0, p1}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    return-object v0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbag;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    invoke-virtual {p1, v0, v1, p0}, Lcom/google/android/gms/internal/ads/zzbag;->zzb([BII)V

    return-void
.end method

.method protected zza([BIII)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    const/4 p2, 0x0

    invoke-static {p0, p2, p1, p2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbah;II)Z
    .locals 4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p2

    if-gt p3, p2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p2

    if-gt p3, p2, :cond_3

    instance-of p2, p1, Lcom/google/android/gms/internal/ads/zzbao;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbao;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v2

    add-int/2addr v2, p3

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result p0

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result p1

    :goto_0
    if-ge p0, v2, :cond_1

    aget-byte p3, p2, p0

    aget-byte v3, v1, p1

    if-eq p3, v3, :cond_0

    return v0

    :cond_0
    add-int/lit8 p0, p0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    invoke-virtual {p1, v0, p3}, Lcom/google/android/gms/internal/ads/zzbah;->zzk(II)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p1

    invoke-virtual {p0, v0, p3}, Lcom/google/android/gms/internal/ads/zzbah;->zzk(II)Lcom/google/android/gms/internal/ads/zzbah;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/android/gms/internal/ads/zzbah;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    const/16 p2, 0x3b

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Ran off end of other: 0, "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    const/16 p2, 0x28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Length too large: "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzabe()Z
    .locals 2

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    add-int/2addr p0, v0

    invoke-static {v1, v0, p0}, Lcom/google/android/gms/internal/ads/zzbem;->zzf([BII)Z

    move-result p0

    return p0
.end method

.method public final zzabf()Lcom/google/android/gms/internal/ads/zzbaq;
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {v0, v1, p0, v2}, Lcom/google/android/gms/internal/ads/zzbaq;->zza([BIIZ)Lcom/google/android/gms/internal/ads/zzbaq;

    move-result-object p0

    return-object p0
.end method

.method protected zzabh()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public zzbn(I)B
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    aget-byte p0, p0, p1

    return p0
.end method

.method protected final zzc(III)I
    .locals 0

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result p0

    invoke-static {p1, p2, p0, p3}, Lcom/google/android/gms/internal/ads/zzbbq;->zza(I[BII)I

    move-result p0

    return p0
.end method

.method public final zzk(II)Lcom/google/android/gms/internal/ads/zzbah;
    .locals 1

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbah;->size()I

    move-result p1

    const/4 v0, 0x0

    invoke-static {v0, p2, p1}, Lcom/google/android/gms/internal/ads/zzbao;->zzd(III)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p0, Lcom/google/android/gms/internal/ads/zzbah;->zzdpq:Lcom/google/android/gms/internal/ads/zzbah;

    return-object p0

    :cond_0
    new-instance p2, Lcom/google/android/gms/internal/ads/zzbak;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbao;->zzdpw:[B

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbao;->zzabh()I

    move-result p0

    invoke-direct {p2, v0, p0, p1}, Lcom/google/android/gms/internal/ads/zzbak;-><init>([BII)V

    return-object p2
.end method
