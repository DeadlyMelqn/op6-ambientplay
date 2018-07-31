.class public abstract Landroid/net/INetworkStatsService$Stub;
.super Landroid/os/Binder;
.source "INetworkStatsService.java"

# interfaces
.implements Landroid/net/INetworkStatsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/INetworkStatsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/INetworkStatsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.net.INetworkStatsService"

.field static final TRANSACTION_advisePersistThreshold:I = 0xa

.field static final TRANSACTION_forceUpdate:I = 0x9

.field static final TRANSACTION_forceUpdateIfaces:I = 0x8

.field static final TRANSACTION_getDataLayerSnapshotForUid:I = 0x4

.field static final TRANSACTION_getMobileIfaces:I = 0x5

.field static final TRANSACTION_getNetworkTotalBytes:I = 0x3

.field static final TRANSACTION_incrementOperationCount:I = 0x6

.field static final TRANSACTION_openSession:I = 0x1

.field static final TRANSACTION_openSessionForUsageStats:I = 0x2

.field static final TRANSACTION_registerUsageCallback:I = 0xb

.field static final TRANSACTION_setUidForeground:I = 0x7

.field static final TRANSACTION_unregisterUsageRequest:I = 0xc


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string/jumbo v0, "android.net.INetworkStatsService"

    invoke-virtual {p0, p0, v0}, Landroid/net/INetworkStatsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;
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
    const-string/jumbo v1, "android.net.INetworkStatsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/net/INetworkStatsService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/net/INetworkStatsService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 31
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/net/INetworkStatsService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/net/INetworkStatsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .locals 28
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

    .line 203
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    return v4

    .line 43
    :sswitch_0
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 44
    const/4 v4, 0x1

    return v4

    .line 48
    :sswitch_1
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v25

    .line 50
    .local v25, "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v25, :cond_0

    invoke-interface/range {v25 .. v25}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 52
    const/4 v4, 0x1

    return v4

    .line 51
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 56
    .end local v25    # "_result":Landroid/net/INetworkStatsSession;
    :sswitch_2
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 60
    .local v10, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 61
    .local v17, "_arg1":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v10, v1}, Landroid/net/INetworkStatsService$Stub;->openSessionForUsageStats(ILjava/lang/String;)Landroid/net/INetworkStatsSession;

    move-result-object v25

    .line 62
    .restart local v25    # "_result":Landroid/net/INetworkStatsSession;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    if-eqz v25, :cond_1

    invoke-interface/range {v25 .. v25}, Landroid/net/INetworkStatsSession;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 64
    const/4 v4, 0x1

    return v4

    .line 63
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 68
    .end local v10    # "_arg0":I
    .end local v17    # "_arg1":Ljava/lang/String;
    .end local v25    # "_result":Landroid/net/INetworkStatsSession;
    :sswitch_3
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_2

    .line 71
    sget-object v4, Landroid/net/NetworkTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/NetworkTemplate;

    .line 77
    :goto_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v6

    .line 79
    .local v6, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v8

    .local v8, "_arg2":J
    move-object/from16 v4, p0

    .line 80
    invoke-virtual/range {v4 .. v9}, Landroid/net/INetworkStatsService$Stub;->getNetworkTotalBytes(Landroid/net/NetworkTemplate;JJ)J

    move-result-wide v22

    .line 81
    .local v22, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 83
    const/4 v4, 0x1

    return v4

    .line 74
    .end local v6    # "_arg1":J
    .end local v8    # "_arg2":J
    .end local v22    # "_result":J
    :cond_2
    const/4 v5, 0x0

    .local v5, "_arg0":Landroid/net/NetworkTemplate;
    goto :goto_2

    .line 87
    .end local v5    # "_arg0":Landroid/net/NetworkTemplate;
    :sswitch_4
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 90
    .restart local v10    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/net/INetworkStatsService$Stub;->getDataLayerSnapshotForUid(I)Landroid/net/NetworkStats;

    move-result-object v26

    .line 91
    .local v26, "_result":Landroid/net/NetworkStats;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    if-eqz v26, :cond_3

    .line 93
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    const/4 v4, 0x1

    move-object/from16 v0, v26

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/NetworkStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 99
    :goto_3
    const/4 v4, 0x1

    return v4

    .line 97
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_3

    .line 103
    .end local v10    # "_arg0":I
    .end local v26    # "_result":Landroid/net/NetworkStats;
    :sswitch_5
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->getMobileIfaces()[Ljava/lang/String;

    move-result-object v27

    .line 105
    .local v27, "_result":[Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    move-object/from16 v0, p3

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 107
    const/4 v4, 0x1

    return v4

    .line 111
    .end local v27    # "_result":[Ljava/lang/String;
    :sswitch_6
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 115
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    .line 117
    .local v15, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 118
    .local v19, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v10, v15, v1}, Landroid/net/INetworkStatsService$Stub;->incrementOperationCount(III)V

    .line 119
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 120
    const/4 v4, 0x1

    return v4

    .line 124
    .end local v10    # "_arg0":I
    .end local v15    # "_arg1":I
    .end local v19    # "_arg2":I
    :sswitch_7
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 128
    .restart local v10    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_4

    const/16 v18, 0x1

    .line 129
    .local v18, "_arg1":Z
    :goto_4
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v10, v1}, Landroid/net/INetworkStatsService$Stub;->setUidForeground(IZ)V

    .line 130
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    const/4 v4, 0x1

    return v4

    .line 128
    .end local v18    # "_arg1":Z
    :cond_4
    const/16 v18, 0x0

    .restart local v18    # "_arg1":Z
    goto :goto_4

    .line 135
    .end local v10    # "_arg0":I
    .end local v18    # "_arg1":Z
    :sswitch_8
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdateIfaces()V

    .line 137
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    const/4 v4, 0x1

    return v4

    .line 142
    :sswitch_9
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual/range {p0 .. p0}, Landroid/net/INetworkStatsService$Stub;->forceUpdate()V

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    const/4 v4, 0x1

    return v4

    .line 149
    :sswitch_a
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v12

    .line 152
    .local v12, "_arg0":J
    move-object/from16 v0, p0

    invoke-virtual {v0, v12, v13}, Landroid/net/INetworkStatsService$Stub;->advisePersistThreshold(J)V

    .line 153
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    const/4 v4, 0x1

    return v4

    .line 158
    .end local v12    # "_arg0":J
    :sswitch_b
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v14

    .line 162
    .local v14, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_5

    .line 163
    sget-object v4, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/net/DataUsageRequest;

    .line 169
    :goto_5
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_6

    .line 170
    sget-object v4, Landroid/os/Messenger;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Landroid/os/Messenger;

    .line 176
    :goto_6
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    .line 177
    .local v21, "_arg3":Landroid/os/IBinder;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-virtual {v0, v14, v1, v2, v3}, Landroid/net/INetworkStatsService$Stub;->registerUsageCallback(Ljava/lang/String;Landroid/net/DataUsageRequest;Landroid/os/Messenger;Landroid/os/IBinder;)Landroid/net/DataUsageRequest;

    move-result-object v24

    .line 178
    .local v24, "_result":Landroid/net/DataUsageRequest;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    if-eqz v24, :cond_7

    .line 180
    const/4 v4, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/4 v4, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Landroid/net/DataUsageRequest;->writeToParcel(Landroid/os/Parcel;I)V

    .line 186
    :goto_7
    const/4 v4, 0x1

    return v4

    .line 166
    .end local v21    # "_arg3":Landroid/os/IBinder;
    .end local v24    # "_result":Landroid/net/DataUsageRequest;
    :cond_5
    const/16 v16, 0x0

    .local v16, "_arg1":Landroid/net/DataUsageRequest;
    goto :goto_5

    .line 173
    .end local v16    # "_arg1":Landroid/net/DataUsageRequest;
    :cond_6
    const/16 v20, 0x0

    .local v20, "_arg2":Landroid/os/Messenger;
    goto :goto_6

    .line 184
    .end local v20    # "_arg2":Landroid/os/Messenger;
    .restart local v21    # "_arg3":Landroid/os/IBinder;
    .restart local v24    # "_result":Landroid/net/DataUsageRequest;
    :cond_7
    const/4 v4, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 190
    .end local v14    # "_arg0":Ljava/lang/String;
    .end local v21    # "_arg3":Landroid/os/IBinder;
    .end local v24    # "_result":Landroid/net/DataUsageRequest;
    :sswitch_c
    const-string/jumbo v4, "android.net.INetworkStatsService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_8

    .line 193
    sget-object v4, Landroid/net/DataUsageRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v4, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/DataUsageRequest;

    .line 198
    :goto_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Landroid/net/INetworkStatsService$Stub;->unregisterUsageRequest(Landroid/net/DataUsageRequest;)V

    .line 199
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    const/4 v4, 0x1

    return v4

    .line 196
    :cond_8
    const/4 v11, 0x0

    .local v11, "_arg0":Landroid/net/DataUsageRequest;
    goto :goto_8

    .line 39
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
        0xc -> :sswitch_c
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
