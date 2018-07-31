.class final Lcom/google/android/gms/internal/ads/zzyu;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzbvd:Lcom/google/android/gms/internal/ads/zzyq;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzyq;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzyu;->zzbvd:Lcom/google/android/gms/internal/ads/zzyq;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzyu;->zzbvd:Lcom/google/android/gms/internal/ads/zzyq;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzyq;->zza(Lcom/google/android/gms/internal/ads/zzyq;)Lcom/google/android/gms/internal/ads/zzxt;

    move-result-object p0

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzxt;->onAdClosed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzane;->zzd(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
