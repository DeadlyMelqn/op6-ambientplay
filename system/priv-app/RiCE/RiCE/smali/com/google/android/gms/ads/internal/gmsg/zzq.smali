.class final Lcom/google/android/gms/ads/internal/gmsg/zzq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/internal/gmsg/zzv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/ads/internal/gmsg/zzv<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;Ljava/util/Map;)V
    .locals 0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    invoke-interface/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzaqw;->zzuq()Lcom/google/android/gms/internal/ads/zzox;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzox;->zzki()V

    :cond_0
    return-void
.end method
