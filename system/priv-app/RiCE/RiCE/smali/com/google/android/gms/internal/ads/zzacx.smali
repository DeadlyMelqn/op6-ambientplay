.class final Lcom/google/android/gms/internal/ads/zzacx;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzanl;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzanl<",
        "Lcom/google/android/gms/internal/ads/zzaqw;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzcbt:Ljava/lang/String;

.field private final synthetic zzcbu:Lcom/google/android/gms/ads/internal/gmsg/zzv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzacq;Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V
    .locals 0

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcbt:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcbu:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzb(Ljava/lang/Throwable;)V
    .locals 0

    return-void
.end method

.method public final synthetic zzh(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzaqw;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcbt:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzacx;->zzcbu:Lcom/google/android/gms/ads/internal/gmsg/zzv;

    invoke-interface {p1, v0, p0}, Lcom/google/android/gms/internal/ads/zzaqw;->zza(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    return-void
.end method
