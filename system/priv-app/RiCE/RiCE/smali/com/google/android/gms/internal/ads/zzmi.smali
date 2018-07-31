.class final Lcom/google/android/gms/internal/ads/zzmi;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic zzatj:Lcom/google/android/gms/internal/ads/zzmh;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzmh;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzatj:Lcom/google/android/gms/internal/ads/zzmh;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzatj:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/zzmh;->zzati:Lcom/google/android/gms/internal/ads/zzmf;

    invoke-static/range {v0 .. v0}, Lcom/google/android/gms/internal/ads/zzmf;->zza(Lcom/google/android/gms/internal/ads/zzmf;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmi;->zzatj:Lcom/google/android/gms/internal/ads/zzmh;

    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzmh;->zzati:Lcom/google/android/gms/internal/ads/zzmf;

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzmf;->zza(Lcom/google/android/gms/internal/ads/zzmf;)Lcom/google/android/gms/internal/ads/zzkh;

    move-result-object p0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/google/android/gms/internal/ads/zzkh;->onAdFailedToLoad(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    const-string v0, "Could not notify onAdFailedToLoad event."

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
