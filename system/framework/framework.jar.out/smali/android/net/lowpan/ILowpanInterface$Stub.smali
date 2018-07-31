.class public abstract Landroid/net/lowpan/ILowpanInterface$Stub;
.super Landroid/os/Binder;
.source "ILowpanInterface.java"

# interfaces
.implements Landroid/net/lowpan/ILowpanInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/lowpan/ILowpanInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.lowpan.ILowpanInterface"

.field static final TRANSACTION_addExternalRoute:I = 0x27

.field static final TRANSACTION_addListener:I = 0x1f

.field static final TRANSACTION_addOnMeshPrefix:I = 0x25

.field static final TRANSACTION_attach:I = 0x16

.field static final TRANSACTION_beginLowPower:I = 0x1c

.field static final TRANSACTION_closeCommissioningSession:I = 0x1a

.field static final TRANSACTION_form:I = 0x15

.field static final TRANSACTION_getDriverVersion:I = 0x3

.field static final TRANSACTION_getExtendedAddress:I = 0xf

.field static final TRANSACTION_getLinkAddresses:I = 0x12

.field static final TRANSACTION_getLinkNetworks:I = 0x13

.field static final TRANSACTION_getLowpanCredential:I = 0x11

.field static final TRANSACTION_getLowpanIdentity:I = 0x10

.field static final TRANSACTION_getMacAddress:I = 0x6

.field static final TRANSACTION_getName:I = 0x1

.field static final TRANSACTION_getNcpVersion:I = 0x2

.field static final TRANSACTION_getPartitionId:I = 0xe

.field static final TRANSACTION_getRole:I = 0xd

.field static final TRANSACTION_getState:I = 0xc

.field static final TRANSACTION_getSupportedChannels:I = 0x4

.field static final TRANSACTION_getSupportedNetworkTypes:I = 0x5

.field static final TRANSACTION_isCommissioned:I = 0xa

.field static final TRANSACTION_isConnected:I = 0xb

.field static final TRANSACTION_isEnabled:I = 0x7

.field static final TRANSACTION_isUp:I = 0x9

.field static final TRANSACTION_join:I = 0x14

.field static final TRANSACTION_leave:I = 0x17

.field static final TRANSACTION_onHostWake:I = 0x1e

.field static final TRANSACTION_pollForData:I = 0x1d

.field static final TRANSACTION_removeExternalRoute:I = 0x28

.field static final TRANSACTION_removeListener:I = 0x20

.field static final TRANSACTION_removeOnMeshPrefix:I = 0x26

.field static final TRANSACTION_reset:I = 0x18

.field static final TRANSACTION_sendToCommissioner:I = 0x1b

.field static final TRANSACTION_setEnabled:I = 0x8

.field static final TRANSACTION_startCommissioningSession:I = 0x19

.field static final TRANSACTION_startEnergyScan:I = 0x23

.field static final TRANSACTION_startNetScan:I = 0x21

.field static final TRANSACTION_stopEnergyScan:I = 0x24

