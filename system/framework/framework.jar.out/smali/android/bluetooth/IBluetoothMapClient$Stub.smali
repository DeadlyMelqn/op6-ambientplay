.class public abstract Landroid/bluetooth/IBluetoothMapClient$Stub;
.super Landroid/os/Binder;
.source "IBluetoothMapClient.java"

# interfaces
.implements Landroid/bluetooth/IBluetoothMapClient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/IBluetoothMapClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.bluetooth.IBluetoothMapClient"

.field static final TRANSACTION_connect:I = 0x1

.field static final TRANSACTION_disconnect:I = 0x2

.field static final TRANSACTION_getConnectedDevices:I = 0x4

.field static final TRANSACTION_getConnectionState:I = 0x6

.field static final TRANSACTION_getDevicesMatchingConnectionStates:I = 0x5

.field static final TRANSACTION_getPriority:I = 0x8

.field static final TRANSACTION_getUnreadMessages:I = 0xa

.field static final TRANSACTION_isConnected:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_setPriority:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p0, p0, v0}, Landroid/bluetooth/IBluetoothMapClient$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothMapClient;
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
    const-string/jumbo v1, "android.bluetooth.IBluetoothMapClient"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/bluetooth/IBluetoothMapClient;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/bluetooth/IBluetoothMapClient;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/bluetooth/IBluetoothMapClient$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 11
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
    .line 43
    sparse-switch p1, :sswitch_data_0

    .line 209
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 47
    :sswitch_0
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v0, 0x1

    return v0

    .line 52
    :sswitch_1
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 60
    :goto_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 61
    .local v10, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    if-eqz v10, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    const/4 v0, 0x1

    return v0

    .line 58
    .end local v10    # "_result":Z
    :cond_0
    const/4 v1, 0x0

    .local v1, "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 62
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 67
    .end local v10    # "_result":Z
    :sswitch_2
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_2

    .line 70
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 75
    :goto_2
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 76
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    if-eqz v10, :cond_3

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    const/4 v0, 0x1

    return v0

    .line 73
    .end local v10    # "_result":Z
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_2

    .line 77
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_3

    .line 82
    .end local v10    # "_result":Z
    :sswitch_3
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_4

    .line 85
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 90
    :goto_4
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 91
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v10, :cond_5

    const/4 v0, 0x1

    :goto_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    const/4 v0, 0x1

    return v0

    .line 88
    .end local v10    # "_result":Z
    :cond_4
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_4

    .line 92
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_5

    .line 97
    .end local v10    # "_result":Z
    :sswitch_4
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getConnectedDevices()Ljava/util/List;

    move-result-object v9

    .line 99
    .local v9, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 101
    const/4 v0, 0x1

    return v0

    .line 105
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_5
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v6

    .line 108
    .local v6, "_arg0":[I
    invoke-virtual {p0, v6}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v9

    .line 109
    .restart local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, v9}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 111
    const/4 v0, 0x1

    return v0

    .line 115
    .end local v6    # "_arg0":[I
    .end local v9    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :sswitch_6
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_6

    .line 118
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 123
    :goto_6
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 124
    .local v8, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    const/4 v0, 0x1

    return v0

    .line 121
    .end local v8    # "_result":I
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_6

    .line 130
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_7
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_7

    .line 133
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 139
    :goto_7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 140
    .local v7, "_arg1":I
    invoke-virtual {p0, v1, v7}, Landroid/bluetooth/IBluetoothMapClient$Stub;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v10

    .line 141
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    if-eqz v10, :cond_8

    const/4 v0, 0x1

    :goto_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    const/4 v0, 0x1

    return v0

    .line 136
    .end local v7    # "_arg1":I
    .end local v10    # "_result":Z
    :cond_7
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_7

    .line 142
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v7    # "_arg1":I
    .restart local v10    # "_result":Z
    :cond_8
    const/4 v0, 0x0

    goto :goto_8

    .line 147
    .end local v7    # "_arg1":I
    .end local v10    # "_result":Z
    :sswitch_8
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_9

    .line 150
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 155
    :goto_9
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v8

    .line 156
    .restart local v8    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    const/4 v0, 0x1

    return v0

    .line 153
    .end local v8    # "_result":I
    :cond_9
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_9

    .line 162
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    :sswitch_9
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_a

    .line 165
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 171
    :goto_a
    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/net/Uri;

    .line 173
    .local v2, "_arg1":[Landroid/net/Uri;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 175
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_b

    .line 176
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 182
    :goto_b
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_c

    .line 183
    sget-object v0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/PendingIntent;

    :goto_c
    move-object v0, p0

    .line 188
    invoke-virtual/range {v0 .. v5}, Landroid/bluetooth/IBluetoothMapClient$Stub;->sendMessage(Landroid/bluetooth/BluetoothDevice;[Landroid/net/Uri;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)Z

    move-result v10

    .line 189
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v10, :cond_d

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/4 v0, 0x1

    return v0

    .line 168
    .end local v2    # "_arg1":[Landroid/net/Uri;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :cond_a
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_a

    .line 179
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v2    # "_arg1":[Landroid/net/Uri;
    .restart local v3    # "_arg2":Ljava/lang/String;
    :cond_b
    const/4 v4, 0x0

    .local v4, "_arg3":Landroid/app/PendingIntent;
    goto :goto_b

    .line 186
    .end local v4    # "_arg3":Landroid/app/PendingIntent;
    :cond_c
    const/4 v5, 0x0

    .local v5, "_arg4":Landroid/app/PendingIntent;
    goto :goto_c

    .line 190
    .end local v5    # "_arg4":Landroid/app/PendingIntent;
    .restart local v10    # "_result":Z
    :cond_d
    const/4 v0, 0x0

    goto :goto_d

    .line 195
    .end local v2    # "_arg1":[Landroid/net/Uri;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v10    # "_result":Z
    :sswitch_a
    const-string/jumbo v0, "android.bluetooth.IBluetoothMapClient"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_e

    .line 198
    sget-object v0, Landroid/bluetooth/BluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 203
    :goto_e
    invoke-virtual {p0, v1}, Landroid/bluetooth/IBluetoothMapClient$Stub;->getUnreadMessages(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v10

    .line 204
    .restart local v10    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v10, :cond_f

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    const/4 v0, 0x1

    return v0

    .line 201
    .end local v10    # "_result":Z
    :cond_e
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    goto :goto_e

    .line 205
    .end local v1    # "_arg0":Landroid/bluetooth/BluetoothDevice;
    .restart local v10    # "_result":Z
    :cond_f
    const/4 v0, 0x0

    goto :goto_f

    .line 43
    nop

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
