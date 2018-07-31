.class public abstract Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareDiscoverySessionCallback.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

.field static final TRANSACTION_onMatch:I = 0x5

.field static final TRANSACTION_onMessageReceived:I = 0x8

.field static final TRANSACTION_onMessageSendFail:I = 0x7

.field static final TRANSACTION_onMessageSendSuccess:I = 0x6

.field static final TRANSACTION_onSessionConfigFail:I = 0x3

.field static final TRANSACTION_onSessionConfigSuccess:I = 0x2

.field static final TRANSACTION_onSessionStarted:I = 0x1

.field static final TRANSACTION_onSessionTerminated:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
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
    const-string/jumbo v1, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 6
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
    const/4 v5, 0x1

    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 121
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 47
    :sswitch_0
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return v5

    .line 52
    :sswitch_1
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionStarted(I)V

    .line 56
    return v5

    .line 60
    .end local v0    # "_arg0":I
    :sswitch_2
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigSuccess()V

    .line 62
    return v5

    .line 66
    :sswitch_3
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionConfigFail(I)V

    .line 70
    return v5

    .line 74
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 77
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onSessionTerminated(I)V

    .line 78
    return v5

    .line 82
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 88
    .local v2, "_arg1":[B
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v3

    .line 89
    .local v3, "_arg2":[B
    invoke-virtual {p0, v0, v2, v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMatch(I[B[B)V

    .line 90
    return v5

    .line 94
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":[B
    .end local v3    # "_arg2":[B
    :sswitch_6
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 97
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendSuccess(I)V

    .line 98
    return v5

    .line 102
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 106
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 107
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageSendFail(II)V

    .line 108
    return v5

    .line 112
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_8
    const-string/jumbo v4, "android.net.wifi.aware.IWifiAwareDiscoverySessionCallback"

    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 116
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v2

    .line 117
    .restart local v2    # "_arg1":[B
    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->onMessageReceived(I[B)V

    .line 118
    return v5

    .line 43
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
