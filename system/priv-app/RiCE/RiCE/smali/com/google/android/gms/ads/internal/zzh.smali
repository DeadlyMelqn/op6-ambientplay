.class final Lcom/google/android/gms/ads/internal/zzh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzwk:Lcom/google/android/gms/ads/internal/zzd;


# direct methods
.method constructor <init>(Lcom/google/android/gms/ads/internal/zzd;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/ads/internal/zzh;->zzwk:Lcom/google/android/gms/ads/internal/zzd;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/ads/internal/zzh;->zzwk:Lcom/google/android/gms/ads/internal/zzd;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzd;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/zzbw;->zzacq:Lcom/google/android/gms/internal/ads/zzci;

    invoke-virtual/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzci;->zzaa()Lcom/google/android/gms/internal/ads/zzce;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzh;->zzwk:Lcom/google/android/gms/ads/internal/zzd;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzd;->zzvw:Lcom/google/android/gms/ads/internal/zzbw;

    iget-object p0, p0, Lcom/google/android/gms/ads/internal/zzbw;->zzrt:Landroid/content/Context;

    invoke-interface {v0, p0}, Lcom/google/android/gms/internal/ads/zzce;->zza(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
