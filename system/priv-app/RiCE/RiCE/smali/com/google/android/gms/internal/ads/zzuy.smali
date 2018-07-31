.class final synthetic Lcom/google/android/gms/internal/ads/zzuy;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/util/Predicate;


# instance fields
.field private final zzbps:Lcom/google/android/gms/ads/internal/gmsg/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/gmsg/zzv;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzbps:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzuy;->zzbps:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    check-cast p1, Lcom/google/android/gms/ads/internal/gmsg/zzv;

    instance-of v0, p1, Lcom/google/android/gms/internal/ads/zzvd;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzvd;

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzvd;->zza(Lcom/google/android/gms/internal/ads/zzvd;)Lcom/google/android/gms/ads/internal/gmsg/zzv;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