.field static final TRANSACTION_stopNetScan:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.lowpan.ILowpanInterface"

    invoke-virtual {p0, p0, v0}, Landroid/net/lowpan/ILowpanInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterface;
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
    const-string/jumbo v1, "android.net.lowpan.ILowpanInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/lowpan/ILowpanInterface;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/lowpan/ILowpanInterface;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/lowpan/ILowpanInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 23
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

    .line 427
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v22

    return v22

    .line 43
    :sswitch_0
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p3

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/16 v22, 0x1

    return v22

    .line 48
    :sswitch_1
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getName()Ljava/lang/String;

    move-result-object v15

    .line 50
    .local v15, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 52
    const/16 v22, 0x1

    return v22

    .line 56
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_2
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getNcpVersion()Ljava/lang/String;

    move-result-object v15

    .line 58
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 59
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 60
    const/16 v22, 0x1

    return v22

    .line 64
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_3
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getDriverVersion()Ljava/lang/String;

    move-result-object v15

    .line 66
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 68
    const/16 v22, 0x1

    return v22

    .line 72
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_4
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v19

    .line 74
    .local v19, "_result":[Landroid/net/lowpan/LowpanChannelInfo;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 76
    const/16 v22, 0x1

    return v22

    .line 80
    .end local v19    # "_result":[Landroid/net/lowpan/LowpanChannelInfo;
    :sswitch_5
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getSupportedNetworkTypes()[Ljava/lang/String;

    move-result-object v20

    .line 82
    .local v20, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 83
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 84
    const/16 v22, 0x1

    return v22

    .line 88
    .end local v20    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getMacAddress()[B

    move-result-object v17

    .line 90
    .local v17, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 92
    const/16 v22, 0x1

    return v22

    .line 96
    .end local v17    # "_result":[B
    :sswitch_7
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isEnabled()Z

    move-result v16

    .line 98
    .local v16, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    if-eqz v16, :cond_0

    const/16 v22, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 100
    const/16 v22, 0x1

    return v22

    .line 99
    :cond_0
    const/16 v22, 0x0

    goto :goto_0

    .line 104
    .end local v16    # "_result":Z
    :sswitch_8
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_1

    const/4 v8, 0x1

    .line 107
    .local v8, "_arg0":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/net/lowpan/ILowpanInterface$Stub;->setEnabled(Z)V

    .line 108
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    const/16 v22, 0x1

    return v22

    .line 106
    .end local v8    # "_arg0":Z
    :cond_1
    const/4 v8, 0x0

    .restart local v8    # "_arg0":Z
    goto :goto_1

    .line 113
    .end local v8    # "_arg0":Z
    :sswitch_9
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isUp()Z

    move-result v16

    .line 115
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 116
    if-eqz v16, :cond_2

    const/16 v22, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    const/16 v22, 0x1

    return v22

    .line 116
    :cond_2
    const/16 v22, 0x0

    goto :goto_2

    .line 121
    .end local v16    # "_result":Z
    :sswitch_a
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isCommissioned()Z

    move-result v16

    .line 123
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    if-eqz v16, :cond_3

    const/16 v22, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/16 v22, 0x1

    return v22

    .line 124
    :cond_3
    const/16 v22, 0x0

    goto :goto_3

    .line 129
    .end local v16    # "_result":Z
    :sswitch_b
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->isConnected()Z

    move-result v16

    .line 131
    .restart local v16    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v16, :cond_4

    const/16 v22, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    const/16 v22, 0x1

    return v22

    .line 132
    :cond_4
    const/16 v22, 0x0

    goto :goto_4

    .line 137
    .end local v16    # "_result":Z
    :sswitch_c
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getState()Ljava/lang/String;

    move-result-object v15

    .line 139
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 141
    const/16 v22, 0x1

    return v22

    .line 145
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getRole()Ljava/lang/String;

    move-result-object v15

    .line 147
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    const/16 v22, 0x1

    return v22

    .line 153
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getPartitionId()Ljava/lang/String;

    move-result-object v15

    .line 155
    .restart local v15    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 157
    const/16 v22, 0x1

    return v22

    .line 161
    .end local v15    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getExtendedAddress()[B

    move-result-object v17

    .line 163
    .restart local v17    # "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    move-object/from16 v0, p3

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 165
    const/16 v22, 0x1

    return v22

    .line 169
    .end local v17    # "_result":[B
    :sswitch_10
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v14

    .line 171
    .local v14, "_result":Landroid/net/lowpan/LowpanIdentity;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 172
    if-eqz v14, :cond_5

    .line 173
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 174
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v14, v0, v1}, Landroid/net/lowpan/LowpanIdentity;->writeToParcel(Landroid/os/Parcel;I)V

    .line 179
    :goto_5
    const/16 v22, 0x1

    return v22

    .line 177
    :cond_5
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 183
    .end local v14    # "_result":Landroid/net/lowpan/LowpanIdentity;
    :sswitch_11
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    move-result-object v13

    .line 185
    .local v13, "_result":Landroid/net/lowpan/LowpanCredential;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    if-eqz v13, :cond_6

    .line 187
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/net/lowpan/LowpanCredential;->writeToParcel(Landroid/os/Parcel;I)V

    .line 193
    :goto_6
    const/16 v22, 0x1

    return v22

    .line 191
    :cond_6
    const/16 v22, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 197
    .end local v13    # "_result":Landroid/net/lowpan/LowpanCredential;
    :sswitch_12
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v20

    .line 199
    .restart local v20    # "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 201
    const/16 v22, 0x1

    return v22

    .line 205
    .end local v20    # "_result":[Ljava/lang/String;
    :sswitch_13
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getLinkNetworks()[Landroid/net/IpPrefix;

    move-result-object v18

    .line 207
    .local v18, "_result":[Landroid/net/IpPrefix;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    const/16 v22, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 209
    const/16 v22, 0x1

    return v22

    .line 213
    .end local v18    # "_result":[Landroid/net/IpPrefix;
    :sswitch_14
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_7

    .line 216
    sget-object v22, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/lowpan/LowpanProvision;

    .line 221
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/lowpan/ILowpanInterface$Stub;->join(Landroid/net/lowpan/LowpanProvision;)V

    .line 222
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 223
    const/16 v22, 0x1

    return v22

    .line 219
    :cond_7
    const/4 v6, 0x0

    .local v6, "_arg0":Landroid/net/lowpan/LowpanProvision;
    goto :goto_7

    .line 227
    .end local v6    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :sswitch_15
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_8

    .line 230
    sget-object v22, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/lowpan/LowpanProvision;

    .line 235
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/lowpan/ILowpanInterface$Stub;->form(Landroid/net/lowpan/LowpanProvision;)V

    .line 236
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 237
    const/16 v22, 0x1

    return v22

    .line 233
    :cond_8
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    goto :goto_8

    .line 241
    .end local v6    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :sswitch_16
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_9

    .line 244
    sget-object v22, Landroid/net/lowpan/LowpanProvision;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/lowpan/LowpanProvision;

    .line 249
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/net/lowpan/ILowpanInterface$Stub;->attach(Landroid/net/lowpan/LowpanProvision;)V

    .line 250
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 251
    const/16 v22, 0x1

    return v22

    .line 247
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    goto :goto_9

    .line 255
    .end local v6    # "_arg0":Landroid/net/lowpan/LowpanProvision;
    :sswitch_17
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->leave()V

    .line 257
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    const/16 v22, 0x1

    return v22

    .line 262
    :sswitch_18
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->reset()V

    .line 264
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    const/16 v22, 0x1

    return v22

    .line 269
    :sswitch_19
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_a

    .line 272
    sget-object v22, Landroid/net/lowpan/LowpanBeaconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/lowpan/LowpanBeaconInfo;

    .line 277
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/net/lowpan/ILowpanInterface$Stub;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    .line 278
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    const/16 v22, 0x1

    return v22

    .line 275
    :cond_a
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    goto :goto_a

    .line 283
    .end local v5    # "_arg0":Landroid/net/lowpan/LowpanBeaconInfo;
    :sswitch_1a
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->closeCommissioningSession()V

    .line 285
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    const/16 v22, 0x1

    return v22

    .line 290
    :sswitch_1b
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v9

    .line 293
    .local v9, "_arg0":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/net/lowpan/ILowpanInterface$Stub;->sendToCommissioner([B)V

    .line 294
    const/16 v22, 0x1

    return v22

    .line 298
    .end local v9    # "_arg0":[B
    :sswitch_1c
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->beginLowPower()V

    .line 300
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 301
    const/16 v22, 0x1

    return v22

    .line 305
    :sswitch_1d
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->pollForData()V

    .line 307
    const/16 v22, 0x1

    return v22

    .line 311
    :sswitch_1e
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->onHostWake()V

    .line 313
    const/16 v22, 0x1

    return v22

    .line 317
    :sswitch_1f
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v4

    .line 320
    .local v4, "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 321
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    const/16 v22, 0x1

    return v22

    .line 326
    .end local v4    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    :sswitch_20
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanInterfaceListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanInterfaceListener;

    move-result-object v4

    .line 329
    .restart local v4    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V

    .line 330
    const/16 v22, 0x1

    return v22

    .line 334
    .end local v4    # "_arg0":Landroid/net/lowpan/ILowpanInterfaceListener;
    :sswitch_21
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    .line 337
    .local v21, "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    .line 339
    .local v7, "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanNetScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanNetScanCallback;

    move-result-object v12

    .line 340
    .local v12, "_arg1":Landroid/net/lowpan/ILowpanNetScanCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v12}, Landroid/net/lowpan/ILowpanInterface$Stub;->startNetScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanNetScanCallback;)V

    .line 341
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    const/16 v22, 0x1

    return v22

    .line 346
    .end local v7    # "_arg0":Ljava/util/Map;
    .end local v12    # "_arg1":Landroid/net/lowpan/ILowpanNetScanCallback;
    .end local v21    # "cl":Ljava/lang/ClassLoader;
    :sswitch_22
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopNetScan()V

    .line 348
    const/16 v22, 0x1

    return v22

    .line 352
    :sswitch_23
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->getClass()Ljava/lang/Class;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v21

    .line 355
    .restart local v21    # "cl":Ljava/lang/ClassLoader;
    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v7

    .line 357
    .restart local v7    # "_arg0":Ljava/util/Map;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Landroid/net/lowpan/ILowpanEnergyScanCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/lowpan/ILowpanEnergyScanCallback;

    move-result-object v11

    .line 358
    .local v11, "_arg1":Landroid/net/lowpan/ILowpanEnergyScanCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v11}, Landroid/net/lowpan/ILowpanInterface$Stub;->startEnergyScan(Ljava/util/Map;Landroid/net/lowpan/ILowpanEnergyScanCallback;)V

    .line 359
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 360
    const/16 v22, 0x1

    return v22

    .line 364
    .end local v7    # "_arg0":Ljava/util/Map;
    .end local v11    # "_arg1":Landroid/net/lowpan/ILowpanEnergyScanCallback;
    .end local v21    # "cl":Ljava/lang/ClassLoader;
    :sswitch_24
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual/range {p0 .. p0}, Landroid/net/lowpan/ILowpanInterface$Stub;->stopEnergyScan()V

    .line 366
    const/16 v22, 0x1

    return v22

    .line 370
    :sswitch_25
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_b

    .line 373
    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    .line 379
    :goto_b
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 380
    .local v10, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/net/lowpan/ILowpanInterface$Stub;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/16 v22, 0x1

    return v22

    .line 376
    .end local v10    # "_arg1":I
    :cond_b
    const/4 v3, 0x0

    .local v3, "_arg0":Landroid/net/IpPrefix;
    goto :goto_b

    .line 386
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    :sswitch_26
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_c

    .line 389
    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    .line 394
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V

    .line 395
    const/16 v22, 0x1

    return v22

    .line 392
    :cond_c
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    goto :goto_c

    .line 399
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    :sswitch_27
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_d

    .line 402
    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    .line 408
    :goto_d
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 409
    .restart local v10    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Landroid/net/lowpan/ILowpanInterface$Stub;->addExternalRoute(Landroid/net/IpPrefix;I)V

    .line 410
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    const/16 v22, 0x1

    return v22

    .line 405
    .end local v10    # "_arg1":I
    :cond_d
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    goto :goto_d

    .line 415
    .end local v3    # "_arg0":Landroid/net/IpPrefix;
    :sswitch_28
    const-string/jumbo v22, "android.net.lowpan.ILowpanInterface"

    move-object/from16 v0, p2

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    if-eqz v22, :cond_e

    .line 418
    sget-object v22, Landroid/net/IpPrefix;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v22

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/IpPrefix;

    .line 423
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/net/lowpan/ILowpanInterface$Stub;->removeExternalRoute(Landroid/net/IpPrefix;)V

    .line 424
    const/16 v22, 0x1

    return v22

    .line 421
    :cond_e
    const/4 v3, 0x0

    .restart local v3    # "_arg0":Landroid/net/IpPrefix;
    goto :goto_e

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
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x1f -> :sswitch_1f
        0x20 -> :sswitch_20
        0x21 -> :sswitch_21
        0x22 -> :sswitch_22
        0x23 -> :sswitch_23
        0x24 -> :sswitch_24
        0x25 -> :sswitch_25
        0x26 -> :sswitch_26
        0x27 -> :sswitch_27
        0x28 -> :sswitch_28
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
