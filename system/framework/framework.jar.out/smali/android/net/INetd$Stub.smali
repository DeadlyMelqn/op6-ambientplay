.class public abstract Landroid/net/INetd$Stub;
.super Landroid/os/Binder;
.source "INetd.java"

# interfaces
.implements Landroid/net/INetd;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetd$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetd"

.field static final TRANSACTION_addPrivateDnsServer:I = 0x8

.field static final TRANSACTION_bandwidthEnableDataSaver:I = 0x3

.field static final TRANSACTION_firewallReplaceUidChain:I = 0x2

.field static final TRANSACTION_getMetricsReportingLevel:I = 0xe

.field static final TRANSACTION_getResolverInfo:I = 0x7

.field static final TRANSACTION_interfaceAddAddress:I = 0xb

.field static final TRANSACTION_interfaceDelAddress:I = 0xc

.field static final TRANSACTION_ipSecAddSecurityAssociation:I = 0x11

.field static final TRANSACTION_ipSecAllocateSpi:I = 0x10

.field static final TRANSACTION_ipSecApplyTransportModeTransform:I = 0x13

.field static final TRANSACTION_ipSecDeleteSecurityAssociation:I = 0x12

.field static final TRANSACTION_ipSecRemoveTransportModeTransform:I = 0x14

.field static final TRANSACTION_isAlive:I = 0x1

.field static final TRANSACTION_networkRejectNonSecureVpn:I = 0x4

.field static final TRANSACTION_removePrivateDnsServer:I = 0x9

.field static final TRANSACTION_setIPv6AddrGenMode:I = 0x17

.field static final TRANSACTION_setMetricsReportingLevel:I = 0xf

.field static final TRANSACTION_setProcSysNet:I = 0xd

.field static final TRANSACTION_setResolverConfiguration:I = 0x6

.field static final TRANSACTION_socketDestroy:I = 0x5

.field static final TRANSACTION_tetherApplyDnsInterfaces:I = 0xa

.field static final TRANSACTION_wakeupAddInterface:I = 0x15

