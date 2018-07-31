.class public final Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;
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
.field private final zzob:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final zzoe:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/AbstractDataBuffer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/common/data/FilteredDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    new-instance p1, Ljava/util/HashSet;

    invoke-direct/range {p1 .. p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct/range {p1 .. p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzcl()V

    return-void
.end method

.method private final zzcl()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public final clearFilters()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual/range {v0 .. v0}, Ljava/util/HashSet;->clear()V

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzcl()V

    return-void
.end method

.method public final computeRealPosition(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

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

.method public final filterOut(I)V
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    if-gt p1, v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzcl()V

    :cond_0
    return-void
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {v0 .. v0}, Lcom/google/android/gms/common/data/DataBuffer;->getCount()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashSet;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final unfilter(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/PositionFilteredDataBuffer;->zzcl()V

    return-void
.end method
