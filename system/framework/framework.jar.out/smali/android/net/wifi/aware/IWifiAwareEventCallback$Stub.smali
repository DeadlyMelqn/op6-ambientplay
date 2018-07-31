.class public abstract Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareEventCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareEventCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareEventCallback"

.field static final TRANSACTION_onConnectFail:I = 0x2

.field static final TRANSACTION_onConnectSuccess:I = 0x1

.field static final TRANSACTION_onIdentityChanged:I = 0x3

.field static final TRANSACTION_onRangingAborted:I = 0x6

.field static final TRANSACTION_onRangingFailure:I = 0x5

.field static final TRANSACTION_onRangingSuccess:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 28
    if-nez p0, :cond_0

    .line 29
    return-object v1

    .line 31
    :cond_0
    const-string/jumbo v1, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/aware/IWifiAwareEventCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 39
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    return v5

    .line 47
    :sswitch_0
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v6

    .line 52
    :sswitch_1
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onConnectSuccess(I)V

    .line 56
    return v6

    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 63
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onConnectFail(I)V

    .line 64
    return v6

    .line 68
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 71
    .local v1, "_arg0":[B
    invoke-virtual {p0, v1}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onIdentityChanged([B)V

    .line 72
    return v6

    .line 76
    .end local v1    # "_arg0":[B
    :sswitch_4
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_0

    .line 81
    sget-object v5, Landroid/net/wifi/RttManager$ParcelableRttResults;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/RttManager$ParcelableRttResults;

    .line 86
    :goto_0
    invoke-virtual {p0, v0, v3}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onRangingSuccess(ILandroid/net/wifi/RttManager$ParcelableRttResults;)V

    .line 87
    return v6

    .line 84
    :cond_0
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/net/wifi/RttManager$ParcelableRttResults;
    goto :goto_0

    .line 91
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":Landroid/net/wifi/RttManager$ParcelableRttResults;
    :sswitch_5
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 95
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 97
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 98
    .local v4, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v4}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onRangingFailure(IILjava/lang/String;)V

    .line 99
    return v6

    .line 103
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v4    # "_arg2":Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v5, "android.net.wifi.aware.IWifiAwareEventCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->onRangingAborted(I)V

    .line 107
    return v6

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
