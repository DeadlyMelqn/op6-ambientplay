.class public abstract Lcom/google/android/gms/internal/ads/zzya;
.super Lcom/google/android/gms/internal/ads/zzek;

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzxz;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper"

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/ads/zzek;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final dispatchTransaction(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p4

    invoke-static/range {p4 .. p4}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p4

    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static/range {p2 .. p2}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/google/android/gms/internal/ads/zzya;->zzb(Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->zzke()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->zzmw()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->zzkf()Lcom/google/android/gms/internal/ads/zzps;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->zzmv()Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p0

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getVideoController()Lcom/google/android/gms/internal/ads/zzlo;

    move-result-object p0

    goto :goto_2

    :pswitch_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzya;->zzl(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_1

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/ads/zzel;->zzb(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    goto/16 :goto_4

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getOverrideClickHandling()Z

    move-result p0

    goto :goto_0

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getOverrideImpressionRecording()Z

    move-result p0

    :goto_0
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Z)V

    goto :goto_4

    :pswitch_a
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzya;->zzk(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_1

    :pswitch_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/google/android/gms/dynamic/IObjectWrapper$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/gms/dynamic/IObjectWrapper;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/zzya;->zzj(Lcom/google/android/gms/dynamic/IObjectWrapper;)V

    goto :goto_1

    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->recordImpression()V

    :goto_1
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_4

    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getPrice()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getStore()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :pswitch_f
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getStarRating()D

    move-result-wide p0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0, p1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_4

    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getCallToAction()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :pswitch_11
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->zzjz()Lcom/google/android/gms/internal/ads/zzpw;

    move-result-object p0

    :goto_2
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-static {p3, p0}, Lcom/google/android/gms/internal/ads/zzel;->zza(Landroid/os/Parcel;Landroid/os/IInterface;)V

    goto :goto_4

    :pswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getBody()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getImages()Ljava/util/List;

    move-result-object p0

    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    goto :goto_4

    :pswitch_14
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/gms/internal/ads/zzya;->getHeadline()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_4
    const/4 p0, 0x1

    return p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
