.class public final Lcom/google/android/gms/internal/ads/zzln;
.super Lcom/google/android/gms/internal/ads/zzej;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzlm;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManagerCreator"

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/internal/ads/zzej;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/dynamic/IObjectWrapper;I)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzej;->obtainAndWriteInterfaceToken()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const p1, 0xbdfcb8

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeInt(I)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzej;->transactAndReadException(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-virtual/range {p0 .. p0}, Landroid/os/Parcel;->recycle()V

    return-object p1
.end method
