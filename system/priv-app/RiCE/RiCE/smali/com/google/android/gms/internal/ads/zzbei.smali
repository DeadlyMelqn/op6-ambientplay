.class final Lcom/google/android/gms/internal/ads/zzbei;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/ListIterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/ListIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private zzdza:Ljava/util/ListIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final synthetic zzdzb:I

.field private final synthetic zzdzc:Lcom/google/android/gms/internal/ads/zzbeh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbeh;I)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdzc:Lcom/google/android/gms/internal/ads/zzbeh;

    iput p2, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdzb:I

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdzc:Lcom/google/android/gms/internal/ads/zzbeh;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzbeh;->zza(Lcom/google/android/gms/internal/ads/zzbeh;)Lcom/google/android/gms/internal/ads/zzbcd;

    move-result-object p1

    iget p2, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdzb:I

    invoke-interface {p1, p2}, Lcom/google/android/gms/internal/ads/zzbcd;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdza:Ljava/util/ListIterator;

    return-void
.end method


# virtual methods
.method public final synthetic add(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final hasNext()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdza:Ljava/util/ListIterator;

    invoke-interface/range {p0 .. p0}, Ljava/util/ListIterator;->hasNext()Z

    move-result p0

    return p0
.end method

.method public final hasPrevious()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdza:Ljava/util/ListIterator;

    invoke-interface/range {p0 .. p0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result p0

    return p0
.end method

.method public final synthetic next()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdza:Ljava/util/ListIterator;

    invoke-interface/range {p0 .. p0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final nextIndex()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdza:Ljava/util/ListIterator;

    invoke-interface/range {p0 .. p0}, Ljava/util/ListIterator;->nextIndex()I

    move-result p0

    return p0
.end method

.method public final synthetic previous()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdza:Ljava/util/ListIterator;

    invoke-interface/range {p0 .. p0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public final previousIndex()I
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbei;->zzdza:Ljava/util/ListIterator;

    invoke-interface/range {p0 .. p0}, Ljava/util/ListIterator;->previousIndex()I

    move-result p0

    return p0
.end method

.method public final remove()V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public final synthetic set(Ljava/lang/Object;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {p0 .. p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method
