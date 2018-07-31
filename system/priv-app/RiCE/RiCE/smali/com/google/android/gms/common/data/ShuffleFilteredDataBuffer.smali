.class public final Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;
.super Lcom/google/android/gms/common/data/FilteredDataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/FilteredDataBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final zzoh:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzoi:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;I)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/data/FilteredDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    iput p2, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoi:I

    iget p1, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoi:I

    iget-object p2, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {p2 .. p2}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result p2

    if-gt p1, p2, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p2, :cond_0

    invoke-static/range {v2 .. v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static/range {v0 .. v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->subList(II)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoh:Ljava/util/List;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "numIndexes must be smaller or equal to max"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final computeRealPosition(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoh:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const/16 v0, 0x35

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Position "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is out of bounds for this buffer"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v1 .. v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getCount()I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->zzoi:I

    iget-object p0, p0, Lcom/google/android/gms/common/data/ShuffleFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method