.field static final TRANSACTION_wakeupDelInterface:I = 0x16


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.INetd"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetd$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetd;
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
    const-string/jumbo v1, "android.net.INetd"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetd;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/INetd;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetd$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetd$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 65
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

    .line 396
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 43
    :sswitch_0
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v6, 0x1

    return v6

    .line 48
    :sswitch_1
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->isAlive()Z

    move-result v64

    .line 50
    .local v64, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v64, :cond_0

    const/4 v6, 0x1

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    const/4 v6, 0x1

    return v6

    .line 51
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 56
    .end local v64    # "_result":Z
    :sswitch_2
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 60
    .local v49, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/16 v53, 0x1

    .line 62
    .local v53, "_arg1":Z
    :goto_1
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v57

    .line 63
    .local v57, "_arg2":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move/from16 v2, v53

    move-object/from16 v3, v57

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->firewallReplaceUidChain(Ljava/lang/String;Z[I)Z

    move-result v64

    .line 64
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v64, :cond_2

    const/4 v6, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 66
    const/4 v6, 0x1

    return v6

    .line 60
    .end local v53    # "_arg1":Z
    .end local v57    # "_arg2":[I
    .end local v64    # "_result":Z
    :cond_1
    const/16 v53, 0x0

    .restart local v53    # "_arg1":Z
    goto :goto_1

    .line 65
    .restart local v57    # "_arg2":[I
    .restart local v64    # "_result":Z
    :cond_2
    const/4 v6, 0x0

    goto :goto_2

    .line 70
    .end local v49    # "_arg0":Ljava/lang/String;
    .end local v53    # "_arg1":Z
    .end local v57    # "_arg2":[I
    .end local v64    # "_result":Z
    :sswitch_3
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    const/16 v50, 0x1

    .line 73
    .local v50, "_arg0":Z
    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->bandwidthEnableDataSaver(Z)Z

    move-result v64

    .line 74
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    if-eqz v64, :cond_4

    const/4 v6, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    const/4 v6, 0x1

    return v6

    .line 72
    .end local v50    # "_arg0":Z
    .end local v64    # "_result":Z
    :cond_3
    const/16 v50, 0x0

    .restart local v50    # "_arg0":Z
    goto :goto_3

    .line 75
    .restart local v64    # "_result":Z
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 80
    .end local v50    # "_arg0":Z
    .end local v64    # "_result":Z
    :sswitch_4
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5

    const/16 v50, 0x1

    .line 84
    .restart local v50    # "_arg0":Z
    :goto_5
    sget-object v6, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v55

    check-cast v55, [Landroid/net/UidRange;

    .line 85
    .local v55, "_arg1":[Landroid/net/UidRange;
    move-object/from16 v0, p0

    move/from16 v1, v50

    move-object/from16 v2, v55

    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->networkRejectNonSecureVpn(Z[Landroid/net/UidRange;)V

    .line 86
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    const/4 v6, 0x1

    return v6

    .line 82
    .end local v50    # "_arg0":Z
    .end local v55    # "_arg1":[Landroid/net/UidRange;
    :cond_5
    const/16 v50, 0x0

    .restart local v50    # "_arg0":Z
    goto :goto_5

    .line 91
    .end local v50    # "_arg0":Z
    :sswitch_5
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    sget-object v6, Landroid/net/UidRange;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v51

    check-cast v51, [Landroid/net/UidRange;

    .line 95
    .local v51, "_arg0":[Landroid/net/UidRange;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v54

    .line 96
    .local v54, "_arg1":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v51

    move-object/from16 v2, v54

    invoke-virtual {v0, v1, v2}, Landroid/net/INetd$Stub;->socketDestroy([Landroid/net/UidRange;[I)V

    .line 97
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    const/4 v6, 0x1

    return v6

    .line 102
    .end local v51    # "_arg0":[Landroid/net/UidRange;
    .end local v54    # "_arg1":[I
    :sswitch_6
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 106
    .local v7, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v8

    .line 108
    .local v8, "_arg1":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v9

    .line 110
    .local v9, "_arg2":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v10

    .line 111
    .local v10, "_arg3":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/net/INetd$Stub;->setResolverConfiguration(I[Ljava/lang/String;[Ljava/lang/String;[I)V

    .line 112
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    const/4 v6, 0x1

    return v6

    .line 117
    .end local v7    # "_arg0":I
    .end local v8    # "_arg1":[Ljava/lang/String;
    .end local v9    # "_arg2":[Ljava/lang/String;
    .end local v10    # "_arg3":[I
    :sswitch_7
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 121
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v56

    .line 122
    .local v56, "_arg1_length":I
    if-gez v56, :cond_6

    .line 123
    const/4 v8, 0x0

    .line 129
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v58

    .line 130
    .local v58, "_arg2_length":I
    if-gez v58, :cond_7

    .line 131
    const/4 v9, 0x0

    .line 137
    :goto_7
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v61

    .line 138
    .local v61, "_arg3_length":I
    if-gez v61, :cond_8

    .line 139
    const/4 v10, 0x0

    .line 145
    :goto_8
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v62

    .line 146
    .local v62, "_arg4_length":I
    if-gez v62, :cond_9

    .line 147
    const/4 v11, 0x0

    :goto_9
    move-object/from16 v6, p0

    .line 152
    invoke-virtual/range {v6 .. v11}, Landroid/net/INetd$Stub;->getResolverInfo(I[Ljava/lang/String;[Ljava/lang/String;[I[I)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 155
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 156
    move-object/from16 v0, p3

    invoke-virtual {v0, v10}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 157
    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 158
    const/4 v6, 0x1

    return v6

    .line 126
    .end local v58    # "_arg2_length":I
    .end local v61    # "_arg3_length":I
    .end local v62    # "_arg4_length":I
    :cond_6
    move/from16 v0, v56

    new-array v8, v0, [Ljava/lang/String;

    .restart local v8    # "_arg1":[Ljava/lang/String;
    goto :goto_6

    .line 134
    .end local v8    # "_arg1":[Ljava/lang/String;
    .restart local v58    # "_arg2_length":I
    :cond_7
    move/from16 v0, v58

    new-array v9, v0, [Ljava/lang/String;

    .restart local v9    # "_arg2":[Ljava/lang/String;
    goto :goto_7

    .line 142
    .end local v9    # "_arg2":[Ljava/lang/String;
    .restart local v61    # "_arg3_length":I
    :cond_8
    move/from16 v0, v61

    new-array v10, v0, [I

    .restart local v10    # "_arg3":[I
    goto :goto_8

    .line 150
    .end local v10    # "_arg3":[I
    .restart local v62    # "_arg4_length":I
    :cond_9
    move/from16 v0, v62

    new-array v11, v0, [I

    .local v11, "_arg4":[I
    goto :goto_9

    .line 162
    .end local v7    # "_arg0":I
    .end local v11    # "_arg4":[I
    .end local v56    # "_arg1_length":I
    .end local v58    # "_arg2_length":I
    .end local v61    # "_arg3_length":I
    .end local v62    # "_arg4_length":I
    :sswitch_8
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 166
    .restart local v49    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 168
    .local v14, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 170
    .local v15, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v60

    .line 171
    .local v60, "_arg3":[Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v60

    invoke-virtual {v0, v1, v14, v15, v2}, Landroid/net/INetd$Stub;->addPrivateDnsServer(Ljava/lang/String;ILjava/lang/String;[Ljava/lang/String;)V

    .line 172
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    const/4 v6, 0x1

    return v6

    .line 177
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v49    # "_arg0":Ljava/lang/String;
    .end local v60    # "_arg3":[Ljava/lang/String;
    :sswitch_9
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 180
    .restart local v49    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->removePrivateDnsServer(Ljava/lang/String;)V

    .line 181
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    const/4 v6, 0x1

    return v6

    .line 186
    .end local v49    # "_arg0":Ljava/lang/String;
    :sswitch_a
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->tetherApplyDnsInterfaces()Z

    move-result v64

    .line 188
    .restart local v64    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    if-eqz v64, :cond_a

    const/4 v6, 0x1

    :goto_a
    move-object/from16 v0, p3

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    const/4 v6, 0x1

    return v6

    .line 189
    :cond_a
    const/4 v6, 0x0

    goto :goto_a

    .line 194
    .end local v64    # "_result":Z
    :sswitch_b
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 198
    .restart local v49    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 200
    .local v52, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 201
    .local v27, "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v52

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->interfaceAddAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    const/4 v6, 0x1

    return v6

    .line 207
    .end local v27    # "_arg2":I
    .end local v49    # "_arg0":Ljava/lang/String;
    .end local v52    # "_arg1":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 211
    .restart local v49    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 213
    .restart local v52    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 214
    .restart local v27    # "_arg2":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v52

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/INetd$Stub;->interfaceDelAddress(Ljava/lang/String;Ljava/lang/String;I)V

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 216
    const/4 v6, 0x1

    return v6

    .line 220
    .end local v27    # "_arg2":I
    .end local v49    # "_arg0":Ljava/lang/String;
    .end local v52    # "_arg1":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 224
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 226
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 228
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 230
    .local v16, "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .local v17, "_arg4":Ljava/lang/String;
    move-object/from16 v12, p0

    move v13, v7

    .line 231
    invoke-virtual/range {v12 .. v17}, Landroid/net/INetd$Stub;->setProcSysNet(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    const/4 v6, 0x1

    return v6

    .line 237
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    :sswitch_e
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetd$Stub;->getMetricsReportingLevel()I

    move-result v63

    .line 239
    .local v63, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    const/4 v6, 0x1

    return v6

    .line 245
    .end local v63    # "_result":I
    :sswitch_f
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 248
    .restart local v7    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/net/INetd$Stub;->setMetricsReportingLevel(I)V

    .line 249
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    const/4 v6, 0x1

    return v6

    .line 254
    .end local v7    # "_arg0":I
    :sswitch_10
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 258
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 260
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 262
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 264
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .local v23, "_arg4":I
    move-object/from16 v18, p0

    move/from16 v19, v7

    move/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    .line 265
    invoke-virtual/range {v18 .. v23}, Landroid/net/INetd$Stub;->ipSecAllocateSpi(IILjava/lang/String;Ljava/lang/String;I)I

    move-result v63

    .line 266
    .restart local v63    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 267
    move-object/from16 v0, p3

    move/from16 v1, v63

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    const/4 v6, 0x1

    return v6

    .line 272
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v23    # "_arg4":I
    .end local v63    # "_result":I
    :sswitch_11
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 276
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 278
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 280
    .restart local v27    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 282
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 284
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v30

    .line 286
    .local v30, "_arg5":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v32

    .line 288
    .local v32, "_arg6":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v33

    .line 290
    .local v33, "_arg7":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v34

    .line 292
    .local v34, "_arg8":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v35

    .line 294
    .local v35, "_arg9":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v36

    .line 296
    .local v36, "_arg10":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v37

    .line 298
    .local v37, "_arg11":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v38

    .line 300
    .local v38, "_arg12":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v39

    .line 302
    .local v39, "_arg13":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v40

    .line 304
    .local v40, "_arg14":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v41

    .local v41, "_arg15":I
    move-object/from16 v24, p0

    move/from16 v25, v7

    move/from16 v26, v14

    move-object/from16 v28, v16

    move-object/from16 v29, v17

    .line 305
    invoke-virtual/range {v24 .. v41}, Landroid/net/INetd$Stub;->ipSecAddSecurityAssociation(IIILjava/lang/String;Ljava/lang/String;JILjava/lang/String;[BILjava/lang/String;[BIIII)V

    .line 306
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    const/4 v6, 0x1

    return v6

    .line 311
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v27    # "_arg2":I
    .end local v30    # "_arg5":J
    .end local v32    # "_arg6":I
    .end local v33    # "_arg7":Ljava/lang/String;
    .end local v34    # "_arg8":[B
    .end local v35    # "_arg9":I
    .end local v36    # "_arg10":Ljava/lang/String;
    .end local v37    # "_arg11":[B
    .end local v38    # "_arg12":I
    .end local v39    # "_arg13":I
    .end local v40    # "_arg14":I
    .end local v41    # "_arg15":I
    :sswitch_12
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    .line 315
    .restart local v7    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 317
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 319
    .restart local v15    # "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 321
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v23

    .restart local v23    # "_arg4":I
    move-object/from16 v18, p0

    move/from16 v19, v7

    move/from16 v20, v14

    move-object/from16 v21, v15

    move-object/from16 v22, v16

    .line 322
    invoke-virtual/range {v18 .. v23}, Landroid/net/INetd$Stub;->ipSecDeleteSecurityAssociation(IILjava/lang/String;Ljava/lang/String;I)V

    .line 323
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    const/4 v6, 0x1

    return v6

    .line 328
    .end local v7    # "_arg0":I
    .end local v14    # "_arg1":I
    .end local v15    # "_arg2":Ljava/lang/String;
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v23    # "_arg4":I
    :sswitch_13
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v43

    .line 332
    .local v43, "_arg0":Ljava/io/FileDescriptor;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 334
    .restart local v14    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 336
    .restart local v27    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 338
    .restart local v16    # "_arg3":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 340
    .restart local v17    # "_arg4":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v48

    .local v48, "_arg5":I
    move-object/from16 v42, p0

    move/from16 v44, v14

    move/from16 v45, v27

    move-object/from16 v46, v16

    move-object/from16 v47, v17

    .line 341
    invoke-virtual/range {v42 .. v48}, Landroid/net/INetd$Stub;->ipSecApplyTransportModeTransform(Ljava/io/FileDescriptor;IILjava/lang/String;Ljava/lang/String;I)V

    .line 342
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    const/4 v6, 0x1

    return v6

    .line 347
    .end local v14    # "_arg1":I
    .end local v16    # "_arg3":Ljava/lang/String;
    .end local v17    # "_arg4":Ljava/lang/String;
    .end local v27    # "_arg2":I
    .end local v43    # "_arg0":Ljava/io/FileDescriptor;
    .end local v48    # "_arg5":I
    :sswitch_14
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readRawFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v43

    .line 350
    .restart local v43    # "_arg0":Ljava/io/FileDescriptor;
    move-object/from16 v0, p0

    move-object/from16 v1, v43

    invoke-virtual {v0, v1}, Landroid/net/INetd$Stub;->ipSecRemoveTransportModeTransform(Ljava/io/FileDescriptor;)V

    .line 351
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 352
    const/4 v6, 0x1

    return v6

    .line 356
    .end local v43    # "_arg0":Ljava/io/FileDescriptor;
    :sswitch_15
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 358
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 360
    .restart local v49    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 362
    .restart local v52    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 364
    .restart local v27    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 365
    .local v59, "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v52

    move/from16 v3, v27

    move/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/INetd$Stub;->wakeupAddInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 366
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    const/4 v6, 0x1

    return v6

    .line 371
    .end local v27    # "_arg2":I
    .end local v49    # "_arg0":Ljava/lang/String;
    .end local v52    # "_arg1":Ljava/lang/String;
    .end local v59    # "_arg3":I
    :sswitch_16
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 375
    .restart local v49    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v52

    .line 377
    .restart local v52    # "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v27

    .line 379
    .restart local v27    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v59

    .line 380
    .restart local v59    # "_arg3":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    move-object/from16 v2, v52

    move/from16 v3, v27

    move/from16 v4, v59

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/net/INetd$Stub;->wakeupDelInterface(Ljava/lang/String;Ljava/lang/String;II)V

    .line 381
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 382
    const/4 v6, 0x1

    return v6

    .line 386
    .end local v27    # "_arg2":I
    .end local v49    # "_arg0":Ljava/lang/String;
    .end local v52    # "_arg1":Ljava/lang/String;
    .end local v59    # "_arg3":I
    :sswitch_17
    const-string/jumbo v6, "android.net.INetd"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v49

    .line 390
    .restart local v49    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 391
    .restart local v14    # "_arg1":I
    move-object/from16 v0, p0

    move-object/from16 v1, v49

    invoke-virtual {v0, v1, v14}, Landroid/net/INetd$Stub;->setIPv6AddrGenMode(Ljava/lang/String;I)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    const/4 v6, 0x1

    return v6

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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
