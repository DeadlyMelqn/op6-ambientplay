.class public abstract Landroid/net/wifi/aware/IWifiAwareManager$Stub;
.super Landroid/os/Binder;
.source "IWifiAwareManager.java"

# interfaces
.implements Landroid/net/wifi/aware/IWifiAwareManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/aware/IWifiAwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.wifi.aware.IWifiAwareManager"

.field static final TRANSACTION_connect:I = 0x3

.field static final TRANSACTION_disconnect:I = 0x4

.field static final TRANSACTION_getCharacteristics:I = 0x2

.field static final TRANSACTION_isUsageEnabled:I = 0x1

.field static final TRANSACTION_publish:I = 0x5

.field static final TRANSACTION_sendMessage:I = 0x9

.field static final TRANSACTION_startRanging:I = 0xb

.field static final TRANSACTION_subscribe:I = 0x6

.field static final TRANSACTION_terminateSession:I = 0xa

.field static final TRANSACTION_updatePublish:I = 0x7

.field static final TRANSACTION_updateSubscribe:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 20
    const-string/jumbo v0, "android.net.wifi.aware.IWifiAwareManager"

    invoke-virtual {p0, p0, v0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 21
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareManager;
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
    const-string/jumbo v1, "android.net.wifi.aware.IWifiAwareManager"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 32
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/wifi/aware/IWifiAwareManager;

    if-eqz v1, :cond_1

    .line 33
    check-cast v0, Landroid/net/wifi/aware/IWifiAwareManager;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 35
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 26
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

    .line 227
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    return v3

    .line 47
    :sswitch_0
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    const/4 v3, 0x1

    return v3

    .line 52
    :sswitch_1
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->isUsageEnabled()Z

    move-result v25

    .line 54
    .local v25, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    if-eqz v25, :cond_0

    const/4 v3, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    const/4 v3, 0x1

    return v3

    .line 55
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 60
    .end local v25    # "_result":Z
    :sswitch_2
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p0 .. p0}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->getCharacteristics()Landroid/net/wifi/aware/Characteristics;

    move-result-object v24

    .line 62
    .local v24, "_result":Landroid/net/wifi/aware/Characteristics;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v24, :cond_1

    .line 64
    const/4 v3, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v3, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/aware/Characteristics;->writeToParcel(Landroid/os/Parcel;I)V

    .line 70
    :goto_1
    const/4 v3, 0x1

    return v3

    .line 68
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 74
    .end local v24    # "_result":Landroid/net/wifi/aware/Characteristics;
    :sswitch_3
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    .line 78
    .local v4, "_arg0":Landroid/os/IBinder;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareEventCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareEventCallback;

    move-result-object v6

    .line 82
    .local v6, "_arg2":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    .line 83
    sget-object v3, Landroid/net/wifi/aware/ConfigRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/aware/ConfigRequest;

    .line 89
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v8, 0x1

    .local v8, "_arg4":Z
    :goto_3
    move-object/from16 v3, p0

    .line 90
    invoke-virtual/range {v3 .. v8}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->connect(Landroid/os/IBinder;Ljava/lang/String;Landroid/net/wifi/aware/IWifiAwareEventCallback;Landroid/net/wifi/aware/ConfigRequest;Z)V

    .line 91
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    const/4 v3, 0x1

    return v3

    .line 86
    .end local v8    # "_arg4":Z
    :cond_2
    const/4 v7, 0x0

    .local v7, "_arg3":Landroid/net/wifi/aware/ConfigRequest;
    goto :goto_2

    .line 89
    .end local v7    # "_arg3":Landroid/net/wifi/aware/ConfigRequest;
    :cond_3
    const/4 v8, 0x0

    .restart local v8    # "_arg4":Z
    goto :goto_3

    .line 96
    .end local v4    # "_arg0":Landroid/os/IBinder;
    .end local v5    # "_arg1":Ljava/lang/String;
    .end local v6    # "_arg2":Landroid/net/wifi/aware/IWifiAwareEventCallback;
    .end local v8    # "_arg4":Z
    :sswitch_4
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 100
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v18

    .line 101
    .local v18, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->disconnect(ILandroid/os/IBinder;)V

    .line 102
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 103
    const/4 v3, 0x1

    return v3

    .line 107
    .end local v10    # "_arg0":I
    .end local v18    # "_arg1":Landroid/os/IBinder;
    :sswitch_5
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 111
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_4

    .line 112
    sget-object v3, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/wifi/aware/PublishConfig;

    .line 118
    :goto_4
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v20

    .line 119
    .local v20, "_arg2":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->publish(ILandroid/net/wifi/aware/PublishConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    .line 120
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    const/4 v3, 0x1

    return v3

    .line 115
    .end local v20    # "_arg2":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    :cond_4
    const/16 v16, 0x0

    .local v16, "_arg1":Landroid/net/wifi/aware/PublishConfig;
    goto :goto_4

    .line 125
    .end local v10    # "_arg0":I
    .end local v16    # "_arg1":Landroid/net/wifi/aware/PublishConfig;
    :sswitch_6
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 129
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5

    .line 130
    sget-object v3, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/net/wifi/aware/SubscribeConfig;

    .line 136
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;

    move-result-object v20

    .line 137
    .restart local v20    # "_arg2":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    invoke-virtual {v0, v10, v1, v2}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->subscribe(ILandroid/net/wifi/aware/SubscribeConfig;Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;)V

    .line 138
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    const/4 v3, 0x1

    return v3

    .line 133
    .end local v20    # "_arg2":Landroid/net/wifi/aware/IWifiAwareDiscoverySessionCallback;
    :cond_5
    const/16 v17, 0x0

    .local v17, "_arg1":Landroid/net/wifi/aware/SubscribeConfig;
    goto :goto_5

    .line 143
    .end local v10    # "_arg0":I
    .end local v17    # "_arg1":Landroid/net/wifi/aware/SubscribeConfig;
    :sswitch_7
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 147
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 149
    .local v11, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_6

    .line 150
    sget-object v3, Landroid/net/wifi/aware/PublishConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/net/wifi/aware/PublishConfig;

    .line 155
    :goto_6
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v10, v11, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updatePublish(IILandroid/net/wifi/aware/PublishConfig;)V

    .line 156
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 157
    const/4 v3, 0x1

    return v3

    .line 153
    :cond_6
    const/16 v21, 0x0

    .local v21, "_arg2":Landroid/net/wifi/aware/PublishConfig;
    goto :goto_6

    .line 161
    .end local v10    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v21    # "_arg2":Landroid/net/wifi/aware/PublishConfig;
    :sswitch_8
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 165
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 167
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_7

    .line 168
    sget-object v3, Landroid/net/wifi/aware/SubscribeConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/net/wifi/aware/SubscribeConfig;

    .line 173
    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v10, v11, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->updateSubscribe(IILandroid/net/wifi/aware/SubscribeConfig;)V

    .line 174
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    const/4 v3, 0x1

    return v3

    .line 171
    :cond_7
    const/16 v22, 0x0

    .local v22, "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    goto :goto_7

    .line 179
    .end local v10    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v22    # "_arg2":Landroid/net/wifi/aware/SubscribeConfig;
    :sswitch_9
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 183
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 185
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 187
    .local v12, "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v13

    .line 189
    .local v13, "_arg3":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 191
    .local v14, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .local v15, "_arg5":I
    move-object/from16 v9, p0

    .line 192
    invoke-virtual/range {v9 .. v15}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->sendMessage(III[BII)V

    .line 193
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 194
    const/4 v3, 0x1

    return v3

    .line 198
    .end local v10    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v12    # "_arg2":I
    .end local v13    # "_arg3":[B
    .end local v14    # "_arg4":I
    .end local v15    # "_arg5":I
    :sswitch_a
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 202
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 203
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->terminateSession(II)V

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    const/4 v3, 0x1

    return v3

    .line 209
    .end local v10    # "_arg0":I
    .end local v11    # "_arg1":I
    :sswitch_b
    const-string/jumbo v3, "android.net.wifi.aware.IWifiAwareManager"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 213
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 215
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_8

    .line 216
    sget-object v3, Landroid/net/wifi/RttManager$ParcelableRttParams;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v3, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/net/wifi/RttManager$ParcelableRttParams;

    .line 221
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v10, v11, v1}, Landroid/net/wifi/aware/IWifiAwareManager$Stub;->startRanging(IILandroid/net/wifi/RttManager$ParcelableRttParams;)I

    move-result v23

    .line 222
    .local v23, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    move-object/from16 v0, p3

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    const/4 v3, 0x1

    return v3

    .line 219
    .end local v23    # "_result":I
    :cond_8
    const/16 v19, 0x0

    .local v19, "_arg2":Landroid/net/wifi/RttManager$ParcelableRttParams;
    goto :goto_8

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
        0xb -> :sswitch_b
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
