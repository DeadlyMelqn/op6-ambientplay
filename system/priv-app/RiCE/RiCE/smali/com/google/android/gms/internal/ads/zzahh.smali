.class public final Lcom/google/android/gms/internal/ads/zzahh;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/ads/reward/RewardItem;


# annotations
.annotation runtime Lcom/google/android/gms/internal/ads/zzadh;
.end annotation


# instance fields
.field private final zzcli:Lcom/google/android/gms/internal/ads/zzagu;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzagu;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzahh;->zzcli:Lcom/google/android/gms/internal/ads/zzagu;

    return-void
.end method


# virtual methods
.method public final getAmount()I
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zzcli:Lcom/google/android/gms/internal/ads/zzagu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zzcli:Lcom/google/android/gms/internal/ads/zzagu;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzagu;->getAmount()I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string v0, "Could not forward getAmount to RewardItem"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public final getType()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zzcli:Lcom/google/android/gms/internal/ads/zzagu;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/zzahh;->zzcli:Lcom/google/android/gms/internal/ads/zzagu;

    invoke-interface/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzagu;->getType()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "Could not forward getType to RewardItem"

    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/zzane;->zzc(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method
