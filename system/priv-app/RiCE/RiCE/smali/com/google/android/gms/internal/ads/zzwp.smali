.class final Lcom/google/android/gms/internal/ads/zzwp;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzalo;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/zzalo<",
        "Lcom/google/android/gms/internal/ads/zzuu;",
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
.method public final synthetic zze(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzuu;

    const-string p0, "/result"

    sget-object v0, Lcom/google/android/gms/ads/internal/gmsg/zzf;->zzbmc:Lcom/google/android/gms/ads/internal/gmsg/zzaf;

    invoke-interface {p1, p0, v0}, Lcom/google/android/gms/internal/ads/zzuu;->zzb(Ljava/lang/String;Lcom/google/android/gms/ads/internal/gmsg/zzv;)V

    return-void
.end method
