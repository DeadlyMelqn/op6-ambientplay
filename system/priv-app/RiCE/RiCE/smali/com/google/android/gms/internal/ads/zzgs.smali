.class final Lcom/google/android/gms/internal/ads/zzgs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/google/android/gms/internal/ads/zzgy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzgr;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgy;

    check-cast p2, Lcom/google/android/gms/internal/ads/zzgy;

    iget p0, p1, Lcom/google/android/gms/internal/ads/zzgy;->zzajg:I

    iget v0, p2, Lcom/google/android/gms/internal/ads/zzgy;->zzajg:I

    sub-int/2addr p0, v0

    if-eqz p0, :cond_0

    return p0

    :cond_0
    iget-wide p0, p1, Lcom/google/android/gms/internal/ads/zzgy;->value:J

    iget-wide v0, p2, Lcom/google/android/gms/internal/ads/zzgy;->value:J

    sub-long/2addr p0, v0

    long-to-int p0, p0

    return p0
.end method
