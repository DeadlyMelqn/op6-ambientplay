.class final Lcom/google/android/gms/common/data/zzb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzom:Ljava/util/Comparator;

.field private final synthetic zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/data/SortedDataBuffer;Ljava/util/Comparator;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/data/zzb;->zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;

    iput-object p2, p0, Lcom/google/android/gms/common/data/zzb;->zzom:Ljava/util/Comparator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/android/gms/common/data/zzb;->zzom:Ljava/util/Comparator;

    iget-object v1, p0, Lcom/google/android/gms/common/data/zzb;->zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;

    invoke-static/range {v1 .. v1}, Lcom/google/android/gms/common/data/SortedDataBuffer;->zza(Lcom/google/android/gms/common/data/SortedDataBuffer;)Lcom/google/android/gms/common/data/DataBuffer;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v1, p1}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/gms/common/data/zzb;->zzon:Lcom/google/android/gms/common/data/SortedDataBuffer;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/common/data/SortedDataBuffer;->zza(Lcom/google/android/gms/common/data/SortedDataBuffer;)Lcom/google/android/gms/common/data/DataBuffer;

    move-result-object p0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p2}, Lcom/google/android/gms/common/data/DataBuffer;->get(I)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p1, p0}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
