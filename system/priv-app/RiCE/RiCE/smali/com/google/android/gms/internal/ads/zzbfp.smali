.class public final Lcom/google/android/gms/internal/ads/zzbfp;
.super Lcom/google/android/gms/internal/ads/zzbfc;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbfc<",
        "Lcom/google/android/gms/internal/ads/zzbfp;",
        ">;"
    }
.end annotation


# instance fields
.field private zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

.field public zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

.field private zzedb:[B

.field private zzedc:[B

.field private zzedd:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfc;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfo;->zzagt()[Lcom/google/android/gms/internal/ads/zzbfo;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzebk:Lcom/google/android/gms/internal/ads/zzbfe;

    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzebt:I

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    move-result v0

    if-eqz v0, :cond_a

    const/16 v1, 0xa

    if-eq v0, v1, :cond_8

    const/16 v1, 0x12

    if-eq v0, v1, :cond_4

    const/16 v1, 0x1a

    if-eq v0, v1, :cond_3

    const/16 v1, 0x22

    if-eq v0, v1, :cond_2

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1

    invoke-super {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbez;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabn()I

    move-result v0

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbez;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    goto :goto_0

    :cond_4
    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfl;->zzb(Lcom/google/android/gms/internal/ads/zzbez;I)I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    move v1, v2

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    array-length v1, v1

    :goto_1
    add-int/2addr v0, v1

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/zzbfo;

    if-eqz v1, :cond_6

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-static {v3, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_6
    :goto_2
    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_7

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-direct/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>()V

    aput-object v2, v0, v1

    aget-object v2, v0, v1

    invoke-virtual {p1, v2}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbez;->zzabk()I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    new-instance v2, Lcom/google/android/gms/internal/ads/zzbfo;

    invoke-direct/range {v2 .. v2}, Lcom/google/android/gms/internal/ads/zzbfo;-><init>()V

    aput-object v2, v0, v1

    aget-object v1, v0, v1

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    goto :goto_0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    if-nez v0, :cond_9

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbfq;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbez;->zza(Lcom/google/android/gms/internal/ads/zzbfi;)V

    goto/16 :goto_0

    :cond_a
    return-object p0
.end method

.method public final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    aget-object v1, v1, v0

    if-eqz v1, :cond_1

    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(ILcom/google/android/gms/internal/ads/zzbfi;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    if-eqz v0, :cond_3

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zza(I[B)V

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzm(II)V

    :cond_5
    invoke-super/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbfc;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-void
.end method

.method protected final zzr()I
    .locals 4

    invoke-super/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfc;->zzr()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzecz:Lcom/google/android/gms/internal/ads/zzbfq;

    const/4 v2, 0x1

    invoke-static {v2, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    array-length v1, v1

    if-lez v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzeda:[Lcom/google/android/gms/internal/ads/zzbfo;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    const/4 v3, 0x2

    invoke-static {v3, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(ILcom/google/android/gms/internal/ads/zzbfi;)I

    move-result v2

    add-int/2addr v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedb:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    if-eqz v1, :cond_4

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedc:[B

    invoke-static {v1, v2}, Lcom/google/android/gms/internal/ads/zzbfa;->zzb(I[B)I

    move-result v1

    add-int/2addr v0, v1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbfp;->zzedd:Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {v1, p0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzq(II)I

    move-result p0

    add-int/2addr v0, p0

    :cond_5
    return v0
.end method