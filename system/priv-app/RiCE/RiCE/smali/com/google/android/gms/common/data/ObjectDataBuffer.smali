.class public final Lcom/google/android/gms/common/data/ObjectDataBuffer;
.super Lcom/google/android/gms/common/data/AbstractDataBuffer;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBufferObserver$Observable;
.implements Lcom/google/android/gms/common/data/ObjectExclusionFilterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/gms/common/data/AbstractDataBuffer<",
        "TT;>;",
        "Lcom/google/android/gms/common/data/DataBufferObserver$Observable;",
        "Lcom/google/android/gms/common/data/ObjectExclusionFilterable<",
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

.field private zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

.field private final zzog:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct/range {v0 .. v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    new-instance v0, Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct/range {v0 .. v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct/range {v0 .. v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct/range {v0 .. v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct/range {v0 .. v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    new-instance p1, Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    return-void
.end method

.method private final zzcl()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

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
.method public final add(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v0 .. v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v2, 0x0

    if-lez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-static/range {v3 .. v3}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    sub-int/2addr p1, v1

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, v0, :cond_1

    move v2, v1

    :cond_1
    invoke-static/range {v2 .. v2}, Lcom/google/android/gms/common/internal/Asserts;->checkState(Z)V

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, p1, v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_2
    return-void
.end method

.method public final addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->addObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V

    return-void
.end method

.method public final filterOut(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v3, v0, :cond_4

    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_3

    add-int/lit8 v5, v5, 0x1

    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {v4 .. v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v4

    if-eqz v4, :cond_1

    if-gez v6, :cond_0

    move v6, v5

    move v4, v9

    move v7, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    :cond_1
    move v4, v9

    goto :goto_1

    :cond_2
    if-ltz v6, :cond_3

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    sub-int/2addr v5, v7

    move v4, v1

    move v6, v2

    move v7, v6

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    if-eqz v4, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    :cond_5
    if-ltz v6, :cond_6

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_6
    return-void
.end method

.method public final filterOutRaw(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    if-ltz v0, :cond_2

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_2
    return-void
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->getRawPosition(I)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getCount()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual/range {p0 .. p0}, Ljava/util/HashSet;->size()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public final getMetadata()Landroid/os/Bundle;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPositionFromRawPosition(I)I
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-gt v1, p1, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v1 .. v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final getRaw(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getRawCount()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final getRawPosition(I)I
    .locals 2

    if-ltz p1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/AbstractDataBuffer;->getCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

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

.method public final insertRaw(ILjava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    new-instance p2, Ljava/util/HashSet;

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual/range {v0 .. v0}, Ljava/util/HashSet;->size()I

    move-result v0

    invoke-direct {p2, v0}, Ljava/util/HashSet;-><init>(I)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual/range {v0 .. v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v1, p1

    :goto_0
    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual/range {v2 .. v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, p1, :cond_0

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual/range {v2 .. v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v2, v3

    invoke-static/range {v2 .. v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-interface/range {v0 .. v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, v1, v3}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_3
    return-void
.end method

.method public final isRawPositionFiltered(I)Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final notifyChanged(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual/range {v1 .. v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v3}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeChanged(II)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final release()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->clear()V

    return-void
.end method

.method public final removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->removeObserver(Lcom/google/android/gms/common/data/DataBufferObserver;)V

    return-void
.end method

.method public final removeRaw(I)V
    .locals 7

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual/range {v2 .. v2}, Ljava/util/HashSet;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(I)V

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual/range {v2 .. v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, p1

    :goto_0
    invoke-interface/range {v2 .. v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface/range {v2 .. v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual/range {v4 .. v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    if-ge v6, p1, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_0
    invoke-interface/range {v2 .. v2}, Ljava/util/Iterator;->remove()V

    invoke-virtual/range {v4 .. v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-static/range {v4 .. v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual/range {v1 .. v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-virtual {v2, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    if-nez v0, :cond_3

    iget-object p1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {p1 .. p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, v3, v5}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeRemoved(II)V

    :cond_3
    return-void
.end method

.method public final setRaw(ILjava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    xor-int/2addr p2, v0

    if-eqz p2, :cond_1

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual/range {v2 .. v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, v1, v0}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeChanged(II)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return p2
.end method

.method public final unfilter(Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual/range {v0 .. v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v2

    move v7, v6

    :goto_0
    if-ge v3, v0, :cond_5

    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v8

    const/4 v9, 0x1

    if-nez v8, :cond_0

    add-int/lit8 v5, v5, 0x1

    if-ltz v6, :cond_4

    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {v4, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    add-int/2addr v5, v7

    move v4, v1

    move v6, v2

    move v7, v6

    goto :goto_2

    :cond_0
    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzog:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {v3 .. v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {v4 .. v4}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v4

    if-eqz v4, :cond_2

    if-gez v6, :cond_1

    move v6, v5

    move v4, v9

    move v7, v4

    goto :goto_2

    :cond_1
    add-int/lit8 v7, v7, 0x1

    :cond_2
    move v4, v9

    goto :goto_2

    :cond_3
    iget-object v8, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {v8 .. v8}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v8

    if-eqz v8, :cond_4

    if-ltz v6, :cond_4

    goto :goto_1

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    if-eqz v4, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    :cond_6
    if-ltz v6, :cond_7

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual {p0, v6, v7}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_7
    return-void
.end method

.method public final unfilterRaw(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzoe:Ljava/util/HashSet;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    invoke-direct/range {p0 .. p0}, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzcl()V

    iget-object v1, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    invoke-virtual/range {v1 .. v1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->hasObservers()Z

    move-result v1

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual/range {v2 .. v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    iget-object v3, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzob:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual/range {v3 .. v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_1

    move v0, v1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz v0, :cond_3

    iget-object p0, p0, Lcom/google/android/gms/common/data/ObjectDataBuffer;->zzof:Lcom/google/android/gms/common/data/DataBufferObserverSet;

    const/4 p1, 0x1

    invoke-virtual {p0, v0, p1}, Lcom/google/android/gms/common/data/DataBufferObserverSet;->onDataRangeInserted(II)V

    :cond_3
    :goto_2
    return-void
.end method
