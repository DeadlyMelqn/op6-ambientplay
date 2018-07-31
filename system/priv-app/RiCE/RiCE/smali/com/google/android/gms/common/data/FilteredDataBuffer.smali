.class public abstract Lcom/google/android/gms/common/data/FilteredDataBuffer;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/data/DataBuffer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/data/DataBuffer<",
        "TT;>;"
    }
.end annotation


# instance fields
.field protected final mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/common/data/DataBuffer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/common/data/DataBuffer<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/common/internal/Asserts;->checkNotNull(Ljava/lang/Object;)V

    instance-of v0, p1, Lcom/google/android/gms/common/data/FilteredDataBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Not possible to have nested FilteredDataBuffers."

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/Asserts;->checkState(ZLjava/lang/Object;)V

    iput-object p1, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/FilteredDataBuffer;->release()V

    return-void
.end method

.method protected abstract computeRealPosition(I)I
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/common/data/FilteredDataBuffer;->computeRealPosition(I)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getMetadata()Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataBuffer;->getMetadata()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method public isClosed()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataBuffer;->isClosed()Z

    move-result p0

    return p0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/common/data/DataBufferIterator;

    invoke-direct {v0, p0}, Lcom/google/android/gms/common/data/DataBufferIterator;-><init>(Lcom/google/android/gms/common/data/DataBuffer;)V

    return-object v0
.end method

.method public release()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/common/data/FilteredDataBuffer;->mDataBuffer:Lcom/google/android/gms/common/data/DataBuffer;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/common/data/DataBuffer;->release()V

    return-void
.end method

.method public singleRefIterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/common/data/FilteredDataBuffer;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
