.class public abstract Landroid/net/IIpSecService$Stub;
.super Landroid/os/Binder;
.source "IIpSecService.java"

# interfaces
.implements Landroid/net/IIpSecService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/IIpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/IIpSecService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.IIpSecService"

.field static final TRANSACTION_applyTransportModeTransform:I = 0x7

.field static final TRANSACTION_closeUdpEncapsulationSocket:I = 0x4

.field static final TRANSACTION_createTransportModeTransform:I = 0x5

.field static final TRANSACTION_deleteTransportModeTransform:I = 0x6

.field static final TRANSACTION_openUdpEncapsulationSocket:I = 0x3

.field static final TRANSACTION_releaseSecurityParameterIndex:I = 0x2

.field static final TRANSACTION_removeTransportModeTransform:I = 0x8

.field static final TRANSACTION_reserveSecurityParameterIndex:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string/jumbo v0, "android.net.IIpSecService"

    invoke-virtual {p0, p0, v0}, Landroid/net/IIpSecService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/IIpSecService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 26
    if-nez p0, :cond_0

    .line 27
    return-object v1

    .line 29
    :cond_0
    const-string/jumbo v1, "android.net.IIpSecService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/IIpSecService;

    if-eqz v1, :cond_1

    .line 31
    check-cast v0, Landroid/net/IIpSecService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 33
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/IIpSecService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/IIpSecService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 12
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
    .line 41
    sparse-switch p1, :sswitch_data_0

    .line 171
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v11

    return v11

    .line 45
    :sswitch_0
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    const/4 v11, 0x1

    return v11

    .line 50
    :sswitch_1
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 54
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 56
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 58
    .local v6, "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    .line 59
    .local v7, "_arg3":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v5, v6, v7}, Landroid/net/IIpSecService$Stub;->reserveSecurityParameterIndex(ILjava/lang/String;ILandroid/os/IBinder;)Landroid/net/IpSecSpiResponse;

    move-result-object v8

    .line 60
    .local v8, "_result":Landroid/net/IpSecSpiResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    if-eqz v8, :cond_0

    .line 62
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v11, 0x1

    invoke-virtual {v8, p3, v11}, Landroid/net/IpSecSpiResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    :goto_0
    const/4 v11, 0x1

    return v11

    .line 66
    :cond_0
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 72
    .end local v0    # "_arg0":I
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":I
    .end local v7    # "_arg3":Landroid/os/IBinder;
    .end local v8    # "_result":Landroid/net/IpSecSpiResponse;
    :sswitch_2
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 75
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IIpSecService$Stub;->releaseSecurityParameterIndex(I)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    const/4 v11, 0x1

    return v11

    .line 81
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 85
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 86
    .local v4, "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v0, v4}, Landroid/net/IIpSecService$Stub;->openUdpEncapsulationSocket(ILandroid/os/IBinder;)Landroid/net/IpSecUdpEncapResponse;

    move-result-object v10

    .line 87
    .local v10, "_result":Landroid/net/IpSecUdpEncapResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    if-eqz v10, :cond_1

    .line 89
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    const/4 v11, 0x1

    invoke-virtual {v10, p3, v11}, Landroid/net/IpSecUdpEncapResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    :goto_1
    const/4 v11, 0x1

    return v11

    .line 93
    :cond_1
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 99
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v10    # "_result":Landroid/net/IpSecUdpEncapResponse;
    :sswitch_4
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 102
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IIpSecService$Stub;->closeUdpEncapsulationSocket(I)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    const/4 v11, 0x1

    return v11

    .line 108
    .end local v0    # "_arg0":I
    :sswitch_5
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_2

    .line 111
    sget-object v11, Landroid/net/IpSecConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/IpSecConfig;

    .line 117
    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 118
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    invoke-virtual {p0, v1, v4}, Landroid/net/IIpSecService$Stub;->createTransportModeTransform(Landroid/net/IpSecConfig;Landroid/os/IBinder;)Landroid/net/IpSecTransformResponse;

    move-result-object v9

    .line 119
    .local v9, "_result":Landroid/net/IpSecTransformResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    if-eqz v9, :cond_3

    .line 121
    const/4 v11, 0x1

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    const/4 v11, 0x1

    invoke-virtual {v9, p3, v11}, Landroid/net/IpSecTransformResponse;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    :goto_3
    const/4 v11, 0x1

    return v11

    .line 114
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_result":Landroid/net/IpSecTransformResponse;
    :cond_2
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/net/IpSecConfig;
    goto :goto_2

    .line 125
    .end local v1    # "_arg0":Landroid/net/IpSecConfig;
    .restart local v4    # "_arg1":Landroid/os/IBinder;
    .restart local v9    # "_result":Landroid/net/IpSecTransformResponse;
    :cond_3
    const/4 v11, 0x0

    invoke-virtual {p3, v11}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 131
    .end local v4    # "_arg1":Landroid/os/IBinder;
    .end local v9    # "_result":Landroid/net/IpSecTransformResponse;
    :sswitch_6
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/net/IIpSecService$Stub;->deleteTransportModeTransform(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    const/4 v11, 0x1

    return v11

    .line 140
    .end local v0    # "_arg0":I
    :sswitch_7
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_4

    .line 143
    sget-object v11, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 149
    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 150
    .local v3, "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/IIpSecService$Stub;->applyTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    const/4 v11, 0x1

    return v11

    .line 146
    .end local v3    # "_arg1":I
    :cond_4
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_4

    .line 156
    .end local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    :sswitch_8
    const-string/jumbo v11, "android.net.IIpSecService"

    invoke-virtual {p2, v11}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    if-eqz v11, :cond_5

    .line 159
    sget-object v11, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v11, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/ParcelFileDescriptor;

    .line 165
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 166
    .restart local v3    # "_arg1":I
    invoke-virtual {p0, v2, v3}, Landroid/net/IIpSecService$Stub;->removeTransportModeTransform(Landroid/os/ParcelFileDescriptor;I)V

    .line 167
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    const/4 v11, 0x1

    return v11

    .line 162
    .end local v3    # "_arg1":I
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/os/ParcelFileDescriptor;
    goto :goto_5

    .line 41
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
