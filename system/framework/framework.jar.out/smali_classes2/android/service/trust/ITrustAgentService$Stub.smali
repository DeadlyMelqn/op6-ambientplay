.class public abstract Landroid/service/trust/ITrustAgentService$Stub;
.super Landroid/os/Binder;
.source "ITrustAgentService.java"

# interfaces
.implements Landroid/service/trust/ITrustAgentService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/trust/ITrustAgentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/trust/ITrustAgentService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.service.trust.ITrustAgentService"

.field static final TRANSACTION_onConfigure:I = 0x6

.field static final TRANSACTION_onDeviceLocked:I = 0x4

.field static final TRANSACTION_onDeviceUnlocked:I = 0x5

.field static final TRANSACTION_onEscrowTokenAdded:I = 0x8

.field static final TRANSACTION_onEscrowTokenRemoved:I = 0xa

.field static final TRANSACTION_onTokenStateReceived:I = 0x9

.field static final TRANSACTION_onTrustTimeout:I = 0x3

.field static final TRANSACTION_onUnlockAttempt:I = 0x1

.field static final TRANSACTION_onUnlockLockout:I = 0x2

.field static final TRANSACTION_setCallback:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string/jumbo v0, "android.service.trust.ITrustAgentService"

    invoke-virtual {p0, p0, v0}, Landroid/service/trust/ITrustAgentService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 27
    if-nez p0, :cond_0

    .line 28
    return-object v1

    .line 30
    :cond_0
    const-string/jumbo v1, "android.service.trust.ITrustAgentService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/service/trust/ITrustAgentService;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/service/trust/ITrustAgentService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 34
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/service/trust/ITrustAgentService$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/service/trust/ITrustAgentService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
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
    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 139
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v15

    return v15

    .line 46
    :sswitch_0
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p3

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    const/4 v15, 0x1

    return v15

    .line 51
    :sswitch_1
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_0

    const/4 v7, 0x1

    .line 54
    .local v7, "_arg0":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockAttempt(Z)V

    .line 55
    const/4 v15, 0x1

    return v15

    .line 53
    .end local v7    # "_arg0":Z
    :cond_0
    const/4 v7, 0x0

    .restart local v7    # "_arg0":Z
    goto :goto_0

    .line 59
    .end local v7    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 62
    .local v2, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/service/trust/ITrustAgentService$Stub;->onUnlockLockout(I)V

    .line 63
    const/4 v15, 0x1

    return v15

    .line 67
    .end local v2    # "_arg0":I
    :sswitch_3
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentService$Stub;->onTrustTimeout()V

    .line 69
    const/4 v15, 0x1

    return v15

    .line 73
    :sswitch_4
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceLocked()V

    .line 75
    const/4 v15, 0x1

    return v15

    .line 79
    :sswitch_5
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p0 .. p0}, Landroid/service/trust/ITrustAgentService$Stub;->onDeviceUnlocked()V

    .line 81
    const/4 v15, 0x1

    return v15

    .line 85
    :sswitch_6
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    sget-object v15, Landroid/os/PersistableBundle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v6

    .line 89
    .local v6, "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v12

    .line 90
    .local v12, "_arg1":Landroid/os/IBinder;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v12}, Landroid/service/trust/ITrustAgentService$Stub;->onConfigure(Ljava/util/List;Landroid/os/IBinder;)V

    .line 91
    const/4 v15, 0x1

    return v15

    .line 95
    .end local v6    # "_arg0":Ljava/util/List;, "Ljava/util/List<Landroid/os/PersistableBundle;>;"
    .end local v12    # "_arg1":Landroid/os/IBinder;
    :sswitch_7
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v15

    invoke-static {v15}, Landroid/service/trust/ITrustAgentServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/trust/ITrustAgentServiceCallback;

    move-result-object v3

    .line 98
    .local v3, "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/service/trust/ITrustAgentService$Stub;->setCallback(Landroid/service/trust/ITrustAgentServiceCallback;)V

    .line 99
    const/4 v15, 0x1

    return v15

    .line 103
    .end local v3    # "_arg0":Landroid/service/trust/ITrustAgentServiceCallback;
    :sswitch_8
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v8

    .line 107
    .local v8, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v10

    .line 109
    .local v10, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_1

    .line 110
    sget-object v15, Landroid/os/UserHandle;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/UserHandle;

    .line 115
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v8, v10, v11, v14}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenAdded([BJLandroid/os/UserHandle;)V

    .line 116
    const/4 v15, 0x1

    return v15

    .line 113
    :cond_1
    const/4 v14, 0x0

    .local v14, "_arg2":Landroid/os/UserHandle;
    goto :goto_1

    .line 120
    .end local v8    # "_arg0":[B
    .end local v10    # "_arg1":J
    .end local v14    # "_arg2":Landroid/os/UserHandle;
    :sswitch_9
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 124
    .local v4, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 125
    .local v9, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v9}, Landroid/service/trust/ITrustAgentService$Stub;->onTokenStateReceived(JI)V

    .line 126
    const/4 v15, 0x1

    return v15

    .line 130
    .end local v4    # "_arg0":J
    .end local v9    # "_arg1":I
    :sswitch_a
    const-string/jumbo v15, "android.service.trust.ITrustAgentService"

    move-object/from16 v0, p2

    invoke-virtual {v0, v15}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v4

    .line 134
    .restart local v4    # "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v15

    if-eqz v15, :cond_2

    const/4 v13, 0x1

    .line 135
    .local v13, "_arg1":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5, v13}, Landroid/service/trust/ITrustAgentService$Stub;->onEscrowTokenRemoved(JZ)V

    .line 136
    const/4 v15, 0x1

    return v15

    .line 134
    .end local v13    # "_arg1":Z
    :cond_2
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_2

    .line 42
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
