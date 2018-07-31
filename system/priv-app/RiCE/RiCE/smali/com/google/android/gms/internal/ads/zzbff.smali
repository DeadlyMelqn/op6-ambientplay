.class final Lcom/google/android/gms/internal/ads/zzbff;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private value:Ljava/lang/Object;

.field private zzebq:Lcom/google/android/gms/internal/ads/zzbfd;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zzbfd<",
            "**>;"
        }
    .end annotation
.end field

.field private zzebr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/gms/internal/ads/zzbfk;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    return-void
.end method

.method private final toByteArray()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbff;->zzr()I

    move-result v0

    new-array v0, v0, [B

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzu([B)Lcom/google/android/gms/internal/ads/zzbfa;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/android/gms/internal/ads/zzbff;->zza(Lcom/google/android/gms/internal/ads/zzbfa;)V

    return-object v0
.end method

.method private final zzagp()Lcom/google/android/gms/internal/ads/zzbff;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbff;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbff;-><init>()V

    :try_start_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbfi;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/ads/zzbfi;

    :goto_1
    iput-object p0, v0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    goto/16 :goto_4

    :cond_1
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [B

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [B

    invoke-virtual/range {p0 .. p0}, [B->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [[B

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [[B

    array-length v1, p0

    new-array v1, v1, [[B

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    :goto_2
    array-length v3, p0

    if-ge v2, v3, :cond_9

    aget-object v3, p0, v2

    invoke-virtual/range {v3 .. v3}, [B->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [Z

    if-eqz v1, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [Z

    invoke-virtual/range {p0 .. p0}, [Z->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [I

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [I

    invoke-virtual/range {p0 .. p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [J

    if-eqz v1, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [J

    invoke-virtual/range {p0 .. p0}, [J->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [F

    if-eqz v1, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [F

    invoke-virtual/range {p0 .. p0}, [F->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [D

    if-eqz v1, :cond_8

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [D

    invoke-virtual/range {p0 .. p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v1, v1, [Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz v1, :cond_9

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [Lcom/google/android/gms/internal/ads/zzbfi;

    array-length v1, p0

    new-array v1, v1, [Lcom/google/android/gms/internal/ads/zzbfi;

    iput-object v1, v0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_9

    aget-object v3, p0, v2

    invoke-virtual/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzbfi;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/gms/internal/ads/zzbfi;

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-object v0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method


# virtual methods
.method public final synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbff;->zzagp()Lcom/google/android/gms/internal/ads/zzbff;

    move-result-object p0

    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzbff;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    check-cast p1, Lcom/google/android/gms/internal/ads/zzbff;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iget-object v2, p1, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfd;->zzebl:Ljava/lang/Class;

    invoke-virtual/range {v0 .. v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_3
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v0, v0, [B

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [B

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    return p0

    :cond_4
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v0, v0, [I

    if-eqz v0, :cond_5

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [I

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    return p0

    :cond_5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v0, v0, [J

    if-eqz v0, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [J

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [J

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([J[J)Z

    move-result p0

    return p0

    :cond_6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v0, v0, [F

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [F

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [F

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result p0

    return p0

    :cond_7
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v0, v0, [D

    if-eqz v0, :cond_8

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [D

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [D

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([D[D)Z

    move-result p0

    return p0

    :cond_8
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v0, v0, [Z

    if-eqz v0, :cond_9

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [Z

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [Z

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Z[Z)Z

    move-result p0

    return p0

    :cond_9
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p0, [Ljava/lang/Object;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/util/Arrays;->deepEquals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object v0, p1, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-eqz v0, :cond_b

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_b
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbff;->toByteArray()[B

    move-result-object p0

    invoke-direct/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbff;->toByteArray()[B

    move-result-object p1

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final hashCode()I
    .locals 1

    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzbff;->toByteArray()[B

    move-result-object p0

    invoke-static/range {p0 .. p0}, Ljava/util/Arrays;->hashCode([B)I

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit16 p0, p0, 0x20f

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbfa;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzbfk;

    iget v1, v0, Lcom/google/android/gms/internal/ads/zzbfk;->tag:I

    invoke-virtual {p1, v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzde(I)V

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzbfk;->zzdpw:[B

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfa;->zzw([B)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method

.method final zza(Lcom/google/android/gms/internal/ads/zzbfk;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of v0, v0, Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz v0, :cond_2

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzbfk;->zzdpw:[B

    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p1, v0, v1}, Lcom/google/android/gms/internal/ads/zzbez;->zzi([BII)Lcom/google/android/gms/internal/ads/zzbez;

    move-result-object v0

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzbez;->zzacc()I

    move-result v1

    array-length p1, p1

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/internal/ads/zzbfa;->zzce(I)I

    move-result v2

    sub-int/2addr p1, v2

    if-ne v1, p1, :cond_1

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzbfi;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzbfi;->zza(Lcom/google/android/gms/internal/ads/zzbez;)Lcom/google/android/gms/internal/ads/zzbfi;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebq:Lcom/google/android/gms/internal/ads/zzbfd;

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    return-void

    :cond_1
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzbfh;->zzagq()Lcom/google/android/gms/internal/ads/zzbfh;

    move-result-object p0

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    instance-of p0, p0, [Lcom/google/android/gms/internal/ads/zzbfi;

    if-eqz p0, :cond_3

    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0

    :cond_3
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method

.method final zzr()I
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbff;->value:Ljava/lang/Object;

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbff;->zzebr:Ljava/util/List;

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface/range {p0 .. p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/zzbfk;

    iget v3, v2, Lcom/google/android/gms/internal/ads/zzbfk;->tag:I

    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/internal/ads/zzbfa;->zzcl(I)I

    move-result v3

    add-int/2addr v3, v0

    iget-object v2, v2, Lcom/google/android/gms/internal/ads/zzbfk;->zzdpw:[B

    array-length v2, v2

    add-int/2addr v3, v2

    add-int/2addr v1, v3

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    new-instance p0, Ljava/lang/NoSuchMethodError;

    invoke-direct/range {p0 .. p0}, Ljava/lang/NoSuchMethodError;-><init>()V

    throw p0
.end method
