.class public final Lcom/google/android/gms/internal/ads/zzxp;
.super Lcom/google/android/gms/internal/ads/zzej;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxn;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IAdapterCreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzej;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zzbm(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzxq;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzej;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzej;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "com.google.android.gms.ads.internal.mediation.client.IMediationAdapter"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lcom/google/android/gms/internal/ads/zzxq;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Lcom/google/android/gms/internal/ads/zzxq;

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzxs;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/zzxs;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method

.method public final zzbn(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzej;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzej;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-static/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->recycle()V

    return p1
.end method

.method public final zzbq(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzzj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzej;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzej;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/internal/ads/zzzk;->zzt(Landroid/os/IBinder;)Lcom/google/android/gms/internal/ads/zzzj;

    move-result-object p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
