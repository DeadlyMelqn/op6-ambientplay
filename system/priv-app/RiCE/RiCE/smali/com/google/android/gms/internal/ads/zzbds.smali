.class final Lcom/google/android/gms/internal/ads/zzbds;
.super Lcom/google/android/gms/internal/ads/zzbdy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/internal/ads/zzbdy;"
    }
.end annotation


# instance fields
.field private final synthetic zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;)V
    .locals 1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzbdy;-><init>(Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/internal/ads/zzbdq;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/internal/ads/zzbdq;)V
    .locals 0

    invoke-direct/range {p0 .. p1}, Lcom/google/android/gms/internal/ads/zzbds;-><init>(Lcom/google/android/gms/internal/ads/zzbdp;)V

    return-void
.end method


# virtual methods
.method public final iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbdr;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzbds;->zzdyq:Lcom/google/android/gms/internal/ads/zzbdp;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/gms/internal/ads/zzbdr;-><init>(Lcom/google/android/gms/internal/ads/zzbdp;Lcom/google/android/gms/internal/ads/zzbdq;)V

    return-object v0
.end method
