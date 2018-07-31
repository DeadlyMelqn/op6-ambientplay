.class public abstract Landroid/bluetooth/IBluetoothInputHost$Stub;
.super Landroid/os/Binder;
.source "IBluetoothInputHost.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothInputHost;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothInputHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothInputHost$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothInputHost"

.field static final TRANSACTION_connect:I = 0x7

.field static final TRANSACTION_disconnect:I = 0x8

.field static final TRANSACTION_getConnectedDevices:I = 0x9

.field static final TRANSACTION_getConnectionState:I = 0xb

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0xa

.field static final TRANSACTION_registerApp:I = 0x1

.field static final TRANSACTION_replyReport:I = 0x4

.field static final TRANSACTION_reportError:I = 0x5

.field static final TRANSACTION_sendReport:I = 0x3

.field static final TRANSACTION_unplug:I = 0x6

.field static final TRANSACTION_unregisterApp:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.bluetooth.IBluetoothInputHost"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothInputHost$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothInputHost;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 24
    if-nez p0, :cond_0

    .line 25
    return-object v1

    .line 27
    :cond_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothInputHost;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/bluetooth/IBluetoothInputHost;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothInputHost$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothInputHost$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 17
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
    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 235
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 43
    :sswitch_0
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v1, 0x1

    return v1

    .line 48
    :sswitch_1
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 57
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 58
    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;

    .line 64
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    .line 65
    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 71
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_3

    .line 72
    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;

    .line 78
    :goto_3
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/bluetooth/IBluetoothHidDeviceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothHidDeviceCallback;

    move-result-object v6

    .local v6, "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    move-object/from16 v1, p0

    .line 79
    invoke-virtual/range {v1 .. v6}, Landroid/bluetooth/IBluetoothInputHost$Stub;->registerApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;Landroid/bluetooth/IBluetoothHidDeviceCallback;)Z

    move-result v16

    .line 80
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    if-eqz v16, :cond_4

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/4 v1, 0x1

    return v1

    .line 54
    .end local v6    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v16    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    .local v2, "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    goto :goto_0

    .line 61
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    :cond_1
    const/4 v3, 0x0

    .local v3, "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    goto :goto_1

    .line 68
    .end local v3    # "_arg1":Landroid/bluetooth/BluetoothHidDeviceAppSdpSettings;
    :cond_2
    const/4 v4, 0x0

    .local v4, "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    goto :goto_2

    .line 75
    .end local v4    # "_arg2":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    :cond_3
    const/4 v5, 0x0

    .local v5, "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    goto :goto_3

    .line 81
    .end local v5    # "_arg3":Landroid/bluetooth/BluetoothHidDeviceAppQosSettings;
    .restart local v6    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .restart local v16    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_4

    .line 86
    .end local v6    # "_arg4":Landroid/bluetooth/IBluetoothHidDeviceCallback;
    .end local v16    # "_result":Z
    :sswitch_2
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_5

    .line 89
    sget-object v1, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;

    .line 94
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/bluetooth/IBluetoothInputHost$Stub;->unregisterApp(Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;)Z

    move-result v16

    .line 95
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    if-eqz v16, :cond_6

    const/4 v1, 0x1

    :goto_6
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    const/4 v1, 0x1

    return v1

    .line 92
    .end local v16    # "_result":Z
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    goto :goto_5

    .line 96
    .end local v2    # "_arg0":Landroid/bluetooth/BluetoothHidDeviceAppConfiguration;
    .restart local v16    # "_result":Z
    :cond_6
    const/4 v1, 0x0

    goto :goto_6

    .line 101
    .end local v16    # "_result":Z
    :sswitch_3
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_7

    .line 104
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 110
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 112
    .local v10, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v12

    .line 113
    .local v12, "_arg2":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10, v12}, Landroid/bluetooth/IBluetoothInputHost$Stub;->sendReport(Landroid/bluetooth/BluetoothDevice;I[B)Z

    move-result v16

    .line 114
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v16, :cond_8

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    const/4 v1, 0x1

    return v1

    .line 107
    .end local v10    # "_arg1":I
    .end local v12    # "_arg2":[B
    .end local v16    # "_result":Z
    :cond_7
    const/4 v7, 0x0

    .local v7, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 115
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_arg1":I
    .restart local v12    # "_arg2":[B
    .restart local v16    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    goto :goto_8

    .line 120
    .end local v10    # "_arg1":I
    .end local v12    # "_arg2":[B
    .end local v16    # "_result":Z
    :sswitch_4
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_9

    .line 123
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 129
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .line 131
    .local v9, "_arg1":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v11

    .line 133
    .local v11, "_arg2":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 134
    .local v13, "_arg3":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9, v11, v13}, Landroid/bluetooth/IBluetoothInputHost$Stub;->replyReport(Landroid/bluetooth/BluetoothDevice;BB[B)Z

    move-result v16

    .line 135
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    if-eqz v16, :cond_a

    const/4 v1, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    const/4 v1, 0x1

    return v1

    .line 126
    .end local v9    # "_arg1":B
    .end local v11    # "_arg2":B
    .end local v13    # "_arg3":[B
    .end local v16    # "_result":Z
    :cond_9
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 136
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_arg1":B
    .restart local v11    # "_arg2":B
    .restart local v13    # "_arg3":[B
    .restart local v16    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    goto :goto_a

    .line 141
    .end local v9    # "_arg1":B
    .end local v11    # "_arg2":B
    .end local v13    # "_arg3":[B
    .end local v16    # "_result":Z
    :sswitch_5
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_b

    .line 144
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 150
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v9

    .line 151
    .restart local v9    # "_arg1":B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v9}, Landroid/bluetooth/IBluetoothInputHost$Stub;->reportError(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v16

    .line 152
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    if-eqz v16, :cond_c

    const/4 v1, 0x1

    :goto_c
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    const/4 v1, 0x1

    return v1

    .line 147
    .end local v9    # "_arg1":B
    .end local v16    # "_result":Z
    :cond_b
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_b

    .line 153
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v9    # "_arg1":B
    .restart local v16    # "_result":Z
    :cond_c
    const/4 v1, 0x0

    goto :goto_c

    .line 158
    .end local v9    # "_arg1":B
    .end local v16    # "_result":Z
    :sswitch_6
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_d

    .line 161
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 166
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->unplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 167
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 168
    if-eqz v16, :cond_e

    const/4 v1, 0x1

    :goto_e
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 169
    const/4 v1, 0x1

    return v1

    .line 164
    .end local v16    # "_result":Z
    :cond_d
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_d

    .line 168
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    goto :goto_e

    .line 173
    .end local v16    # "_result":Z
    :sswitch_7
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_f

    .line 176
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 181
    :goto_f
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 182
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    if-eqz v16, :cond_10

    const/4 v1, 0x1

    :goto_10
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    const/4 v1, 0x1

    return v1

    .line 179
    .end local v16    # "_result":Z
    :cond_f
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_f

    .line 183
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_10
    const/4 v1, 0x0

    goto :goto_10

    .line 188
    .end local v16    # "_result":Z
    :sswitch_8
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_11

    .line 191
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 196
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v16

    .line 197
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 198
    if-eqz v16, :cond_12

    const/4 v1, 0x1

    :goto_12
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    const/4 v1, 0x1

    return v1

    .line 194
    .end local v16    # "_result":Z
    :cond_11
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_11

    .line 198
    .end local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v16    # "_result":Z
    :cond_12
    const/4 v1, 0x0

    goto :goto_12

    .line 203
    .end local v16    # "_result":Z
    :sswitch_9
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p0 .. p0}, Landroid/bluetooth/IBluetoothInputHost$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v15

    .line 205
    .local v15, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 207
    const/4 v1, 0x1

    return v1

    .line 211
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_a
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 214
    .local v8, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/bluetooth/IBluetoothInputHost$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v15

    .line 215
    .restart local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 217
    const/4 v1, 0x1

    return v1

    .line 221
    .end local v8    # "_arg0":[I
    .end local v15    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_b
    const-string/jumbo v1, "android.bluetooth.IBluetoothInputHost"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_13

    .line 224
    sget-object v1, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/bluetooth/BluetoothDevice;

    .line 229
    :goto_13
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/bluetooth/IBluetoothInputHost$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v14

    .line 230
    .local v14, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 231
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    const/4 v1, 0x1

    return v1

    .line 227
    .end local v14    # "_result":I
    :cond_13
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_13

    .line 39
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
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
